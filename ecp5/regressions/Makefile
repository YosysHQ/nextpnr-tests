NPNR = ../../../nextpnr-ecp5
override NPNR := $(abspath $(NPNR))
JSON_GZ := $(wildcard */*.json.gz)
SH := $(wildcard */*.sh)
SH_BASENAME := $(patsubst %.sh,%,$(SH))
JSON := $(patsubst %.gz,%,$(JSON_GZ))
JSON := $(filter-out $(addsuffix .json,$(SH_BASENAME)), $(JSON))
JSON_OUTPUT := $(patsubst %.json,%.bit,$(JSON))
SH_OUTPUT := $(patsubst %.sh,%.bit,$(SH))

all: $(JSON_OUTPUT) $(SH_OUTPUT)

ifeq ($(NPNR),)
	$(error "$$(NPNR) must point to a nextpnr-ecp5 binary (currently: empty)")
endif

$(NPNR):
ifeq ($(wildcard $(NPNR)),)
	$(error "$$(NPNR) must point to a nextpnr-ecp5 binary (currently: $@)")
endif

%.json: %.json.gz
	gzip -dk $<

$(JSON_OUTPUT): %.bit: %.json $(wildcard %.lpf) $(wildcard %.npnr) $(NPNR)
	$(NPNR) --json $*.json --textcfg $*.config $(if $(wildcard $*.lpf),--lpf $*.lpf,) $(if $(wildcard $*.npnr),$(shell cat $*.npnr),) > /dev/null 2>&1
	ecppack $*.config $*.bit

$(SH_OUTPUT): %.bit: %.sh $(NPNR)
	gzip -dk $*.json.gz
	cd $(dir $@) && NPNR=$(NPNR) bash $(notdir $*.sh) > /dev/null 2>&1
	if [ -f "$*.config" ]; then \
		ecppack $*.config $*.bit; \
	else \
		touch $@; \
	fi

clean:
	@rm -f */*.config $(JSON) $(JSON_OUTPUT) $(SH_OUTPUT)
