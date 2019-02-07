NPNR = ../../../nextpnr-ice40
override NPNR := $(abspath $(NPNR))
JSON := $(wildcard */*.json)
SH := $(wildcard */*.sh)
SH_BASENAME := $(patsubst %.sh,%,$(SH))
JSON := $(filter-out $(addsuffix .json,$(SH_BASENAME)),$(JSON))
JSON_OUTPUT := $(patsubst %.json,%.log,$(JSON))
SH_OUTPUT := $(patsubst %.sh,%.log,$(SH))

all: $(JSON_OUTPUT) $(SH_OUTPUT)

$(JSON_OUTPUT): %.log: %.json $(wildcard %.pcf) $(wildcard %.npnr) | $(NPNR)
	$(NPNR) --json $(word 1,$^) $(if $(wildcard $*.pcf),--pcf $*.pcf,) $(if $(wildcard $*.npnr),$(shell cat $*.npnr),) > $@ 2>&1

$(SH_OUTPUT): %.log: %.sh | $(NPNR)
	cd $(dir $@) && NPNR=$(NPNR) bash $(notdir $(word 1,$^)) > /dev/null 2>&1
