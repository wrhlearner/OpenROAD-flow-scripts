export DESIGN_NAME = ariane
export DESIGN_NICKNAME = ariane136
export PLATFORM    = nangate45

export VERILOG_FILES = ./designs/src/$(DESIGN_NICKNAME)/ariane.sv2v.v \
                       ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/macros.v

export SDC_FILE      = ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint_hier.sdc

export ADDITIONAL_LEFS = $(PLATFORM_DIR)/lef/fakeram45_256x16.lef

export ADDITIONAL_LIBS = $(PLATFORM_DIR)/lib/fakeram45_256x16.lib

export DIE_AREA    = 0 0 1500 1500
export CORE_AREA   = 10 12 1448 1448
export PLACE_PINS_ARGS = -exclude left:0-250 -exclude left:400-550 -exclude right:* -exclude top:* -exclude bottom:*

export MACRO_PLACE_HALO = 20 20
export MACRO_PLACE_CHANNEL = 20 20

export PLACE_DENSITY_LB_ADDON = 0.20
