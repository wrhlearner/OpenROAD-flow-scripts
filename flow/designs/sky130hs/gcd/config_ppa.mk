export DESIGN_NAME = gcd
export PLATFORM    = sky130hs
export FLOW_VARIANT = ppa

export VERILOG_FILES = ./designs/src/$(DESIGN_NICKNAME)/gcd.v
export SDC_FILE      = ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc
export RCX_RULES     = $(PLATFORM_DIR)/rcx_patterns.rules

# These values must be multiples of placement site
export DIE_AREA    = 0 0 279.96 280.128
export CORE_AREA   = 9.996 10.08 269.964 270.048
#
# Placement
#
export CELL_PAD_IN_SITES_GLOBAL_PLACEMENT = 2 
export CELL_PAD_IN_SITES_DETAIL_PLACEMENT = 2

# IR drop estimation supply net name to be analyzed and supply voltage variable
# For multiple nets: PWR_NETS_VOLTAGES  = "VDD1 1.8 VDD2 1.2"
export PWR_NETS_VOLTAGES  = "VDD 1.8"
export GND_NETS_VOLTAGES  = "VSS 0.0"
