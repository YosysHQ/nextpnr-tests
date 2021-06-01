NPNR = ../../../nextpnr-ice40
override NPNR := $(abspath $(NPNR))
JSON_GZ := $(wildcard */*.json.gz)
SH := $(wildcard */*.sh)
SH_BASENAME := $(patsubst %.sh,%,$(SH))
JSON := $(patsubst %.gz,%,$(JSON_GZ))
JSON := $(filter-out $(addsuffix .json,$(SH_BASENAME)), $(JSON))
JSON_OUTPUT := $(patsubst %.json,%_postpnr.v,$(JSON))
SH_OUTPUT := $(patsubst %.sh,%_postpnr.v,$(SH))

all: $(JSON_OUTPUT) $(SH_OUTPUT)

ifeq ($(NPNR),)
	$(error "$$(NPNR) must point to a nextpnr-ice40 binary (currently: empty)")
endif

$(NPNR):
ifeq ($(wildcard $(NPNR)),)
	$(error "$$(NPNR) must point to a nextpnr-ice40 binary (currently: $@)")
endif

%.json: %.json.gz
	gzip -fdk $<

$(JSON_OUTPUT): %_postpnr.v: %.json $(wildcard %.pcf) $(wildcard %.npnr) $(NPNR)
	$(NPNR) --json $*.json --asc $*.asc $(if $(wildcard $*.pcf),--pcf $*.pcf,) $(if $(wildcard $*.npnr),$(shell cat $*.npnr),) > /dev/null 2>&1 || test -f $(dir $*)WAIVE
	if [ ! -f $(dir $*)WAIVE  ]; then \
	    icebox_vlog $*.asc > $@; \
    else \
        touch $@; \
    fi

$(SH_OUTPUT): %_postpnr.v: %.sh $(NPNR)
	gzip -fdk $*.json.gz
	cd $(dir $@) && NPNR=$(NPNR) bash $(notdir $*.sh) > /dev/null 2>&1
	if [ -f "$*.asc" ]; then \
		icebox_vlog $*.asc > $@; \
	else \
		touch $@; \
	fi

clean:
	@rm -f */*.asc $(JSON) $(JSON_OUTPUT) $(SH_OUTPUT)
