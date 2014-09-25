-------------------------------------------------------------------------------
-- Copyright (c) 2013 Xilinx, Inc.
-- All Rights Reserved
-------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor     : Xilinx
-- \   \   \/     Version    : 13.4
--  \   \         Application: Xilinx CORE Generator
--  /   /         Filename   : v_osd_v3_0_u0.vho
-- /___/   /\     Timestamp  : Tue Sep 24 14:34:39 Mountain Daylight Time 2013
-- \   \  /  \
--  \___\/\___\
--
-- Design Name: ISE Instantiation template
-- Component Identifier: xilinx.com:ip:v_osd:3.0
-------------------------------------------------------------------------------
-- The following code must appear in the VHDL architecture header:

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
component v_osd_v3_0_u0
  PORT (
    clk : in STD_LOGIC;
    sclr : in STD_LOGIC;
    ce : in STD_LOGIC;
    vblank_in : in STD_LOGIC;
    hblank_in : in STD_LOGIC;
    vsync_in : in STD_LOGIC;
    hsync_in : in STD_LOGIC;
    active_video_in : in STD_LOGIC;
    active_chroma_in : in STD_LOGIC;
    intr_status : out STD_LOGIC_VECTOR(31 DOWNTO 0);
    version : out STD_LOGIC_VECTOR(31 DOWNTO 0);
    control : in STD_LOGIC_VECTOR(31 DOWNTO 0);
    bgcolor0 : in STD_LOGIC_VECTOR(7 DOWNTO 0);
    bgcolor1 : in STD_LOGIC_VECTOR(7 DOWNTO 0);
    bgcolor2 : in STD_LOGIC_VECTOR(7 DOWNTO 0);
    layer_enable : in STD_LOGIC_VECTOR(0 TO 0);
    layer_priority : in STD_LOGIC_VECTOR(31 DOWNTO 0);
    layer_alpha : in STD_LOGIC_VECTOR(31 DOWNTO 0);
    layer_x_pos : in STD_LOGIC_VECTOR(31 DOWNTO 0);
    layer_y_pos : in STD_LOGIC_VECTOR(31 DOWNTO 0);
    layer_x_size : in STD_LOGIC_VECTOR(31 DOWNTO 0);
    layer_y_size : in STD_LOGIC_VECTOR(31 DOWNTO 0);
    screen_x : in STD_LOGIC_VECTOR(11 DOWNTO 0);
    screen_y : in STD_LOGIC_VECTOR(11 DOWNTO 0);
    gc_active_bank_addr : in STD_LOGIC_VECTOR(31 DOWNTO 0);
    gc_write_bank_addr : in STD_LOGIC_VECTOR(5 DOWNTO 0);
    gc_write_bank_we : in STD_LOGIC;
    gc_data : in STD_LOGIC_VECTOR(31 DOWNTO 0);
    gc_data_we : in STD_LOGIC;
    s0_axis_tdata : in STD_LOGIC_VECTOR(15 DOWNTO 0);
    s0_axis_tkeep : in STD_LOGIC_VECTOR(1 DOWNTO 0);
    s0_axis_tvalid : in STD_LOGIC;
    s0_axis_tlast : in STD_LOGIC;
    s0_axis_tready : out STD_LOGIC;
    vblank_out : out STD_LOGIC;
    vsync_out : out STD_LOGIC;
    hblank_out : out STD_LOGIC;
    hsync_out : out STD_LOGIC;
    active_video_out : out STD_LOGIC;
    active_chroma_out : out STD_LOGIC;
    video_data_out : out STD_LOGIC_VECTOR(15 DOWNTO 0));

end component;

-- COMP_TAG_END ------ End COMPONENT Declaration ------------
-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.
------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG

your_instance_name : v_osd_v3_0_u0
  port map (
    clk => clk,
    sclr => sclr,
    ce => ce,
    vblank_in => vblank_in,
    hblank_in => hblank_in,
    vsync_in => vsync_in,
    hsync_in => hsync_in,
    active_video_in => active_video_in,
    active_chroma_in => active_chroma_in,
    intr_status => intr_status,
    version => version,
    control => control,
    bgcolor0 => bgcolor0,
    bgcolor1 => bgcolor1,
    bgcolor2 => bgcolor2,
    layer_enable => layer_enable,
    layer_priority => layer_priority,
    layer_alpha => layer_alpha,
    layer_x_pos => layer_x_pos,
    layer_y_pos => layer_y_pos,
    layer_x_size => layer_x_size,
    layer_y_size => layer_y_size,
    screen_x => screen_x,
    screen_y => screen_y,
    gc_active_bank_addr => gc_active_bank_addr,
    gc_write_bank_addr => gc_write_bank_addr,
    gc_write_bank_we => gc_write_bank_we,
    gc_data => gc_data,
    gc_data_we => gc_data_we,
    s0_axis_tdata => s0_axis_tdata,
    s0_axis_tkeep => s0_axis_tkeep,
    s0_axis_tvalid => s0_axis_tvalid,
    s0_axis_tlast => s0_axis_tlast,
    s0_axis_tready => s0_axis_tready,
    vblank_out => vblank_out,
    vsync_out => vsync_out,
    hblank_out => hblank_out,
    hsync_out => hsync_out,
    active_video_out => active_video_out,
    active_chroma_out => active_chroma_out,
    video_data_out => video_data_out);

-- INST_TAG_END ------ End INSTANTIATION Template ------------
