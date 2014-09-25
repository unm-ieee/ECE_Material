# The package naming convention is <core_name>_xmdf
package provide VGA_DISPLAY_xmdf 1.0

# This includes some utilities that support common XMDF operations
package require utilities_xmdf

# Define a namespace for this package. The name of the name space
# is <core_name>_xmdf
namespace eval ::VGA_DISPLAY_xmdf {
# Use this to define any statics
}

# Function called by client to rebuild the params and port arrays
# Optional when the use context does not require the param or ports
# arrays to be available.
proc ::VGA_DISPLAY_xmdf::xmdfInit { instance } {
# Variable containing name of library into which module is compiled
# Recommendation: <module_name>
# Required
utilities_xmdf::xmdfSetData $instance Module Attributes Name VGA_DISPLAY
}
# ::VGA_DISPLAY_xmdf::xmdfInit

# Function called by client to fill in all the xmdf* data variables
# based on the current settings of the parameters
proc ::VGA_DISPLAY_xmdf::xmdfApplyParams { instance } {

set fcount 0
# Array containing libraries that are assumed to exist
# Examples include unisim and xilinxcorelib
# Optional
# In this example, we assume that the unisim library will
# be available to the simulation and synthesis tool
utilities_xmdf::xmdfSetData $instance FileSet $fcount type logical_library
utilities_xmdf::xmdfSetData $instance FileSet $fcount logical_library unisim
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/data/osd_v2_1_0.mdd
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/data/osd_v2_1_0.tcl
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/doc/html/api/annotated.html
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/doc/html/api/classes.html
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/doc/html/api/closed.gif
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/doc/html/api/files.html
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/doc/html/api/functions.html
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/doc/html/api/functions_vars.html
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/doc/html/api/globals.html
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/doc/html/api/globals_defs.html
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/doc/html/api/globals_func.html
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/doc/html/api/globals_type.html
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/doc/html/api/globals_vars.html
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/doc/html/api/index.html
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/doc/html/api/open.gif
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/doc/html/api/struct_x_o_s_d.html
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/doc/html/api/struct_x_o_s_d___config.html
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/doc/html/api/struct_x_o_s_d___layer.html
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/doc/html/api/tab_b.gif
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/doc/html/api/tab_l.gif
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/doc/html/api/tab_r.gif
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/doc/html/api/xosd_8c.html
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/doc/html/api/xosd_8c_source.html
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/doc/html/api/xosd_8h.html
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/doc/html/api/xosd_8h_source.html
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/doc/html/api/xosd__g_8c.html
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/doc/html/api/xosd__g_8c_source.html
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/doc/html/api/xosd__hw_8h.html
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/doc/html/api/xosd__hw_8h_source.html
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/doc/html/api/xosd__intr_8c.html
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/doc/html/api/xosd__intr_8c_source.html
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/doc/html/api/xosd__sinit_8c.html
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/doc/html/api/xosd__sinit_8c_source.html
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/example/example.c
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/src/Makefile
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/src/xosd.c
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/src/xosd.h
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/src/xosd_g.c
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/src/xosd_hw.h
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/src/xosd_intr.c
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/drivers/osd_v1_03_a/src/xosd_sinit.c
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/pcores/axi_osd_v3_00_a/data/axi_osd_v2_1_0.mpd
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/pcores/axi_osd_v3_00_a/data/axi_osd_v2_1_0.mui
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/pcores/axi_osd_v3_00_a/data/axi_osd_v2_1_0.pao
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/pcores/axi_osd_v3_00_a/data/axi_osd_v2_1_0.tcl
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/pcores/axi_osd_v3_00_a/hdl/vhdl/HWT.vhd
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/pcores/axi_osd_v3_00_a/hdl/vhdl/MemXLib_arch.vhd
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/pcores/axi_osd_v3_00_a/hdl/vhdl/MemXLib_utils.vhd
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/pcores/axi_osd_v3_00_a/hdl/vhdl/alpha_blend_ctrl.vhd
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/pcores/axi_osd_v3_00_a/hdl/vhdl/alpha_blend_elem.vhd
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/pcores/axi_osd_v3_00_a/hdl/vhdl/axi_osd.vhd
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/pcores/axi_osd_v3_00_a/hdl/vhdl/axis_input_buffer.vhd
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/pcores/axi_osd_v3_00_a/hdl/vhdl/axis_output_buffer.vhd
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/pcores/axi_osd_v3_00_a/hdl/vhdl/mult_add_pipeline.vhd
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/pcores/axi_osd_v3_00_a/hdl/vhdl/mux_tree.vhd
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/pcores/axi_osd_v3_00_a/hdl/vhdl/osd_backbone.vhd
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/pcores/axi_osd_v3_00_a/hdl/vhdl/osd_counters.vhd
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/pcores/axi_osd_v3_00_a/hdl/vhdl/osd_meminit_pkg.vhd
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/pcores/axi_osd_v3_00_a/hdl/vhdl/osd_package.vhd
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/pcores/axi_osd_v3_00_a/hdl/vhdl/osd_priority_mux.vhd
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/pcores/axi_osd_v3_00_a/hdl/vhdl/osd_priority_select.vhd
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/pcores/axi_osd_v3_00_a/hdl/vhdl/osd_rt_gpu2.vhd
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/pcores/axi_osd_v3_00_a/hdl/vhdl/user_logic.vhd
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY/pcores/axi_osd_v3_00_a/hdl/vhdl/version_reg.vhd
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY.asy
utilities_xmdf::xmdfSetData $instance FileSet $fcount type asy
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY.sym
utilities_xmdf::xmdfSetData $instance FileSet $fcount type symbol
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY.xco
utilities_xmdf::xmdfSetData $instance FileSet $fcount type coregen_ip
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path VGA_DISPLAY_xmdf.tcl
utilities_xmdf::xmdfSetData $instance FileSet $fcount type AnyView
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount associated_module VGA_DISPLAY
incr fcount

}

# ::gen_comp_name_xmdf::xmdfApplyParams
