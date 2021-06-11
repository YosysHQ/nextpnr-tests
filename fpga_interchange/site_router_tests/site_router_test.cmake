function(add_site_router_test)
    # ~~~
    # add_site_router_test(
    #    name <name>
    #    board <board>
    #    test_script <yaml>
    #    sources <sources list>
    #    [top <top name>]
    # )
    #
    # Generates targets to run desired site router tests.
    #
    # Arguments:
    #   - name: base test name. The real test name will be <name>_<board>
    #   - board: name of the board to be used in the test, e.g. arty35t
    #   - test_script: YAML description of the test case
    #   - sources: list of HDL sources
    #   - top (optional): name of the top level module.
    #                     If not provided, "top" is assigned as top level module

    set(options)
    set(oneValueArgs name test_script board top)
    set(multiValueArgs sources)

    cmake_parse_arguments(
        add_site_router_test
        "${options}"
        "${oneValueArgs}"
        "${multiValueArgs}"
        ${ARGN}
    )

    set(name ${add_site_router_test_name})
    set(test_script ${add_site_router_test_test_script})
    set(board ${add_site_router_test_board})
    set(top ${add_site_router_test_top})
    set(sources)
    get_property(device TARGET board-${board} PROPERTY DEVICE)
    get_property(package TARGET board-${board} PROPERTY PACKAGE)
    foreach(source ${add_site_router_test_sources})
        list(APPEND sources ${CMAKE_CURRENT_SOURCE_DIR}/${source})
    endforeach()

    if (NOT DEFINED top)
        # Setting default top value
        set(top "top")
    endif()

    set(common_dir ${CMAKE_CURRENT_SOURCE_DIR}/../common)

    # Synthesis
    set(synth_json ${CMAKE_CURRENT_BINARY_DIR}/${name}.json)
    add_custom_command(
        OUTPUT ${synth_json}
        COMMAND ${CMAKE_COMMAND} -E env
            SOURCES="${sources}"
            OUT_JSON=${synth_json}
            yosys -c ${common_dir}/synth.tcl
        DEPENDS ${sources}
    )

    add_custom_target(site_router_tests-${name}-json DEPENDS ${synth_json})

    # Logical Netlist
    get_property(device_target TARGET device-${device} PROPERTY DEVICE_TARGET)
    get_property(device_loc TARGET device-${device} PROPERTY DEVICE_LOC)

    set(netlist ${CMAKE_CURRENT_BINARY_DIR}/${name}.netlist)
    add_custom_command(
        OUTPUT ${netlist}
        COMMAND
            ${PYTHON_EXECUTABLE} -mfpga_interchange.yosys_json
                --schema_dir ${INTERCHANGE_SCHEMA_PATH}
                --device ${device_loc}
                --top ${top}
                ${synth_json}
                ${netlist}
        DEPENDS
            ${synth_json}
            ${device_target}
            ${device_loc}
    )

    add_custom_target(site_router_tests-${name}-netlist DEPENDS ${netlist})

    # Logical Netlist YAML
    set(netlist_yaml ${CMAKE_CURRENT_BINARY_DIR}/${name}.netlist.yaml)
    add_custom_command(
        OUTPUT ${netlist_yaml}
        COMMAND
            ${PYTHON_EXECUTABLE} -mfpga_interchange.convert
                --schema_dir ${INTERCHANGE_SCHEMA_PATH}
                --schema logical
                --input_format capnp
                --output_format yaml
                ${netlist}
                ${netlist_yaml}
        DEPENDS
            ${netlist}
    )

    add_custom_target(site_router_tests-${name}-netlist-yaml DEPENDS ${netlist_yaml})

    # Physical Netlist
    get_target_property(chipdb_bin_target device-${device} CHIPDB_BIN_TARGET)
    get_target_property(chipdb_bin_loc device-${device} CHIPDB_BIN_LOC)
    get_target_property(nextpnr_path nextpnr-fpga_interchange BINARY_DIR)
    set(xdc ${CMAKE_CURRENT_SOURCE_DIR}/${name}.xdc)
    set(run_script ${common_dir}/run_script.py)
    set(test_result ${CMAKE_CURRENT_BINARY_DIR}/${name}.test_result)

    add_custom_command(
        OUTPUT ${test_result}
        COMMAND
        ${CMAKE_COMMAND} -E env TEST_YAML=${CMAKE_CURRENT_SOURCE_DIR}/${test_script}
          ${nextpnr_path}/nextpnr-fpga_interchange
                --run ${run_script}
                --no-route
                --chipdb ${chipdb_bin_loc}
                --xdc ${xdc}
                --netlist ${netlist}
                --package ${package} > ${test_result}
        DEPENDS
            nextpnr-fpga_interchange
            ${netlist}
            ${xdc}
            ${chipdb_bin_target}
            ${chipdb_bin_loc}
            ${run_script}
    )

    add_custom_target(site_router_tests-${name}-test DEPENDS ${test_result})
endfunction()
