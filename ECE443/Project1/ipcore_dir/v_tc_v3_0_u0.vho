-------------------------------------------------------------------------------
-- Copyright (c) 2013 Xilinx, Inc.
-- All Rights Reserved
-------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor     : Xilinx
-- \   \   \/     Version    : 13.4
--  \   \         Application: Xilinx CORE Generator
--  /   /         Filename   : v_tc_v3_0_u0.vho
-- /___/   /\     Timestamp  : Thu Sep 26 14:10:52 Mountain Daylight Time 2013
-- \   \  /  \
--  \___\/\___\
--
-- Design Name: ISE Instantiation template
-- Component Identifier: xilinx.com:ip:v_tc:3.0
-------------------------------------------------------------------------------
-- The following code must appear in the VHDL architecture header:

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
component v_tc_v3_0_u0
  PORT (
    sclr : in STD_LOGIC;
    ce : in STD_LOGIC;
    video_clk_in : in STD_LOGIC;
    vblank_in : in STD_LOGIC;
    vsync_in : in STD_LOGIC;
    hblank_in : in STD_LOGIC;
    hsync_in : in STD_LOGIC;
    active_video_in : in STD_LOGIC;
    control : in STD_LOGIC_VECTOR(31 DOWNTO 0);
    intr_enable : in STD_LOGIC_VECTOR(31 DOWNTO 0);
    intr_clr : in STD_LOGIC_VECTOR(31 DOWNTO 0);
    fsync_hstart : in STD_LOGIC_VECTOR(10 DOWNTO 0);
    fsync_vstart : in STD_LOGIC_VECTOR(10 DOWNTO 0);
    gen_htotal : in STD_LOGIC_VECTOR(10 DOWNTO 0);
    gen_hfp_start : in STD_LOGIC_VECTOR(10 DOWNTO 0);
    gen_hsync_start : in STD_LOGIC_VECTOR(10 DOWNTO 0);
    gen_hbp_start : in STD_LOGIC_VECTOR(10 DOWNTO 0);
    gen_hactive_start : in STD_LOGIC_VECTOR(10 DOWNTO 0);
    gen_v0total : in STD_LOGIC_VECTOR(10 DOWNTO 0);
    gen_v0fp_start : in STD_LOGIC_VECTOR(10 DOWNTO 0);
    gen_v0sync_start : in STD_LOGIC_VECTOR(10 DOWNTO 0);
    gen_v0bp_start : in STD_LOGIC_VECTOR(10 DOWNTO 0);
    gen_v0active_start : in STD_LOGIC_VECTOR(10 DOWNTO 0);
    gen_v0achroma_start : in STD_LOGIC_VECTOR(10 DOWNTO 0);
    gen_v0blank_hstart : in STD_LOGIC_VECTOR(10 DOWNTO 0);
    gen_v0blank_hend : in STD_LOGIC_VECTOR(10 DOWNTO 0);
    gen_v0sync_hstart : in STD_LOGIC_VECTOR(10 DOWNTO 0);
    gen_v0sync_hend : in STD_LOGIC_VECTOR(10 DOWNTO 0);
    det_status : out STD_LOGIC_VECTOR(31 DOWNTO 0);
    version : out STD_LOGIC_VECTOR(31 DOWNTO 0);
    intr_out : out STD_LOGIC;
    intr_status : out STD_LOGIC_VECTOR(31 DOWNTO 0);
    det_htotal : out STD_LOGIC_VECTOR(10 DOWNTO 0);
    det_hfp_start : out STD_LOGIC_VECTOR(10 DOWNTO 0);
    det_hsync_start : out STD_LOGIC_VECTOR(10 DOWNTO 0);
    det_hbp_start : out STD_LOGIC_VECTOR(10 DOWNTO 0);
    det_hactive_start : out STD_LOGIC_VECTOR(10 DOWNTO 0);
    det_v0total : out STD_LOGIC_VECTOR(10 DOWNTO 0);
    det_v0fp_start : out STD_LOGIC_VECTOR(10 DOWNTO 0);
    det_v0sync_start : out STD_LOGIC_VECTOR(10 DOWNTO 0);
    det_v0bp_start : out STD_LOGIC_VECTOR(10 DOWNTO 0);
    det_v0active_start : out STD_LOGIC_VECTOR(10 DOWNTO 0);
    det_v0achroma_start : out STD_LOGIC_VECTOR(10 DOWNTO 0);
    det_v0blank_hstart : out STD_LOGIC_VECTOR(10 DOWNTO 0);
    det_v0blank_hend : out STD_LOGIC_VECTOR(10 DOWNTO 0);
    det_v0sync_hstart : out STD_LOGIC_VECTOR(10 DOWNTO 0);
    det_v0sync_hend : out STD_LOGIC_VECTOR(10 DOWNTO 0);
    fsync : out STD_LOGIC_VECTOR(0 TO 0);
    video_clk_out : out STD_LOGIC;
    vblank_out : out STD_LOGIC;
    vsync_out : out STD_LOGIC;
    hblank_out : out STD_LOGIC;
    hsync_out : out STD_LOGIC;
    active_video_out : out STD_LOGIC);

end component;

-- COMP_TAG_END ------ End COMPONENT Declaration ------------
-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.
------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG

your_instance_name : v_tc_v3_0_u0
  port map (
    sclr => sclr,
    ce => ce,
    video_clk_in => video_clk_in,
    vblank_in => vblank_in,
    vsync_in => vsync_in,
    hblank_in => hblank_in,
    hsync_in => hsync_in,
    active_video_in => active_video_in,
    control => control,
    intr_enable => intr_enable,
    intr_clr => intr_clr,
    fsync_hstart => fsync_hstart,
    fsync_vstart => fsync_vstart,
    gen_htotal => gen_htotal,
    gen_hfp_start => gen_hfp_start,
    gen_hsync_start => gen_hsync_start,
    gen_hbp_start => gen_hbp_start,
    gen_hactive_start => gen_hactive_start,
    gen_v0total => gen_v0total,
    gen_v0fp_start => gen_v0fp_start,
    gen_v0sync_start => gen_v0sync_start,
    gen_v0bp_start => gen_v0bp_start,
    gen_v0active_start => gen_v0active_start,
    gen_v0achroma_start => gen_v0achroma_start,
    gen_v0blank_hstart => gen_v0blank_hstart,
    gen_v0blank_hend => gen_v0blank_hend,
    gen_v0sync_hstart => gen_v0sync_hstart,
    gen_v0sync_hend => gen_v0sync_hend,
    det_status => det_status,
    version => version,
    intr_out => intr_out,
    intr_status => intr_status,
    det_htotal => det_htotal,
    det_hfp_start => det_hfp_start,
    det_hsync_start => det_hsync_start,
    det_hbp_start => det_hbp_start,
    det_hactive_start => det_hactive_start,
    det_v0total => det_v0total,
    det_v0fp_start => det_v0fp_start,
    det_v0sync_start => det_v0sync_start,
    det_v0bp_start => det_v0bp_start,
    det_v0active_start => det_v0active_start,
    det_v0achroma_start => det_v0achroma_start,
    det_v0blank_hstart => det_v0blank_hstart,
    det_v0blank_hend => det_v0blank_hend,
    det_v0sync_hstart => det_v0sync_hstart,
    det_v0sync_hend => det_v0sync_hend,
    fsync => fsync,
    video_clk_out => video_clk_out,
    vblank_out => vblank_out,
    vsync_out => vsync_out,
    hblank_out => hblank_out,
    hsync_out => hsync_out,
    active_video_out => active_video_out);

-- INST_TAG_END ------ End INSTANTIATION Template ------------
