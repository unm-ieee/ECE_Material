#-------------------------------------------
#-------------------------------------------
proc iplevel_update_s_axis_data_width { param_handle } {

    set mhsinst     [xget_hw_parent_handle   $param_handle]
    set num_data_channels [xget_hw_parameter_value $mhsinst "C_NUM_DATA_CHANNELS"]
    set data_width      [xget_hw_parameter_value $mhsinst "C_DATA_WIDTH"]
    set alpha_channel_en [xget_hw_parameter_value $mhsinst "C_ALPHA_CHANNEL_EN"]

    if {(($num_data_channels + $alpha_channel_en) * $data_width) > 32} {
        return 64 
    } elseif {(($num_data_channels + $alpha_channel_en) * $data_width) > 16} {
        return 32 
    } elseif {(($num_data_channels + $alpha_channel_en) * $data_width) > 8} {
        return 16 
    } else {
        return 8
    }

}
#-------------------------------------------
#-------------------------------------------
proc iplevel_update_m_axis_data_width { param_handle } {

    set mhsinst     [xget_hw_parent_handle   $param_handle]
    set num_data_channels [xget_hw_parameter_value $mhsinst "C_NUM_DATA_CHANNELS"]
    set data_width      [xget_hw_parameter_value $mhsinst "C_DATA_WIDTH"]

    if {($num_data_channels * $data_width) > 32} {
        return 64 
    } elseif {($num_data_channels * $data_width) > 16} {
        return 32 
    } elseif {($num_data_channels * $data_width) > 8} {
        return 16 
    } else {
        return 8
    }

}

