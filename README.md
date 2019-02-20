# nextpnr-tests

This repo is intended for use as a submodule from [YosysHQ/nextpnr](https://github.com/YosysHQ/nextpnr)

Initial contents were populated from [YosysHQ/nextpnr@6cc1bf](https://github.com/YosysHQ/nextpnr/commit/6cc1bfcb37199e0988d0f06ce34071b409ab8019)

# Notes for regressions:
- Add subdir to `:/<arch>/regressions/<issue####>`; e.g. `:/ice40/regressions/issue0000`
  - Please gzip `*.json` files into `*.json.gz`
- `:/<arch>/regressions/Makefile` will take all `:/<arch>/regressions/*/*.{json.gz,sh}` and
  - For `*.json.gz`: decompress into `*.json`, and then execute `nextpnr` using `*.pcf` if it exists, and using additional options specified by `*.npnr`
  - For `*.sh`: decompress `*.json.gz` into `*.json`, then run `*.sh` script
  - After executing `nextpnr`, will run `icebox_vlog` on the generated `*.asc` as a sanity check
  - Non zero exit code of `nextpnr`, `*.sh`, or `icebox_vlog` constitutes a test failure
- Where available, the source Verilog file(s) used to generate the `*.json` should be included, along with a `*.ys` Yosys script if it is anything but a simple invocation of `synth_<arch>`
