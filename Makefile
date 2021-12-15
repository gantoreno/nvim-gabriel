#######   ##    ##  #######
##    ##  ###   ##  ##    ##
##    ##  ####  ##  ##    ##
#######   ## ## ##  #######
##    ##  ##  ####  ##    ##
##    ##  ##   ###  ##    ##
##    ##  ##    ##  #######

VIM_OUTPUTS = $(patsubst %.erb,%.vim,$(wildcard colors/*.erb))

.PHONY: all

all: $(VIM_OUTPUTS)

%.vim: %.erb
	erb -T - $< > $@

watch:
	when-changed colors/gabriel-dark.erb -c make