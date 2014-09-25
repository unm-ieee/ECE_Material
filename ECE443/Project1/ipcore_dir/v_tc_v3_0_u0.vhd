--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.87xd
--  \   \         Application: netgen
--  /   /         Filename: v_tc_v3_0_u0.vhd
-- /___/   /\     Timestamp: Thu Sep 26 14:10:51 2013
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl "F:/ECE.CLASSES/ECE 443/Project1/ipcore_dir/tmp/_cg/v_tc_v3_0_u0.ngc" "F:/ECE.CLASSES/ECE 443/Project1/ipcore_dir/tmp/_cg/v_tc_v3_0_u0.vhd" 
-- Device	: xc6slx16-csg324-3
-- Input file	: F:/ECE.CLASSES/ECE 443/Project1/ipcore_dir/tmp/_cg/v_tc_v3_0_u0.ngc
-- Output file	: F:/ECE.CLASSES/ECE 443/Project1/ipcore_dir/tmp/_cg/v_tc_v3_0_u0.vhd
-- # of Entities	: 1
-- Design Name	: v_tc_v3_0_u0
-- Xilinx	: C:\Xilinx\13.4\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------


-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity v_tc_v3_0_u0 is
  port (
    sclr : in STD_LOGIC := 'X'; 
    ce : in STD_LOGIC := 'X'; 
    video_clk_in : in STD_LOGIC := 'X'; 
    vblank_in : in STD_LOGIC := 'X'; 
    vsync_in : in STD_LOGIC := 'X'; 
    hblank_in : in STD_LOGIC := 'X'; 
    hsync_in : in STD_LOGIC := 'X'; 
    active_video_in : in STD_LOGIC := 'X'; 
    intr_out : out STD_LOGIC; 
    video_clk_out : out STD_LOGIC; 
    vblank_out : out STD_LOGIC; 
    vsync_out : out STD_LOGIC; 
    hblank_out : out STD_LOGIC; 
    hsync_out : out STD_LOGIC; 
    active_video_out : out STD_LOGIC; 
    control : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    intr_enable : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    intr_clr : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    fsync_hstart : in STD_LOGIC_VECTOR ( 10 downto 0 ); 
    fsync_vstart : in STD_LOGIC_VECTOR ( 10 downto 0 ); 
    gen_htotal : in STD_LOGIC_VECTOR ( 10 downto 0 ); 
    gen_hfp_start : in STD_LOGIC_VECTOR ( 10 downto 0 ); 
    gen_hsync_start : in STD_LOGIC_VECTOR ( 10 downto 0 ); 
    gen_hbp_start : in STD_LOGIC_VECTOR ( 10 downto 0 ); 
    gen_hactive_start : in STD_LOGIC_VECTOR ( 10 downto 0 ); 
    gen_v0total : in STD_LOGIC_VECTOR ( 10 downto 0 ); 
    gen_v0fp_start : in STD_LOGIC_VECTOR ( 10 downto 0 ); 
    gen_v0sync_start : in STD_LOGIC_VECTOR ( 10 downto 0 ); 
    gen_v0bp_start : in STD_LOGIC_VECTOR ( 10 downto 0 ); 
    gen_v0active_start : in STD_LOGIC_VECTOR ( 10 downto 0 ); 
    gen_v0achroma_start : in STD_LOGIC_VECTOR ( 10 downto 0 ); 
    gen_v0blank_hstart : in STD_LOGIC_VECTOR ( 10 downto 0 ); 
    gen_v0blank_hend : in STD_LOGIC_VECTOR ( 10 downto 0 ); 
    gen_v0sync_hstart : in STD_LOGIC_VECTOR ( 10 downto 0 ); 
    gen_v0sync_hend : in STD_LOGIC_VECTOR ( 10 downto 0 ); 
    det_status : out STD_LOGIC_VECTOR ( 31 downto 0 ); 
    version : out STD_LOGIC_VECTOR ( 31 downto 0 ); 
    intr_status : out STD_LOGIC_VECTOR ( 31 downto 0 ); 
    det_htotal : out STD_LOGIC_VECTOR ( 10 downto 0 ); 
    det_hfp_start : out STD_LOGIC_VECTOR ( 10 downto 0 ); 
    det_hsync_start : out STD_LOGIC_VECTOR ( 10 downto 0 ); 
    det_hbp_start : out STD_LOGIC_VECTOR ( 10 downto 0 ); 
    det_hactive_start : out STD_LOGIC_VECTOR ( 10 downto 0 ); 
    det_v0total : out STD_LOGIC_VECTOR ( 10 downto 0 ); 
    det_v0fp_start : out STD_LOGIC_VECTOR ( 10 downto 0 ); 
    det_v0sync_start : out STD_LOGIC_VECTOR ( 10 downto 0 ); 
    det_v0bp_start : out STD_LOGIC_VECTOR ( 10 downto 0 ); 
    det_v0active_start : out STD_LOGIC_VECTOR ( 10 downto 0 ); 
    det_v0achroma_start : out STD_LOGIC_VECTOR ( 10 downto 0 ); 
    det_v0blank_hstart : out STD_LOGIC_VECTOR ( 10 downto 0 ); 
    det_v0blank_hend : out STD_LOGIC_VECTOR ( 10 downto 0 ); 
    det_v0sync_hstart : out STD_LOGIC_VECTOR ( 10 downto 0 ); 
    det_v0sync_hend : out STD_LOGIC_VECTOR ( 10 downto 0 ); 
    fsync : out STD_LOGIC_VECTOR ( 0 downto 0 ) 
  );
end v_tc_v3_0_u0;

architecture STRUCTURE of v_tc_v3_0_u0 is
  signal NlwRenamedSignal_video_clk_in : STD_LOGIC; 
  signal NlwRenamedSig_OI_det_status_25_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_det_status_24_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_det_status_23_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_det_status_22_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_det_status_21_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_det_status_20_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_det_status_0_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_intr_status_16_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_intr_status_15_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_intr_status_14_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_intr_status_13_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_intr_status_12_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_intr_status_9_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_intr_status_8_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_intr_status_7_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_intr_status_5_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_intr_status_3_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_intr_status_2_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_intr_status_1_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_intr_status_0_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_vblank_out : STD_LOGIC; 
  signal NlwRenamedSig_OI_active_video_out : STD_LOGIC; 
  signal blk00000001_sig000007c9 : STD_LOGIC; 
  signal blk00000001_sig000007c8 : STD_LOGIC; 
  signal blk00000001_sig000007c7 : STD_LOGIC; 
  signal blk00000001_sig000007c6 : STD_LOGIC; 
  signal blk00000001_sig000007c5 : STD_LOGIC; 
  signal blk00000001_sig000007c4 : STD_LOGIC; 
  signal blk00000001_sig000007c3 : STD_LOGIC; 
  signal blk00000001_sig000007c2 : STD_LOGIC; 
  signal blk00000001_sig000007c1 : STD_LOGIC; 
  signal blk00000001_sig000007c0 : STD_LOGIC; 
  signal blk00000001_sig000007bf : STD_LOGIC; 
  signal blk00000001_sig000007be : STD_LOGIC; 
  signal blk00000001_sig000007bd : STD_LOGIC; 
  signal blk00000001_sig000007bc : STD_LOGIC; 
  signal blk00000001_sig000007bb : STD_LOGIC; 
  signal blk00000001_sig000007ba : STD_LOGIC; 
  signal blk00000001_sig000007b9 : STD_LOGIC; 
  signal blk00000001_sig000007b8 : STD_LOGIC; 
  signal blk00000001_sig000007b7 : STD_LOGIC; 
  signal blk00000001_sig000007b6 : STD_LOGIC; 
  signal blk00000001_sig000007b5 : STD_LOGIC; 
  signal blk00000001_sig000007b4 : STD_LOGIC; 
  signal blk00000001_sig000007b3 : STD_LOGIC; 
  signal blk00000001_sig000007b2 : STD_LOGIC; 
  signal blk00000001_sig000007b1 : STD_LOGIC; 
  signal blk00000001_sig000007b0 : STD_LOGIC; 
  signal blk00000001_sig000007af : STD_LOGIC; 
  signal blk00000001_sig000007ae : STD_LOGIC; 
  signal blk00000001_sig000007ad : STD_LOGIC; 
  signal blk00000001_sig000007ac : STD_LOGIC; 
  signal blk00000001_sig000007ab : STD_LOGIC; 
  signal blk00000001_sig000007aa : STD_LOGIC; 
  signal blk00000001_sig000007a9 : STD_LOGIC; 
  signal blk00000001_sig000007a8 : STD_LOGIC; 
  signal blk00000001_sig000007a7 : STD_LOGIC; 
  signal blk00000001_sig000007a6 : STD_LOGIC; 
  signal blk00000001_sig000007a5 : STD_LOGIC; 
  signal blk00000001_sig000007a4 : STD_LOGIC; 
  signal blk00000001_sig000007a3 : STD_LOGIC; 
  signal blk00000001_sig000007a2 : STD_LOGIC; 
  signal blk00000001_sig000007a1 : STD_LOGIC; 
  signal blk00000001_sig000007a0 : STD_LOGIC; 
  signal blk00000001_sig0000079f : STD_LOGIC; 
  signal blk00000001_sig0000079e : STD_LOGIC; 
  signal blk00000001_sig0000079d : STD_LOGIC; 
  signal blk00000001_sig0000079c : STD_LOGIC; 
  signal blk00000001_sig0000079b : STD_LOGIC; 
  signal blk00000001_sig0000079a : STD_LOGIC; 
  signal blk00000001_sig00000799 : STD_LOGIC; 
  signal blk00000001_sig00000798 : STD_LOGIC; 
  signal blk00000001_sig00000797 : STD_LOGIC; 
  signal blk00000001_sig00000796 : STD_LOGIC; 
  signal blk00000001_sig00000795 : STD_LOGIC; 
  signal blk00000001_sig00000794 : STD_LOGIC; 
  signal blk00000001_sig00000793 : STD_LOGIC; 
  signal blk00000001_sig00000792 : STD_LOGIC; 
  signal blk00000001_sig00000791 : STD_LOGIC; 
  signal blk00000001_sig00000790 : STD_LOGIC; 
  signal blk00000001_sig0000078f : STD_LOGIC; 
  signal blk00000001_sig0000078e : STD_LOGIC; 
  signal blk00000001_sig0000078d : STD_LOGIC; 
  signal blk00000001_sig0000078c : STD_LOGIC; 
  signal blk00000001_sig0000078b : STD_LOGIC; 
  signal blk00000001_sig0000078a : STD_LOGIC; 
  signal blk00000001_sig00000789 : STD_LOGIC; 
  signal blk00000001_sig00000788 : STD_LOGIC; 
  signal blk00000001_sig00000787 : STD_LOGIC; 
  signal blk00000001_sig00000786 : STD_LOGIC; 
  signal blk00000001_sig00000785 : STD_LOGIC; 
  signal blk00000001_sig00000784 : STD_LOGIC; 
  signal blk00000001_sig00000783 : STD_LOGIC; 
  signal blk00000001_sig00000782 : STD_LOGIC; 
  signal blk00000001_sig00000781 : STD_LOGIC; 
  signal blk00000001_sig00000780 : STD_LOGIC; 
  signal blk00000001_sig0000077f : STD_LOGIC; 
  signal blk00000001_sig0000077e : STD_LOGIC; 
  signal blk00000001_sig0000077d : STD_LOGIC; 
  signal blk00000001_sig0000077c : STD_LOGIC; 
  signal blk00000001_sig0000077b : STD_LOGIC; 
  signal blk00000001_sig0000077a : STD_LOGIC; 
  signal blk00000001_sig00000779 : STD_LOGIC; 
  signal blk00000001_sig00000778 : STD_LOGIC; 
  signal blk00000001_sig00000777 : STD_LOGIC; 
  signal blk00000001_sig00000776 : STD_LOGIC; 
  signal blk00000001_sig00000775 : STD_LOGIC; 
  signal blk00000001_sig00000774 : STD_LOGIC; 
  signal blk00000001_sig00000773 : STD_LOGIC; 
  signal blk00000001_sig00000772 : STD_LOGIC; 
  signal blk00000001_sig00000771 : STD_LOGIC; 
  signal blk00000001_sig00000770 : STD_LOGIC; 
  signal blk00000001_sig0000076f : STD_LOGIC; 
  signal blk00000001_sig0000076e : STD_LOGIC; 
  signal blk00000001_sig0000076d : STD_LOGIC; 
  signal blk00000001_sig0000076c : STD_LOGIC; 
  signal blk00000001_sig0000076b : STD_LOGIC; 
  signal blk00000001_sig0000076a : STD_LOGIC; 
  signal blk00000001_sig00000769 : STD_LOGIC; 
  signal blk00000001_sig00000768 : STD_LOGIC; 
  signal blk00000001_sig00000767 : STD_LOGIC; 
  signal blk00000001_sig00000766 : STD_LOGIC; 
  signal blk00000001_sig00000765 : STD_LOGIC; 
  signal blk00000001_sig00000764 : STD_LOGIC; 
  signal blk00000001_sig00000763 : STD_LOGIC; 
  signal blk00000001_sig00000762 : STD_LOGIC; 
  signal blk00000001_sig00000761 : STD_LOGIC; 
  signal blk00000001_sig00000760 : STD_LOGIC; 
  signal blk00000001_sig0000075f : STD_LOGIC; 
  signal blk00000001_sig0000075e : STD_LOGIC; 
  signal blk00000001_sig0000075d : STD_LOGIC; 
  signal blk00000001_sig0000075c : STD_LOGIC; 
  signal blk00000001_sig0000075b : STD_LOGIC; 
  signal blk00000001_sig0000075a : STD_LOGIC; 
  signal blk00000001_sig00000759 : STD_LOGIC; 
  signal blk00000001_sig00000758 : STD_LOGIC; 
  signal blk00000001_sig00000757 : STD_LOGIC; 
  signal blk00000001_sig00000756 : STD_LOGIC; 
  signal blk00000001_sig00000755 : STD_LOGIC; 
  signal blk00000001_sig00000754 : STD_LOGIC; 
  signal blk00000001_sig00000753 : STD_LOGIC; 
  signal blk00000001_sig00000752 : STD_LOGIC; 
  signal blk00000001_sig00000751 : STD_LOGIC; 
  signal blk00000001_sig00000750 : STD_LOGIC; 
  signal blk00000001_sig0000074f : STD_LOGIC; 
  signal blk00000001_sig0000074e : STD_LOGIC; 
  signal blk00000001_sig0000074d : STD_LOGIC; 
  signal blk00000001_sig0000074c : STD_LOGIC; 
  signal blk00000001_sig0000074b : STD_LOGIC; 
  signal blk00000001_sig0000074a : STD_LOGIC; 
  signal blk00000001_sig00000749 : STD_LOGIC; 
  signal blk00000001_sig00000748 : STD_LOGIC; 
  signal blk00000001_sig00000747 : STD_LOGIC; 
  signal blk00000001_sig00000746 : STD_LOGIC; 
  signal blk00000001_sig00000745 : STD_LOGIC; 
  signal blk00000001_sig00000744 : STD_LOGIC; 
  signal blk00000001_sig00000743 : STD_LOGIC; 
  signal blk00000001_sig00000742 : STD_LOGIC; 
  signal blk00000001_sig00000741 : STD_LOGIC; 
  signal blk00000001_sig00000740 : STD_LOGIC; 
  signal blk00000001_sig0000073f : STD_LOGIC; 
  signal blk00000001_sig0000073e : STD_LOGIC; 
  signal blk00000001_sig0000073d : STD_LOGIC; 
  signal blk00000001_sig0000073c : STD_LOGIC; 
  signal blk00000001_sig0000073b : STD_LOGIC; 
  signal blk00000001_sig0000073a : STD_LOGIC; 
  signal blk00000001_sig00000739 : STD_LOGIC; 
  signal blk00000001_sig00000738 : STD_LOGIC; 
  signal blk00000001_sig00000737 : STD_LOGIC; 
  signal blk00000001_sig00000736 : STD_LOGIC; 
  signal blk00000001_sig00000735 : STD_LOGIC; 
  signal blk00000001_sig00000734 : STD_LOGIC; 
  signal blk00000001_sig00000733 : STD_LOGIC; 
  signal blk00000001_sig00000732 : STD_LOGIC; 
  signal blk00000001_sig00000731 : STD_LOGIC; 
  signal blk00000001_sig00000730 : STD_LOGIC; 
  signal blk00000001_sig0000072f : STD_LOGIC; 
  signal blk00000001_sig0000072e : STD_LOGIC; 
  signal blk00000001_sig0000072d : STD_LOGIC; 
  signal blk00000001_sig0000072c : STD_LOGIC; 
  signal blk00000001_sig0000072b : STD_LOGIC; 
  signal blk00000001_sig0000072a : STD_LOGIC; 
  signal blk00000001_sig00000729 : STD_LOGIC; 
  signal blk00000001_sig00000728 : STD_LOGIC; 
  signal blk00000001_sig00000727 : STD_LOGIC; 
  signal blk00000001_sig00000726 : STD_LOGIC; 
  signal blk00000001_sig00000725 : STD_LOGIC; 
  signal blk00000001_sig00000724 : STD_LOGIC; 
  signal blk00000001_sig00000723 : STD_LOGIC; 
  signal blk00000001_sig00000722 : STD_LOGIC; 
  signal blk00000001_sig00000721 : STD_LOGIC; 
  signal blk00000001_sig00000720 : STD_LOGIC; 
  signal blk00000001_sig0000071f : STD_LOGIC; 
  signal blk00000001_sig0000071e : STD_LOGIC; 
  signal blk00000001_sig0000071d : STD_LOGIC; 
  signal blk00000001_sig0000071c : STD_LOGIC; 
  signal blk00000001_sig0000071b : STD_LOGIC; 
  signal blk00000001_sig0000071a : STD_LOGIC; 
  signal blk00000001_sig00000719 : STD_LOGIC; 
  signal blk00000001_sig00000718 : STD_LOGIC; 
  signal blk00000001_sig00000717 : STD_LOGIC; 
  signal blk00000001_sig00000716 : STD_LOGIC; 
  signal blk00000001_sig00000715 : STD_LOGIC; 
  signal blk00000001_sig00000714 : STD_LOGIC; 
  signal blk00000001_sig00000713 : STD_LOGIC; 
  signal blk00000001_sig00000712 : STD_LOGIC; 
  signal blk00000001_sig00000711 : STD_LOGIC; 
  signal blk00000001_sig00000710 : STD_LOGIC; 
  signal blk00000001_sig0000070f : STD_LOGIC; 
  signal blk00000001_sig0000070e : STD_LOGIC; 
  signal blk00000001_sig0000070d : STD_LOGIC; 
  signal blk00000001_sig0000070c : STD_LOGIC; 
  signal blk00000001_sig0000070b : STD_LOGIC; 
  signal blk00000001_sig0000070a : STD_LOGIC; 
  signal blk00000001_sig00000709 : STD_LOGIC; 
  signal blk00000001_sig00000708 : STD_LOGIC; 
  signal blk00000001_sig00000707 : STD_LOGIC; 
  signal blk00000001_sig00000706 : STD_LOGIC; 
  signal blk00000001_sig00000705 : STD_LOGIC; 
  signal blk00000001_sig00000704 : STD_LOGIC; 
  signal blk00000001_sig00000703 : STD_LOGIC; 
  signal blk00000001_sig00000702 : STD_LOGIC; 
  signal blk00000001_sig00000701 : STD_LOGIC; 
  signal blk00000001_sig00000700 : STD_LOGIC; 
  signal blk00000001_sig000006ff : STD_LOGIC; 
  signal blk00000001_sig000006fe : STD_LOGIC; 
  signal blk00000001_sig000006fd : STD_LOGIC; 
  signal blk00000001_sig000006fc : STD_LOGIC; 
  signal blk00000001_sig000006fb : STD_LOGIC; 
  signal blk00000001_sig000006fa : STD_LOGIC; 
  signal blk00000001_sig000006f9 : STD_LOGIC; 
  signal blk00000001_sig000006f8 : STD_LOGIC; 
  signal blk00000001_sig000006f7 : STD_LOGIC; 
  signal blk00000001_sig000006f6 : STD_LOGIC; 
  signal blk00000001_sig000006f5 : STD_LOGIC; 
  signal blk00000001_sig000006f4 : STD_LOGIC; 
  signal blk00000001_sig000006f3 : STD_LOGIC; 
  signal blk00000001_sig000006f2 : STD_LOGIC; 
  signal blk00000001_sig000006f1 : STD_LOGIC; 
  signal blk00000001_sig000006f0 : STD_LOGIC; 
  signal blk00000001_sig000006ef : STD_LOGIC; 
  signal blk00000001_sig000006ee : STD_LOGIC; 
  signal blk00000001_sig000006ed : STD_LOGIC; 
  signal blk00000001_sig000006ec : STD_LOGIC; 
  signal blk00000001_sig000006eb : STD_LOGIC; 
  signal blk00000001_sig000006ea : STD_LOGIC; 
  signal blk00000001_sig000006e9 : STD_LOGIC; 
  signal blk00000001_sig000006e8 : STD_LOGIC; 
  signal blk00000001_sig000006e7 : STD_LOGIC; 
  signal blk00000001_sig000006e6 : STD_LOGIC; 
  signal blk00000001_sig000006e5 : STD_LOGIC; 
  signal blk00000001_sig000006e4 : STD_LOGIC; 
  signal blk00000001_sig000006e3 : STD_LOGIC; 
  signal blk00000001_sig000006e2 : STD_LOGIC; 
  signal blk00000001_sig000006e1 : STD_LOGIC; 
  signal blk00000001_sig000006e0 : STD_LOGIC; 
  signal blk00000001_sig000006df : STD_LOGIC; 
  signal blk00000001_sig000006de : STD_LOGIC; 
  signal blk00000001_sig000006dd : STD_LOGIC; 
  signal blk00000001_sig000006dc : STD_LOGIC; 
  signal blk00000001_sig000006db : STD_LOGIC; 
  signal blk00000001_sig000006da : STD_LOGIC; 
  signal blk00000001_sig000006d9 : STD_LOGIC; 
  signal blk00000001_sig000006d8 : STD_LOGIC; 
  signal blk00000001_sig000006d7 : STD_LOGIC; 
  signal blk00000001_sig000006d6 : STD_LOGIC; 
  signal blk00000001_sig000006d5 : STD_LOGIC; 
  signal blk00000001_sig000006d4 : STD_LOGIC; 
  signal blk00000001_sig000006d3 : STD_LOGIC; 
  signal blk00000001_sig000006d2 : STD_LOGIC; 
  signal blk00000001_sig000006d1 : STD_LOGIC; 
  signal blk00000001_sig000006d0 : STD_LOGIC; 
  signal blk00000001_sig000006cf : STD_LOGIC; 
  signal blk00000001_sig000006ce : STD_LOGIC; 
  signal blk00000001_sig000006cd : STD_LOGIC; 
  signal blk00000001_sig000006cc : STD_LOGIC; 
  signal blk00000001_sig000006cb : STD_LOGIC; 
  signal blk00000001_sig000006ca : STD_LOGIC; 
  signal blk00000001_sig000006c9 : STD_LOGIC; 
  signal blk00000001_sig000006c8 : STD_LOGIC; 
  signal blk00000001_sig000006c7 : STD_LOGIC; 
  signal blk00000001_sig000006c6 : STD_LOGIC; 
  signal blk00000001_sig000006c5 : STD_LOGIC; 
  signal blk00000001_sig000006c4 : STD_LOGIC; 
  signal blk00000001_sig000006c3 : STD_LOGIC; 
  signal blk00000001_sig000006c2 : STD_LOGIC; 
  signal blk00000001_sig000006c1 : STD_LOGIC; 
  signal blk00000001_sig000006c0 : STD_LOGIC; 
  signal blk00000001_sig000006bf : STD_LOGIC; 
  signal blk00000001_sig000006be : STD_LOGIC; 
  signal blk00000001_sig000006bd : STD_LOGIC; 
  signal blk00000001_sig000006bc : STD_LOGIC; 
  signal blk00000001_sig000006bb : STD_LOGIC; 
  signal blk00000001_sig000006ba : STD_LOGIC; 
  signal blk00000001_sig000006b9 : STD_LOGIC; 
  signal blk00000001_sig000006b8 : STD_LOGIC; 
  signal blk00000001_sig000006b7 : STD_LOGIC; 
  signal blk00000001_sig000006b6 : STD_LOGIC; 
  signal blk00000001_sig000006b5 : STD_LOGIC; 
  signal blk00000001_sig000006b4 : STD_LOGIC; 
  signal blk00000001_sig000006b3 : STD_LOGIC; 
  signal blk00000001_sig000006b2 : STD_LOGIC; 
  signal blk00000001_sig000006b1 : STD_LOGIC; 
  signal blk00000001_sig000006b0 : STD_LOGIC; 
  signal blk00000001_sig000006af : STD_LOGIC; 
  signal blk00000001_sig000006ae : STD_LOGIC; 
  signal blk00000001_sig000006ad : STD_LOGIC; 
  signal blk00000001_sig000006ac : STD_LOGIC; 
  signal blk00000001_sig000006ab : STD_LOGIC; 
  signal blk00000001_sig000006aa : STD_LOGIC; 
  signal blk00000001_sig000006a9 : STD_LOGIC; 
  signal blk00000001_sig000006a8 : STD_LOGIC; 
  signal blk00000001_sig000006a7 : STD_LOGIC; 
  signal blk00000001_sig000006a6 : STD_LOGIC; 
  signal blk00000001_sig000006a5 : STD_LOGIC; 
  signal blk00000001_sig000006a4 : STD_LOGIC; 
  signal blk00000001_sig000006a3 : STD_LOGIC; 
  signal blk00000001_sig000006a2 : STD_LOGIC; 
  signal blk00000001_sig000006a1 : STD_LOGIC; 
  signal blk00000001_sig000006a0 : STD_LOGIC; 
  signal blk00000001_sig0000069f : STD_LOGIC; 
  signal blk00000001_sig0000069e : STD_LOGIC; 
  signal blk00000001_sig0000069d : STD_LOGIC; 
  signal blk00000001_sig0000069c : STD_LOGIC; 
  signal blk00000001_sig0000069b : STD_LOGIC; 
  signal blk00000001_sig0000069a : STD_LOGIC; 
  signal blk00000001_sig00000699 : STD_LOGIC; 
  signal blk00000001_sig00000698 : STD_LOGIC; 
  signal blk00000001_sig00000697 : STD_LOGIC; 
  signal blk00000001_sig00000696 : STD_LOGIC; 
  signal blk00000001_sig00000695 : STD_LOGIC; 
  signal blk00000001_sig00000694 : STD_LOGIC; 
  signal blk00000001_sig00000693 : STD_LOGIC; 
  signal blk00000001_sig00000692 : STD_LOGIC; 
  signal blk00000001_sig00000691 : STD_LOGIC; 
  signal blk00000001_sig00000690 : STD_LOGIC; 
  signal blk00000001_sig0000068f : STD_LOGIC; 
  signal blk00000001_sig0000068e : STD_LOGIC; 
  signal blk00000001_sig0000068d : STD_LOGIC; 
  signal blk00000001_sig0000068c : STD_LOGIC; 
  signal blk00000001_sig0000068b : STD_LOGIC; 
  signal blk00000001_sig0000068a : STD_LOGIC; 
  signal blk00000001_sig00000689 : STD_LOGIC; 
  signal blk00000001_sig00000688 : STD_LOGIC; 
  signal blk00000001_sig00000687 : STD_LOGIC; 
  signal blk00000001_sig00000686 : STD_LOGIC; 
  signal blk00000001_sig00000685 : STD_LOGIC; 
  signal blk00000001_sig00000684 : STD_LOGIC; 
  signal blk00000001_sig00000683 : STD_LOGIC; 
  signal blk00000001_sig00000682 : STD_LOGIC; 
  signal blk00000001_sig00000681 : STD_LOGIC; 
  signal blk00000001_sig00000680 : STD_LOGIC; 
  signal blk00000001_sig0000067f : STD_LOGIC; 
  signal blk00000001_sig0000067e : STD_LOGIC; 
  signal blk00000001_sig0000067d : STD_LOGIC; 
  signal blk00000001_sig0000067c : STD_LOGIC; 
  signal blk00000001_sig0000067b : STD_LOGIC; 
  signal blk00000001_sig0000067a : STD_LOGIC; 
  signal blk00000001_sig00000679 : STD_LOGIC; 
  signal blk00000001_sig00000678 : STD_LOGIC; 
  signal blk00000001_sig00000677 : STD_LOGIC; 
  signal blk00000001_sig00000676 : STD_LOGIC; 
  signal blk00000001_sig00000675 : STD_LOGIC; 
  signal blk00000001_sig00000674 : STD_LOGIC; 
  signal blk00000001_sig00000673 : STD_LOGIC; 
  signal blk00000001_sig00000672 : STD_LOGIC; 
  signal blk00000001_sig00000671 : STD_LOGIC; 
  signal blk00000001_sig00000670 : STD_LOGIC; 
  signal blk00000001_sig0000066f : STD_LOGIC; 
  signal blk00000001_sig0000066e : STD_LOGIC; 
  signal blk00000001_sig0000066d : STD_LOGIC; 
  signal blk00000001_sig0000066c : STD_LOGIC; 
  signal blk00000001_sig0000066b : STD_LOGIC; 
  signal blk00000001_sig0000066a : STD_LOGIC; 
  signal blk00000001_sig00000669 : STD_LOGIC; 
  signal blk00000001_sig00000668 : STD_LOGIC; 
  signal blk00000001_sig00000667 : STD_LOGIC; 
  signal blk00000001_sig00000666 : STD_LOGIC; 
  signal blk00000001_sig00000665 : STD_LOGIC; 
  signal blk00000001_sig00000664 : STD_LOGIC; 
  signal blk00000001_sig00000663 : STD_LOGIC; 
  signal blk00000001_sig00000662 : STD_LOGIC; 
  signal blk00000001_sig00000661 : STD_LOGIC; 
  signal blk00000001_sig00000660 : STD_LOGIC; 
  signal blk00000001_sig0000065f : STD_LOGIC; 
  signal blk00000001_sig0000065e : STD_LOGIC; 
  signal blk00000001_sig0000065d : STD_LOGIC; 
  signal blk00000001_sig0000065c : STD_LOGIC; 
  signal blk00000001_sig0000065b : STD_LOGIC; 
  signal blk00000001_sig0000065a : STD_LOGIC; 
  signal blk00000001_sig00000659 : STD_LOGIC; 
  signal blk00000001_sig00000658 : STD_LOGIC; 
  signal blk00000001_sig00000657 : STD_LOGIC; 
  signal blk00000001_sig00000656 : STD_LOGIC; 
  signal blk00000001_sig00000655 : STD_LOGIC; 
  signal blk00000001_sig00000654 : STD_LOGIC; 
  signal blk00000001_sig00000653 : STD_LOGIC; 
  signal blk00000001_sig00000652 : STD_LOGIC; 
  signal blk00000001_sig00000651 : STD_LOGIC; 
  signal blk00000001_sig00000650 : STD_LOGIC; 
  signal blk00000001_sig0000064f : STD_LOGIC; 
  signal blk00000001_sig0000064e : STD_LOGIC; 
  signal blk00000001_sig0000064d : STD_LOGIC; 
  signal blk00000001_sig0000064c : STD_LOGIC; 
  signal blk00000001_sig0000064b : STD_LOGIC; 
  signal blk00000001_sig0000064a : STD_LOGIC; 
  signal blk00000001_sig00000649 : STD_LOGIC; 
  signal blk00000001_sig00000648 : STD_LOGIC; 
  signal blk00000001_sig00000647 : STD_LOGIC; 
  signal blk00000001_sig00000646 : STD_LOGIC; 
  signal blk00000001_sig00000645 : STD_LOGIC; 
  signal blk00000001_sig00000644 : STD_LOGIC; 
  signal blk00000001_sig00000643 : STD_LOGIC; 
  signal blk00000001_sig00000642 : STD_LOGIC; 
  signal blk00000001_sig00000641 : STD_LOGIC; 
  signal blk00000001_sig00000640 : STD_LOGIC; 
  signal blk00000001_sig0000063f : STD_LOGIC; 
  signal blk00000001_sig0000063e : STD_LOGIC; 
  signal blk00000001_sig0000063d : STD_LOGIC; 
  signal blk00000001_sig0000063c : STD_LOGIC; 
  signal blk00000001_sig0000063b : STD_LOGIC; 
  signal blk00000001_sig0000063a : STD_LOGIC; 
  signal blk00000001_sig00000639 : STD_LOGIC; 
  signal blk00000001_sig00000638 : STD_LOGIC; 
  signal blk00000001_sig00000637 : STD_LOGIC; 
  signal blk00000001_sig00000636 : STD_LOGIC; 
  signal blk00000001_sig00000635 : STD_LOGIC; 
  signal blk00000001_sig00000634 : STD_LOGIC; 
  signal blk00000001_sig00000633 : STD_LOGIC; 
  signal blk00000001_sig00000632 : STD_LOGIC; 
  signal blk00000001_sig00000631 : STD_LOGIC; 
  signal blk00000001_sig00000630 : STD_LOGIC; 
  signal blk00000001_sig0000062f : STD_LOGIC; 
  signal blk00000001_sig0000062e : STD_LOGIC; 
  signal blk00000001_sig0000062d : STD_LOGIC; 
  signal blk00000001_sig0000062c : STD_LOGIC; 
  signal blk00000001_sig0000062b : STD_LOGIC; 
  signal blk00000001_sig0000062a : STD_LOGIC; 
  signal blk00000001_sig00000629 : STD_LOGIC; 
  signal blk00000001_sig00000628 : STD_LOGIC; 
  signal blk00000001_sig00000627 : STD_LOGIC; 
  signal blk00000001_sig00000626 : STD_LOGIC; 
  signal blk00000001_sig00000625 : STD_LOGIC; 
  signal blk00000001_sig00000624 : STD_LOGIC; 
  signal blk00000001_sig00000623 : STD_LOGIC; 
  signal blk00000001_sig00000622 : STD_LOGIC; 
  signal blk00000001_sig00000621 : STD_LOGIC; 
  signal blk00000001_sig00000620 : STD_LOGIC; 
  signal blk00000001_sig0000061f : STD_LOGIC; 
  signal blk00000001_sig0000061e : STD_LOGIC; 
  signal blk00000001_sig0000061d : STD_LOGIC; 
  signal blk00000001_sig0000061c : STD_LOGIC; 
  signal blk00000001_sig0000061b : STD_LOGIC; 
  signal blk00000001_sig0000061a : STD_LOGIC; 
  signal blk00000001_sig00000619 : STD_LOGIC; 
  signal blk00000001_sig00000618 : STD_LOGIC; 
  signal blk00000001_sig00000617 : STD_LOGIC; 
  signal blk00000001_sig00000616 : STD_LOGIC; 
  signal blk00000001_sig00000615 : STD_LOGIC; 
  signal blk00000001_sig00000614 : STD_LOGIC; 
  signal blk00000001_sig00000613 : STD_LOGIC; 
  signal blk00000001_sig00000612 : STD_LOGIC; 
  signal blk00000001_sig00000611 : STD_LOGIC; 
  signal blk00000001_sig00000610 : STD_LOGIC; 
  signal blk00000001_sig0000060f : STD_LOGIC; 
  signal blk00000001_sig0000060e : STD_LOGIC; 
  signal blk00000001_sig0000060d : STD_LOGIC; 
  signal blk00000001_sig0000060c : STD_LOGIC; 
  signal blk00000001_sig0000060b : STD_LOGIC; 
  signal blk00000001_sig0000060a : STD_LOGIC; 
  signal blk00000001_sig00000609 : STD_LOGIC; 
  signal blk00000001_sig00000608 : STD_LOGIC; 
  signal blk00000001_sig00000607 : STD_LOGIC; 
  signal blk00000001_sig00000606 : STD_LOGIC; 
  signal blk00000001_sig00000605 : STD_LOGIC; 
  signal blk00000001_sig00000604 : STD_LOGIC; 
  signal blk00000001_sig00000603 : STD_LOGIC; 
  signal blk00000001_sig00000602 : STD_LOGIC; 
  signal blk00000001_sig00000601 : STD_LOGIC; 
  signal blk00000001_sig00000600 : STD_LOGIC; 
  signal blk00000001_sig000005ff : STD_LOGIC; 
  signal blk00000001_sig000005fe : STD_LOGIC; 
  signal blk00000001_sig000005fd : STD_LOGIC; 
  signal blk00000001_sig000005fc : STD_LOGIC; 
  signal blk00000001_sig000005fb : STD_LOGIC; 
  signal blk00000001_sig000005fa : STD_LOGIC; 
  signal blk00000001_sig000005f9 : STD_LOGIC; 
  signal blk00000001_sig000005f8 : STD_LOGIC; 
  signal blk00000001_sig000005f7 : STD_LOGIC; 
  signal blk00000001_sig000005f6 : STD_LOGIC; 
  signal blk00000001_sig000005f5 : STD_LOGIC; 
  signal blk00000001_sig000005f4 : STD_LOGIC; 
  signal blk00000001_sig000005f3 : STD_LOGIC; 
  signal blk00000001_sig000005f2 : STD_LOGIC; 
  signal blk00000001_sig000005f1 : STD_LOGIC; 
  signal blk00000001_sig000005f0 : STD_LOGIC; 
  signal blk00000001_sig000005ef : STD_LOGIC; 
  signal blk00000001_sig000005ee : STD_LOGIC; 
  signal blk00000001_sig000005ed : STD_LOGIC; 
  signal blk00000001_sig000005ec : STD_LOGIC; 
  signal blk00000001_sig000005eb : STD_LOGIC; 
  signal blk00000001_sig000005ea : STD_LOGIC; 
  signal blk00000001_sig000005e9 : STD_LOGIC; 
  signal blk00000001_sig000005e8 : STD_LOGIC; 
  signal blk00000001_sig000005e7 : STD_LOGIC; 
  signal blk00000001_sig000005e6 : STD_LOGIC; 
  signal blk00000001_sig000005e5 : STD_LOGIC; 
  signal blk00000001_sig000005e4 : STD_LOGIC; 
  signal blk00000001_sig000005e3 : STD_LOGIC; 
  signal blk00000001_sig000005e2 : STD_LOGIC; 
  signal blk00000001_sig000005e1 : STD_LOGIC; 
  signal blk00000001_sig000005e0 : STD_LOGIC; 
  signal blk00000001_sig000005df : STD_LOGIC; 
  signal blk00000001_sig000005de : STD_LOGIC; 
  signal blk00000001_sig000005dd : STD_LOGIC; 
  signal blk00000001_sig000005dc : STD_LOGIC; 
  signal blk00000001_sig000005db : STD_LOGIC; 
  signal blk00000001_sig000005da : STD_LOGIC; 
  signal blk00000001_sig000005d9 : STD_LOGIC; 
  signal blk00000001_sig000005d8 : STD_LOGIC; 
  signal blk00000001_sig000005d7 : STD_LOGIC; 
  signal blk00000001_sig000005d6 : STD_LOGIC; 
  signal blk00000001_sig000005d5 : STD_LOGIC; 
  signal blk00000001_sig000005d4 : STD_LOGIC; 
  signal blk00000001_sig000005d3 : STD_LOGIC; 
  signal blk00000001_sig000005d2 : STD_LOGIC; 
  signal blk00000001_sig000005d1 : STD_LOGIC; 
  signal blk00000001_sig000005d0 : STD_LOGIC; 
  signal blk00000001_sig000005cf : STD_LOGIC; 
  signal blk00000001_sig000005ce : STD_LOGIC; 
  signal blk00000001_sig000005cd : STD_LOGIC; 
  signal blk00000001_sig000005cc : STD_LOGIC; 
  signal blk00000001_sig000005cb : STD_LOGIC; 
  signal blk00000001_sig000005ca : STD_LOGIC; 
  signal blk00000001_sig000005c9 : STD_LOGIC; 
  signal blk00000001_sig000005c8 : STD_LOGIC; 
  signal blk00000001_sig000005c7 : STD_LOGIC; 
  signal blk00000001_sig000005c6 : STD_LOGIC; 
  signal blk00000001_sig000005c5 : STD_LOGIC; 
  signal blk00000001_sig000005c4 : STD_LOGIC; 
  signal blk00000001_sig000005c3 : STD_LOGIC; 
  signal blk00000001_sig000005c2 : STD_LOGIC; 
  signal blk00000001_sig000005c1 : STD_LOGIC; 
  signal blk00000001_sig000005c0 : STD_LOGIC; 
  signal blk00000001_sig000005bf : STD_LOGIC; 
  signal blk00000001_sig000005be : STD_LOGIC; 
  signal blk00000001_sig000005bd : STD_LOGIC; 
  signal blk00000001_sig000005bc : STD_LOGIC; 
  signal blk00000001_sig000005bb : STD_LOGIC; 
  signal blk00000001_sig000005ba : STD_LOGIC; 
  signal blk00000001_sig000005b9 : STD_LOGIC; 
  signal blk00000001_sig000005b8 : STD_LOGIC; 
  signal blk00000001_sig000005b7 : STD_LOGIC; 
  signal blk00000001_sig000005b6 : STD_LOGIC; 
  signal blk00000001_sig000005b5 : STD_LOGIC; 
  signal blk00000001_sig000005b4 : STD_LOGIC; 
  signal blk00000001_sig000005b3 : STD_LOGIC; 
  signal blk00000001_sig000005b2 : STD_LOGIC; 
  signal blk00000001_sig000005b1 : STD_LOGIC; 
  signal blk00000001_sig000005b0 : STD_LOGIC; 
  signal blk00000001_sig000005af : STD_LOGIC; 
  signal blk00000001_sig000005ae : STD_LOGIC; 
  signal blk00000001_sig000005ad : STD_LOGIC; 
  signal blk00000001_sig000005ac : STD_LOGIC; 
  signal blk00000001_sig000005ab : STD_LOGIC; 
  signal blk00000001_sig000005aa : STD_LOGIC; 
  signal blk00000001_sig000005a9 : STD_LOGIC; 
  signal blk00000001_sig000005a8 : STD_LOGIC; 
  signal blk00000001_sig000005a7 : STD_LOGIC; 
  signal blk00000001_sig000005a6 : STD_LOGIC; 
  signal blk00000001_sig000005a5 : STD_LOGIC; 
  signal blk00000001_sig000005a4 : STD_LOGIC; 
  signal blk00000001_sig000005a3 : STD_LOGIC; 
  signal blk00000001_sig000005a2 : STD_LOGIC; 
  signal blk00000001_sig000005a1 : STD_LOGIC; 
  signal blk00000001_sig000005a0 : STD_LOGIC; 
  signal blk00000001_sig0000059f : STD_LOGIC; 
  signal blk00000001_sig0000059e : STD_LOGIC; 
  signal blk00000001_sig0000059d : STD_LOGIC; 
  signal blk00000001_sig0000059c : STD_LOGIC; 
  signal blk00000001_sig0000059b : STD_LOGIC; 
  signal blk00000001_sig0000059a : STD_LOGIC; 
  signal blk00000001_sig00000599 : STD_LOGIC; 
  signal blk00000001_sig00000598 : STD_LOGIC; 
  signal blk00000001_sig00000597 : STD_LOGIC; 
  signal blk00000001_sig00000596 : STD_LOGIC; 
  signal blk00000001_sig00000595 : STD_LOGIC; 
  signal blk00000001_sig00000594 : STD_LOGIC; 
  signal blk00000001_sig00000593 : STD_LOGIC; 
  signal blk00000001_sig00000592 : STD_LOGIC; 
  signal blk00000001_sig00000591 : STD_LOGIC; 
  signal blk00000001_sig00000590 : STD_LOGIC; 
  signal blk00000001_sig0000058f : STD_LOGIC; 
  signal blk00000001_sig0000058e : STD_LOGIC; 
  signal blk00000001_sig0000058d : STD_LOGIC; 
  signal blk00000001_sig0000058c : STD_LOGIC; 
  signal blk00000001_sig0000058b : STD_LOGIC; 
  signal blk00000001_sig0000058a : STD_LOGIC; 
  signal blk00000001_sig00000589 : STD_LOGIC; 
  signal blk00000001_sig00000588 : STD_LOGIC; 
  signal blk00000001_sig00000587 : STD_LOGIC; 
  signal blk00000001_sig00000586 : STD_LOGIC; 
  signal blk00000001_sig00000585 : STD_LOGIC; 
  signal blk00000001_sig00000584 : STD_LOGIC; 
  signal blk00000001_sig00000583 : STD_LOGIC; 
  signal blk00000001_sig00000582 : STD_LOGIC; 
  signal blk00000001_sig00000581 : STD_LOGIC; 
  signal blk00000001_sig00000580 : STD_LOGIC; 
  signal blk00000001_sig0000057f : STD_LOGIC; 
  signal blk00000001_sig0000057e : STD_LOGIC; 
  signal blk00000001_sig0000057d : STD_LOGIC; 
  signal blk00000001_sig0000057c : STD_LOGIC; 
  signal blk00000001_sig0000057b : STD_LOGIC; 
  signal blk00000001_sig0000057a : STD_LOGIC; 
  signal blk00000001_sig00000579 : STD_LOGIC; 
  signal blk00000001_sig00000578 : STD_LOGIC; 
  signal blk00000001_sig00000577 : STD_LOGIC; 
  signal blk00000001_sig00000576 : STD_LOGIC; 
  signal blk00000001_sig00000575 : STD_LOGIC; 
  signal blk00000001_sig00000574 : STD_LOGIC; 
  signal blk00000001_sig00000573 : STD_LOGIC; 
  signal blk00000001_sig00000572 : STD_LOGIC; 
  signal blk00000001_sig00000571 : STD_LOGIC; 
  signal blk00000001_sig00000570 : STD_LOGIC; 
  signal blk00000001_sig0000056f : STD_LOGIC; 
  signal blk00000001_sig0000056e : STD_LOGIC; 
  signal blk00000001_sig0000056d : STD_LOGIC; 
  signal blk00000001_sig0000056c : STD_LOGIC; 
  signal blk00000001_sig0000056b : STD_LOGIC; 
  signal blk00000001_sig0000056a : STD_LOGIC; 
  signal blk00000001_sig00000569 : STD_LOGIC; 
  signal blk00000001_sig00000568 : STD_LOGIC; 
  signal blk00000001_sig00000567 : STD_LOGIC; 
  signal blk00000001_sig00000566 : STD_LOGIC; 
  signal blk00000001_sig00000565 : STD_LOGIC; 
  signal blk00000001_sig00000564 : STD_LOGIC; 
  signal blk00000001_sig00000563 : STD_LOGIC; 
  signal blk00000001_sig00000562 : STD_LOGIC; 
  signal blk00000001_sig00000561 : STD_LOGIC; 
  signal blk00000001_sig00000560 : STD_LOGIC; 
  signal blk00000001_sig0000055f : STD_LOGIC; 
  signal blk00000001_sig0000055e : STD_LOGIC; 
  signal blk00000001_sig0000055d : STD_LOGIC; 
  signal blk00000001_sig0000055c : STD_LOGIC; 
  signal blk00000001_sig0000055b : STD_LOGIC; 
  signal blk00000001_sig0000055a : STD_LOGIC; 
  signal blk00000001_sig00000559 : STD_LOGIC; 
  signal blk00000001_sig00000558 : STD_LOGIC; 
  signal blk00000001_sig00000557 : STD_LOGIC; 
  signal blk00000001_sig00000556 : STD_LOGIC; 
  signal blk00000001_sig00000555 : STD_LOGIC; 
  signal blk00000001_sig00000554 : STD_LOGIC; 
  signal blk00000001_sig00000553 : STD_LOGIC; 
  signal blk00000001_sig00000552 : STD_LOGIC; 
  signal blk00000001_sig00000551 : STD_LOGIC; 
  signal blk00000001_sig00000550 : STD_LOGIC; 
  signal blk00000001_sig0000054f : STD_LOGIC; 
  signal blk00000001_sig0000054e : STD_LOGIC; 
  signal blk00000001_sig0000054d : STD_LOGIC; 
  signal blk00000001_sig0000054c : STD_LOGIC; 
  signal blk00000001_sig0000054b : STD_LOGIC; 
  signal blk00000001_sig0000054a : STD_LOGIC; 
  signal blk00000001_sig00000549 : STD_LOGIC; 
  signal blk00000001_sig00000548 : STD_LOGIC; 
  signal blk00000001_sig00000547 : STD_LOGIC; 
  signal blk00000001_sig00000546 : STD_LOGIC; 
  signal blk00000001_sig00000545 : STD_LOGIC; 
  signal blk00000001_sig00000544 : STD_LOGIC; 
  signal blk00000001_sig00000543 : STD_LOGIC; 
  signal blk00000001_sig00000542 : STD_LOGIC; 
  signal blk00000001_sig00000541 : STD_LOGIC; 
  signal blk00000001_sig00000540 : STD_LOGIC; 
  signal blk00000001_sig0000053f : STD_LOGIC; 
  signal blk00000001_sig0000053e : STD_LOGIC; 
  signal blk00000001_sig0000053d : STD_LOGIC; 
  signal blk00000001_sig0000053c : STD_LOGIC; 
  signal blk00000001_sig0000053b : STD_LOGIC; 
  signal blk00000001_sig0000053a : STD_LOGIC; 
  signal blk00000001_sig00000539 : STD_LOGIC; 
  signal blk00000001_sig00000538 : STD_LOGIC; 
  signal blk00000001_sig00000537 : STD_LOGIC; 
  signal blk00000001_sig00000536 : STD_LOGIC; 
  signal blk00000001_sig00000535 : STD_LOGIC; 
  signal blk00000001_sig00000534 : STD_LOGIC; 
  signal blk00000001_sig00000533 : STD_LOGIC; 
  signal blk00000001_sig00000532 : STD_LOGIC; 
  signal blk00000001_sig00000531 : STD_LOGIC; 
  signal blk00000001_sig00000530 : STD_LOGIC; 
  signal blk00000001_sig0000052f : STD_LOGIC; 
  signal blk00000001_sig0000052e : STD_LOGIC; 
  signal blk00000001_sig0000052d : STD_LOGIC; 
  signal blk00000001_sig0000052c : STD_LOGIC; 
  signal blk00000001_sig0000052b : STD_LOGIC; 
  signal blk00000001_sig0000052a : STD_LOGIC; 
  signal blk00000001_sig00000529 : STD_LOGIC; 
  signal blk00000001_sig00000528 : STD_LOGIC; 
  signal blk00000001_sig00000527 : STD_LOGIC; 
  signal blk00000001_sig00000526 : STD_LOGIC; 
  signal blk00000001_sig00000525 : STD_LOGIC; 
  signal blk00000001_sig00000524 : STD_LOGIC; 
  signal blk00000001_sig00000523 : STD_LOGIC; 
  signal blk00000001_sig00000522 : STD_LOGIC; 
  signal blk00000001_sig00000521 : STD_LOGIC; 
  signal blk00000001_sig00000520 : STD_LOGIC; 
  signal blk00000001_sig0000051f : STD_LOGIC; 
  signal blk00000001_sig0000051e : STD_LOGIC; 
  signal blk00000001_sig0000051d : STD_LOGIC; 
  signal blk00000001_sig0000051c : STD_LOGIC; 
  signal blk00000001_sig0000051b : STD_LOGIC; 
  signal blk00000001_sig0000051a : STD_LOGIC; 
  signal blk00000001_sig00000519 : STD_LOGIC; 
  signal blk00000001_sig00000518 : STD_LOGIC; 
  signal blk00000001_sig00000517 : STD_LOGIC; 
  signal blk00000001_sig00000516 : STD_LOGIC; 
  signal blk00000001_sig00000515 : STD_LOGIC; 
  signal blk00000001_sig00000514 : STD_LOGIC; 
  signal blk00000001_sig00000513 : STD_LOGIC; 
  signal blk00000001_sig00000512 : STD_LOGIC; 
  signal blk00000001_sig00000511 : STD_LOGIC; 
  signal blk00000001_sig00000510 : STD_LOGIC; 
  signal blk00000001_sig0000050f : STD_LOGIC; 
  signal blk00000001_sig0000050e : STD_LOGIC; 
  signal blk00000001_sig0000050d : STD_LOGIC; 
  signal blk00000001_sig0000050c : STD_LOGIC; 
  signal blk00000001_sig0000050b : STD_LOGIC; 
  signal blk00000001_sig0000050a : STD_LOGIC; 
  signal blk00000001_sig00000509 : STD_LOGIC; 
  signal blk00000001_sig00000508 : STD_LOGIC; 
  signal blk00000001_sig00000507 : STD_LOGIC; 
  signal blk00000001_sig00000506 : STD_LOGIC; 
  signal blk00000001_sig00000505 : STD_LOGIC; 
  signal blk00000001_sig00000504 : STD_LOGIC; 
  signal blk00000001_sig00000503 : STD_LOGIC; 
  signal blk00000001_sig00000502 : STD_LOGIC; 
  signal blk00000001_sig00000501 : STD_LOGIC; 
  signal blk00000001_sig00000500 : STD_LOGIC; 
  signal blk00000001_sig000004ff : STD_LOGIC; 
  signal blk00000001_sig000004fe : STD_LOGIC; 
  signal blk00000001_sig000004fd : STD_LOGIC; 
  signal blk00000001_sig000004fc : STD_LOGIC; 
  signal blk00000001_sig000004fb : STD_LOGIC; 
  signal blk00000001_sig000004fa : STD_LOGIC; 
  signal blk00000001_sig000004f9 : STD_LOGIC; 
  signal blk00000001_sig000004f8 : STD_LOGIC; 
  signal blk00000001_sig000004f7 : STD_LOGIC; 
  signal blk00000001_sig000004f6 : STD_LOGIC; 
  signal blk00000001_sig000004f5 : STD_LOGIC; 
  signal blk00000001_sig000004f4 : STD_LOGIC; 
  signal blk00000001_sig000004f3 : STD_LOGIC; 
  signal blk00000001_sig000004f2 : STD_LOGIC; 
  signal blk00000001_sig000004f1 : STD_LOGIC; 
  signal blk00000001_sig000004f0 : STD_LOGIC; 
  signal blk00000001_sig000004ef : STD_LOGIC; 
  signal blk00000001_sig000004ee : STD_LOGIC; 
  signal blk00000001_sig000004ed : STD_LOGIC; 
  signal blk00000001_sig000004ec : STD_LOGIC; 
  signal blk00000001_sig000004eb : STD_LOGIC; 
  signal blk00000001_sig000004ea : STD_LOGIC; 
  signal blk00000001_sig000004e9 : STD_LOGIC; 
  signal blk00000001_sig000004e8 : STD_LOGIC; 
  signal blk00000001_sig000004e7 : STD_LOGIC; 
  signal blk00000001_sig000004e6 : STD_LOGIC; 
  signal blk00000001_sig000004e5 : STD_LOGIC; 
  signal blk00000001_sig000004e4 : STD_LOGIC; 
  signal blk00000001_sig000004e3 : STD_LOGIC; 
  signal blk00000001_sig000004e2 : STD_LOGIC; 
  signal blk00000001_sig000004e1 : STD_LOGIC; 
  signal blk00000001_sig000004e0 : STD_LOGIC; 
  signal blk00000001_sig000004df : STD_LOGIC; 
  signal blk00000001_sig000004de : STD_LOGIC; 
  signal blk00000001_sig000004dd : STD_LOGIC; 
  signal blk00000001_sig000004dc : STD_LOGIC; 
  signal blk00000001_sig000004db : STD_LOGIC; 
  signal blk00000001_sig000004da : STD_LOGIC; 
  signal blk00000001_sig000004d9 : STD_LOGIC; 
  signal blk00000001_sig000004d8 : STD_LOGIC; 
  signal blk00000001_sig000004d7 : STD_LOGIC; 
  signal blk00000001_sig000004d6 : STD_LOGIC; 
  signal blk00000001_sig000004d5 : STD_LOGIC; 
  signal blk00000001_sig000004d4 : STD_LOGIC; 
  signal blk00000001_sig000004d3 : STD_LOGIC; 
  signal blk00000001_sig000004d2 : STD_LOGIC; 
  signal blk00000001_sig000004d1 : STD_LOGIC; 
  signal blk00000001_sig000004d0 : STD_LOGIC; 
  signal blk00000001_sig000004cf : STD_LOGIC; 
  signal blk00000001_sig000004ce : STD_LOGIC; 
  signal blk00000001_sig000004cd : STD_LOGIC; 
  signal blk00000001_sig000004cc : STD_LOGIC; 
  signal blk00000001_sig000004cb : STD_LOGIC; 
  signal blk00000001_sig000004ca : STD_LOGIC; 
  signal blk00000001_sig000004c9 : STD_LOGIC; 
  signal blk00000001_sig000004c8 : STD_LOGIC; 
  signal blk00000001_sig000004c7 : STD_LOGIC; 
  signal blk00000001_sig000004c6 : STD_LOGIC; 
  signal blk00000001_sig000004c5 : STD_LOGIC; 
  signal blk00000001_sig000004c4 : STD_LOGIC; 
  signal blk00000001_sig000004c3 : STD_LOGIC; 
  signal blk00000001_sig000004c2 : STD_LOGIC; 
  signal blk00000001_sig000004c1 : STD_LOGIC; 
  signal blk00000001_sig000004c0 : STD_LOGIC; 
  signal blk00000001_sig000004bf : STD_LOGIC; 
  signal blk00000001_sig000004be : STD_LOGIC; 
  signal blk00000001_sig000004bd : STD_LOGIC; 
  signal blk00000001_sig000004bc : STD_LOGIC; 
  signal blk00000001_sig000004bb : STD_LOGIC; 
  signal blk00000001_sig000004ba : STD_LOGIC; 
  signal blk00000001_sig000004b9 : STD_LOGIC; 
  signal blk00000001_sig000004b8 : STD_LOGIC; 
  signal blk00000001_sig000004b7 : STD_LOGIC; 
  signal blk00000001_sig000004b6 : STD_LOGIC; 
  signal blk00000001_sig000004b5 : STD_LOGIC; 
  signal blk00000001_sig000004b4 : STD_LOGIC; 
  signal blk00000001_sig000004b3 : STD_LOGIC; 
  signal blk00000001_sig000004b2 : STD_LOGIC; 
  signal blk00000001_sig000004b1 : STD_LOGIC; 
  signal blk00000001_sig000004b0 : STD_LOGIC; 
  signal blk00000001_sig000004af : STD_LOGIC; 
  signal blk00000001_sig000004ae : STD_LOGIC; 
  signal blk00000001_sig000004ad : STD_LOGIC; 
  signal blk00000001_sig000004ac : STD_LOGIC; 
  signal blk00000001_sig000004ab : STD_LOGIC; 
  signal blk00000001_sig000004aa : STD_LOGIC; 
  signal blk00000001_sig000004a9 : STD_LOGIC; 
  signal blk00000001_sig000004a8 : STD_LOGIC; 
  signal blk00000001_sig000004a7 : STD_LOGIC; 
  signal blk00000001_sig000004a6 : STD_LOGIC; 
  signal blk00000001_sig000004a5 : STD_LOGIC; 
  signal blk00000001_sig000004a4 : STD_LOGIC; 
  signal blk00000001_sig000004a3 : STD_LOGIC; 
  signal blk00000001_sig000004a2 : STD_LOGIC; 
  signal blk00000001_sig000004a1 : STD_LOGIC; 
  signal blk00000001_sig000004a0 : STD_LOGIC; 
  signal blk00000001_sig0000049f : STD_LOGIC; 
  signal blk00000001_sig0000049e : STD_LOGIC; 
  signal blk00000001_sig0000049d : STD_LOGIC; 
  signal blk00000001_sig0000049c : STD_LOGIC; 
  signal blk00000001_sig0000049b : STD_LOGIC; 
  signal blk00000001_sig0000049a : STD_LOGIC; 
  signal blk00000001_sig00000499 : STD_LOGIC; 
  signal blk00000001_sig00000498 : STD_LOGIC; 
  signal blk00000001_sig00000497 : STD_LOGIC; 
  signal blk00000001_sig00000496 : STD_LOGIC; 
  signal blk00000001_sig00000495 : STD_LOGIC; 
  signal blk00000001_sig00000494 : STD_LOGIC; 
  signal blk00000001_sig00000493 : STD_LOGIC; 
  signal blk00000001_sig00000492 : STD_LOGIC; 
  signal blk00000001_sig00000491 : STD_LOGIC; 
  signal blk00000001_sig00000490 : STD_LOGIC; 
  signal blk00000001_sig0000048f : STD_LOGIC; 
  signal blk00000001_sig0000048e : STD_LOGIC; 
  signal blk00000001_sig0000048d : STD_LOGIC; 
  signal blk00000001_sig0000048c : STD_LOGIC; 
  signal blk00000001_sig0000048b : STD_LOGIC; 
  signal blk00000001_sig0000048a : STD_LOGIC; 
  signal blk00000001_sig00000489 : STD_LOGIC; 
  signal blk00000001_sig00000488 : STD_LOGIC; 
  signal blk00000001_sig00000487 : STD_LOGIC; 
  signal blk00000001_sig00000486 : STD_LOGIC; 
  signal blk00000001_sig00000485 : STD_LOGIC; 
  signal blk00000001_sig00000484 : STD_LOGIC; 
  signal blk00000001_sig00000483 : STD_LOGIC; 
  signal blk00000001_sig00000482 : STD_LOGIC; 
  signal blk00000001_sig00000481 : STD_LOGIC; 
  signal blk00000001_sig00000480 : STD_LOGIC; 
  signal blk00000001_sig0000047f : STD_LOGIC; 
  signal blk00000001_sig0000047e : STD_LOGIC; 
  signal blk00000001_sig0000047d : STD_LOGIC; 
  signal blk00000001_sig0000047c : STD_LOGIC; 
  signal blk00000001_sig0000047b : STD_LOGIC; 
  signal blk00000001_sig0000047a : STD_LOGIC; 
  signal blk00000001_sig00000479 : STD_LOGIC; 
  signal blk00000001_sig00000478 : STD_LOGIC; 
  signal blk00000001_sig00000477 : STD_LOGIC; 
  signal blk00000001_sig00000476 : STD_LOGIC; 
  signal blk00000001_sig00000475 : STD_LOGIC; 
  signal blk00000001_sig00000474 : STD_LOGIC; 
  signal blk00000001_sig00000473 : STD_LOGIC; 
  signal blk00000001_sig00000472 : STD_LOGIC; 
  signal blk00000001_sig00000471 : STD_LOGIC; 
  signal blk00000001_sig00000470 : STD_LOGIC; 
  signal blk00000001_sig0000046f : STD_LOGIC; 
  signal blk00000001_sig0000046e : STD_LOGIC; 
  signal blk00000001_sig0000046d : STD_LOGIC; 
  signal blk00000001_sig0000046c : STD_LOGIC; 
  signal blk00000001_sig0000046b : STD_LOGIC; 
  signal blk00000001_sig0000046a : STD_LOGIC; 
  signal blk00000001_sig00000469 : STD_LOGIC; 
  signal blk00000001_sig00000468 : STD_LOGIC; 
  signal blk00000001_sig00000467 : STD_LOGIC; 
  signal blk00000001_sig00000466 : STD_LOGIC; 
  signal blk00000001_sig00000465 : STD_LOGIC; 
  signal blk00000001_sig00000464 : STD_LOGIC; 
  signal blk00000001_sig00000463 : STD_LOGIC; 
  signal blk00000001_sig00000462 : STD_LOGIC; 
  signal blk00000001_sig00000461 : STD_LOGIC; 
  signal blk00000001_sig00000460 : STD_LOGIC; 
  signal blk00000001_sig0000045f : STD_LOGIC; 
  signal blk00000001_sig0000045e : STD_LOGIC; 
  signal blk00000001_sig0000045d : STD_LOGIC; 
  signal blk00000001_sig0000045c : STD_LOGIC; 
  signal blk00000001_sig0000045b : STD_LOGIC; 
  signal blk00000001_sig0000045a : STD_LOGIC; 
  signal blk00000001_sig00000459 : STD_LOGIC; 
  signal blk00000001_sig00000458 : STD_LOGIC; 
  signal blk00000001_sig00000457 : STD_LOGIC; 
  signal blk00000001_sig00000456 : STD_LOGIC; 
  signal blk00000001_sig00000455 : STD_LOGIC; 
  signal blk00000001_sig00000454 : STD_LOGIC; 
  signal blk00000001_sig00000453 : STD_LOGIC; 
  signal blk00000001_sig00000452 : STD_LOGIC; 
  signal blk00000001_sig00000451 : STD_LOGIC; 
  signal blk00000001_sig00000450 : STD_LOGIC; 
  signal blk00000001_sig0000044f : STD_LOGIC; 
  signal blk00000001_sig0000044e : STD_LOGIC; 
  signal blk00000001_sig0000044d : STD_LOGIC; 
  signal blk00000001_sig0000044c : STD_LOGIC; 
  signal blk00000001_sig0000044b : STD_LOGIC; 
  signal blk00000001_sig0000044a : STD_LOGIC; 
  signal blk00000001_sig00000449 : STD_LOGIC; 
  signal blk00000001_sig00000448 : STD_LOGIC; 
  signal blk00000001_sig00000447 : STD_LOGIC; 
  signal blk00000001_sig00000446 : STD_LOGIC; 
  signal blk00000001_sig00000445 : STD_LOGIC; 
  signal blk00000001_sig00000444 : STD_LOGIC; 
  signal blk00000001_sig00000443 : STD_LOGIC; 
  signal blk00000001_sig00000442 : STD_LOGIC; 
  signal blk00000001_sig00000441 : STD_LOGIC; 
  signal blk00000001_sig00000440 : STD_LOGIC; 
  signal blk00000001_sig0000043f : STD_LOGIC; 
  signal blk00000001_sig0000043e : STD_LOGIC; 
  signal blk00000001_sig0000043d : STD_LOGIC; 
  signal blk00000001_sig0000043c : STD_LOGIC; 
  signal blk00000001_sig0000043b : STD_LOGIC; 
  signal blk00000001_sig0000043a : STD_LOGIC; 
  signal blk00000001_sig00000439 : STD_LOGIC; 
  signal blk00000001_sig00000438 : STD_LOGIC; 
  signal blk00000001_sig00000437 : STD_LOGIC; 
  signal blk00000001_sig00000436 : STD_LOGIC; 
  signal blk00000001_sig00000435 : STD_LOGIC; 
  signal blk00000001_sig00000434 : STD_LOGIC; 
  signal blk00000001_sig00000433 : STD_LOGIC; 
  signal blk00000001_sig00000432 : STD_LOGIC; 
  signal blk00000001_sig00000431 : STD_LOGIC; 
  signal blk00000001_sig00000430 : STD_LOGIC; 
  signal blk00000001_sig0000042f : STD_LOGIC; 
  signal blk00000001_sig0000042e : STD_LOGIC; 
  signal blk00000001_sig0000042d : STD_LOGIC; 
  signal blk00000001_sig0000042c : STD_LOGIC; 
  signal blk00000001_sig0000042b : STD_LOGIC; 
  signal blk00000001_sig0000042a : STD_LOGIC; 
  signal blk00000001_sig00000429 : STD_LOGIC; 
  signal blk00000001_sig00000428 : STD_LOGIC; 
  signal blk00000001_sig00000427 : STD_LOGIC; 
  signal blk00000001_sig00000426 : STD_LOGIC; 
  signal blk00000001_sig00000425 : STD_LOGIC; 
  signal blk00000001_sig00000424 : STD_LOGIC; 
  signal blk00000001_sig00000423 : STD_LOGIC; 
  signal blk00000001_sig00000422 : STD_LOGIC; 
  signal blk00000001_sig00000421 : STD_LOGIC; 
  signal blk00000001_sig00000420 : STD_LOGIC; 
  signal blk00000001_sig0000041f : STD_LOGIC; 
  signal blk00000001_sig0000041e : STD_LOGIC; 
  signal blk00000001_sig0000041d : STD_LOGIC; 
  signal blk00000001_sig0000041c : STD_LOGIC; 
  signal blk00000001_sig0000041b : STD_LOGIC; 
  signal blk00000001_sig0000041a : STD_LOGIC; 
  signal blk00000001_sig00000419 : STD_LOGIC; 
  signal blk00000001_sig00000418 : STD_LOGIC; 
  signal blk00000001_sig00000417 : STD_LOGIC; 
  signal blk00000001_sig00000416 : STD_LOGIC; 
  signal blk00000001_sig00000415 : STD_LOGIC; 
  signal blk00000001_sig00000414 : STD_LOGIC; 
  signal blk00000001_sig00000413 : STD_LOGIC; 
  signal blk00000001_sig00000412 : STD_LOGIC; 
  signal blk00000001_sig00000411 : STD_LOGIC; 
  signal blk00000001_sig00000410 : STD_LOGIC; 
  signal blk00000001_sig0000040f : STD_LOGIC; 
  signal blk00000001_sig0000040e : STD_LOGIC; 
  signal blk00000001_sig0000040d : STD_LOGIC; 
  signal blk00000001_sig0000040c : STD_LOGIC; 
  signal blk00000001_sig0000040b : STD_LOGIC; 
  signal blk00000001_sig0000040a : STD_LOGIC; 
  signal blk00000001_sig00000409 : STD_LOGIC; 
  signal blk00000001_sig00000408 : STD_LOGIC; 
  signal blk00000001_sig00000407 : STD_LOGIC; 
  signal blk00000001_sig00000406 : STD_LOGIC; 
  signal blk00000001_sig00000405 : STD_LOGIC; 
  signal blk00000001_sig00000404 : STD_LOGIC; 
  signal blk00000001_sig00000403 : STD_LOGIC; 
  signal blk00000001_sig00000402 : STD_LOGIC; 
  signal blk00000001_sig00000401 : STD_LOGIC; 
  signal blk00000001_sig00000400 : STD_LOGIC; 
  signal blk00000001_sig000003ff : STD_LOGIC; 
  signal blk00000001_sig000003fe : STD_LOGIC; 
  signal blk00000001_sig000003fd : STD_LOGIC; 
  signal blk00000001_sig000003fc : STD_LOGIC; 
  signal blk00000001_sig000003fb : STD_LOGIC; 
  signal blk00000001_sig000003fa : STD_LOGIC; 
  signal blk00000001_sig000003f9 : STD_LOGIC; 
  signal blk00000001_sig000003f8 : STD_LOGIC; 
  signal blk00000001_sig000003f7 : STD_LOGIC; 
  signal blk00000001_sig000003f6 : STD_LOGIC; 
  signal blk00000001_sig000003f5 : STD_LOGIC; 
  signal blk00000001_sig000003f4 : STD_LOGIC; 
  signal blk00000001_sig000003f3 : STD_LOGIC; 
  signal blk00000001_sig000003f2 : STD_LOGIC; 
  signal blk00000001_sig000003f1 : STD_LOGIC; 
  signal blk00000001_sig000003f0 : STD_LOGIC; 
  signal blk00000001_sig000003ef : STD_LOGIC; 
  signal blk00000001_sig000003ee : STD_LOGIC; 
  signal blk00000001_sig000003ed : STD_LOGIC; 
  signal blk00000001_sig000003ec : STD_LOGIC; 
  signal blk00000001_sig000003eb : STD_LOGIC; 
  signal blk00000001_sig000003ea : STD_LOGIC; 
  signal blk00000001_sig000003e9 : STD_LOGIC; 
  signal blk00000001_sig000003e8 : STD_LOGIC; 
  signal blk00000001_sig000003e7 : STD_LOGIC; 
  signal blk00000001_sig000003e6 : STD_LOGIC; 
  signal blk00000001_sig000003e5 : STD_LOGIC; 
  signal blk00000001_sig000003e4 : STD_LOGIC; 
  signal blk00000001_sig000003e3 : STD_LOGIC; 
  signal blk00000001_sig000003e2 : STD_LOGIC; 
  signal blk00000001_sig000003e1 : STD_LOGIC; 
  signal blk00000001_sig000003e0 : STD_LOGIC; 
  signal blk00000001_sig000003df : STD_LOGIC; 
  signal blk00000001_sig000003de : STD_LOGIC; 
  signal blk00000001_sig000003dd : STD_LOGIC; 
  signal blk00000001_sig000003dc : STD_LOGIC; 
  signal blk00000001_sig000003db : STD_LOGIC; 
  signal blk00000001_sig000003da : STD_LOGIC; 
  signal blk00000001_sig000003d9 : STD_LOGIC; 
  signal blk00000001_sig000003d8 : STD_LOGIC; 
  signal blk00000001_sig000003d7 : STD_LOGIC; 
  signal blk00000001_sig000003d6 : STD_LOGIC; 
  signal blk00000001_sig000003d5 : STD_LOGIC; 
  signal blk00000001_sig000003d4 : STD_LOGIC; 
  signal blk00000001_sig000003d3 : STD_LOGIC; 
  signal blk00000001_sig000003d2 : STD_LOGIC; 
  signal blk00000001_sig000003d1 : STD_LOGIC; 
  signal blk00000001_sig000003d0 : STD_LOGIC; 
  signal blk00000001_sig000003cf : STD_LOGIC; 
  signal blk00000001_sig000003ce : STD_LOGIC; 
  signal blk00000001_sig000003cd : STD_LOGIC; 
  signal blk00000001_sig000003cc : STD_LOGIC; 
  signal blk00000001_sig000003cb : STD_LOGIC; 
  signal blk00000001_sig000003ca : STD_LOGIC; 
  signal blk00000001_sig000003c9 : STD_LOGIC; 
  signal blk00000001_sig000003c8 : STD_LOGIC; 
  signal blk00000001_sig000003c7 : STD_LOGIC; 
  signal blk00000001_sig000003c6 : STD_LOGIC; 
  signal blk00000001_sig000003c5 : STD_LOGIC; 
  signal blk00000001_sig000003c4 : STD_LOGIC; 
  signal blk00000001_sig000003c3 : STD_LOGIC; 
  signal blk00000001_sig000003c2 : STD_LOGIC; 
  signal blk00000001_sig000003c1 : STD_LOGIC; 
  signal blk00000001_sig000003c0 : STD_LOGIC; 
  signal blk00000001_sig000003bf : STD_LOGIC; 
  signal blk00000001_sig000003be : STD_LOGIC; 
  signal blk00000001_sig000003bd : STD_LOGIC; 
  signal blk00000001_sig000003bc : STD_LOGIC; 
  signal blk00000001_sig000003bb : STD_LOGIC; 
  signal blk00000001_sig000003ba : STD_LOGIC; 
  signal blk00000001_sig000003b9 : STD_LOGIC; 
  signal blk00000001_sig000003b8 : STD_LOGIC; 
  signal blk00000001_sig000003b7 : STD_LOGIC; 
  signal blk00000001_sig000003b6 : STD_LOGIC; 
  signal blk00000001_sig000003b5 : STD_LOGIC; 
  signal blk00000001_sig000003b4 : STD_LOGIC; 
  signal blk00000001_sig000003b3 : STD_LOGIC; 
  signal blk00000001_sig000003b2 : STD_LOGIC; 
  signal blk00000001_sig000003b1 : STD_LOGIC; 
  signal blk00000001_sig000003b0 : STD_LOGIC; 
  signal blk00000001_sig000003af : STD_LOGIC; 
  signal blk00000001_sig000003ae : STD_LOGIC; 
  signal blk00000001_sig000003ad : STD_LOGIC; 
  signal blk00000001_sig000003ac : STD_LOGIC; 
  signal blk00000001_sig000003ab : STD_LOGIC; 
  signal blk00000001_sig000003aa : STD_LOGIC; 
  signal blk00000001_sig000003a9 : STD_LOGIC; 
  signal blk00000001_sig000003a8 : STD_LOGIC; 
  signal blk00000001_sig000003a7 : STD_LOGIC; 
  signal blk00000001_sig000003a6 : STD_LOGIC; 
  signal blk00000001_sig000003a5 : STD_LOGIC; 
  signal blk00000001_sig000003a4 : STD_LOGIC; 
  signal blk00000001_sig000003a3 : STD_LOGIC; 
  signal blk00000001_sig000003a2 : STD_LOGIC; 
  signal blk00000001_sig000003a1 : STD_LOGIC; 
  signal blk00000001_sig000003a0 : STD_LOGIC; 
  signal blk00000001_sig0000039f : STD_LOGIC; 
  signal blk00000001_sig0000039e : STD_LOGIC; 
  signal blk00000001_sig0000039d : STD_LOGIC; 
  signal blk00000001_sig0000039c : STD_LOGIC; 
  signal blk00000001_sig0000039b : STD_LOGIC; 
  signal blk00000001_sig0000039a : STD_LOGIC; 
  signal blk00000001_sig00000399 : STD_LOGIC; 
  signal blk00000001_sig00000398 : STD_LOGIC; 
  signal blk00000001_sig00000397 : STD_LOGIC; 
  signal blk00000001_sig00000396 : STD_LOGIC; 
  signal blk00000001_sig00000395 : STD_LOGIC; 
  signal blk00000001_sig00000394 : STD_LOGIC; 
  signal blk00000001_sig00000393 : STD_LOGIC; 
  signal blk00000001_sig00000392 : STD_LOGIC; 
  signal blk00000001_sig00000391 : STD_LOGIC; 
  signal blk00000001_sig00000390 : STD_LOGIC; 
  signal blk00000001_sig0000038f : STD_LOGIC; 
  signal blk00000001_sig0000038e : STD_LOGIC; 
  signal blk00000001_sig0000038d : STD_LOGIC; 
  signal blk00000001_sig0000038c : STD_LOGIC; 
  signal blk00000001_sig0000038b : STD_LOGIC; 
  signal blk00000001_sig0000038a : STD_LOGIC; 
  signal blk00000001_sig00000389 : STD_LOGIC; 
  signal blk00000001_sig00000388 : STD_LOGIC; 
  signal blk00000001_sig00000387 : STD_LOGIC; 
  signal blk00000001_sig00000386 : STD_LOGIC; 
  signal blk00000001_sig00000385 : STD_LOGIC; 
  signal blk00000001_sig00000384 : STD_LOGIC; 
  signal blk00000001_sig00000383 : STD_LOGIC; 
  signal blk00000001_sig00000382 : STD_LOGIC; 
  signal blk00000001_sig00000381 : STD_LOGIC; 
  signal blk00000001_sig00000380 : STD_LOGIC; 
  signal blk00000001_sig0000037f : STD_LOGIC; 
  signal blk00000001_sig0000037e : STD_LOGIC; 
  signal blk00000001_sig0000037d : STD_LOGIC; 
  signal blk00000001_sig0000037c : STD_LOGIC; 
  signal blk00000001_sig0000037b : STD_LOGIC; 
  signal blk00000001_sig0000037a : STD_LOGIC; 
  signal blk00000001_sig00000379 : STD_LOGIC; 
  signal blk00000001_sig00000378 : STD_LOGIC; 
  signal blk00000001_sig00000377 : STD_LOGIC; 
  signal blk00000001_sig00000376 : STD_LOGIC; 
  signal blk00000001_sig00000375 : STD_LOGIC; 
  signal blk00000001_sig00000374 : STD_LOGIC; 
  signal blk00000001_sig00000373 : STD_LOGIC; 
  signal blk00000001_sig00000372 : STD_LOGIC; 
  signal blk00000001_sig00000371 : STD_LOGIC; 
  signal blk00000001_sig00000370 : STD_LOGIC; 
  signal blk00000001_sig0000036f : STD_LOGIC; 
  signal blk00000001_sig0000036e : STD_LOGIC; 
  signal blk00000001_sig0000036d : STD_LOGIC; 
  signal blk00000001_sig0000036c : STD_LOGIC; 
  signal blk00000001_sig0000036b : STD_LOGIC; 
  signal blk00000001_sig0000036a : STD_LOGIC; 
  signal blk00000001_sig00000369 : STD_LOGIC; 
  signal blk00000001_sig00000368 : STD_LOGIC; 
  signal blk00000001_sig00000367 : STD_LOGIC; 
  signal blk00000001_sig00000366 : STD_LOGIC; 
  signal blk00000001_sig00000365 : STD_LOGIC; 
  signal blk00000001_sig00000364 : STD_LOGIC; 
  signal blk00000001_sig00000363 : STD_LOGIC; 
  signal blk00000001_sig00000362 : STD_LOGIC; 
  signal blk00000001_sig00000361 : STD_LOGIC; 
  signal blk00000001_sig00000360 : STD_LOGIC; 
  signal blk00000001_sig0000035f : STD_LOGIC; 
  signal blk00000001_sig0000035e : STD_LOGIC; 
  signal blk00000001_sig0000035d : STD_LOGIC; 
  signal blk00000001_sig0000035c : STD_LOGIC; 
  signal blk00000001_sig0000035b : STD_LOGIC; 
  signal blk00000001_sig0000035a : STD_LOGIC; 
  signal blk00000001_sig00000359 : STD_LOGIC; 
  signal blk00000001_sig00000358 : STD_LOGIC; 
  signal blk00000001_sig00000357 : STD_LOGIC; 
  signal blk00000001_sig00000356 : STD_LOGIC; 
  signal blk00000001_sig00000355 : STD_LOGIC; 
  signal blk00000001_sig00000354 : STD_LOGIC; 
  signal blk00000001_sig00000353 : STD_LOGIC; 
  signal blk00000001_sig00000352 : STD_LOGIC; 
  signal blk00000001_sig00000351 : STD_LOGIC; 
  signal blk00000001_sig00000350 : STD_LOGIC; 
  signal blk00000001_sig0000034f : STD_LOGIC; 
  signal blk00000001_sig0000034e : STD_LOGIC; 
  signal blk00000001_sig0000034d : STD_LOGIC; 
  signal blk00000001_sig0000034c : STD_LOGIC; 
  signal blk00000001_sig0000034b : STD_LOGIC; 
  signal blk00000001_sig0000034a : STD_LOGIC; 
  signal blk00000001_sig00000349 : STD_LOGIC; 
  signal blk00000001_sig00000348 : STD_LOGIC; 
  signal blk00000001_sig00000347 : STD_LOGIC; 
  signal blk00000001_sig00000346 : STD_LOGIC; 
  signal blk00000001_sig00000345 : STD_LOGIC; 
  signal blk00000001_sig00000344 : STD_LOGIC; 
  signal blk00000001_sig00000343 : STD_LOGIC; 
  signal blk00000001_sig00000342 : STD_LOGIC; 
  signal blk00000001_sig00000341 : STD_LOGIC; 
  signal blk00000001_sig00000340 : STD_LOGIC; 
  signal blk00000001_sig0000033f : STD_LOGIC; 
  signal blk00000001_sig0000033e : STD_LOGIC; 
  signal blk00000001_sig0000033d : STD_LOGIC; 
  signal blk00000001_sig0000033c : STD_LOGIC; 
  signal blk00000001_sig0000033b : STD_LOGIC; 
  signal blk00000001_sig0000033a : STD_LOGIC; 
  signal blk00000001_sig00000339 : STD_LOGIC; 
  signal blk00000001_sig00000338 : STD_LOGIC; 
  signal blk00000001_sig00000337 : STD_LOGIC; 
  signal blk00000001_sig00000336 : STD_LOGIC; 
  signal blk00000001_sig00000335 : STD_LOGIC; 
  signal blk00000001_sig00000334 : STD_LOGIC; 
  signal blk00000001_sig00000333 : STD_LOGIC; 
  signal blk00000001_sig00000332 : STD_LOGIC; 
  signal blk00000001_sig00000331 : STD_LOGIC; 
  signal blk00000001_sig00000330 : STD_LOGIC; 
  signal blk00000001_sig0000032f : STD_LOGIC; 
  signal blk00000001_sig0000032e : STD_LOGIC; 
  signal blk00000001_sig0000032d : STD_LOGIC; 
  signal blk00000001_sig0000032c : STD_LOGIC; 
  signal blk00000001_sig0000032b : STD_LOGIC; 
  signal blk00000001_sig0000032a : STD_LOGIC; 
  signal blk00000001_sig00000329 : STD_LOGIC; 
  signal blk00000001_sig00000328 : STD_LOGIC; 
  signal blk00000001_sig00000327 : STD_LOGIC; 
  signal blk00000001_sig00000326 : STD_LOGIC; 
  signal blk00000001_sig00000325 : STD_LOGIC; 
  signal blk00000001_sig00000324 : STD_LOGIC; 
  signal blk00000001_sig00000323 : STD_LOGIC; 
  signal blk00000001_sig00000322 : STD_LOGIC; 
  signal blk00000001_sig00000321 : STD_LOGIC; 
  signal blk00000001_sig00000320 : STD_LOGIC; 
  signal blk00000001_sig0000031f : STD_LOGIC; 
  signal blk00000001_sig0000031e : STD_LOGIC; 
  signal blk00000001_sig0000031d : STD_LOGIC; 
  signal blk00000001_sig0000031c : STD_LOGIC; 
  signal blk00000001_sig0000031b : STD_LOGIC; 
  signal blk00000001_sig0000031a : STD_LOGIC; 
  signal blk00000001_sig00000319 : STD_LOGIC; 
  signal blk00000001_sig00000318 : STD_LOGIC; 
  signal blk00000001_sig00000317 : STD_LOGIC; 
  signal blk00000001_sig00000316 : STD_LOGIC; 
  signal blk00000001_sig00000315 : STD_LOGIC; 
  signal blk00000001_sig00000314 : STD_LOGIC; 
  signal blk00000001_sig00000313 : STD_LOGIC; 
  signal blk00000001_sig00000312 : STD_LOGIC; 
  signal blk00000001_sig00000311 : STD_LOGIC; 
  signal blk00000001_sig00000310 : STD_LOGIC; 
  signal blk00000001_sig0000030f : STD_LOGIC; 
  signal blk00000001_sig0000030e : STD_LOGIC; 
  signal blk00000001_sig0000030d : STD_LOGIC; 
  signal blk00000001_sig0000030c : STD_LOGIC; 
  signal blk00000001_sig0000030b : STD_LOGIC; 
  signal blk00000001_sig0000030a : STD_LOGIC; 
  signal blk00000001_sig00000309 : STD_LOGIC; 
  signal blk00000001_sig00000308 : STD_LOGIC; 
  signal blk00000001_sig00000307 : STD_LOGIC; 
  signal blk00000001_sig00000306 : STD_LOGIC; 
  signal blk00000001_sig00000305 : STD_LOGIC; 
  signal blk00000001_sig00000304 : STD_LOGIC; 
  signal blk00000001_sig00000303 : STD_LOGIC; 
  signal blk00000001_sig00000302 : STD_LOGIC; 
  signal blk00000001_sig00000301 : STD_LOGIC; 
  signal blk00000001_sig00000300 : STD_LOGIC; 
  signal blk00000001_sig000002ff : STD_LOGIC; 
  signal blk00000001_sig000002fe : STD_LOGIC; 
  signal blk00000001_sig000002fd : STD_LOGIC; 
  signal blk00000001_sig000002fc : STD_LOGIC; 
  signal blk00000001_sig000002fb : STD_LOGIC; 
  signal blk00000001_sig000002fa : STD_LOGIC; 
  signal blk00000001_sig000002f9 : STD_LOGIC; 
  signal blk00000001_sig000002f8 : STD_LOGIC; 
  signal blk00000001_sig000002f7 : STD_LOGIC; 
  signal blk00000001_sig000002f6 : STD_LOGIC; 
  signal blk00000001_sig000002f5 : STD_LOGIC; 
  signal blk00000001_sig000002f4 : STD_LOGIC; 
  signal blk00000001_sig000002f3 : STD_LOGIC; 
  signal blk00000001_sig000002f2 : STD_LOGIC; 
  signal blk00000001_sig000002f1 : STD_LOGIC; 
  signal blk00000001_sig000002f0 : STD_LOGIC; 
  signal blk00000001_sig000002ef : STD_LOGIC; 
  signal blk00000001_sig000002ee : STD_LOGIC; 
  signal blk00000001_sig000002ed : STD_LOGIC; 
  signal blk00000001_sig000002ec : STD_LOGIC; 
  signal blk00000001_sig000002eb : STD_LOGIC; 
  signal blk00000001_sig000002ea : STD_LOGIC; 
  signal blk00000001_sig000002e9 : STD_LOGIC; 
  signal blk00000001_sig000002e8 : STD_LOGIC; 
  signal blk00000001_sig000002e7 : STD_LOGIC; 
  signal blk00000001_sig000002e6 : STD_LOGIC; 
  signal blk00000001_sig000002e5 : STD_LOGIC; 
  signal blk00000001_sig000002e4 : STD_LOGIC; 
  signal blk00000001_sig000002e3 : STD_LOGIC; 
  signal blk00000001_sig000002e2 : STD_LOGIC; 
  signal blk00000001_sig000002e1 : STD_LOGIC; 
  signal blk00000001_sig000002e0 : STD_LOGIC; 
  signal blk00000001_sig000002df : STD_LOGIC; 
  signal blk00000001_sig000002de : STD_LOGIC; 
  signal blk00000001_sig000002dd : STD_LOGIC; 
  signal blk00000001_sig000002dc : STD_LOGIC; 
  signal blk00000001_sig000002db : STD_LOGIC; 
  signal blk00000001_sig000002da : STD_LOGIC; 
  signal blk00000001_sig000002d9 : STD_LOGIC; 
  signal blk00000001_sig000002d8 : STD_LOGIC; 
  signal blk00000001_sig000002d7 : STD_LOGIC; 
  signal blk00000001_sig000002d6 : STD_LOGIC; 
  signal blk00000001_sig000002d5 : STD_LOGIC; 
  signal blk00000001_sig000002d4 : STD_LOGIC; 
  signal blk00000001_sig000002d3 : STD_LOGIC; 
  signal blk00000001_sig000002d2 : STD_LOGIC; 
  signal blk00000001_sig000002d1 : STD_LOGIC; 
  signal blk00000001_sig000002d0 : STD_LOGIC; 
  signal blk00000001_sig000002cf : STD_LOGIC; 
  signal blk00000001_sig000002ce : STD_LOGIC; 
  signal blk00000001_sig000002cd : STD_LOGIC; 
  signal blk00000001_sig000002cc : STD_LOGIC; 
  signal blk00000001_sig000002cb : STD_LOGIC; 
  signal blk00000001_sig000002ca : STD_LOGIC; 
  signal blk00000001_sig000002c9 : STD_LOGIC; 
  signal blk00000001_sig000002c8 : STD_LOGIC; 
  signal blk00000001_sig000002c7 : STD_LOGIC; 
  signal blk00000001_sig000002c6 : STD_LOGIC; 
  signal blk00000001_sig000002c5 : STD_LOGIC; 
  signal blk00000001_sig000002c4 : STD_LOGIC; 
  signal blk00000001_sig000002c3 : STD_LOGIC; 
  signal blk00000001_sig000002c2 : STD_LOGIC; 
  signal blk00000001_sig000002c1 : STD_LOGIC; 
  signal blk00000001_sig000002c0 : STD_LOGIC; 
  signal blk00000001_sig000002bf : STD_LOGIC; 
  signal blk00000001_sig000002be : STD_LOGIC; 
  signal blk00000001_sig000002bd : STD_LOGIC; 
  signal blk00000001_sig000002bc : STD_LOGIC; 
  signal blk00000001_sig000002bb : STD_LOGIC; 
  signal blk00000001_sig000002ba : STD_LOGIC; 
  signal blk00000001_sig000002b9 : STD_LOGIC; 
  signal blk00000001_sig000002b8 : STD_LOGIC; 
  signal blk00000001_sig000002b7 : STD_LOGIC; 
  signal blk00000001_sig000002b6 : STD_LOGIC; 
  signal blk00000001_sig000002b5 : STD_LOGIC; 
  signal blk00000001_sig000002b4 : STD_LOGIC; 
  signal blk00000001_sig000002b3 : STD_LOGIC; 
  signal blk00000001_sig000002b2 : STD_LOGIC; 
  signal blk00000001_sig000002b1 : STD_LOGIC; 
  signal blk00000001_sig000002b0 : STD_LOGIC; 
  signal blk00000001_sig000002af : STD_LOGIC; 
  signal blk00000001_sig000002ae : STD_LOGIC; 
  signal blk00000001_sig000002ad : STD_LOGIC; 
  signal blk00000001_sig000002ac : STD_LOGIC; 
  signal blk00000001_sig000002ab : STD_LOGIC; 
  signal blk00000001_sig000002aa : STD_LOGIC; 
  signal blk00000001_sig000002a9 : STD_LOGIC; 
  signal blk00000001_sig000002a8 : STD_LOGIC; 
  signal blk00000001_sig000002a7 : STD_LOGIC; 
  signal blk00000001_sig000002a6 : STD_LOGIC; 
  signal blk00000001_sig000002a5 : STD_LOGIC; 
  signal blk00000001_sig000002a4 : STD_LOGIC; 
  signal blk00000001_sig000002a3 : STD_LOGIC; 
  signal blk00000001_sig000002a2 : STD_LOGIC; 
  signal blk00000001_sig000002a1 : STD_LOGIC; 
  signal blk00000001_sig000002a0 : STD_LOGIC; 
  signal blk00000001_sig0000029f : STD_LOGIC; 
  signal blk00000001_sig0000029e : STD_LOGIC; 
  signal blk00000001_sig0000029d : STD_LOGIC; 
  signal blk00000001_sig0000029c : STD_LOGIC; 
  signal blk00000001_sig0000029b : STD_LOGIC; 
  signal blk00000001_sig0000029a : STD_LOGIC; 
  signal blk00000001_sig00000299 : STD_LOGIC; 
  signal blk00000001_sig00000298 : STD_LOGIC; 
  signal blk00000001_sig00000297 : STD_LOGIC; 
  signal blk00000001_sig00000296 : STD_LOGIC; 
  signal blk00000001_sig00000295 : STD_LOGIC; 
  signal blk00000001_sig00000294 : STD_LOGIC; 
  signal blk00000001_sig00000293 : STD_LOGIC; 
  signal blk00000001_sig00000292 : STD_LOGIC; 
  signal blk00000001_sig00000291 : STD_LOGIC; 
  signal blk00000001_sig00000290 : STD_LOGIC; 
  signal blk00000001_sig0000028f : STD_LOGIC; 
  signal blk00000001_sig0000028e : STD_LOGIC; 
  signal blk00000001_sig0000028d : STD_LOGIC; 
  signal blk00000001_sig0000028c : STD_LOGIC; 
  signal blk00000001_sig0000028b : STD_LOGIC; 
  signal blk00000001_sig0000028a : STD_LOGIC; 
  signal blk00000001_sig00000289 : STD_LOGIC; 
  signal blk00000001_sig00000288 : STD_LOGIC; 
  signal blk00000001_sig00000287 : STD_LOGIC; 
  signal blk00000001_sig00000286 : STD_LOGIC; 
  signal blk00000001_sig00000285 : STD_LOGIC; 
  signal blk00000001_sig00000284 : STD_LOGIC; 
  signal blk00000001_sig00000283 : STD_LOGIC; 
  signal blk00000001_sig00000282 : STD_LOGIC; 
  signal blk00000001_sig00000281 : STD_LOGIC; 
  signal blk00000001_sig00000280 : STD_LOGIC; 
  signal blk00000001_sig0000027f : STD_LOGIC; 
  signal blk00000001_sig0000027e : STD_LOGIC; 
  signal blk00000001_sig0000027d : STD_LOGIC; 
  signal blk00000001_sig0000027c : STD_LOGIC; 
  signal blk00000001_sig0000027b : STD_LOGIC; 
  signal blk00000001_sig0000027a : STD_LOGIC; 
  signal blk00000001_sig00000279 : STD_LOGIC; 
  signal blk00000001_sig00000278 : STD_LOGIC; 
  signal blk00000001_sig00000277 : STD_LOGIC; 
  signal blk00000001_sig00000276 : STD_LOGIC; 
  signal blk00000001_sig00000275 : STD_LOGIC; 
  signal blk00000001_sig00000274 : STD_LOGIC; 
  signal blk00000001_sig00000273 : STD_LOGIC; 
  signal blk00000001_sig00000272 : STD_LOGIC; 
  signal blk00000001_sig00000271 : STD_LOGIC; 
  signal blk00000001_sig00000270 : STD_LOGIC; 
  signal blk00000001_sig0000026f : STD_LOGIC; 
  signal blk00000001_sig0000026e : STD_LOGIC; 
  signal blk00000001_sig0000026d : STD_LOGIC; 
  signal blk00000001_sig0000026c : STD_LOGIC; 
  signal blk00000001_sig0000026b : STD_LOGIC; 
  signal blk00000001_sig0000026a : STD_LOGIC; 
  signal blk00000001_sig00000269 : STD_LOGIC; 
  signal blk00000001_sig00000268 : STD_LOGIC; 
  signal blk00000001_sig00000267 : STD_LOGIC; 
  signal blk00000001_sig00000266 : STD_LOGIC; 
  signal blk00000001_sig00000265 : STD_LOGIC; 
  signal blk00000001_sig00000264 : STD_LOGIC; 
  signal blk00000001_sig00000263 : STD_LOGIC; 
  signal blk00000001_sig00000262 : STD_LOGIC; 
  signal blk00000001_sig00000261 : STD_LOGIC; 
  signal blk00000001_sig00000260 : STD_LOGIC; 
  signal blk00000001_sig0000025f : STD_LOGIC; 
  signal blk00000001_sig0000025e : STD_LOGIC; 
  signal blk00000001_sig0000025d : STD_LOGIC; 
  signal blk00000001_sig0000025c : STD_LOGIC; 
  signal blk00000001_sig0000025b : STD_LOGIC; 
  signal blk00000001_sig0000025a : STD_LOGIC; 
  signal blk00000001_sig00000259 : STD_LOGIC; 
  signal blk00000001_sig00000258 : STD_LOGIC; 
  signal blk00000001_sig00000257 : STD_LOGIC; 
  signal blk00000001_sig00000256 : STD_LOGIC; 
  signal blk00000001_sig00000255 : STD_LOGIC; 
  signal blk00000001_sig00000254 : STD_LOGIC; 
  signal blk00000001_sig00000253 : STD_LOGIC; 
  signal blk00000001_sig00000252 : STD_LOGIC; 
  signal blk00000001_sig00000251 : STD_LOGIC; 
  signal blk00000001_sig00000250 : STD_LOGIC; 
  signal blk00000001_sig0000024f : STD_LOGIC; 
  signal blk00000001_sig0000024e : STD_LOGIC; 
  signal blk00000001_sig0000024d : STD_LOGIC; 
  signal blk00000001_sig0000024c : STD_LOGIC; 
  signal blk00000001_sig0000024b : STD_LOGIC; 
  signal blk00000001_sig0000024a : STD_LOGIC; 
  signal blk00000001_sig00000249 : STD_LOGIC; 
  signal blk00000001_sig00000248 : STD_LOGIC; 
  signal blk00000001_sig00000247 : STD_LOGIC; 
  signal blk00000001_sig00000246 : STD_LOGIC; 
  signal blk00000001_sig00000245 : STD_LOGIC; 
  signal blk00000001_sig00000244 : STD_LOGIC; 
  signal blk00000001_sig00000243 : STD_LOGIC; 
  signal blk00000001_sig00000242 : STD_LOGIC; 
  signal blk00000001_sig00000241 : STD_LOGIC; 
  signal blk00000001_sig00000240 : STD_LOGIC; 
  signal blk00000001_sig0000023f : STD_LOGIC; 
  signal blk00000001_sig0000023e : STD_LOGIC; 
  signal blk00000001_sig0000023d : STD_LOGIC; 
  signal blk00000001_sig0000023c : STD_LOGIC; 
  signal blk00000001_sig0000023b : STD_LOGIC; 
  signal blk00000001_sig0000023a : STD_LOGIC; 
  signal blk00000001_sig00000239 : STD_LOGIC; 
  signal blk00000001_sig00000238 : STD_LOGIC; 
  signal blk00000001_sig00000237 : STD_LOGIC; 
  signal blk00000001_sig00000236 : STD_LOGIC; 
  signal blk00000001_sig00000235 : STD_LOGIC; 
  signal blk00000001_sig00000234 : STD_LOGIC; 
  signal blk00000001_sig00000233 : STD_LOGIC; 
  signal blk00000001_sig00000232 : STD_LOGIC; 
  signal blk00000001_sig00000231 : STD_LOGIC; 
  signal blk00000001_sig00000230 : STD_LOGIC; 
  signal blk00000001_sig0000022f : STD_LOGIC; 
  signal blk00000001_sig0000022e : STD_LOGIC; 
  signal blk00000001_sig0000022d : STD_LOGIC; 
  signal blk00000001_sig0000022c : STD_LOGIC; 
  signal blk00000001_sig0000022b : STD_LOGIC; 
  signal blk00000001_sig0000022a : STD_LOGIC; 
  signal blk00000001_sig00000229 : STD_LOGIC; 
  signal blk00000001_sig00000228 : STD_LOGIC; 
  signal blk00000001_sig00000227 : STD_LOGIC; 
  signal blk00000001_sig00000226 : STD_LOGIC; 
  signal blk00000001_sig00000225 : STD_LOGIC; 
  signal blk00000001_sig00000224 : STD_LOGIC; 
  signal blk00000001_sig00000223 : STD_LOGIC; 
  signal blk00000001_sig00000222 : STD_LOGIC; 
  signal blk00000001_sig00000221 : STD_LOGIC; 
  signal blk00000001_sig00000220 : STD_LOGIC; 
  signal blk00000001_sig0000021f : STD_LOGIC; 
  signal blk00000001_sig0000021e : STD_LOGIC; 
  signal blk00000001_sig0000021d : STD_LOGIC; 
  signal blk00000001_sig0000021c : STD_LOGIC; 
  signal blk00000001_sig0000021b : STD_LOGIC; 
  signal blk00000001_sig0000021a : STD_LOGIC; 
  signal blk00000001_sig00000219 : STD_LOGIC; 
  signal blk00000001_sig00000218 : STD_LOGIC; 
  signal blk00000001_sig00000217 : STD_LOGIC; 
  signal blk00000001_sig00000216 : STD_LOGIC; 
  signal blk00000001_sig00000215 : STD_LOGIC; 
  signal blk00000001_sig00000214 : STD_LOGIC; 
  signal blk00000001_sig00000213 : STD_LOGIC; 
  signal blk00000001_sig00000212 : STD_LOGIC; 
  signal blk00000001_sig00000211 : STD_LOGIC; 
  signal blk00000001_sig00000210 : STD_LOGIC; 
  signal blk00000001_sig0000020f : STD_LOGIC; 
  signal blk00000001_sig0000020e : STD_LOGIC; 
  signal blk00000001_sig0000020d : STD_LOGIC; 
  signal blk00000001_sig0000020c : STD_LOGIC; 
  signal blk00000001_sig0000020b : STD_LOGIC; 
  signal blk00000001_sig0000020a : STD_LOGIC; 
  signal blk00000001_sig00000209 : STD_LOGIC; 
  signal blk00000001_sig00000208 : STD_LOGIC; 
  signal blk00000001_sig00000207 : STD_LOGIC; 
  signal blk00000001_sig00000206 : STD_LOGIC; 
  signal blk00000001_sig00000205 : STD_LOGIC; 
  signal blk00000001_sig00000204 : STD_LOGIC; 
  signal blk00000001_sig00000203 : STD_LOGIC; 
  signal blk00000001_sig00000202 : STD_LOGIC; 
  signal blk00000001_sig00000201 : STD_LOGIC; 
  signal blk00000001_sig00000200 : STD_LOGIC; 
  signal blk00000001_sig000001ff : STD_LOGIC; 
  signal blk00000001_sig000001fe : STD_LOGIC; 
  signal blk00000001_sig000001fd : STD_LOGIC; 
  signal blk00000001_sig000001fc : STD_LOGIC; 
  signal blk00000001_sig000001fb : STD_LOGIC; 
  signal blk00000001_sig000001fa : STD_LOGIC; 
  signal blk00000001_sig000001f9 : STD_LOGIC; 
  signal blk00000001_sig000001f8 : STD_LOGIC; 
  signal blk00000001_sig000001f7 : STD_LOGIC; 
  signal blk00000001_sig000001f6 : STD_LOGIC; 
  signal blk00000001_sig000001f5 : STD_LOGIC; 
  signal blk00000001_sig000001f4 : STD_LOGIC; 
  signal blk00000001_sig000001f3 : STD_LOGIC; 
  signal blk00000001_sig000001f2 : STD_LOGIC; 
  signal blk00000001_sig000001f1 : STD_LOGIC; 
  signal blk00000001_sig000001f0 : STD_LOGIC; 
  signal blk00000001_sig000001ef : STD_LOGIC; 
  signal blk00000001_sig000001ee : STD_LOGIC; 
  signal blk00000001_sig000001ed : STD_LOGIC; 
  signal blk00000001_sig000001ec : STD_LOGIC; 
  signal blk00000001_sig000001eb : STD_LOGIC; 
  signal blk00000001_sig000001ea : STD_LOGIC; 
  signal blk00000001_sig000001e9 : STD_LOGIC; 
  signal blk00000001_sig000001e8 : STD_LOGIC; 
  signal blk00000001_sig000001e7 : STD_LOGIC; 
  signal blk00000001_sig000001e6 : STD_LOGIC; 
  signal blk00000001_sig000001e5 : STD_LOGIC; 
  signal blk00000001_sig000001e4 : STD_LOGIC; 
  signal blk00000001_sig000001e3 : STD_LOGIC; 
  signal blk00000001_sig000001e2 : STD_LOGIC; 
  signal blk00000001_sig000001e1 : STD_LOGIC; 
  signal blk00000001_sig000001e0 : STD_LOGIC; 
  signal blk00000001_sig000001df : STD_LOGIC; 
  signal blk00000001_sig000001de : STD_LOGIC; 
  signal blk00000001_sig000001dd : STD_LOGIC; 
  signal blk00000001_sig000001dc : STD_LOGIC; 
  signal blk00000001_sig000001db : STD_LOGIC; 
  signal blk00000001_sig000001da : STD_LOGIC; 
  signal blk00000001_sig000001d9 : STD_LOGIC; 
  signal blk00000001_sig000001d8 : STD_LOGIC; 
  signal blk00000001_sig000001d7 : STD_LOGIC; 
  signal blk00000001_sig000001d6 : STD_LOGIC; 
  signal blk00000001_sig000001d5 : STD_LOGIC; 
  signal blk00000001_sig000001d4 : STD_LOGIC; 
  signal blk00000001_sig000001d3 : STD_LOGIC; 
  signal blk00000001_sig000001d2 : STD_LOGIC; 
  signal blk00000001_sig000001d1 : STD_LOGIC; 
  signal blk00000001_sig000001d0 : STD_LOGIC; 
  signal blk00000001_sig000001cf : STD_LOGIC; 
  signal blk00000001_sig000001ce : STD_LOGIC; 
  signal blk00000001_sig000001cd : STD_LOGIC; 
  signal blk00000001_sig000001cc : STD_LOGIC; 
  signal blk00000001_sig000001cb : STD_LOGIC; 
  signal blk00000001_sig000001ca : STD_LOGIC; 
  signal blk00000001_sig000001c9 : STD_LOGIC; 
  signal blk00000001_sig000001c8 : STD_LOGIC; 
  signal blk00000001_sig000001c7 : STD_LOGIC; 
  signal blk00000001_sig000001c6 : STD_LOGIC; 
  signal blk00000001_sig000001c5 : STD_LOGIC; 
  signal blk00000001_sig000001c4 : STD_LOGIC; 
  signal blk00000001_sig000001c3 : STD_LOGIC; 
  signal blk00000001_sig000001c2 : STD_LOGIC; 
  signal blk00000001_sig000001c1 : STD_LOGIC; 
  signal blk00000001_sig000001c0 : STD_LOGIC; 
  signal blk00000001_sig000001bf : STD_LOGIC; 
  signal blk00000001_sig000001be : STD_LOGIC; 
  signal blk00000001_sig000001bd : STD_LOGIC; 
  signal blk00000001_sig000001bc : STD_LOGIC; 
  signal blk00000001_sig000001bb : STD_LOGIC; 
  signal blk00000001_sig000001ba : STD_LOGIC; 
  signal blk00000001_sig000001b9 : STD_LOGIC; 
  signal blk00000001_sig000001b8 : STD_LOGIC; 
  signal blk00000001_sig000001b7 : STD_LOGIC; 
  signal blk00000001_sig000001b6 : STD_LOGIC; 
  signal blk00000001_sig000001b5 : STD_LOGIC; 
  signal blk00000001_sig000001b4 : STD_LOGIC; 
  signal blk00000001_sig000001b3 : STD_LOGIC; 
  signal blk00000001_sig000001b2 : STD_LOGIC; 
  signal blk00000001_sig000001b1 : STD_LOGIC; 
  signal blk00000001_sig000001b0 : STD_LOGIC; 
  signal blk00000001_sig000001af : STD_LOGIC; 
  signal blk00000001_sig000001ae : STD_LOGIC; 
  signal blk00000001_sig000001ad : STD_LOGIC; 
  signal blk00000001_sig000001ac : STD_LOGIC; 
  signal blk00000001_sig000001ab : STD_LOGIC; 
  signal blk00000001_sig000001aa : STD_LOGIC; 
  signal blk00000001_sig000001a9 : STD_LOGIC; 
  signal blk00000001_sig000001a8 : STD_LOGIC; 
  signal blk00000001_sig000001a7 : STD_LOGIC; 
  signal blk00000001_sig000001a6 : STD_LOGIC; 
  signal blk00000001_sig000001a5 : STD_LOGIC; 
  signal blk00000001_sig000001a4 : STD_LOGIC; 
  signal blk00000001_sig000001a3 : STD_LOGIC; 
  signal blk00000001_sig000001a2 : STD_LOGIC; 
  signal blk00000001_sig000001a1 : STD_LOGIC; 
  signal blk00000001_sig000001a0 : STD_LOGIC; 
  signal blk00000001_sig0000019f : STD_LOGIC; 
  signal blk00000001_sig0000019e : STD_LOGIC; 
  signal blk00000001_sig0000019d : STD_LOGIC; 
  signal blk00000001_sig0000019c : STD_LOGIC; 
  signal NlwRenamedSig_OI_det_htotal : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal NlwRenamedSig_OI_det_hfp_start : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal NlwRenamedSig_OI_det_hsync_start : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal NlwRenamedSig_OI_det_hbp_start : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal NlwRenamedSig_OI_det_hactive_start : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal NlwRenamedSig_OI_det_v0total : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal NlwRenamedSig_OI_det_v0fp_start : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal NlwRenamedSig_OI_det_v0sync_start : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal NlwRenamedSig_OI_det_v0bp_start : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal NlwRenamedSig_OI_det_v0active_start : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal NlwRenamedSig_OI_det_v0blank_hstart : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal NlwRenamedSig_OI_det_v0blank_hend : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal NlwRenamedSig_OI_det_v0sync_hstart : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal NlwRenamedSig_OI_det_v0sync_hend : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal NlwRenamedSig_OI_fsync : STD_LOGIC_VECTOR ( 0 downto 0 ); 
begin
  NlwRenamedSignal_video_clk_in <= video_clk_in;
  det_status(31) <= NlwRenamedSig_OI_det_status_0_Q;
  det_status(30) <= NlwRenamedSig_OI_det_status_0_Q;
  det_status(29) <= NlwRenamedSig_OI_det_status_0_Q;
  det_status(28) <= NlwRenamedSig_OI_det_status_0_Q;
  det_status(27) <= NlwRenamedSig_OI_det_status_0_Q;
  det_status(26) <= NlwRenamedSig_OI_det_status_0_Q;
  det_status(25) <= NlwRenamedSig_OI_det_status_25_Q;
  det_status(24) <= NlwRenamedSig_OI_det_status_24_Q;
  det_status(23) <= NlwRenamedSig_OI_det_status_23_Q;
  det_status(22) <= NlwRenamedSig_OI_det_status_22_Q;
  det_status(21) <= NlwRenamedSig_OI_det_status_21_Q;
  det_status(20) <= NlwRenamedSig_OI_det_status_20_Q;
  det_status(19) <= NlwRenamedSig_OI_det_status_0_Q;
  det_status(18) <= NlwRenamedSig_OI_det_status_0_Q;
  det_status(17) <= NlwRenamedSig_OI_det_status_0_Q;
  det_status(16) <= NlwRenamedSig_OI_det_status_0_Q;
  det_status(15) <= NlwRenamedSig_OI_det_status_0_Q;
  det_status(14) <= NlwRenamedSig_OI_det_status_0_Q;
  det_status(13) <= NlwRenamedSig_OI_det_status_0_Q;
  det_status(12) <= NlwRenamedSig_OI_det_status_0_Q;
  det_status(11) <= NlwRenamedSig_OI_det_status_0_Q;
  det_status(10) <= NlwRenamedSig_OI_det_status_0_Q;
  det_status(9) <= NlwRenamedSig_OI_det_status_0_Q;
  det_status(8) <= NlwRenamedSig_OI_det_status_0_Q;
  det_status(7) <= NlwRenamedSig_OI_det_status_0_Q;
  det_status(6) <= NlwRenamedSig_OI_det_status_0_Q;
  det_status(5) <= NlwRenamedSig_OI_det_status_0_Q;
  det_status(4) <= NlwRenamedSig_OI_det_status_0_Q;
  det_status(3) <= NlwRenamedSig_OI_det_status_0_Q;
  det_status(2) <= NlwRenamedSig_OI_det_status_0_Q;
  det_status(1) <= NlwRenamedSig_OI_det_status_0_Q;
  det_status(0) <= NlwRenamedSig_OI_det_status_0_Q;
  version(31) <= NlwRenamedSig_OI_det_status_0_Q;
  version(30) <= NlwRenamedSig_OI_det_status_0_Q;
  version(29) <= NlwRenamedSig_OI_det_status_24_Q;
  version(28) <= NlwRenamedSig_OI_det_status_24_Q;
  version(27) <= NlwRenamedSig_OI_det_status_0_Q;
  version(26) <= NlwRenamedSig_OI_det_status_0_Q;
  version(25) <= NlwRenamedSig_OI_det_status_0_Q;
  version(24) <= NlwRenamedSig_OI_det_status_0_Q;
  version(23) <= NlwRenamedSig_OI_det_status_0_Q;
  version(22) <= NlwRenamedSig_OI_det_status_0_Q;
  version(21) <= NlwRenamedSig_OI_det_status_0_Q;
  version(20) <= NlwRenamedSig_OI_det_status_0_Q;
  version(19) <= NlwRenamedSig_OI_det_status_24_Q;
  version(18) <= NlwRenamedSig_OI_det_status_0_Q;
  version(17) <= NlwRenamedSig_OI_det_status_24_Q;
  version(16) <= NlwRenamedSig_OI_det_status_0_Q;
  version(15) <= NlwRenamedSig_OI_det_status_0_Q;
  version(14) <= NlwRenamedSig_OI_det_status_0_Q;
  version(13) <= NlwRenamedSig_OI_det_status_0_Q;
  version(12) <= NlwRenamedSig_OI_det_status_0_Q;
  version(11) <= NlwRenamedSig_OI_det_status_0_Q;
  version(10) <= NlwRenamedSig_OI_det_status_0_Q;
  version(9) <= NlwRenamedSig_OI_det_status_0_Q;
  version(8) <= NlwRenamedSig_OI_det_status_0_Q;
  version(7) <= NlwRenamedSig_OI_det_status_0_Q;
  version(6) <= NlwRenamedSig_OI_det_status_0_Q;
  version(5) <= NlwRenamedSig_OI_det_status_0_Q;
  version(4) <= NlwRenamedSig_OI_det_status_0_Q;
  version(3) <= NlwRenamedSig_OI_det_status_0_Q;
  version(2) <= NlwRenamedSig_OI_det_status_24_Q;
  version(1) <= NlwRenamedSig_OI_det_status_24_Q;
  version(0) <= NlwRenamedSig_OI_det_status_0_Q;
  intr_status(31) <= NlwRenamedSig_OI_det_status_0_Q;
  intr_status(30) <= NlwRenamedSig_OI_det_status_0_Q;
  intr_status(29) <= NlwRenamedSig_OI_det_status_0_Q;
  intr_status(28) <= NlwRenamedSig_OI_det_status_0_Q;
  intr_status(27) <= NlwRenamedSig_OI_det_status_0_Q;
  intr_status(26) <= NlwRenamedSig_OI_det_status_0_Q;
  intr_status(25) <= NlwRenamedSig_OI_det_status_0_Q;
  intr_status(24) <= NlwRenamedSig_OI_det_status_0_Q;
  intr_status(23) <= NlwRenamedSig_OI_det_status_0_Q;
  intr_status(22) <= NlwRenamedSig_OI_det_status_0_Q;
  intr_status(21) <= NlwRenamedSig_OI_det_status_0_Q;
  intr_status(20) <= NlwRenamedSig_OI_det_status_0_Q;
  intr_status(19) <= NlwRenamedSig_OI_det_status_0_Q;
  intr_status(18) <= NlwRenamedSig_OI_det_status_0_Q;
  intr_status(17) <= NlwRenamedSig_OI_det_status_0_Q;
  intr_status(16) <= NlwRenamedSig_OI_intr_status_16_Q;
  intr_status(15) <= NlwRenamedSig_OI_intr_status_15_Q;
  intr_status(14) <= NlwRenamedSig_OI_intr_status_14_Q;
  intr_status(13) <= NlwRenamedSig_OI_intr_status_13_Q;
  intr_status(12) <= NlwRenamedSig_OI_intr_status_12_Q;
  intr_status(11) <= NlwRenamedSig_OI_det_status_0_Q;
  intr_status(10) <= NlwRenamedSig_OI_det_status_0_Q;
  intr_status(9) <= NlwRenamedSig_OI_intr_status_9_Q;
  intr_status(8) <= NlwRenamedSig_OI_intr_status_8_Q;
  intr_status(7) <= NlwRenamedSig_OI_intr_status_7_Q;
  intr_status(6) <= NlwRenamedSig_OI_det_status_0_Q;
  intr_status(5) <= NlwRenamedSig_OI_intr_status_5_Q;
  intr_status(4) <= NlwRenamedSig_OI_det_status_0_Q;
  intr_status(3) <= NlwRenamedSig_OI_intr_status_3_Q;
  intr_status(2) <= NlwRenamedSig_OI_intr_status_2_Q;
  intr_status(1) <= NlwRenamedSig_OI_intr_status_1_Q;
  intr_status(0) <= NlwRenamedSig_OI_intr_status_0_Q;
  det_htotal(10) <= NlwRenamedSig_OI_det_htotal(10);
  det_htotal(9) <= NlwRenamedSig_OI_det_htotal(9);
  det_htotal(8) <= NlwRenamedSig_OI_det_htotal(8);
  det_htotal(7) <= NlwRenamedSig_OI_det_htotal(7);
  det_htotal(6) <= NlwRenamedSig_OI_det_htotal(6);
  det_htotal(5) <= NlwRenamedSig_OI_det_htotal(5);
  det_htotal(4) <= NlwRenamedSig_OI_det_htotal(4);
  det_htotal(3) <= NlwRenamedSig_OI_det_htotal(3);
  det_htotal(2) <= NlwRenamedSig_OI_det_htotal(2);
  det_htotal(1) <= NlwRenamedSig_OI_det_htotal(1);
  det_htotal(0) <= NlwRenamedSig_OI_det_htotal(0);
  det_hfp_start(10) <= NlwRenamedSig_OI_det_hfp_start(10);
  det_hfp_start(9) <= NlwRenamedSig_OI_det_hfp_start(9);
  det_hfp_start(8) <= NlwRenamedSig_OI_det_hfp_start(8);
  det_hfp_start(7) <= NlwRenamedSig_OI_det_hfp_start(7);
  det_hfp_start(6) <= NlwRenamedSig_OI_det_hfp_start(6);
  det_hfp_start(5) <= NlwRenamedSig_OI_det_hfp_start(5);
  det_hfp_start(4) <= NlwRenamedSig_OI_det_hfp_start(4);
  det_hfp_start(3) <= NlwRenamedSig_OI_det_hfp_start(3);
  det_hfp_start(2) <= NlwRenamedSig_OI_det_hfp_start(2);
  det_hfp_start(1) <= NlwRenamedSig_OI_det_hfp_start(1);
  det_hfp_start(0) <= NlwRenamedSig_OI_det_hfp_start(0);
  det_hsync_start(10) <= NlwRenamedSig_OI_det_hsync_start(10);
  det_hsync_start(9) <= NlwRenamedSig_OI_det_hsync_start(9);
  det_hsync_start(8) <= NlwRenamedSig_OI_det_hsync_start(8);
  det_hsync_start(7) <= NlwRenamedSig_OI_det_hsync_start(7);
  det_hsync_start(6) <= NlwRenamedSig_OI_det_hsync_start(6);
  det_hsync_start(5) <= NlwRenamedSig_OI_det_hsync_start(5);
  det_hsync_start(4) <= NlwRenamedSig_OI_det_hsync_start(4);
  det_hsync_start(3) <= NlwRenamedSig_OI_det_hsync_start(3);
  det_hsync_start(2) <= NlwRenamedSig_OI_det_hsync_start(2);
  det_hsync_start(1) <= NlwRenamedSig_OI_det_hsync_start(1);
  det_hsync_start(0) <= NlwRenamedSig_OI_det_hsync_start(0);
  det_hbp_start(10) <= NlwRenamedSig_OI_det_hbp_start(10);
  det_hbp_start(9) <= NlwRenamedSig_OI_det_hbp_start(9);
  det_hbp_start(8) <= NlwRenamedSig_OI_det_hbp_start(8);
  det_hbp_start(7) <= NlwRenamedSig_OI_det_hbp_start(7);
  det_hbp_start(6) <= NlwRenamedSig_OI_det_hbp_start(6);
  det_hbp_start(5) <= NlwRenamedSig_OI_det_hbp_start(5);
  det_hbp_start(4) <= NlwRenamedSig_OI_det_hbp_start(4);
  det_hbp_start(3) <= NlwRenamedSig_OI_det_hbp_start(3);
  det_hbp_start(2) <= NlwRenamedSig_OI_det_hbp_start(2);
  det_hbp_start(1) <= NlwRenamedSig_OI_det_hbp_start(1);
  det_hbp_start(0) <= NlwRenamedSig_OI_det_hbp_start(0);
  det_hactive_start(10) <= NlwRenamedSig_OI_det_hactive_start(10);
  det_hactive_start(9) <= NlwRenamedSig_OI_det_hactive_start(9);
  det_hactive_start(8) <= NlwRenamedSig_OI_det_hactive_start(8);
  det_hactive_start(7) <= NlwRenamedSig_OI_det_hactive_start(7);
  det_hactive_start(6) <= NlwRenamedSig_OI_det_hactive_start(6);
  det_hactive_start(5) <= NlwRenamedSig_OI_det_hactive_start(5);
  det_hactive_start(4) <= NlwRenamedSig_OI_det_hactive_start(4);
  det_hactive_start(3) <= NlwRenamedSig_OI_det_hactive_start(3);
  det_hactive_start(2) <= NlwRenamedSig_OI_det_hactive_start(2);
  det_hactive_start(1) <= NlwRenamedSig_OI_det_hactive_start(1);
  det_hactive_start(0) <= NlwRenamedSig_OI_det_hactive_start(0);
  det_v0total(10) <= NlwRenamedSig_OI_det_v0total(10);
  det_v0total(9) <= NlwRenamedSig_OI_det_v0total(9);
  det_v0total(8) <= NlwRenamedSig_OI_det_v0total(8);
  det_v0total(7) <= NlwRenamedSig_OI_det_v0total(7);
  det_v0total(6) <= NlwRenamedSig_OI_det_v0total(6);
  det_v0total(5) <= NlwRenamedSig_OI_det_v0total(5);
  det_v0total(4) <= NlwRenamedSig_OI_det_v0total(4);
  det_v0total(3) <= NlwRenamedSig_OI_det_v0total(3);
  det_v0total(2) <= NlwRenamedSig_OI_det_v0total(2);
  det_v0total(1) <= NlwRenamedSig_OI_det_v0total(1);
  det_v0total(0) <= NlwRenamedSig_OI_det_v0total(0);
  det_v0fp_start(10) <= NlwRenamedSig_OI_det_v0fp_start(10);
  det_v0fp_start(9) <= NlwRenamedSig_OI_det_v0fp_start(9);
  det_v0fp_start(8) <= NlwRenamedSig_OI_det_v0fp_start(8);
  det_v0fp_start(7) <= NlwRenamedSig_OI_det_v0fp_start(7);
  det_v0fp_start(6) <= NlwRenamedSig_OI_det_v0fp_start(6);
  det_v0fp_start(5) <= NlwRenamedSig_OI_det_v0fp_start(5);
  det_v0fp_start(4) <= NlwRenamedSig_OI_det_v0fp_start(4);
  det_v0fp_start(3) <= NlwRenamedSig_OI_det_v0fp_start(3);
  det_v0fp_start(2) <= NlwRenamedSig_OI_det_v0fp_start(2);
  det_v0fp_start(1) <= NlwRenamedSig_OI_det_v0fp_start(1);
  det_v0fp_start(0) <= NlwRenamedSig_OI_det_v0fp_start(0);
  det_v0sync_start(10) <= NlwRenamedSig_OI_det_v0sync_start(10);
  det_v0sync_start(9) <= NlwRenamedSig_OI_det_v0sync_start(9);
  det_v0sync_start(8) <= NlwRenamedSig_OI_det_v0sync_start(8);
  det_v0sync_start(7) <= NlwRenamedSig_OI_det_v0sync_start(7);
  det_v0sync_start(6) <= NlwRenamedSig_OI_det_v0sync_start(6);
  det_v0sync_start(5) <= NlwRenamedSig_OI_det_v0sync_start(5);
  det_v0sync_start(4) <= NlwRenamedSig_OI_det_v0sync_start(4);
  det_v0sync_start(3) <= NlwRenamedSig_OI_det_v0sync_start(3);
  det_v0sync_start(2) <= NlwRenamedSig_OI_det_v0sync_start(2);
  det_v0sync_start(1) <= NlwRenamedSig_OI_det_v0sync_start(1);
  det_v0sync_start(0) <= NlwRenamedSig_OI_det_v0sync_start(0);
  det_v0bp_start(10) <= NlwRenamedSig_OI_det_v0bp_start(10);
  det_v0bp_start(9) <= NlwRenamedSig_OI_det_v0bp_start(9);
  det_v0bp_start(8) <= NlwRenamedSig_OI_det_v0bp_start(8);
  det_v0bp_start(7) <= NlwRenamedSig_OI_det_v0bp_start(7);
  det_v0bp_start(6) <= NlwRenamedSig_OI_det_v0bp_start(6);
  det_v0bp_start(5) <= NlwRenamedSig_OI_det_v0bp_start(5);
  det_v0bp_start(4) <= NlwRenamedSig_OI_det_v0bp_start(4);
  det_v0bp_start(3) <= NlwRenamedSig_OI_det_v0bp_start(3);
  det_v0bp_start(2) <= NlwRenamedSig_OI_det_v0bp_start(2);
  det_v0bp_start(1) <= NlwRenamedSig_OI_det_v0bp_start(1);
  det_v0bp_start(0) <= NlwRenamedSig_OI_det_v0bp_start(0);
  det_v0active_start(10) <= NlwRenamedSig_OI_det_v0active_start(10);
  det_v0active_start(9) <= NlwRenamedSig_OI_det_v0active_start(9);
  det_v0active_start(8) <= NlwRenamedSig_OI_det_v0active_start(8);
  det_v0active_start(7) <= NlwRenamedSig_OI_det_v0active_start(7);
  det_v0active_start(6) <= NlwRenamedSig_OI_det_v0active_start(6);
  det_v0active_start(5) <= NlwRenamedSig_OI_det_v0active_start(5);
  det_v0active_start(4) <= NlwRenamedSig_OI_det_v0active_start(4);
  det_v0active_start(3) <= NlwRenamedSig_OI_det_v0active_start(3);
  det_v0active_start(2) <= NlwRenamedSig_OI_det_v0active_start(2);
  det_v0active_start(1) <= NlwRenamedSig_OI_det_v0active_start(1);
  det_v0active_start(0) <= NlwRenamedSig_OI_det_v0active_start(0);
  det_v0achroma_start(10) <= NlwRenamedSig_OI_det_status_0_Q;
  det_v0achroma_start(9) <= NlwRenamedSig_OI_det_status_0_Q;
  det_v0achroma_start(8) <= NlwRenamedSig_OI_det_status_0_Q;
  det_v0achroma_start(7) <= NlwRenamedSig_OI_det_status_0_Q;
  det_v0achroma_start(6) <= NlwRenamedSig_OI_det_status_0_Q;
  det_v0achroma_start(5) <= NlwRenamedSig_OI_det_status_0_Q;
  det_v0achroma_start(4) <= NlwRenamedSig_OI_det_status_0_Q;
  det_v0achroma_start(3) <= NlwRenamedSig_OI_det_status_0_Q;
  det_v0achroma_start(2) <= NlwRenamedSig_OI_det_status_0_Q;
  det_v0achroma_start(1) <= NlwRenamedSig_OI_det_status_0_Q;
  det_v0achroma_start(0) <= NlwRenamedSig_OI_det_status_0_Q;
  det_v0blank_hstart(10) <= NlwRenamedSig_OI_det_v0blank_hstart(10);
  det_v0blank_hstart(9) <= NlwRenamedSig_OI_det_v0blank_hstart(9);
  det_v0blank_hstart(8) <= NlwRenamedSig_OI_det_v0blank_hstart(8);
  det_v0blank_hstart(7) <= NlwRenamedSig_OI_det_v0blank_hstart(7);
  det_v0blank_hstart(6) <= NlwRenamedSig_OI_det_v0blank_hstart(6);
  det_v0blank_hstart(5) <= NlwRenamedSig_OI_det_v0blank_hstart(5);
  det_v0blank_hstart(4) <= NlwRenamedSig_OI_det_v0blank_hstart(4);
  det_v0blank_hstart(3) <= NlwRenamedSig_OI_det_v0blank_hstart(3);
  det_v0blank_hstart(2) <= NlwRenamedSig_OI_det_v0blank_hstart(2);
  det_v0blank_hstart(1) <= NlwRenamedSig_OI_det_v0blank_hstart(1);
  det_v0blank_hstart(0) <= NlwRenamedSig_OI_det_v0blank_hstart(0);
  det_v0blank_hend(10) <= NlwRenamedSig_OI_det_v0blank_hend(10);
  det_v0blank_hend(9) <= NlwRenamedSig_OI_det_v0blank_hend(9);
  det_v0blank_hend(8) <= NlwRenamedSig_OI_det_v0blank_hend(8);
  det_v0blank_hend(7) <= NlwRenamedSig_OI_det_v0blank_hend(7);
  det_v0blank_hend(6) <= NlwRenamedSig_OI_det_v0blank_hend(6);
  det_v0blank_hend(5) <= NlwRenamedSig_OI_det_v0blank_hend(5);
  det_v0blank_hend(4) <= NlwRenamedSig_OI_det_v0blank_hend(4);
  det_v0blank_hend(3) <= NlwRenamedSig_OI_det_v0blank_hend(3);
  det_v0blank_hend(2) <= NlwRenamedSig_OI_det_v0blank_hend(2);
  det_v0blank_hend(1) <= NlwRenamedSig_OI_det_v0blank_hend(1);
  det_v0blank_hend(0) <= NlwRenamedSig_OI_det_v0blank_hend(0);
  det_v0sync_hstart(10) <= NlwRenamedSig_OI_det_v0sync_hstart(10);
  det_v0sync_hstart(9) <= NlwRenamedSig_OI_det_v0sync_hstart(9);
  det_v0sync_hstart(8) <= NlwRenamedSig_OI_det_v0sync_hstart(8);
  det_v0sync_hstart(7) <= NlwRenamedSig_OI_det_v0sync_hstart(7);
  det_v0sync_hstart(6) <= NlwRenamedSig_OI_det_v0sync_hstart(6);
  det_v0sync_hstart(5) <= NlwRenamedSig_OI_det_v0sync_hstart(5);
  det_v0sync_hstart(4) <= NlwRenamedSig_OI_det_v0sync_hstart(4);
  det_v0sync_hstart(3) <= NlwRenamedSig_OI_det_v0sync_hstart(3);
  det_v0sync_hstart(2) <= NlwRenamedSig_OI_det_v0sync_hstart(2);
  det_v0sync_hstart(1) <= NlwRenamedSig_OI_det_v0sync_hstart(1);
  det_v0sync_hstart(0) <= NlwRenamedSig_OI_det_v0sync_hstart(0);
  det_v0sync_hend(10) <= NlwRenamedSig_OI_det_v0sync_hend(10);
  det_v0sync_hend(9) <= NlwRenamedSig_OI_det_v0sync_hend(9);
  det_v0sync_hend(8) <= NlwRenamedSig_OI_det_v0sync_hend(8);
  det_v0sync_hend(7) <= NlwRenamedSig_OI_det_v0sync_hend(7);
  det_v0sync_hend(6) <= NlwRenamedSig_OI_det_v0sync_hend(6);
  det_v0sync_hend(5) <= NlwRenamedSig_OI_det_v0sync_hend(5);
  det_v0sync_hend(4) <= NlwRenamedSig_OI_det_v0sync_hend(4);
  det_v0sync_hend(3) <= NlwRenamedSig_OI_det_v0sync_hend(3);
  det_v0sync_hend(2) <= NlwRenamedSig_OI_det_v0sync_hend(2);
  det_v0sync_hend(1) <= NlwRenamedSig_OI_det_v0sync_hend(1);
  det_v0sync_hend(0) <= NlwRenamedSig_OI_det_v0sync_hend(0);
  fsync(0) <= NlwRenamedSig_OI_fsync(0);
  video_clk_out <= NlwRenamedSignal_video_clk_in;
  vblank_out <= NlwRenamedSig_OI_vblank_out;
  active_video_out <= NlwRenamedSig_OI_active_video_out;
  blk00000001_blk000006e4 : INV
    port map (
      I => blk00000001_sig00000638,
      O => blk00000001_sig00000631
    );
  blk00000001_blk000006e3 : INV
    port map (
      I => blk00000001_sig00000623,
      O => blk00000001_sig00000624
    );
  blk00000001_blk000006e2 : INV
    port map (
      I => NlwRenamedSig_OI_det_htotal(2),
      O => blk00000001_sig000004fe
    );
  blk00000001_blk000006e1 : INV
    port map (
      I => blk00000001_sig00000537,
      O => blk00000001_sig000003ef
    );
  blk00000001_blk000006e0 : INV
    port map (
      I => blk00000001_sig0000052c,
      O => blk00000001_sig000003e4
    );
  blk00000001_blk000006df : INV
    port map (
      I => blk00000001_sig00000542,
      O => blk00000001_sig000003d9
    );
  blk00000001_blk000006de : INV
    port map (
      I => blk00000001_sig00000516,
      O => blk00000001_sig000003ce
    );
  blk00000001_blk000006dd : INV
    port map (
      I => blk00000001_sig0000050a,
      O => blk00000001_sig000003c3
    );
  blk00000001_blk000006dc : INV
    port map (
      I => blk00000001_sig00000521,
      O => blk00000001_sig000003b8
    );
  blk00000001_blk000006db : INV
    port map (
      I => blk00000001_sig00000258,
      O => blk00000001_sig000001f2
    );
  blk00000001_blk000006da : INV
    port map (
      I => blk00000001_sig0000024d,
      O => blk00000001_sig000001e7
    );
  blk00000001_blk000006d9 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => blk00000001_sig000005f7,
      I1 => blk00000001_sig000005f8,
      I2 => ce,
      O => blk00000001_sig000007c9
    );
  blk00000001_blk000006d8 : LUT5
    generic map(
      INIT => X"00002000"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig00000619,
      I2 => blk00000001_sig000004f0,
      I3 => blk00000001_sig000005f4,
      I4 => blk00000001_sig0000054d,
      O => blk00000001_sig000007c8
    );
  blk00000001_blk000006d7 : MUXF7
    port map (
      I0 => blk00000001_sig000007c8,
      I1 => blk00000001_sig000007c9,
      S => blk00000001_sig000005f6,
      O => blk00000001_sig000007bf
    );
  blk00000001_blk000006d6 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => blk00000001_sig000005f8,
      I1 => ce,
      I2 => blk00000001_sig000005f7,
      O => blk00000001_sig000007c7
    );
  blk00000001_blk000006d5 : LUT5
    generic map(
      INIT => X"00002000"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig00000619,
      I2 => blk00000001_sig000004f0,
      I3 => blk00000001_sig0000054d,
      I4 => blk00000001_sig000005f4,
      O => blk00000001_sig000007c6
    );
  blk00000001_blk000006d4 : MUXF7
    port map (
      I0 => blk00000001_sig000007c6,
      I1 => blk00000001_sig000007c7,
      S => blk00000001_sig000005f6,
      O => blk00000001_sig000007be
    );
  blk00000001_blk000006d3 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => blk00000001_sig000005f7,
      I1 => blk00000001_sig000005f8,
      I2 => ce,
      O => blk00000001_sig000007c5
    );
  blk00000001_blk000006d2 : LUT5
    generic map(
      INIT => X"00002000"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig00000619,
      I2 => blk00000001_sig000004f0,
      I3 => blk00000001_sig000005f4,
      I4 => blk00000001_sig0000054d,
      O => blk00000001_sig000007c4
    );
  blk00000001_blk000006d1 : MUXF7
    port map (
      I0 => blk00000001_sig000007c4,
      I1 => blk00000001_sig000007c5,
      S => blk00000001_sig000005f6,
      O => blk00000001_sig000004a9
    );
  blk00000001_blk000006d0 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => blk00000001_sig000005f8,
      I1 => ce,
      I2 => blk00000001_sig000005f7,
      O => blk00000001_sig000007c3
    );
  blk00000001_blk000006cf : LUT5
    generic map(
      INIT => X"00002000"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig00000619,
      I2 => blk00000001_sig000004f0,
      I3 => blk00000001_sig0000054d,
      I4 => blk00000001_sig000005f4,
      O => blk00000001_sig000007c2
    );
  blk00000001_blk000006ce : MUXF7
    port map (
      I0 => blk00000001_sig000007c2,
      I1 => blk00000001_sig000007c3,
      S => blk00000001_sig000005f6,
      O => blk00000001_sig000004a7
    );
  blk00000001_blk000006cd : LUT6
    generic map(
      INIT => X"FFDFFFDFFFDFDFFF"
    )
    port map (
      I0 => blk00000001_sig0000024c,
      I1 => sclr,
      I2 => blk00000001_sig00000240,
      I3 => blk00000001_sig000002f3,
      I4 => blk00000001_sig000001f3,
      I5 => blk00000001_sig000002f2,
      O => blk00000001_sig000007c1
    );
  blk00000001_blk000006cc : LUT4
    generic map(
      INIT => X"EFFF"
    )
    port map (
      I0 => sclr,
      I1 => blk00000001_sig00000243,
      I2 => blk00000001_sig0000024c,
      I3 => blk00000001_sig00000240,
      O => blk00000001_sig000007c0
    );
  blk00000001_blk000006cb : MUXF7
    port map (
      I0 => blk00000001_sig000007c0,
      I1 => blk00000001_sig000007c1,
      S => ce,
      O => blk00000001_sig00000705
    );
  blk00000001_blk000006ca : LUT6
    generic map(
      INIT => X"00000000CECCC4CC"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig0000024d,
      I2 => blk00000001_sig0000023f,
      I3 => blk00000001_sig000002fc,
      I4 => blk00000001_sig000001fe,
      I5 => blk00000001_sig00000218,
      O => blk00000001_sig000007b0
    );
  blk00000001_blk000006c9 : LUT6
    generic map(
      INIT => X"00000000CECCC4CC"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig0000024e,
      I2 => blk00000001_sig0000023f,
      I3 => blk00000001_sig000002fc,
      I4 => blk00000001_sig000001fd,
      I5 => blk00000001_sig00000218,
      O => blk00000001_sig000007af
    );
  blk00000001_blk000006c8 : LUT6
    generic map(
      INIT => X"00000000CECCC4CC"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig0000024f,
      I2 => blk00000001_sig0000023f,
      I3 => blk00000001_sig000002fc,
      I4 => blk00000001_sig000001fc,
      I5 => blk00000001_sig00000218,
      O => blk00000001_sig000007ae
    );
  blk00000001_blk000006c7 : LUT6
    generic map(
      INIT => X"00000000CECCC4CC"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig00000250,
      I2 => blk00000001_sig0000023f,
      I3 => blk00000001_sig000002fc,
      I4 => blk00000001_sig000001fb,
      I5 => blk00000001_sig00000218,
      O => blk00000001_sig000007ad
    );
  blk00000001_blk000006c6 : LUT6
    generic map(
      INIT => X"00000000CECCC4CC"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig00000251,
      I2 => blk00000001_sig0000023f,
      I3 => blk00000001_sig000002fc,
      I4 => blk00000001_sig000001fa,
      I5 => blk00000001_sig00000218,
      O => blk00000001_sig000007ac
    );
  blk00000001_blk000006c5 : LUT6
    generic map(
      INIT => X"00000000CECCC4CC"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig00000252,
      I2 => blk00000001_sig0000023f,
      I3 => blk00000001_sig000002fc,
      I4 => blk00000001_sig000001f9,
      I5 => blk00000001_sig00000218,
      O => blk00000001_sig000007ab
    );
  blk00000001_blk000006c4 : LUT6
    generic map(
      INIT => X"00000000CECCC4CC"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig00000253,
      I2 => blk00000001_sig0000023f,
      I3 => blk00000001_sig000002fc,
      I4 => blk00000001_sig000001f8,
      I5 => blk00000001_sig00000218,
      O => blk00000001_sig000007aa
    );
  blk00000001_blk000006c3 : LUT6
    generic map(
      INIT => X"00000000CECCC4CC"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig00000254,
      I2 => blk00000001_sig0000023f,
      I3 => blk00000001_sig000002fc,
      I4 => blk00000001_sig000001f7,
      I5 => blk00000001_sig00000218,
      O => blk00000001_sig000007a9
    );
  blk00000001_blk000006c2 : LUT6
    generic map(
      INIT => X"00000000CECCC4CC"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig00000255,
      I2 => blk00000001_sig0000023f,
      I3 => blk00000001_sig000002fc,
      I4 => blk00000001_sig000001f6,
      I5 => blk00000001_sig00000218,
      O => blk00000001_sig000007a8
    );
  blk00000001_blk000006c1 : LUT6
    generic map(
      INIT => X"00000000CECCC4CC"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig00000256,
      I2 => blk00000001_sig0000023f,
      I3 => blk00000001_sig000002fc,
      I4 => blk00000001_sig000001f5,
      I5 => blk00000001_sig00000218,
      O => blk00000001_sig000007a7
    );
  blk00000001_blk000006c0 : LUT6
    generic map(
      INIT => X"00000000CECCC4CC"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig00000257,
      I2 => blk00000001_sig0000023f,
      I3 => blk00000001_sig000002fc,
      I4 => blk00000001_sig000001f4,
      I5 => blk00000001_sig00000218,
      O => blk00000001_sig000007a6
    );
  blk00000001_blk000006bf : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => sclr,
      I1 => blk00000001_sig0000024c,
      O => blk00000001_sig000007bd
    );
  blk00000001_blk000006be : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => blk00000001_sig00000619,
      I1 => ce,
      I2 => blk00000001_sig000004f0,
      O => blk00000001_sig000007bc
    );
  blk00000001_blk000006bd : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000007bb,
      Q => blk00000001_sig00000258
    );
  blk00000001_blk000006bc : LUT4
    generic map(
      INIT => X"00E4"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig00000258,
      I2 => blk00000001_sig00000209,
      I3 => blk00000001_sig0000022b,
      O => blk00000001_sig000007bb
    );
  blk00000001_blk000006bb : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000007ba,
      Q => blk00000001_sig00000259
    );
  blk00000001_blk000006ba : LUT4
    generic map(
      INIT => X"00E4"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig00000259,
      I2 => blk00000001_sig00000208,
      I3 => blk00000001_sig0000022b,
      O => blk00000001_sig000007ba
    );
  blk00000001_blk000006b9 : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000007b9,
      Q => blk00000001_sig0000025a
    );
  blk00000001_blk000006b8 : LUT4
    generic map(
      INIT => X"00E4"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig0000025a,
      I2 => blk00000001_sig00000207,
      I3 => blk00000001_sig0000022b,
      O => blk00000001_sig000007b9
    );
  blk00000001_blk000006b7 : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000007b8,
      Q => blk00000001_sig0000025b
    );
  blk00000001_blk000006b6 : LUT4
    generic map(
      INIT => X"00E4"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig0000025b,
      I2 => blk00000001_sig00000206,
      I3 => blk00000001_sig0000022b,
      O => blk00000001_sig000007b8
    );
  blk00000001_blk000006b5 : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000007b7,
      Q => blk00000001_sig0000025c
    );
  blk00000001_blk000006b4 : LUT4
    generic map(
      INIT => X"00E4"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig0000025c,
      I2 => blk00000001_sig00000205,
      I3 => blk00000001_sig0000022b,
      O => blk00000001_sig000007b7
    );
  blk00000001_blk000006b3 : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000007b6,
      Q => blk00000001_sig0000025d
    );
  blk00000001_blk000006b2 : LUT4
    generic map(
      INIT => X"00E4"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig0000025d,
      I2 => blk00000001_sig00000204,
      I3 => blk00000001_sig0000022b,
      O => blk00000001_sig000007b6
    );
  blk00000001_blk000006b1 : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000007b5,
      Q => blk00000001_sig0000025e
    );
  blk00000001_blk000006b0 : LUT4
    generic map(
      INIT => X"00E4"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig0000025e,
      I2 => blk00000001_sig00000203,
      I3 => blk00000001_sig0000022b,
      O => blk00000001_sig000007b5
    );
  blk00000001_blk000006af : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000007b4,
      Q => blk00000001_sig0000025f
    );
  blk00000001_blk000006ae : LUT4
    generic map(
      INIT => X"00E4"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig0000025f,
      I2 => blk00000001_sig00000202,
      I3 => blk00000001_sig0000022b,
      O => blk00000001_sig000007b4
    );
  blk00000001_blk000006ad : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000007b3,
      Q => blk00000001_sig00000260
    );
  blk00000001_blk000006ac : LUT4
    generic map(
      INIT => X"00E4"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig00000260,
      I2 => blk00000001_sig00000201,
      I3 => blk00000001_sig0000022b,
      O => blk00000001_sig000007b3
    );
  blk00000001_blk000006ab : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000007b2,
      Q => blk00000001_sig00000261
    );
  blk00000001_blk000006aa : LUT4
    generic map(
      INIT => X"00E4"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig00000261,
      I2 => blk00000001_sig00000200,
      I3 => blk00000001_sig0000022b,
      O => blk00000001_sig000007b2
    );
  blk00000001_blk000006a9 : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000007b1,
      Q => blk00000001_sig00000262
    );
  blk00000001_blk000006a8 : LUT4
    generic map(
      INIT => X"00E4"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig00000262,
      I2 => blk00000001_sig000001ff,
      I3 => blk00000001_sig0000022b,
      O => blk00000001_sig000007b1
    );
  blk00000001_blk000006a7 : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000007b0,
      Q => blk00000001_sig0000024d
    );
  blk00000001_blk000006a6 : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000007af,
      Q => blk00000001_sig0000024e
    );
  blk00000001_blk000006a5 : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000007ae,
      Q => blk00000001_sig0000024f
    );
  blk00000001_blk000006a4 : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000007ad,
      Q => blk00000001_sig00000250
    );
  blk00000001_blk000006a3 : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000007ac,
      Q => blk00000001_sig00000251
    );
  blk00000001_blk000006a2 : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000007ab,
      Q => blk00000001_sig00000252
    );
  blk00000001_blk000006a1 : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000007aa,
      Q => blk00000001_sig00000253
    );
  blk00000001_blk000006a0 : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000007a9,
      Q => blk00000001_sig00000254
    );
  blk00000001_blk0000069f : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000007a8,
      Q => blk00000001_sig00000255
    );
  blk00000001_blk0000069e : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000007a7,
      Q => blk00000001_sig00000256
    );
  blk00000001_blk0000069d : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000007a6,
      Q => blk00000001_sig00000257
    );
  blk00000001_blk0000069c : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => sclr,
      I1 => blk00000001_sig0000024c,
      O => blk00000001_sig000007a5
    );
  blk00000001_blk0000069b : LUT6
    generic map(
      INIT => X"FFFF4EFFFFFFFFFF"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig00000241,
      I2 => blk00000001_sig000001f3,
      I3 => blk00000001_sig00000240,
      I4 => sclr,
      I5 => blk00000001_sig0000024c,
      O => blk00000001_sig00000707
    );
  blk00000001_blk0000069a : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => blk00000001_sig000005ff,
      I1 => blk00000001_sig000006ca,
      I2 => blk00000001_sig000006cb,
      I3 => blk00000001_sig000006c9,
      I4 => blk00000001_sig000006c8,
      I5 => blk00000001_sig000006cf,
      O => blk00000001_sig000007a4
    );
  blk00000001_blk00000699 : LUT6
    generic map(
      INIT => X"0000C4CC0000CECC"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig000001c9,
      I2 => blk00000001_sig00000601,
      I3 => blk00000001_sig00000602,
      I4 => blk00000001_sig00000507,
      I5 => blk00000001_sig000007a4,
      O => blk00000001_sig00000781
    );
  blk00000001_blk00000698 : LUT5
    generic map(
      INIT => X"EFEEFFFF"
    )
    port map (
      I0 => sclr,
      I1 => blk00000001_sig000001b3,
      I2 => blk00000001_sig0000061a,
      I3 => blk00000001_sig000004c3,
      I4 => control(1),
      O => blk00000001_sig000004c2
    );
  blk00000001_blk00000697 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF20FF"
    )
    port map (
      I0 => blk00000001_sig000005fe,
      I1 => blk00000001_sig000005fd,
      I2 => ce,
      I3 => control(1),
      I4 => sclr,
      I5 => blk00000001_sig000001b3,
      O => blk00000001_sig0000045e
    );
  blk00000001_blk00000696 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF20FF"
    )
    port map (
      I0 => blk00000001_sig00000609,
      I1 => blk00000001_sig00000608,
      I2 => ce,
      I3 => control(1),
      I4 => sclr,
      I5 => blk00000001_sig000001b3,
      O => blk00000001_sig00000485
    );
  blk00000001_blk00000695 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF20FF"
    )
    port map (
      I0 => blk00000001_sig00000606,
      I1 => blk00000001_sig00000605,
      I2 => ce,
      I3 => control(1),
      I4 => sclr,
      I5 => blk00000001_sig000001b3,
      O => blk00000001_sig0000049f
    );
  blk00000001_blk00000694 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF20FF"
    )
    port map (
      I0 => blk00000001_sig000005f8,
      I1 => blk00000001_sig000005f7,
      I2 => ce,
      I3 => control(1),
      I4 => sclr,
      I5 => blk00000001_sig000001b3,
      O => blk00000001_sig00000478
    );
  blk00000001_blk00000693 : LUT5
    generic map(
      INIT => X"AAAA6AAA"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_status_22_Q,
      I1 => blk00000001_sig000005fb,
      I2 => ce,
      I3 => blk00000001_sig000005fd,
      I4 => blk00000001_sig000005fe,
      O => blk00000001_sig00000775
    );
  blk00000001_blk00000692 : LUT5
    generic map(
      INIT => X"AAAA6AAA"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_status_23_Q,
      I1 => blk00000001_sig000005f5,
      I2 => ce,
      I3 => blk00000001_sig000005f7,
      I4 => blk00000001_sig000005f8,
      O => blk00000001_sig00000774
    );
  blk00000001_blk00000691 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => sclr,
      I1 => control(1),
      I2 => blk00000001_sig000001b3,
      O => blk00000001_sig00000508
    );
  blk00000001_blk00000690 : LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      I0 => blk00000001_sig00000240,
      I1 => sclr,
      I2 => blk00000001_sig0000024c,
      O => blk00000001_sig00000221
    );
  blk00000001_blk0000068f : LUT6
    generic map(
      INIT => X"FFFFFFFFD7FF82FF"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig000001f3,
      I2 => blk00000001_sig000002f2,
      I3 => blk00000001_sig00000240,
      I4 => blk00000001_sig00000242,
      I5 => blk00000001_sig00000239,
      O => blk00000001_sig00000706
    );
  blk00000001_blk0000068e : LUT5
    generic map(
      INIT => X"AAAA6AAA"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_status_21_Q,
      I1 => blk00000001_sig00000603,
      I2 => ce,
      I3 => blk00000001_sig00000605,
      I4 => blk00000001_sig00000606,
      O => blk00000001_sig00000777
    );
  blk00000001_blk0000068d : LUT5
    generic map(
      INIT => X"2A2AFA2A"
    )
    port map (
      I0 => blk00000001_sig0000054d,
      I1 => blk00000001_sig00000619,
      I2 => ce,
      I3 => blk00000001_sig00000602,
      I4 => blk00000001_sig00000601,
      O => blk00000001_sig00000719
    );
  blk00000001_blk0000068c : LUT6
    generic map(
      INIT => X"FEFFFFFFBAFFFFFF"
    )
    port map (
      I0 => sclr,
      I1 => ce,
      I2 => blk00000001_sig0000023a,
      I3 => blk00000001_sig0000024c,
      I4 => blk00000001_sig00000240,
      I5 => blk00000001_sig000007a3,
      O => blk00000001_sig00000708
    );
  blk00000001_blk0000068b : LUT6
    generic map(
      INIT => X"FFFFFFFF2AAAAAAA"
    )
    port map (
      I0 => blk00000001_sig0000023a,
      I1 => blk00000001_sig0000065a,
      I2 => blk00000001_sig0000065b,
      I3 => blk00000001_sig0000065c,
      I4 => blk00000001_sig0000065d,
      I5 => blk00000001_sig00000219,
      O => blk00000001_sig000007a3
    );
  blk00000001_blk0000068a : LUT6
    generic map(
      INIT => X"0200020002002220"
    )
    port map (
      I0 => blk00000001_sig000001ad,
      I1 => sclr,
      I2 => ce,
      I3 => blk00000001_sig000001c8,
      I4 => blk00000001_sig000006d4,
      I5 => blk00000001_sig000007a2,
      O => blk00000001_sig00000782
    );
  blk00000001_blk00000689 : LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
    port map (
      I0 => blk00000001_sig000006d9,
      I1 => blk00000001_sig000006da,
      I2 => blk00000001_sig000006db,
      I3 => blk00000001_sig000006dc,
      I4 => blk00000001_sig000006d8,
      O => blk00000001_sig000007a2
    );
  blk00000001_blk00000688 : LUT6
    generic map(
      INIT => X"0200020002002220"
    )
    port map (
      I0 => blk00000001_sig00000240,
      I1 => blk00000001_sig00000239,
      I2 => ce,
      I3 => NlwRenamedSig_OI_fsync(0),
      I4 => blk00000001_sig00000673,
      I5 => blk00000001_sig000007a1,
      O => blk00000001_sig0000077c
    );
  blk00000001_blk00000687 : LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
    port map (
      I0 => blk00000001_sig00000686,
      I1 => blk00000001_sig00000687,
      I2 => blk00000001_sig00000688,
      I3 => blk00000001_sig00000689,
      I4 => blk00000001_sig00000677,
      O => blk00000001_sig000007a1
    );
  blk00000001_blk00000686 : LUT6
    generic map(
      INIT => X"FFFFE4FFFFFFFFFF"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig00000244,
      I2 => blk00000001_sig00000223,
      I3 => blk00000001_sig0000024c,
      I4 => sclr,
      I5 => blk00000001_sig00000240,
      O => blk00000001_sig00000704
    );
  blk00000001_blk00000685 : LUT6
    generic map(
      INIT => X"FFFFE4FFFFFFFFFF"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig00000245,
      I2 => blk00000001_sig00000224,
      I3 => blk00000001_sig0000024c,
      I4 => sclr,
      I5 => blk00000001_sig00000240,
      O => blk00000001_sig00000703
    );
  blk00000001_blk00000684 : LUT6
    generic map(
      INIT => X"FFFFE4FFFFFFFFFF"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig00000246,
      I2 => blk00000001_sig00000225,
      I3 => blk00000001_sig0000024c,
      I4 => sclr,
      I5 => blk00000001_sig00000240,
      O => blk00000001_sig00000702
    );
  blk00000001_blk00000683 : LUT6
    generic map(
      INIT => X"0000A000CCCCECCC"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig00000600,
      I2 => blk00000001_sig00000604,
      I3 => blk00000001_sig00000605,
      I4 => blk00000001_sig00000606,
      I5 => blk00000001_sig00000452,
      O => blk00000001_sig000004aa
    );
  blk00000001_blk00000682 : LUT6
    generic map(
      INIT => X"FFFFBBFBFFFFBBBB"
    )
    port map (
      I0 => sclr,
      I1 => control(1),
      I2 => ce,
      I3 => blk00000001_sig00000619,
      I4 => blk00000001_sig000001b3,
      I5 => blk00000001_sig000004f0,
      O => blk00000001_sig00000492
    );
  blk00000001_blk00000681 : LUT6
    generic map(
      INIT => X"4404044440000040"
    )
    port map (
      I0 => blk00000001_sig0000061a,
      I1 => ce,
      I2 => blk00000001_sig000005f6,
      I3 => NlwRenamedSig_OI_det_status_23_Q,
      I4 => vblank_in,
      I5 => blk00000001_sig000004bf,
      O => blk00000001_sig0000078b
    );
  blk00000001_blk00000680 : LUT6
    generic map(
      INIT => X"FFFFFFFFAAEAAA2A"
    )
    port map (
      I0 => blk00000001_sig000005bd,
      I1 => ce,
      I2 => blk00000001_sig00000602,
      I3 => blk00000001_sig00000601,
      I4 => blk00000001_sig00000521,
      I5 => blk00000001_sig00000507,
      O => blk00000001_sig00000718
    );
  blk00000001_blk0000067f : LUT6
    generic map(
      INIT => X"FFFFFFFFAAEAAA2A"
    )
    port map (
      I0 => blk00000001_sig000005be,
      I1 => ce,
      I2 => blk00000001_sig00000602,
      I3 => blk00000001_sig00000601,
      I4 => blk00000001_sig00000522,
      I5 => blk00000001_sig00000507,
      O => blk00000001_sig00000717
    );
  blk00000001_blk0000067e : LUT6
    generic map(
      INIT => X"FFFFFFFFAAEAAA2A"
    )
    port map (
      I0 => blk00000001_sig000005bf,
      I1 => ce,
      I2 => blk00000001_sig00000602,
      I3 => blk00000001_sig00000601,
      I4 => blk00000001_sig00000523,
      I5 => blk00000001_sig00000507,
      O => blk00000001_sig00000716
    );
  blk00000001_blk0000067d : LUT6
    generic map(
      INIT => X"FFFFFFFFAAEAAA2A"
    )
    port map (
      I0 => blk00000001_sig000005c0,
      I1 => ce,
      I2 => blk00000001_sig00000602,
      I3 => blk00000001_sig00000601,
      I4 => blk00000001_sig00000524,
      I5 => blk00000001_sig00000507,
      O => blk00000001_sig00000715
    );
  blk00000001_blk0000067c : LUT6
    generic map(
      INIT => X"FFFFFFFFAAEAAA2A"
    )
    port map (
      I0 => blk00000001_sig000005c1,
      I1 => ce,
      I2 => blk00000001_sig00000602,
      I3 => blk00000001_sig00000601,
      I4 => blk00000001_sig00000525,
      I5 => blk00000001_sig00000507,
      O => blk00000001_sig00000714
    );
  blk00000001_blk0000067b : LUT6
    generic map(
      INIT => X"FFFFFFFFAAEAAA2A"
    )
    port map (
      I0 => blk00000001_sig000005c2,
      I1 => ce,
      I2 => blk00000001_sig00000602,
      I3 => blk00000001_sig00000601,
      I4 => blk00000001_sig00000526,
      I5 => blk00000001_sig00000507,
      O => blk00000001_sig00000713
    );
  blk00000001_blk0000067a : LUT6
    generic map(
      INIT => X"FFFFFFFFAAEAAA2A"
    )
    port map (
      I0 => blk00000001_sig000005c3,
      I1 => ce,
      I2 => blk00000001_sig00000602,
      I3 => blk00000001_sig00000601,
      I4 => blk00000001_sig00000527,
      I5 => blk00000001_sig00000507,
      O => blk00000001_sig00000712
    );
  blk00000001_blk00000679 : LUT6
    generic map(
      INIT => X"FFFFFFFFAAEAAA2A"
    )
    port map (
      I0 => blk00000001_sig000005c4,
      I1 => ce,
      I2 => blk00000001_sig00000602,
      I3 => blk00000001_sig00000601,
      I4 => blk00000001_sig00000528,
      I5 => blk00000001_sig00000507,
      O => blk00000001_sig00000711
    );
  blk00000001_blk00000678 : LUT6
    generic map(
      INIT => X"FFFFFFFFAAEAAA2A"
    )
    port map (
      I0 => blk00000001_sig000005c5,
      I1 => ce,
      I2 => blk00000001_sig00000602,
      I3 => blk00000001_sig00000601,
      I4 => blk00000001_sig00000529,
      I5 => blk00000001_sig00000507,
      O => blk00000001_sig00000710
    );
  blk00000001_blk00000677 : LUT6
    generic map(
      INIT => X"FFFFFFFFAAEAAA2A"
    )
    port map (
      I0 => blk00000001_sig000005c6,
      I1 => ce,
      I2 => blk00000001_sig00000602,
      I3 => blk00000001_sig00000601,
      I4 => blk00000001_sig0000052a,
      I5 => blk00000001_sig00000507,
      O => blk00000001_sig0000070f
    );
  blk00000001_blk00000676 : LUT6
    generic map(
      INIT => X"FFFFFFFFAAEAAA2A"
    )
    port map (
      I0 => blk00000001_sig000005c7,
      I1 => ce,
      I2 => blk00000001_sig00000602,
      I3 => blk00000001_sig00000601,
      I4 => blk00000001_sig0000052b,
      I5 => blk00000001_sig00000507,
      O => blk00000001_sig0000070e
    );
  blk00000001_blk00000675 : LUT6
    generic map(
      INIT => X"FFFFE4FFFFFFFFFF"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig00000247,
      I2 => blk00000001_sig00000226,
      I3 => blk00000001_sig0000024c,
      I4 => sclr,
      I5 => blk00000001_sig00000240,
      O => blk00000001_sig00000701
    );
  blk00000001_blk00000674 : LUT6
    generic map(
      INIT => X"FFFFE4FFFFFFFFFF"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig00000248,
      I2 => blk00000001_sig00000227,
      I3 => blk00000001_sig0000024c,
      I4 => sclr,
      I5 => blk00000001_sig00000240,
      O => blk00000001_sig00000700
    );
  blk00000001_blk00000673 : LUT6
    generic map(
      INIT => X"FFFFE4FFFFFFFFFF"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig00000249,
      I2 => blk00000001_sig00000228,
      I3 => blk00000001_sig0000024c,
      I4 => sclr,
      I5 => blk00000001_sig00000240,
      O => blk00000001_sig000006ff
    );
  blk00000001_blk00000672 : LUT6
    generic map(
      INIT => X"FFFFE4FFFFFFFFFF"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig0000024a,
      I2 => blk00000001_sig00000229,
      I3 => blk00000001_sig0000024c,
      I4 => sclr,
      I5 => blk00000001_sig00000240,
      O => blk00000001_sig000006fe
    );
  blk00000001_blk00000671 : LUT6
    generic map(
      INIT => X"FFFFE4FFFFFFFFFF"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig0000024b,
      I2 => blk00000001_sig0000022a,
      I3 => blk00000001_sig0000024c,
      I4 => sclr,
      I5 => blk00000001_sig00000240,
      O => blk00000001_sig000006fd
    );
  blk00000001_blk00000670 : LUT6
    generic map(
      INIT => X"0000000010300000"
    )
    port map (
      I0 => control(2),
      I1 => blk00000001_sig000002fc,
      I2 => blk00000001_sig00000240,
      I3 => blk00000001_sig000001ab,
      I4 => blk00000001_sig00000238,
      I5 => blk00000001_sig00000239,
      O => blk00000001_sig0000077b
    );
  blk00000001_blk0000066f : LUT5
    generic map(
      INIT => X"AAEAAA2A"
    )
    port map (
      I0 => blk00000001_sig00000604,
      I1 => blk00000001_sig00000605,
      I2 => ce,
      I3 => blk00000001_sig00000606,
      I4 => blk00000001_sig00000618,
      O => blk00000001_sig00000773
    );
  blk00000001_blk0000066e : LUT5
    generic map(
      INIT => X"AAEAAA2A"
    )
    port map (
      I0 => blk00000001_sig00000600,
      I1 => ce,
      I2 => blk00000001_sig00000602,
      I3 => blk00000001_sig00000601,
      I4 => blk00000001_sig00000617,
      O => blk00000001_sig00000772
    );
  blk00000001_blk0000066d : LUT5
    generic map(
      INIT => X"AAEAAA2A"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => blk00000001_sig000005fd,
      I2 => ce,
      I3 => blk00000001_sig000005fe,
      I4 => blk00000001_sig00000616,
      O => blk00000001_sig00000771
    );
  blk00000001_blk0000066c : LUT5
    generic map(
      INIT => X"AAEAAA2A"
    )
    port map (
      I0 => blk00000001_sig000005f6,
      I1 => blk00000001_sig000005f7,
      I2 => ce,
      I3 => blk00000001_sig000005f8,
      I4 => blk00000001_sig00000615,
      O => blk00000001_sig00000770
    );
  blk00000001_blk0000066b : LUT4
    generic map(
      INIT => X"FF40"
    )
    port map (
      I0 => blk00000001_sig00000605,
      I1 => blk00000001_sig00000606,
      I2 => ce,
      I3 => blk00000001_sig00000618,
      O => blk00000001_sig0000071e
    );
  blk00000001_blk0000066a : LUT4
    generic map(
      INIT => X"FF40"
    )
    port map (
      I0 => blk00000001_sig000005fd,
      I1 => blk00000001_sig000005fe,
      I2 => ce,
      I3 => blk00000001_sig00000616,
      O => blk00000001_sig0000071c
    );
  blk00000001_blk00000669 : LUT4
    generic map(
      INIT => X"FF40"
    )
    port map (
      I0 => blk00000001_sig000005f7,
      I1 => blk00000001_sig000005f8,
      I2 => ce,
      I3 => blk00000001_sig00000615,
      O => blk00000001_sig0000071b
    );
  blk00000001_blk00000668 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => blk00000001_sig000001af,
      I1 => blk00000001_sig000001b1,
      I2 => blk00000001_sig000001ae,
      O => blk00000001_sig000006fc
    );
  blk00000001_blk00000667 : LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => blk00000001_sig0000061e,
      I1 => blk00000001_sig0000061f,
      I2 => blk00000001_sig00000623,
      I3 => blk00000001_sig00000622,
      I4 => blk00000001_sig00000621,
      I5 => blk00000001_sig00000620,
      O => blk00000001_sig00000629
    );
  blk00000001_blk00000666 : LUT5
    generic map(
      INIT => X"7F80FF00"
    )
    port map (
      I0 => blk00000001_sig00000623,
      I1 => blk00000001_sig00000622,
      I2 => blk00000001_sig00000621,
      I3 => blk00000001_sig0000061f,
      I4 => blk00000001_sig00000620,
      O => blk00000001_sig00000628
    );
  blk00000001_blk00000665 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => blk00000001_sig00000620,
      I1 => blk00000001_sig00000623,
      I2 => blk00000001_sig00000622,
      I3 => blk00000001_sig00000621,
      O => blk00000001_sig00000627
    );
  blk00000001_blk00000664 : LUT6
    generic map(
      INIT => X"CCCCCCCCCCCCCCC9"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_htotal(6),
      I1 => NlwRenamedSig_OI_det_htotal(7),
      I2 => NlwRenamedSig_OI_det_htotal(2),
      I3 => NlwRenamedSig_OI_det_htotal(3),
      I4 => NlwRenamedSig_OI_det_htotal(4),
      I5 => NlwRenamedSig_OI_det_htotal(5),
      O => blk00000001_sig00000503
    );
  blk00000001_blk00000663 : LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_htotal(6),
      I1 => NlwRenamedSig_OI_det_htotal(2),
      I2 => NlwRenamedSig_OI_det_htotal(3),
      I3 => NlwRenamedSig_OI_det_htotal(4),
      I4 => NlwRenamedSig_OI_det_htotal(5),
      O => blk00000001_sig00000502
    );
  blk00000001_blk00000662 : LUT4
    generic map(
      INIT => X"08AA"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig000005fd,
      I2 => blk00000001_sig000005fe,
      I3 => blk00000001_sig000005fc,
      O => blk00000001_sig000004a1
    );
  blk00000001_blk00000661 : LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
    port map (
      I0 => blk00000001_sig000001b3,
      I1 => control(1),
      I2 => ce,
      I3 => blk00000001_sig000005fb,
      I4 => sclr,
      O => blk00000001_sig0000079d
    );
  blk00000001_blk00000660 : LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
    port map (
      I0 => blk00000001_sig000001b3,
      I1 => control(1),
      I2 => ce,
      I3 => blk00000001_sig000005f5,
      I4 => sclr,
      O => blk00000001_sig0000079a
    );
  blk00000001_blk0000065f : LUT4
    generic map(
      INIT => X"FFFB"
    )
    port map (
      I0 => sclr,
      I1 => control(1),
      I2 => blk00000001_sig000001b0,
      I3 => blk00000001_sig000001b3,
      O => blk00000001_sig00000507
    );
  blk00000001_blk0000065e : LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      I0 => blk00000001_sig0000044f,
      I1 => blk00000001_sig00000451,
      I2 => blk00000001_sig00000450,
      I3 => blk00000001_sig0000044d,
      I4 => blk00000001_sig0000044e,
      I5 => blk00000001_sig0000044c,
      O => blk00000001_sig000003a7
    );
  blk00000001_blk0000065d : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig000005fe,
      I2 => blk00000001_sig00000619,
      I3 => blk00000001_sig000004f0,
      O => blk00000001_sig0000045f
    );
  blk00000001_blk0000065c : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig000005f8,
      I2 => blk00000001_sig00000619,
      I3 => blk00000001_sig000004f0,
      O => blk00000001_sig00000479
    );
  blk00000001_blk0000065b : LUT6
    generic map(
      INIT => X"FFFFFFFFEAFFC0FF"
    )
    port map (
      I0 => control(2),
      I1 => blk00000001_sig0000023f,
      I2 => blk00000001_sig000002fc,
      I3 => blk00000001_sig00000240,
      I4 => blk00000001_sig000001ab,
      I5 => blk00000001_sig000007bd,
      O => blk00000001_sig00000218
    );
  blk00000001_blk0000065a : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF20FF"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig00000601,
      I2 => blk00000001_sig00000602,
      I3 => control(1),
      I4 => sclr,
      I5 => blk00000001_sig000001b3,
      O => blk00000001_sig0000046b
    );
  blk00000001_blk00000659 : LUT6
    generic map(
      INIT => X"FFFFFFFFFF80FFFF"
    )
    port map (
      I0 => control(2),
      I1 => blk00000001_sig000001c8,
      I2 => blk00000001_sig000001af,
      I3 => blk00000001_sig000002fc,
      I4 => blk00000001_sig00000240,
      I5 => blk00000001_sig000007bd,
      O => blk00000001_sig0000022b
    );
  blk00000001_blk00000658 : LUT6
    generic map(
      INIT => X"5515150505010100"
    )
    port map (
      I0 => blk00000001_sig0000052b,
      I1 => blk00000001_sig00000529,
      I2 => blk00000001_sig0000052a,
      I3 => NlwRenamedSig_OI_det_htotal(9),
      I4 => blk00000001_sig000003ff,
      I5 => NlwRenamedSig_OI_det_htotal(10),
      O => blk00000001_sig000004ba
    );
  blk00000001_blk00000657 : LUT5
    generic map(
      INIT => X"000030AA"
    )
    port map (
      I0 => blk00000001_sig000005fa,
      I1 => blk00000001_sig000005fb,
      I2 => blk00000001_sig000001c9,
      I3 => blk00000001_sig000003ac,
      I4 => blk00000001_sig00000507,
      O => blk00000001_sig00000784
    );
  blk00000001_blk00000656 : LUT6
    generic map(
      INIT => X"CE0ECC00CECECCCC"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig0000023e,
      I2 => blk00000001_sig0000067d,
      I3 => blk00000001_sig00000221,
      I4 => blk00000001_sig000007a0,
      I5 => blk00000001_sig0000067c,
      O => blk00000001_sig0000070b
    );
  blk00000001_blk00000655 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => blk00000001_sig0000067e,
      I1 => blk00000001_sig0000067f,
      I2 => blk00000001_sig00000680,
      I3 => blk00000001_sig00000681,
      O => blk00000001_sig000007a0
    );
  blk00000001_blk00000654 : LUT5
    generic map(
      INIT => X"00000020"
    )
    port map (
      I0 => blk00000001_sig000001af,
      I1 => blk00000001_sig000001b1,
      I2 => control(0),
      I3 => sclr,
      I4 => blk00000001_sig000001b3,
      O => blk00000001_sig00000779
    );
  blk00000001_blk00000653 : LUT4
    generic map(
      INIT => X"FF40"
    )
    port map (
      I0 => blk00000001_sig00000602,
      I1 => blk00000001_sig00000601,
      I2 => ce,
      I3 => blk00000001_sig00000617,
      O => blk00000001_sig0000071d
    );
  blk00000001_blk00000652 : LUT6
    generic map(
      INIT => X"0000000000000020"
    )
    port map (
      I0 => control(0),
      I1 => sclr,
      I2 => blk00000001_sig000001b1,
      I3 => blk00000001_sig000001af,
      I4 => blk00000001_sig000001b3,
      I5 => blk00000001_sig000001ae,
      O => blk00000001_sig0000077a
    );
  blk00000001_blk00000651 : LUT5
    generic map(
      INIT => X"AAAA6AAA"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_status_20_Q,
      I1 => blk00000001_sig00000608,
      I2 => blk00000001_sig00000607,
      I3 => ce,
      I4 => blk00000001_sig00000609,
      O => blk00000001_sig00000778
    );
  blk00000001_blk00000650 : LUT5
    generic map(
      INIT => X"AAAA6AAA"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_status_25_Q,
      I1 => blk00000001_sig000005ff,
      I2 => ce,
      I3 => blk00000001_sig00000601,
      I4 => blk00000001_sig00000602,
      O => blk00000001_sig00000776
    );
  blk00000001_blk0000064f : LUT5
    generic map(
      INIT => X"2A2AFF2A"
    )
    port map (
      I0 => blk00000001_sig0000024c,
      I1 => blk00000001_sig0000023f,
      I2 => blk00000001_sig000002fc,
      I3 => control(0),
      I4 => blk00000001_sig000001b3,
      O => blk00000001_sig0000076f
    );
  blk00000001_blk0000064e : LUT6
    generic map(
      INIT => X"A888A000A000A000"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig00000660,
      I2 => blk00000001_sig00000664,
      I3 => blk00000001_sig00000665,
      I4 => blk00000001_sig0000065e,
      I5 => blk00000001_sig0000065f,
      O => blk00000001_sig0000079f
    );
  blk00000001_blk0000064d : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig00000664,
      I2 => blk00000001_sig00000665,
      O => blk00000001_sig0000079e
    );
  blk00000001_blk0000064c : MUXF7
    port map (
      I0 => blk00000001_sig0000079e,
      I1 => blk00000001_sig0000079f,
      S => blk00000001_sig00000661,
      O => blk00000001_sig0000078a
    );
  blk00000001_blk0000064b : LUT5
    generic map(
      INIT => X"00400000"
    )
    port map (
      I0 => sclr,
      I1 => control(1),
      I2 => ce,
      I3 => blk00000001_sig000001b3,
      I4 => blk00000001_sig000004f2,
      O => blk00000001_sig0000079b
    );
  blk00000001_blk0000064a : LUT5
    generic map(
      INIT => X"00400000"
    )
    port map (
      I0 => sclr,
      I1 => control(1),
      I2 => ce,
      I3 => blk00000001_sig000001b3,
      I4 => blk00000001_sig000004f1,
      O => blk00000001_sig00000798
    );
  blk00000001_blk00000649 : MUXCY
    port map (
      CI => blk00000001_sig00000438,
      DI => NlwRenamedSig_OI_det_status_24_Q,
      S => NlwRenamedSig_OI_det_status_24_Q,
      O => blk00000001_sig000004bc
    );
  blk00000001_blk00000648 : LUT4
    generic map(
      INIT => X"D4F5"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_htotal(2),
      I1 => blk00000001_sig00000537,
      I2 => blk00000001_sig00000538,
      I3 => NlwRenamedSig_OI_det_htotal(1),
      O => blk00000001_sig00000446
    );
  blk00000001_blk00000647 : LUT4
    generic map(
      INIT => X"D4F5"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_htotal(4),
      I1 => blk00000001_sig00000539,
      I2 => blk00000001_sig0000053a,
      I3 => NlwRenamedSig_OI_det_htotal(3),
      O => blk00000001_sig00000443
    );
  blk00000001_blk00000646 : LUT4
    generic map(
      INIT => X"D4F5"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_htotal(6),
      I1 => blk00000001_sig0000053b,
      I2 => blk00000001_sig0000053c,
      I3 => NlwRenamedSig_OI_det_htotal(5),
      O => blk00000001_sig00000440
    );
  blk00000001_blk00000645 : LUT4
    generic map(
      INIT => X"D4F5"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_htotal(8),
      I1 => blk00000001_sig0000053d,
      I2 => blk00000001_sig0000053e,
      I3 => NlwRenamedSig_OI_det_htotal(7),
      O => blk00000001_sig0000043d
    );
  blk00000001_blk00000644 : LUT5
    generic map(
      INIT => X"FFFFD4F5"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_htotal(10),
      I1 => blk00000001_sig0000053f,
      I2 => blk00000001_sig00000540,
      I3 => NlwRenamedSig_OI_det_htotal(9),
      I4 => blk00000001_sig00000541,
      O => blk00000001_sig0000043a
    );
  blk00000001_blk00000643 : MUXCY
    port map (
      CI => blk00000001_sig0000079c,
      DI => NlwRenamedSig_OI_det_status_24_Q,
      S => blk00000001_sig0000079d,
      O => blk00000001_sig00000785
    );
  blk00000001_blk00000642 : MUXCY
    port map (
      CI => blk00000001_sig0000041a,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig0000079b,
      O => blk00000001_sig0000079c
    );
  blk00000001_blk00000641 : LUT4
    generic map(
      INIT => X"D4F5"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_v0total(2),
      I1 => blk00000001_sig00000516,
      I2 => blk00000001_sig00000517,
      I3 => NlwRenamedSig_OI_det_v0total(1),
      O => blk00000001_sig00000428
    );
  blk00000001_blk00000640 : LUT4
    generic map(
      INIT => X"D4F5"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_v0total(4),
      I1 => blk00000001_sig00000518,
      I2 => blk00000001_sig00000519,
      I3 => NlwRenamedSig_OI_det_v0total(3),
      O => blk00000001_sig00000425
    );
  blk00000001_blk0000063f : LUT4
    generic map(
      INIT => X"D4F5"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_v0total(6),
      I1 => blk00000001_sig0000051a,
      I2 => blk00000001_sig0000051b,
      I3 => NlwRenamedSig_OI_det_v0total(5),
      O => blk00000001_sig00000422
    );
  blk00000001_blk0000063e : LUT4
    generic map(
      INIT => X"D4F5"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_v0total(8),
      I1 => blk00000001_sig0000051c,
      I2 => blk00000001_sig0000051d,
      I3 => NlwRenamedSig_OI_det_v0total(7),
      O => blk00000001_sig0000041f
    );
  blk00000001_blk0000063d : LUT5
    generic map(
      INIT => X"FFFFD4F5"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_v0total(10),
      I1 => blk00000001_sig0000051e,
      I2 => blk00000001_sig0000051f,
      I3 => NlwRenamedSig_OI_det_v0total(9),
      I4 => blk00000001_sig00000520,
      O => blk00000001_sig0000041c
    );
  blk00000001_blk0000063c : MUXCY
    port map (
      CI => blk00000001_sig0000040b,
      DI => NlwRenamedSig_OI_det_status_24_Q,
      S => NlwRenamedSig_OI_det_status_24_Q,
      O => blk00000001_sig000004bb
    );
  blk00000001_blk0000063b : LUT4
    generic map(
      INIT => X"D4F5"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_htotal(2),
      I1 => blk00000001_sig0000052c,
      I2 => blk00000001_sig0000052d,
      I3 => NlwRenamedSig_OI_det_htotal(1),
      O => blk00000001_sig00000419
    );
  blk00000001_blk0000063a : LUT4
    generic map(
      INIT => X"D4F5"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_htotal(4),
      I1 => blk00000001_sig0000052e,
      I2 => blk00000001_sig0000052f,
      I3 => NlwRenamedSig_OI_det_htotal(3),
      O => blk00000001_sig00000416
    );
  blk00000001_blk00000639 : LUT4
    generic map(
      INIT => X"D4F5"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_htotal(6),
      I1 => blk00000001_sig00000530,
      I2 => blk00000001_sig00000531,
      I3 => NlwRenamedSig_OI_det_htotal(5),
      O => blk00000001_sig00000413
    );
  blk00000001_blk00000638 : LUT4
    generic map(
      INIT => X"D4F5"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_htotal(8),
      I1 => blk00000001_sig00000532,
      I2 => blk00000001_sig00000533,
      I3 => NlwRenamedSig_OI_det_htotal(7),
      O => blk00000001_sig00000410
    );
  blk00000001_blk00000637 : LUT5
    generic map(
      INIT => X"FFFFD4F5"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_htotal(10),
      I1 => blk00000001_sig00000534,
      I2 => blk00000001_sig00000535,
      I3 => NlwRenamedSig_OI_det_htotal(9),
      I4 => blk00000001_sig00000536,
      O => blk00000001_sig0000040d
    );
  blk00000001_blk00000636 : MUXCY
    port map (
      CI => blk00000001_sig00000799,
      DI => NlwRenamedSig_OI_det_status_24_Q,
      S => blk00000001_sig0000079a,
      O => blk00000001_sig00000783
    );
  blk00000001_blk00000635 : MUXCY
    port map (
      CI => blk00000001_sig000003f0,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000798,
      O => blk00000001_sig00000799
    );
  blk00000001_blk00000634 : LUT4
    generic map(
      INIT => X"D4F5"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_v0total(2),
      I1 => blk00000001_sig0000050a,
      I2 => blk00000001_sig0000050b,
      I3 => NlwRenamedSig_OI_det_v0total(1),
      O => blk00000001_sig000003fe
    );
  blk00000001_blk00000633 : LUT4
    generic map(
      INIT => X"D4F5"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_v0total(4),
      I1 => blk00000001_sig0000050c,
      I2 => blk00000001_sig0000050d,
      I3 => NlwRenamedSig_OI_det_v0total(3),
      O => blk00000001_sig000003fb
    );
  blk00000001_blk00000632 : LUT4
    generic map(
      INIT => X"D4F5"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_v0total(6),
      I1 => blk00000001_sig0000050e,
      I2 => blk00000001_sig0000050f,
      I3 => NlwRenamedSig_OI_det_v0total(5),
      O => blk00000001_sig000003f8
    );
  blk00000001_blk00000631 : LUT4
    generic map(
      INIT => X"D4F5"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_v0total(8),
      I1 => blk00000001_sig00000510,
      I2 => blk00000001_sig00000511,
      I3 => NlwRenamedSig_OI_det_v0total(7),
      O => blk00000001_sig000003f5
    );
  blk00000001_blk00000630 : LUT5
    generic map(
      INIT => X"FFFFD4F5"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_v0total(10),
      I1 => blk00000001_sig00000512,
      I2 => blk00000001_sig00000513,
      I3 => NlwRenamedSig_OI_det_v0total(9),
      I4 => blk00000001_sig00000514,
      O => blk00000001_sig000003f2
    );
  blk00000001_blk0000062f : LUT6
    generic map(
      INIT => X"FFFFAFFFEFFFEFFF"
    )
    port map (
      I0 => sclr,
      I1 => blk00000001_sig0000023c,
      I2 => blk00000001_sig0000024c,
      I3 => blk00000001_sig00000240,
      I4 => blk00000001_sig0000021a,
      I5 => blk00000001_sig0000020a,
      O => blk00000001_sig0000070a
    );
  blk00000001_blk0000062e : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => blk00000001_sig000001b3,
      I1 => sclr,
      I2 => control(1),
      O => blk00000001_sig00000797
    );
  blk00000001_blk0000062d : MUXCY
    port map (
      CI => blk00000001_sig00000796,
      DI => NlwRenamedSig_OI_det_status_24_Q,
      S => blk00000001_sig00000797,
      O => blk00000001_sig000004a4
    );
  blk00000001_blk0000062c : MUXCY
    port map (
      CI => blk00000001_sig00000429,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000795,
      O => blk00000001_sig00000796
    );
  blk00000001_blk0000062b : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => blk00000001_sig0000061a,
      I1 => ce,
      I2 => blk00000001_sig000004c3,
      O => blk00000001_sig00000795
    );
  blk00000001_blk0000062a : LUT5
    generic map(
      INIT => X"CC33A5A5"
    )
    port map (
      I0 => vsync_in,
      I1 => vblank_in,
      I2 => NlwRenamedSig_OI_det_status_22_Q,
      I3 => NlwRenamedSig_OI_det_status_23_Q,
      I4 => blk00000001_sig000005f6,
      O => blk00000001_sig000004c3
    );
  blk00000001_blk00000629 : LUT5
    generic map(
      INIT => X"001000CC"
    )
    port map (
      I0 => blk00000001_sig0000054e,
      I1 => blk00000001_sig00000451,
      I2 => blk00000001_sig000003a5,
      I3 => blk00000001_sig000004a4,
      I4 => blk00000001_sig000004a5,
      O => blk00000001_sig00000794
    );
  blk00000001_blk00000628 : LUT6
    generic map(
      INIT => X"2A220A000A000A00"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig0000061a,
      I2 => blk00000001_sig00000619,
      I3 => blk00000001_sig000004f0,
      I4 => blk00000001_sig000004c3,
      I5 => blk00000001_sig00000429,
      O => blk00000001_sig000004a5
    );
  blk00000001_blk00000627 : LUT6
    generic map(
      INIT => X"007800F000000000"
    )
    port map (
      I0 => blk00000001_sig0000044f,
      I1 => blk00000001_sig00000450,
      I2 => blk00000001_sig0000044e,
      I3 => blk00000001_sig0000054e,
      I4 => blk00000001_sig00000451,
      I5 => blk00000001_sig000003a5,
      O => blk00000001_sig000004ae
    );
  blk00000001_blk00000626 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000794,
      Q => blk00000001_sig00000451
    );
  blk00000001_blk00000625 : LUT6
    generic map(
      INIT => X"FECEFFCCEEEEEFEC"
    )
    port map (
      I0 => blk00000001_sig0000023b,
      I1 => blk00000001_sig00000221,
      I2 => blk00000001_sig0000078a,
      I3 => blk00000001_sig00000217,
      I4 => blk00000001_sig00000792,
      I5 => blk00000001_sig00000793,
      O => blk00000001_sig00000709
    );
  blk00000001_blk00000624 : LUT5
    generic map(
      INIT => X"F8F08880"
    )
    port map (
      I0 => blk00000001_sig00000663,
      I1 => blk00000001_sig00000219,
      I2 => blk00000001_sig000001db,
      I3 => blk00000001_sig00000788,
      I4 => blk00000001_sig00000789,
      O => blk00000001_sig00000793
    );
  blk00000001_blk00000623 : LUT5
    generic map(
      INIT => X"878FF7FF"
    )
    port map (
      I0 => blk00000001_sig00000663,
      I1 => blk00000001_sig00000219,
      I2 => blk00000001_sig000001db,
      I3 => blk00000001_sig00000788,
      I4 => blk00000001_sig00000789,
      O => blk00000001_sig00000792
    );
  blk00000001_blk00000622 : LUT6
    generic map(
      INIT => X"CCCCCCCCCCCCCCC9"
    )
    port map (
      I0 => blk00000001_sig000002f3,
      I1 => blk00000001_sig000002f6,
      I2 => blk00000001_sig000002f4,
      I3 => blk00000001_sig000001f3,
      I4 => blk00000001_sig000002f2,
      I5 => blk00000001_sig000002f5,
      O => blk00000001_sig00000225
    );
  blk00000001_blk00000621 : LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
    port map (
      I0 => blk00000001_sig000002f5,
      I1 => blk00000001_sig000002f3,
      I2 => blk00000001_sig000001f3,
      I3 => blk00000001_sig000002f2,
      I4 => blk00000001_sig000002f4,
      O => blk00000001_sig00000224
    );
  blk00000001_blk00000620 : LUT4
    generic map(
      INIT => X"CCC9"
    )
    port map (
      I0 => blk00000001_sig000002f3,
      I1 => blk00000001_sig000002f4,
      I2 => blk00000001_sig000001f3,
      I3 => blk00000001_sig000002f2,
      O => blk00000001_sig00000223
    );
  blk00000001_blk0000061f : LUT6
    generic map(
      INIT => X"FFFFFFFF7FFFFFFF"
    )
    port map (
      I0 => blk00000001_sig0000044a,
      I1 => blk00000001_sig0000044b,
      I2 => blk00000001_sig0000044c,
      I3 => blk00000001_sig0000044d,
      I4 => blk00000001_sig0000044e,
      I5 => blk00000001_sig000003a6,
      O => blk00000001_sig000003a8
    );
  blk00000001_blk0000061e : LUT6
    generic map(
      INIT => X"00000000444E4444"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig000001cd,
      I2 => blk00000001_sig000006c3,
      I3 => blk00000001_sig000006c7,
      I4 => blk00000001_sig000004b9,
      I5 => blk00000001_sig00000507,
      O => blk00000001_sig0000077e
    );
  blk00000001_blk0000061d : LUT6
    generic map(
      INIT => X"00000000444E4444"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig000001cc,
      I2 => blk00000001_sig000006ba,
      I3 => blk00000001_sig000006be,
      I4 => blk00000001_sig000004b8,
      I5 => blk00000001_sig00000507,
      O => blk00000001_sig0000077d
    );
  blk00000001_blk0000061c : LUT5
    generic map(
      INIT => X"FF00F2F0"
    )
    port map (
      I0 => ce,
      I1 => control(2),
      I2 => blk00000001_sig00000240,
      I3 => blk00000001_sig0000021b,
      I4 => blk00000001_sig00000216,
      O => blk00000001_sig0000070d
    );
  blk00000001_blk0000061b : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => blk00000001_sig0000069e,
      I1 => blk00000001_sig0000069d,
      I2 => blk00000001_sig0000069c,
      I3 => blk00000001_sig0000069b,
      I4 => blk00000001_sig000006a5,
      I5 => blk00000001_sig00000791,
      O => blk00000001_sig0000078d
    );
  blk00000001_blk0000061a : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => blk00000001_sig000006a4,
      I1 => blk00000001_sig000006a3,
      I2 => blk00000001_sig000006a2,
      I3 => blk00000001_sig000006a1,
      I4 => blk00000001_sig000006a0,
      I5 => blk00000001_sig0000069f,
      O => blk00000001_sig00000791
    );
  blk00000001_blk00000619 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => blk00000001_sig000006ae,
      I1 => blk00000001_sig000006ad,
      I2 => blk00000001_sig000006ac,
      I3 => blk00000001_sig000006ab,
      I4 => blk00000001_sig000006b5,
      I5 => blk00000001_sig00000790,
      O => blk00000001_sig0000078c
    );
  blk00000001_blk00000618 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => blk00000001_sig000006b4,
      I1 => blk00000001_sig000006b3,
      I2 => blk00000001_sig000006b2,
      I3 => blk00000001_sig000006b1,
      I4 => blk00000001_sig000006b0,
      I5 => blk00000001_sig000006af,
      O => blk00000001_sig00000790
    );
  blk00000001_blk00000617 : LUT6
    generic map(
      INIT => X"000054FC00001030"
    )
    port map (
      I0 => control(2),
      I1 => ce,
      I2 => blk00000001_sig0000023f,
      I3 => blk00000001_sig000001ab,
      I4 => blk00000001_sig00000221,
      I5 => blk00000001_sig00000222,
      O => blk00000001_sig00000786
    );
  blk00000001_blk00000616 : LUT6
    generic map(
      INIT => X"AAAEFFFFAAAAFFFF"
    )
    port map (
      I0 => sclr,
      I1 => blk00000001_sig000005f4,
      I2 => blk00000001_sig0000054d,
      I3 => blk00000001_sig000005f6,
      I4 => blk00000001_sig000001ad,
      I5 => blk00000001_sig000007bc,
      O => blk00000001_sig000004a8
    );
  blk00000001_blk00000615 : LUT6
    generic map(
      INIT => X"AABAFFFFAAAAFFFF"
    )
    port map (
      I0 => sclr,
      I1 => blk00000001_sig000005f4,
      I2 => blk00000001_sig0000054d,
      I3 => blk00000001_sig000005f6,
      I4 => blk00000001_sig000001ad,
      I5 => blk00000001_sig000007bc,
      O => blk00000001_sig000004a6
    );
  blk00000001_blk00000614 : LUT6
    generic map(
      INIT => X"AA2AAAAAAAAAAAAA"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig000002ff,
      I2 => blk00000001_sig000002fe,
      I3 => blk00000001_sig000001ab,
      I4 => blk00000001_sig0000078f,
      I5 => blk00000001_sig0000066e,
      O => blk00000001_sig00000216
    );
  blk00000001_blk00000613 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => blk00000001_sig00000300,
      I1 => blk00000001_sig00000301,
      I2 => blk00000001_sig000002fd,
      O => blk00000001_sig0000078f
    );
  blk00000001_blk00000612 : LUT5
    generic map(
      INIT => X"CC33A5A5"
    )
    port map (
      I0 => hsync_in,
      I1 => hblank_in,
      I2 => NlwRenamedSig_OI_det_status_20_Q,
      I3 => NlwRenamedSig_OI_det_status_21_Q,
      I4 => blk00000001_sig00000604,
      O => blk00000001_sig000004f0
    );
  blk00000001_blk00000611 : LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => blk00000001_sig00000692,
      I1 => blk00000001_sig00000693,
      I2 => blk00000001_sig00000694,
      I3 => blk00000001_sig0000078e,
      I4 => blk00000001_sig00000695,
      O => blk00000001_sig00000215
    );
  blk00000001_blk00000610 : LUT4
    generic map(
      INIT => X"8421"
    )
    port map (
      I0 => blk00000001_sig000002e8,
      I1 => blk00000001_sig000002ed,
      I2 => blk00000001_sig00000259,
      I3 => blk00000001_sig0000025e,
      O => blk00000001_sig0000078e
    );
  blk00000001_blk0000060f : LUT6
    generic map(
      INIT => X"00440044004E0044"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig00000509,
      I2 => blk00000001_sig0000069a,
      I3 => blk00000001_sig00000507,
      I4 => blk00000001_sig000004b6,
      I5 => blk00000001_sig0000078d,
      O => blk00000001_sig00000780
    );
  blk00000001_blk0000060e : LUT6
    generic map(
      INIT => X"00440044004E0044"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig00000515,
      I2 => blk00000001_sig000006aa,
      I3 => blk00000001_sig00000507,
      I4 => blk00000001_sig000004b7,
      I5 => blk00000001_sig0000078c,
      O => blk00000001_sig0000077f
    );
  blk00000001_blk0000060d : LUT6
    generic map(
      INIT => X"0000AF00CCCCEFCC"
    )
    port map (
      I0 => blk00000001_sig00000619,
      I1 => blk00000001_sig0000054e,
      I2 => blk00000001_sig000004f0,
      I3 => blk00000001_sig0000078b,
      I4 => blk00000001_sig00000429,
      I5 => blk00000001_sig000003ad,
      O => blk00000001_sig0000071a
    );
  blk00000001_blk0000060c : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => blk00000001_sig0000023d,
      I1 => blk00000001_sig00000215,
      I2 => blk00000001_sig00000237,
      O => blk00000001_sig0000070c
    );
  blk00000001_blk0000060b : LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig0000065f,
      I2 => blk00000001_sig00000661,
      I3 => blk00000001_sig00000660,
      I4 => blk00000001_sig0000065e,
      O => blk00000001_sig00000789
    );
  blk00000001_blk0000060a : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig00000665,
      I2 => blk00000001_sig00000664,
      O => blk00000001_sig00000788
    );
  blk00000001_blk00000609 : LUT6
    generic map(
      INIT => X"AA808080AA000000"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig00000650,
      I2 => blk00000001_sig00000787,
      I3 => blk00000001_sig00000654,
      I4 => blk00000001_sig00000659,
      I5 => blk00000001_sig0000064d,
      O => blk00000001_sig0000020a
    );
  blk00000001_blk00000608 : LUT4
    generic map(
      INIT => X"9000"
    )
    port map (
      I0 => blk00000001_sig000002a4,
      I1 => blk00000001_sig00000257,
      I2 => blk00000001_sig0000064f,
      I3 => blk00000001_sig0000064e,
      O => blk00000001_sig00000787
    );
  blk00000001_blk00000607 : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000786,
      Q => blk00000001_sig0000023f
    );
  blk00000001_blk00000606 : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000785,
      Q => blk00000001_sig000005fb
    );
  blk00000001_blk00000605 : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000784,
      Q => blk00000001_sig000005fa
    );
  blk00000001_blk00000604 : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000783,
      Q => blk00000001_sig000005f5
    );
  blk00000001_blk00000603 : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000782,
      Q => blk00000001_sig000001c8
    );
  blk00000001_blk00000602 : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000781,
      Q => blk00000001_sig000001c9
    );
  blk00000001_blk00000601 : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000780,
      Q => blk00000001_sig00000509
    );
  blk00000001_blk00000600 : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig0000077f,
      Q => blk00000001_sig00000515
    );
  blk00000001_blk000005ff : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig0000077e,
      Q => blk00000001_sig000001cd
    );
  blk00000001_blk000005fe : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig0000077d,
      Q => blk00000001_sig000001cc
    );
  blk00000001_blk000005fd : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig0000077c,
      Q => NlwRenamedSig_OI_fsync(0)
    );
  blk00000001_blk000005fc : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig0000077b,
      Q => blk00000001_sig000002fc
    );
  blk00000001_blk000005fb : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig0000077a,
      Q => blk00000001_sig000001b2
    );
  blk00000001_blk000005fa : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000779,
      Q => blk00000001_sig000001b0
    );
  blk00000001_blk000005f9 : FDS
    generic map(
      INIT => '1'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000778,
      S => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_status_20_Q
    );
  blk00000001_blk000005f8 : FDS
    generic map(
      INIT => '1'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000777,
      S => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_status_21_Q
    );
  blk00000001_blk000005f7 : FDS
    generic map(
      INIT => '1'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000776,
      S => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_status_25_Q
    );
  blk00000001_blk000005f6 : FDS
    generic map(
      INIT => '1'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000775,
      S => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_status_22_Q
    );
  blk00000001_blk000005f5 : FDS
    generic map(
      INIT => '1'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000774,
      S => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_status_23_Q
    );
  blk00000001_blk000005f4 : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000773,
      R => blk00000001_sig00000508,
      Q => blk00000001_sig00000604
    );
  blk00000001_blk000005f3 : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000772,
      R => blk00000001_sig000004c2,
      Q => blk00000001_sig00000600
    );
  blk00000001_blk000005f2 : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000771,
      R => blk00000001_sig00000508,
      Q => blk00000001_sig000005fc
    );
  blk00000001_blk000005f1 : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000770,
      R => blk00000001_sig00000508,
      Q => blk00000001_sig000005f6
    );
  blk00000001_blk000005f0 : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig0000076f,
      R => sclr,
      Q => blk00000001_sig0000024c
    );
  blk00000001_blk000005ef : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000541,
      O => blk00000001_sig0000076e
    );
  blk00000001_blk000005ee : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000536,
      O => blk00000001_sig0000076d
    );
  blk00000001_blk000005ed : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig0000054c,
      O => blk00000001_sig0000076c
    );
  blk00000001_blk000005ec : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000520,
      O => blk00000001_sig0000076b
    );
  blk00000001_blk000005eb : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000514,
      O => blk00000001_sig0000076a
    );
  blk00000001_blk000005ea : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig0000052b,
      O => blk00000001_sig00000769
    );
  blk00000001_blk000005e9 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000262,
      O => blk00000001_sig00000768
    );
  blk00000001_blk000005e8 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000257,
      O => blk00000001_sig00000767
    );
  blk00000001_blk000005e7 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000538,
      O => blk00000001_sig00000766
    );
  blk00000001_blk000005e6 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000539,
      O => blk00000001_sig00000765
    );
  blk00000001_blk000005e5 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig0000053a,
      O => blk00000001_sig00000764
    );
  blk00000001_blk000005e4 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig0000053b,
      O => blk00000001_sig00000763
    );
  blk00000001_blk000005e3 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig0000053c,
      O => blk00000001_sig00000762
    );
  blk00000001_blk000005e2 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig0000053d,
      O => blk00000001_sig00000761
    );
  blk00000001_blk000005e1 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig0000053e,
      O => blk00000001_sig00000760
    );
  blk00000001_blk000005e0 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig0000053f,
      O => blk00000001_sig0000075f
    );
  blk00000001_blk000005df : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000540,
      O => blk00000001_sig0000075e
    );
  blk00000001_blk000005de : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig0000052d,
      O => blk00000001_sig0000075d
    );
  blk00000001_blk000005dd : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig0000052e,
      O => blk00000001_sig0000075c
    );
  blk00000001_blk000005dc : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig0000052f,
      O => blk00000001_sig0000075b
    );
  blk00000001_blk000005db : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000530,
      O => blk00000001_sig0000075a
    );
  blk00000001_blk000005da : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000531,
      O => blk00000001_sig00000759
    );
  blk00000001_blk000005d9 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000532,
      O => blk00000001_sig00000758
    );
  blk00000001_blk000005d8 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000533,
      O => blk00000001_sig00000757
    );
  blk00000001_blk000005d7 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000534,
      O => blk00000001_sig00000756
    );
  blk00000001_blk000005d6 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000535,
      O => blk00000001_sig00000755
    );
  blk00000001_blk000005d5 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000543,
      O => blk00000001_sig00000754
    );
  blk00000001_blk000005d4 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000544,
      O => blk00000001_sig00000753
    );
  blk00000001_blk000005d3 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000545,
      O => blk00000001_sig00000752
    );
  blk00000001_blk000005d2 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000546,
      O => blk00000001_sig00000751
    );
  blk00000001_blk000005d1 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000547,
      O => blk00000001_sig00000750
    );
  blk00000001_blk000005d0 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000548,
      O => blk00000001_sig0000074f
    );
  blk00000001_blk000005cf : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000549,
      O => blk00000001_sig0000074e
    );
  blk00000001_blk000005ce : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig0000054a,
      O => blk00000001_sig0000074d
    );
  blk00000001_blk000005cd : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig0000054b,
      O => blk00000001_sig0000074c
    );
  blk00000001_blk000005cc : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000517,
      O => blk00000001_sig0000074b
    );
  blk00000001_blk000005cb : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000518,
      O => blk00000001_sig0000074a
    );
  blk00000001_blk000005ca : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000519,
      O => blk00000001_sig00000749
    );
  blk00000001_blk000005c9 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig0000051a,
      O => blk00000001_sig00000748
    );
  blk00000001_blk000005c8 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig0000051b,
      O => blk00000001_sig00000747
    );
  blk00000001_blk000005c7 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig0000051c,
      O => blk00000001_sig00000746
    );
  blk00000001_blk000005c6 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig0000051d,
      O => blk00000001_sig00000745
    );
  blk00000001_blk000005c5 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig0000051e,
      O => blk00000001_sig00000744
    );
  blk00000001_blk000005c4 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig0000051f,
      O => blk00000001_sig00000743
    );
  blk00000001_blk000005c3 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig0000050b,
      O => blk00000001_sig00000742
    );
  blk00000001_blk000005c2 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig0000050c,
      O => blk00000001_sig00000741
    );
  blk00000001_blk000005c1 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig0000050d,
      O => blk00000001_sig00000740
    );
  blk00000001_blk000005c0 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig0000050e,
      O => blk00000001_sig0000073f
    );
  blk00000001_blk000005bf : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig0000050f,
      O => blk00000001_sig0000073e
    );
  blk00000001_blk000005be : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000510,
      O => blk00000001_sig0000073d
    );
  blk00000001_blk000005bd : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000511,
      O => blk00000001_sig0000073c
    );
  blk00000001_blk000005bc : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000512,
      O => blk00000001_sig0000073b
    );
  blk00000001_blk000005bb : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000513,
      O => blk00000001_sig0000073a
    );
  blk00000001_blk000005ba : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000522,
      O => blk00000001_sig00000739
    );
  blk00000001_blk000005b9 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000523,
      O => blk00000001_sig00000738
    );
  blk00000001_blk000005b8 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000524,
      O => blk00000001_sig00000737
    );
  blk00000001_blk000005b7 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000525,
      O => blk00000001_sig00000736
    );
  blk00000001_blk000005b6 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000526,
      O => blk00000001_sig00000735
    );
  blk00000001_blk000005b5 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000527,
      O => blk00000001_sig00000734
    );
  blk00000001_blk000005b4 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000528,
      O => blk00000001_sig00000733
    );
  blk00000001_blk000005b3 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000529,
      O => blk00000001_sig00000732
    );
  blk00000001_blk000005b2 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig0000052a,
      O => blk00000001_sig00000731
    );
  blk00000001_blk000005b1 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000259,
      O => blk00000001_sig00000730
    );
  blk00000001_blk000005b0 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig0000025a,
      O => blk00000001_sig0000072f
    );
  blk00000001_blk000005af : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig0000025b,
      O => blk00000001_sig0000072e
    );
  blk00000001_blk000005ae : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig0000025c,
      O => blk00000001_sig0000072d
    );
  blk00000001_blk000005ad : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig0000025d,
      O => blk00000001_sig0000072c
    );
  blk00000001_blk000005ac : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig0000025e,
      O => blk00000001_sig0000072b
    );
  blk00000001_blk000005ab : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig0000025f,
      O => blk00000001_sig0000072a
    );
  blk00000001_blk000005aa : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000260,
      O => blk00000001_sig00000729
    );
  blk00000001_blk000005a9 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000261,
      O => blk00000001_sig00000728
    );
  blk00000001_blk000005a8 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig0000024e,
      O => blk00000001_sig00000727
    );
  blk00000001_blk000005a7 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig0000024f,
      O => blk00000001_sig00000726
    );
  blk00000001_blk000005a6 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000250,
      O => blk00000001_sig00000725
    );
  blk00000001_blk000005a5 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000251,
      O => blk00000001_sig00000724
    );
  blk00000001_blk000005a4 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000252,
      O => blk00000001_sig00000723
    );
  blk00000001_blk000005a3 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000253,
      O => blk00000001_sig00000722
    );
  blk00000001_blk000005a2 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000254,
      O => blk00000001_sig00000721
    );
  blk00000001_blk000005a1 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000255,
      O => blk00000001_sig00000720
    );
  blk00000001_blk000005a0 : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000256,
      O => blk00000001_sig0000071f
    );
  blk00000001_blk0000059f : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig0000071e,
      R => blk00000001_sig00000508,
      Q => blk00000001_sig00000618
    );
  blk00000001_blk0000059e : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig0000071d,
      R => blk00000001_sig000004c2,
      Q => blk00000001_sig00000617
    );
  blk00000001_blk0000059d : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig0000071c,
      R => blk00000001_sig00000508,
      Q => blk00000001_sig00000616
    );
  blk00000001_blk0000059c : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig0000071b,
      R => blk00000001_sig00000508,
      Q => blk00000001_sig00000615
    );
  blk00000001_blk0000059b : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig0000071a,
      R => blk00000001_sig00000508,
      Q => blk00000001_sig0000054e
    );
  blk00000001_blk0000059a : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000719,
      R => blk00000001_sig00000508,
      Q => blk00000001_sig0000054d
    );
  blk00000001_blk00000599 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000718,
      Q => blk00000001_sig000005bd
    );
  blk00000001_blk00000598 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000717,
      Q => blk00000001_sig000005be
    );
  blk00000001_blk00000597 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000716,
      Q => blk00000001_sig000005bf
    );
  blk00000001_blk00000596 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000715,
      Q => blk00000001_sig000005c0
    );
  blk00000001_blk00000595 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000714,
      Q => blk00000001_sig000005c1
    );
  blk00000001_blk00000594 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000713,
      Q => blk00000001_sig000005c2
    );
  blk00000001_blk00000593 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000712,
      Q => blk00000001_sig000005c3
    );
  blk00000001_blk00000592 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000711,
      Q => blk00000001_sig000005c4
    );
  blk00000001_blk00000591 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000710,
      Q => blk00000001_sig000005c5
    );
  blk00000001_blk00000590 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig0000070f,
      Q => blk00000001_sig000005c6
    );
  blk00000001_blk0000058f : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig0000070e,
      Q => blk00000001_sig000005c7
    );
  blk00000001_blk0000058e : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig0000070d,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig00000240
    );
  blk00000001_blk0000058d : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig0000070c,
      R => blk00000001_sig00000221,
      Q => blk00000001_sig0000023d
    );
  blk00000001_blk0000058c : FDS
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig0000070b,
      S => blk00000001_sig00000221,
      Q => blk00000001_sig0000023e
    );
  blk00000001_blk0000058b : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig0000070a,
      Q => blk00000001_sig0000023c
    );
  blk00000001_blk0000058a : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000709,
      Q => blk00000001_sig0000023b
    );
  blk00000001_blk00000589 : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000708,
      Q => blk00000001_sig0000023a
    );
  blk00000001_blk00000588 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000707,
      Q => blk00000001_sig00000241
    );
  blk00000001_blk00000587 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000706,
      Q => blk00000001_sig00000242
    );
  blk00000001_blk00000586 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000705,
      Q => blk00000001_sig00000243
    );
  blk00000001_blk00000585 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000704,
      Q => blk00000001_sig00000244
    );
  blk00000001_blk00000584 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000703,
      Q => blk00000001_sig00000245
    );
  blk00000001_blk00000583 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000702,
      Q => blk00000001_sig00000246
    );
  blk00000001_blk00000582 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000701,
      Q => blk00000001_sig00000247
    );
  blk00000001_blk00000581 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000700,
      Q => blk00000001_sig00000248
    );
  blk00000001_blk00000580 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000006ff,
      Q => blk00000001_sig00000249
    );
  blk00000001_blk0000057f : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000006fe,
      Q => blk00000001_sig0000024a
    );
  blk00000001_blk0000057e : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000006fd,
      Q => blk00000001_sig0000024b
    );
  blk00000001_blk0000057d : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000006fc,
      R => blk00000001_sig000001c7,
      Q => blk00000001_sig000001ae
    );
  blk00000001_blk0000057c : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig000006fb,
      I2 => blk00000001_sig000006fa,
      O => blk00000001_sig00000493
    );
  blk00000001_blk0000057b : LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
    port map (
      I0 => blk00000001_sig00000544,
      I1 => blk00000001_sig00000545,
      I2 => blk00000001_sig00000543,
      I3 => blk00000001_sig0000054c,
      I4 => blk00000001_sig00000542,
      O => blk00000001_sig000006fb
    );
  blk00000001_blk0000057a : LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      I0 => blk00000001_sig0000054a,
      I1 => blk00000001_sig0000054b,
      I2 => blk00000001_sig00000549,
      I3 => blk00000001_sig00000548,
      I4 => blk00000001_sig00000547,
      I5 => blk00000001_sig00000546,
      O => blk00000001_sig000006fa
    );
  blk00000001_blk00000579 : LUT6
    generic map(
      INIT => X"0800AAAA08000800"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig00000604,
      I2 => blk00000001_sig00000605,
      I3 => blk00000001_sig00000606,
      I4 => blk00000001_sig00000602,
      I5 => blk00000001_sig000006f9,
      O => blk00000001_sig000004ab
    );
  blk00000001_blk00000578 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => blk00000001_sig00000600,
      I1 => blk00000001_sig00000601,
      O => blk00000001_sig000006f9
    );
  blk00000001_blk00000577 : LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => blk00000001_sig000006f5,
      I1 => blk00000001_sig000006f6,
      I2 => blk00000001_sig000006f7,
      I3 => blk00000001_sig000006f8,
      I4 => blk00000001_sig000006f4,
      O => blk00000001_sig000004b6
    );
  blk00000001_blk00000576 : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_v0fp_start(3),
      I1 => blk00000001_sig00000589,
      I2 => NlwRenamedSig_OI_det_v0fp_start(2),
      I3 => blk00000001_sig00000588,
      I4 => NlwRenamedSig_OI_det_v0fp_start(7),
      I5 => blk00000001_sig0000058d,
      O => blk00000001_sig000006f8
    );
  blk00000001_blk00000575 : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_v0fp_start(6),
      I1 => blk00000001_sig0000058c,
      I2 => NlwRenamedSig_OI_det_v0fp_start(9),
      I3 => blk00000001_sig0000058f,
      I4 => NlwRenamedSig_OI_det_v0fp_start(8),
      I5 => blk00000001_sig0000058e,
      O => blk00000001_sig000006f7
    );
  blk00000001_blk00000574 : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_v0blank_hstart(6),
      I1 => blk00000001_sig00000581,
      I2 => NlwRenamedSig_OI_det_v0blank_hstart(9),
      I3 => blk00000001_sig00000584,
      I4 => NlwRenamedSig_OI_det_v0blank_hstart(10),
      I5 => blk00000001_sig00000585,
      O => blk00000001_sig000006f6
    );
  blk00000001_blk00000573 : LUT6
    generic map(
      INIT => X"9099000000009099"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_v0blank_hstart(2),
      I1 => blk00000001_sig0000057d,
      I2 => NlwRenamedSig_OI_det_v0blank_hstart(1),
      I3 => blk00000001_sig0000057c,
      I4 => NlwRenamedSig_OI_det_v0blank_hstart(7),
      I5 => blk00000001_sig00000582,
      O => blk00000001_sig000006f5
    );
  blk00000001_blk00000572 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => blk00000001_sig000006f0,
      I1 => blk00000001_sig000006f1,
      I2 => blk00000001_sig000006f2,
      I3 => blk00000001_sig000006f3,
      O => blk00000001_sig000006f4
    );
  blk00000001_blk00000571 : LUT5
    generic map(
      INIT => X"08040201"
    )
    port map (
      I0 => blk00000001_sig0000057e,
      I1 => blk00000001_sig0000057f,
      I2 => blk00000001_sig000005f5,
      I3 => NlwRenamedSig_OI_det_v0blank_hstart(3),
      I4 => NlwRenamedSig_OI_det_v0blank_hstart(4),
      O => blk00000001_sig000006f3
    );
  blk00000001_blk00000570 : LUT6
    generic map(
      INIT => X"8040201008040201"
    )
    port map (
      I0 => blk00000001_sig0000057b,
      I1 => blk00000001_sig00000583,
      I2 => blk00000001_sig00000580,
      I3 => NlwRenamedSig_OI_det_v0blank_hstart(0),
      I4 => NlwRenamedSig_OI_det_v0blank_hstart(8),
      I5 => NlwRenamedSig_OI_det_v0blank_hstart(5),
      O => blk00000001_sig000006f2
    );
  blk00000001_blk0000056f : LUT6
    generic map(
      INIT => X"8040201008040201"
    )
    port map (
      I0 => blk00000001_sig0000058b,
      I1 => blk00000001_sig0000058a,
      I2 => blk00000001_sig00000587,
      I3 => NlwRenamedSig_OI_det_v0fp_start(5),
      I4 => NlwRenamedSig_OI_det_v0fp_start(4),
      I5 => NlwRenamedSig_OI_det_v0fp_start(1),
      O => blk00000001_sig000006f1
    );
  blk00000001_blk0000056e : LUT6
    generic map(
      INIT => X"8040201088442211"
    )
    port map (
      I0 => blk00000001_sig00000590,
      I1 => blk00000001_sig00000586,
      I2 => blk00000001_sig0000057c,
      I3 => NlwRenamedSig_OI_det_v0fp_start(10),
      I4 => NlwRenamedSig_OI_det_v0fp_start(0),
      I5 => NlwRenamedSig_OI_det_v0blank_hstart(1),
      O => blk00000001_sig000006f0
    );
  blk00000001_blk0000056d : LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => blk00000001_sig000006ee,
      I1 => blk00000001_sig000006ef,
      I2 => blk00000001_sig000006ec,
      I3 => blk00000001_sig000006ed,
      I4 => blk00000001_sig000006eb,
      O => blk00000001_sig000004b7
    );
  blk00000001_blk0000056c : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_v0sync_hstart(5),
      I1 => blk00000001_sig000005ac,
      I2 => blk00000001_sig000005af,
      I3 => NlwRenamedSig_OI_det_v0sync_hstart(8),
      I4 => NlwRenamedSig_OI_det_v0sync_hstart(0),
      I5 => blk00000001_sig000005a7,
      O => blk00000001_sig000006ef
    );
  blk00000001_blk0000056b : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_v0sync_hstart(4),
      I1 => blk00000001_sig000005ab,
      I2 => NlwRenamedSig_OI_det_v0sync_hstart(3),
      I3 => blk00000001_sig000005aa,
      O => blk00000001_sig000006ee
    );
  blk00000001_blk0000056a : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_v0sync_start(1),
      I1 => blk00000001_sig000005b3,
      I2 => blk00000001_sig000005b6,
      I3 => NlwRenamedSig_OI_det_v0sync_start(4),
      I4 => NlwRenamedSig_OI_det_v0sync_start(5),
      I5 => blk00000001_sig000005b7,
      O => blk00000001_sig000006ed
    );
  blk00000001_blk00000569 : LUT6
    generic map(
      INIT => X"9099000000009099"
    )
    port map (
      I0 => blk00000001_sig000005b2,
      I1 => NlwRenamedSig_OI_det_v0sync_start(0),
      I2 => blk00000001_sig000005a8,
      I3 => NlwRenamedSig_OI_det_v0sync_hstart(1),
      I4 => NlwRenamedSig_OI_det_v0sync_start(10),
      I5 => blk00000001_sig000005bc,
      O => blk00000001_sig000006ec
    );
  blk00000001_blk00000568 : LUT6
    generic map(
      INIT => X"9000000000000000"
    )
    port map (
      I0 => blk00000001_sig000005b8,
      I1 => NlwRenamedSig_OI_det_v0sync_start(6),
      I2 => blk00000001_sig000006ea,
      I3 => blk00000001_sig000006e7,
      I4 => blk00000001_sig000006e9,
      I5 => blk00000001_sig000006e8,
      O => blk00000001_sig000006eb
    );
  blk00000001_blk00000567 : LUT5
    generic map(
      INIT => X"80200802"
    )
    port map (
      I0 => blk00000001_sig000005f9,
      I1 => blk00000001_sig000005ba,
      I2 => blk00000001_sig000005bb,
      I3 => NlwRenamedSig_OI_det_v0sync_start(8),
      I4 => NlwRenamedSig_OI_det_v0sync_start(9),
      O => blk00000001_sig000006ea
    );
  blk00000001_blk00000566 : LUT6
    generic map(
      INIT => X"8040201008040201"
    )
    port map (
      I0 => blk00000001_sig000005b9,
      I1 => blk00000001_sig000005b4,
      I2 => blk00000001_sig000005b5,
      I3 => NlwRenamedSig_OI_det_v0sync_start(7),
      I4 => NlwRenamedSig_OI_det_v0sync_start(2),
      I5 => NlwRenamedSig_OI_det_v0sync_start(3),
      O => blk00000001_sig000006e9
    );
  blk00000001_blk00000565 : LUT6
    generic map(
      INIT => X"8040201008040201"
    )
    port map (
      I0 => blk00000001_sig000005b1,
      I1 => blk00000001_sig000005b0,
      I2 => blk00000001_sig000005ad,
      I3 => NlwRenamedSig_OI_det_v0sync_hstart(10),
      I4 => NlwRenamedSig_OI_det_v0sync_hstart(9),
      I5 => NlwRenamedSig_OI_det_v0sync_hstart(6),
      O => blk00000001_sig000006e8
    );
  blk00000001_blk00000564 : LUT6
    generic map(
      INIT => X"8844221108040201"
    )
    port map (
      I0 => blk00000001_sig000005ae,
      I1 => blk00000001_sig000005a9,
      I2 => blk00000001_sig000005a8,
      I3 => NlwRenamedSig_OI_det_v0sync_hstart(7),
      I4 => NlwRenamedSig_OI_det_v0sync_hstart(2),
      I5 => NlwRenamedSig_OI_det_v0sync_hstart(1),
      O => blk00000001_sig000006e7
    );
  blk00000001_blk00000563 : LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => blk00000001_sig000006e5,
      I1 => blk00000001_sig000006e6,
      I2 => blk00000001_sig000006e2,
      I3 => blk00000001_sig000006e3,
      I4 => blk00000001_sig000006e4,
      O => blk00000001_sig000004b8
    );
  blk00000001_blk00000562 : LUT3
    generic map(
      INIT => X"41"
    )
    port map (
      I0 => blk00000001_sig00000603,
      I1 => blk00000001_sig000005d4,
      I2 => NlwRenamedSig_OI_det_hfp_start(1),
      O => blk00000001_sig000006e6
    );
  blk00000001_blk00000561 : LUT6
    generic map(
      INIT => X"B0BB00000000B0BB"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_hfp_start(0),
      I1 => blk00000001_sig000005d3,
      I2 => blk00000001_sig000005d7,
      I3 => NlwRenamedSig_OI_det_hfp_start(4),
      I4 => NlwRenamedSig_OI_det_hfp_start(3),
      I5 => blk00000001_sig000005d6,
      O => blk00000001_sig000006e5
    );
  blk00000001_blk00000560 : LUT6
    generic map(
      INIT => X"9099000000009099"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_hfp_start(2),
      I1 => blk00000001_sig000005d5,
      I2 => NlwRenamedSig_OI_det_hfp_start(4),
      I3 => blk00000001_sig000005d7,
      I4 => NlwRenamedSig_OI_det_hfp_start(5),
      I5 => blk00000001_sig000005d8,
      O => blk00000001_sig000006e4
    );
  blk00000001_blk0000055f : LUT6
    generic map(
      INIT => X"9099000000009099"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_hfp_start(10),
      I1 => blk00000001_sig000005dd,
      I2 => blk00000001_sig000005d3,
      I3 => NlwRenamedSig_OI_det_hfp_start(0),
      I4 => NlwRenamedSig_OI_det_hfp_start(7),
      I5 => blk00000001_sig000005da,
      O => blk00000001_sig000006e3
    );
  blk00000001_blk0000055e : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_hfp_start(6),
      I1 => blk00000001_sig000005d9,
      I2 => NlwRenamedSig_OI_det_hfp_start(9),
      I3 => blk00000001_sig000005dc,
      I4 => NlwRenamedSig_OI_det_hfp_start(8),
      I5 => blk00000001_sig000005db,
      O => blk00000001_sig000006e2
    );
  blk00000001_blk0000055d : LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => blk00000001_sig000006e0,
      I1 => blk00000001_sig000006e1,
      I2 => blk00000001_sig000006dd,
      I3 => blk00000001_sig000006de,
      I4 => blk00000001_sig000006df,
      O => blk00000001_sig000004b9
    );
  blk00000001_blk0000055c : LUT3
    generic map(
      INIT => X"41"
    )
    port map (
      I0 => blk00000001_sig00000607,
      I1 => blk00000001_sig000005ea,
      I2 => NlwRenamedSig_OI_det_hsync_start(1),
      O => blk00000001_sig000006e1
    );
  blk00000001_blk0000055b : LUT6
    generic map(
      INIT => X"B0BB00000000B0BB"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_hsync_start(0),
      I1 => blk00000001_sig000005e9,
      I2 => blk00000001_sig000005ed,
      I3 => NlwRenamedSig_OI_det_hsync_start(4),
      I4 => NlwRenamedSig_OI_det_hsync_start(3),
      I5 => blk00000001_sig000005ec,
      O => blk00000001_sig000006e0
    );
  blk00000001_blk0000055a : LUT6
    generic map(
      INIT => X"9099000000009099"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_hsync_start(2),
      I1 => blk00000001_sig000005eb,
      I2 => NlwRenamedSig_OI_det_hsync_start(4),
      I3 => blk00000001_sig000005ed,
      I4 => NlwRenamedSig_OI_det_hsync_start(5),
      I5 => blk00000001_sig000005ee,
      O => blk00000001_sig000006df
    );
  blk00000001_blk00000559 : LUT6
    generic map(
      INIT => X"9099000000009099"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_hsync_start(10),
      I1 => blk00000001_sig000005f3,
      I2 => blk00000001_sig000005e9,
      I3 => NlwRenamedSig_OI_det_hsync_start(0),
      I4 => NlwRenamedSig_OI_det_hsync_start(7),
      I5 => blk00000001_sig000005f0,
      O => blk00000001_sig000006de
    );
  blk00000001_blk00000558 : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_hsync_start(6),
      I1 => blk00000001_sig000005ef,
      I2 => NlwRenamedSig_OI_det_hsync_start(9),
      I3 => blk00000001_sig000005f2,
      I4 => NlwRenamedSig_OI_det_hsync_start(8),
      I5 => blk00000001_sig000005f1,
      O => blk00000001_sig000006dd
    );
  blk00000001_blk00000557 : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => blk00000001_sig0000055a,
      I1 => blk00000001_sig00000451,
      I2 => blk00000001_sig00000560,
      I3 => blk00000001_sig0000044b,
      I4 => blk00000001_sig0000055f,
      I5 => blk00000001_sig0000044c,
      O => blk00000001_sig000006dc
    );
  blk00000001_blk00000556 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => blk00000001_sig00000564,
      I1 => blk00000001_sig00000447,
      I2 => blk00000001_sig0000055b,
      I3 => blk00000001_sig00000450,
      O => blk00000001_sig000006db
    );
  blk00000001_blk00000555 : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => blk00000001_sig0000055e,
      I1 => blk00000001_sig0000044d,
      I2 => blk00000001_sig0000055d,
      I3 => blk00000001_sig0000044e,
      I4 => blk00000001_sig00000562,
      I5 => blk00000001_sig00000449,
      O => blk00000001_sig000006da
    );
  blk00000001_blk00000554 : LUT6
    generic map(
      INIT => X"8040201008040201"
    )
    port map (
      I0 => blk00000001_sig00000561,
      I1 => blk00000001_sig00000563,
      I2 => blk00000001_sig0000055c,
      I3 => blk00000001_sig0000044a,
      I4 => blk00000001_sig00000448,
      I5 => blk00000001_sig0000044f,
      O => blk00000001_sig000006d9
    );
  blk00000001_blk00000553 : LUT5
    generic map(
      INIT => X"FFFFFFF2"
    )
    port map (
      I0 => blk00000001_sig0000054f,
      I1 => blk00000001_sig00000542,
      I2 => blk00000001_sig000006d6,
      I3 => blk00000001_sig000006d5,
      I4 => blk00000001_sig000006d7,
      O => blk00000001_sig000006d8
    );
  blk00000001_blk00000552 : LUT6
    generic map(
      INIT => X"00AACCEEF0FAFCFE"
    )
    port map (
      I0 => blk00000001_sig00000559,
      I1 => blk00000001_sig00000551,
      I2 => blk00000001_sig00000550,
      I3 => blk00000001_sig0000054c,
      I4 => blk00000001_sig00000544,
      I5 => blk00000001_sig00000543,
      O => blk00000001_sig000006d7
    );
  blk00000001_blk00000551 : LUT6
    generic map(
      INIT => X"00AACCEEF0FAFCFE"
    )
    port map (
      I0 => blk00000001_sig00000552,
      I1 => blk00000001_sig00000554,
      I2 => blk00000001_sig00000553,
      I3 => blk00000001_sig00000545,
      I4 => blk00000001_sig00000547,
      I5 => blk00000001_sig00000546,
      O => blk00000001_sig000006d6
    );
  blk00000001_blk00000550 : LUT6
    generic map(
      INIT => X"00AACCEEF0FAFCFE"
    )
    port map (
      I0 => blk00000001_sig00000555,
      I1 => blk00000001_sig00000557,
      I2 => blk00000001_sig00000556,
      I3 => blk00000001_sig00000548,
      I4 => blk00000001_sig0000054a,
      I5 => blk00000001_sig00000549,
      O => blk00000001_sig000006d5
    );
  blk00000001_blk0000054f : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => blk00000001_sig000006d0,
      I1 => blk00000001_sig000006d1,
      I2 => blk00000001_sig000006d2,
      I3 => blk00000001_sig000006d3,
      O => blk00000001_sig000006d4
    );
  blk00000001_blk0000054e : LUT6
    generic map(
      INIT => X"22F222F2FFFF22F2"
    )
    port map (
      I0 => blk00000001_sig00000547,
      I1 => blk00000001_sig00000554,
      I2 => blk00000001_sig00000548,
      I3 => blk00000001_sig00000555,
      I4 => blk00000001_sig00000546,
      I5 => blk00000001_sig00000553,
      O => blk00000001_sig000006d3
    );
  blk00000001_blk0000054d : LUT6
    generic map(
      INIT => X"7F3F5F0F77335500"
    )
    port map (
      I0 => blk00000001_sig00000556,
      I1 => blk00000001_sig00000558,
      I2 => blk00000001_sig00000557,
      I3 => blk00000001_sig00000549,
      I4 => blk00000001_sig0000054b,
      I5 => blk00000001_sig0000054a,
      O => blk00000001_sig000006d2
    );
  blk00000001_blk0000054c : LUT6
    generic map(
      INIT => X"3FBF0FAF33BB00AA"
    )
    port map (
      I0 => blk00000001_sig00000558,
      I1 => blk00000001_sig00000559,
      I2 => blk00000001_sig0000054f,
      I3 => blk00000001_sig0000054b,
      I4 => blk00000001_sig0000054c,
      I5 => blk00000001_sig00000542,
      O => blk00000001_sig000006d1
    );
  blk00000001_blk0000054b : LUT6
    generic map(
      INIT => X"7F3F5F0F77335500"
    )
    port map (
      I0 => blk00000001_sig00000550,
      I1 => blk00000001_sig00000552,
      I2 => blk00000001_sig00000551,
      I3 => blk00000001_sig00000543,
      I4 => blk00000001_sig00000545,
      I5 => blk00000001_sig00000544,
      O => blk00000001_sig000006d0
    );
  blk00000001_blk0000054a : LUT5
    generic map(
      INIT => X"FFFFFFF4"
    )
    port map (
      I0 => blk00000001_sig000005bd,
      I1 => blk00000001_sig00000521,
      I2 => blk00000001_sig000006cd,
      I3 => blk00000001_sig000006cc,
      I4 => blk00000001_sig000006ce,
      O => blk00000001_sig000006cf
    );
  blk00000001_blk00000549 : LUT6
    generic map(
      INIT => X"7F3F5F0F77335500"
    )
    port map (
      I0 => blk00000001_sig000005c7,
      I1 => blk00000001_sig000005bf,
      I2 => blk00000001_sig000005be,
      I3 => blk00000001_sig0000052b,
      I4 => blk00000001_sig00000523,
      I5 => blk00000001_sig00000522,
      O => blk00000001_sig000006ce
    );
  blk00000001_blk00000548 : LUT6
    generic map(
      INIT => X"7F3F5F0F77335500"
    )
    port map (
      I0 => blk00000001_sig000005c0,
      I1 => blk00000001_sig000005c2,
      I2 => blk00000001_sig000005c1,
      I3 => blk00000001_sig00000524,
      I4 => blk00000001_sig00000526,
      I5 => blk00000001_sig00000525,
      O => blk00000001_sig000006cd
    );
  blk00000001_blk00000547 : LUT6
    generic map(
      INIT => X"7F5F3F0F77553300"
    )
    port map (
      I0 => blk00000001_sig000005c3,
      I1 => blk00000001_sig000005c5,
      I2 => blk00000001_sig000005c4,
      I3 => blk00000001_sig00000529,
      I4 => blk00000001_sig00000527,
      I5 => blk00000001_sig00000528,
      O => blk00000001_sig000006cc
    );
  blk00000001_blk00000546 : LUT6
    generic map(
      INIT => X"22F222F2FFFF22F2"
    )
    port map (
      I0 => blk00000001_sig000005c2,
      I1 => blk00000001_sig00000526,
      I2 => blk00000001_sig000005c3,
      I3 => blk00000001_sig00000527,
      I4 => blk00000001_sig000005c1,
      I5 => blk00000001_sig00000525,
      O => blk00000001_sig000006cb
    );
  blk00000001_blk00000545 : LUT6
    generic map(
      INIT => X"22F222F2FFFF22F2"
    )
    port map (
      I0 => blk00000001_sig000005c5,
      I1 => blk00000001_sig00000529,
      I2 => blk00000001_sig000005c6,
      I3 => blk00000001_sig0000052a,
      I4 => blk00000001_sig000005c4,
      I5 => blk00000001_sig00000528,
      O => blk00000001_sig000006ca
    );
  blk00000001_blk00000544 : LUT6
    generic map(
      INIT => X"22F222F2FFFF22F2"
    )
    port map (
      I0 => blk00000001_sig000005bd,
      I1 => blk00000001_sig00000521,
      I2 => blk00000001_sig000005c7,
      I3 => blk00000001_sig0000052b,
      I4 => blk00000001_sig0000052a,
      I5 => blk00000001_sig000005c6,
      O => blk00000001_sig000006c9
    );
  blk00000001_blk00000543 : LUT6
    generic map(
      INIT => X"22F222F2FFFF22F2"
    )
    port map (
      I0 => blk00000001_sig000005bf,
      I1 => blk00000001_sig00000523,
      I2 => blk00000001_sig000005c0,
      I3 => blk00000001_sig00000524,
      I4 => blk00000001_sig000005be,
      I5 => blk00000001_sig00000522,
      O => blk00000001_sig000006c8
    );
  blk00000001_blk00000542 : LUT5
    generic map(
      INIT => X"FFFFFFF4"
    )
    port map (
      I0 => blk00000001_sig000005de,
      I1 => NlwRenamedSig_OI_det_hbp_start(0),
      I2 => blk00000001_sig000006c5,
      I3 => blk00000001_sig000006c4,
      I4 => blk00000001_sig000006c6,
      O => blk00000001_sig000006c7
    );
  blk00000001_blk00000541 : LUT6
    generic map(
      INIT => X"7F3F5F0F77335500"
    )
    port map (
      I0 => blk00000001_sig000005e8,
      I1 => blk00000001_sig000005e0,
      I2 => blk00000001_sig000005df,
      I3 => NlwRenamedSig_OI_det_hbp_start(10),
      I4 => NlwRenamedSig_OI_det_hbp_start(2),
      I5 => NlwRenamedSig_OI_det_hbp_start(1),
      O => blk00000001_sig000006c6
    );
  blk00000001_blk00000540 : LUT6
    generic map(
      INIT => X"22F222F2FFFF22F2"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_hbp_start(4),
      I1 => blk00000001_sig000005e2,
      I2 => NlwRenamedSig_OI_det_hbp_start(5),
      I3 => blk00000001_sig000005e3,
      I4 => NlwRenamedSig_OI_det_hbp_start(3),
      I5 => blk00000001_sig000005e1,
      O => blk00000001_sig000006c5
    );
  blk00000001_blk0000053f : LUT6
    generic map(
      INIT => X"22F222F2FFFF22F2"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_hbp_start(7),
      I1 => blk00000001_sig000005e5,
      I2 => NlwRenamedSig_OI_det_hbp_start(8),
      I3 => blk00000001_sig000005e6,
      I4 => NlwRenamedSig_OI_det_hbp_start(6),
      I5 => blk00000001_sig000005e4,
      O => blk00000001_sig000006c4
    );
  blk00000001_blk0000053e : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => blk00000001_sig000006bf,
      I1 => blk00000001_sig000006c0,
      I2 => blk00000001_sig000006c1,
      I3 => blk00000001_sig000006c2,
      O => blk00000001_sig000006c3
    );
  blk00000001_blk0000053d : LUT6
    generic map(
      INIT => X"22F222F2FFFF22F2"
    )
    port map (
      I0 => blk00000001_sig000005e3,
      I1 => NlwRenamedSig_OI_det_hbp_start(5),
      I2 => blk00000001_sig000005e4,
      I3 => NlwRenamedSig_OI_det_hbp_start(6),
      I4 => blk00000001_sig000005e2,
      I5 => NlwRenamedSig_OI_det_hbp_start(4),
      O => blk00000001_sig000006c2
    );
  blk00000001_blk0000053c : LUT6
    generic map(
      INIT => X"22F222F2FFFF22F2"
    )
    port map (
      I0 => blk00000001_sig000005e6,
      I1 => NlwRenamedSig_OI_det_hbp_start(8),
      I2 => blk00000001_sig000005e7,
      I3 => NlwRenamedSig_OI_det_hbp_start(9),
      I4 => blk00000001_sig000005e5,
      I5 => NlwRenamedSig_OI_det_hbp_start(7),
      O => blk00000001_sig000006c1
    );
  blk00000001_blk0000053b : LUT6
    generic map(
      INIT => X"22F222F2FFFF22F2"
    )
    port map (
      I0 => blk00000001_sig000005de,
      I1 => NlwRenamedSig_OI_det_hbp_start(0),
      I2 => blk00000001_sig000005e8,
      I3 => NlwRenamedSig_OI_det_hbp_start(10),
      I4 => NlwRenamedSig_OI_det_hbp_start(9),
      I5 => blk00000001_sig000005e7,
      O => blk00000001_sig000006c0
    );
  blk00000001_blk0000053a : LUT6
    generic map(
      INIT => X"22F222F2FFFF22F2"
    )
    port map (
      I0 => blk00000001_sig000005e0,
      I1 => NlwRenamedSig_OI_det_hbp_start(2),
      I2 => blk00000001_sig000005e1,
      I3 => NlwRenamedSig_OI_det_hbp_start(3),
      I4 => blk00000001_sig000005df,
      I5 => NlwRenamedSig_OI_det_hbp_start(1),
      O => blk00000001_sig000006bf
    );
  blk00000001_blk00000539 : LUT5
    generic map(
      INIT => X"FFFFFFF4"
    )
    port map (
      I0 => blk00000001_sig000005c8,
      I1 => NlwRenamedSig_OI_det_hactive_start(0),
      I2 => blk00000001_sig000006bc,
      I3 => blk00000001_sig000006bb,
      I4 => blk00000001_sig000006bd,
      O => blk00000001_sig000006be
    );
  blk00000001_blk00000538 : LUT6
    generic map(
      INIT => X"7F3F5F0F77335500"
    )
    port map (
      I0 => blk00000001_sig000005d2,
      I1 => blk00000001_sig000005ca,
      I2 => blk00000001_sig000005c9,
      I3 => NlwRenamedSig_OI_det_hactive_start(10),
      I4 => NlwRenamedSig_OI_det_hactive_start(2),
      I5 => NlwRenamedSig_OI_det_hactive_start(1),
      O => blk00000001_sig000006bd
    );
  blk00000001_blk00000537 : LUT6
    generic map(
      INIT => X"22F222F2FFFF22F2"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_hactive_start(4),
      I1 => blk00000001_sig000005cc,
      I2 => NlwRenamedSig_OI_det_hactive_start(5),
      I3 => blk00000001_sig000005cd,
      I4 => NlwRenamedSig_OI_det_hactive_start(3),
      I5 => blk00000001_sig000005cb,
      O => blk00000001_sig000006bc
    );
  blk00000001_blk00000536 : LUT6
    generic map(
      INIT => X"22F222F2FFFF22F2"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_hactive_start(7),
      I1 => blk00000001_sig000005cf,
      I2 => NlwRenamedSig_OI_det_hactive_start(8),
      I3 => blk00000001_sig000005d0,
      I4 => NlwRenamedSig_OI_det_hactive_start(6),
      I5 => blk00000001_sig000005ce,
      O => blk00000001_sig000006bb
    );
  blk00000001_blk00000535 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => blk00000001_sig000006b6,
      I1 => blk00000001_sig000006b7,
      I2 => blk00000001_sig000006b8,
      I3 => blk00000001_sig000006b9,
      O => blk00000001_sig000006ba
    );
  blk00000001_blk00000534 : LUT6
    generic map(
      INIT => X"22F222F2FFFF22F2"
    )
    port map (
      I0 => blk00000001_sig000005cd,
      I1 => NlwRenamedSig_OI_det_hactive_start(5),
      I2 => blk00000001_sig000005ce,
      I3 => NlwRenamedSig_OI_det_hactive_start(6),
      I4 => blk00000001_sig000005cc,
      I5 => NlwRenamedSig_OI_det_hactive_start(4),
      O => blk00000001_sig000006b9
    );
  blk00000001_blk00000533 : LUT6
    generic map(
      INIT => X"22F222F2FFFF22F2"
    )
    port map (
      I0 => blk00000001_sig000005d0,
      I1 => NlwRenamedSig_OI_det_hactive_start(8),
      I2 => blk00000001_sig000005d1,
      I3 => NlwRenamedSig_OI_det_hactive_start(9),
      I4 => blk00000001_sig000005cf,
      I5 => NlwRenamedSig_OI_det_hactive_start(7),
      O => blk00000001_sig000006b8
    );
  blk00000001_blk00000532 : LUT6
    generic map(
      INIT => X"22F222F2FFFF22F2"
    )
    port map (
      I0 => blk00000001_sig000005c8,
      I1 => NlwRenamedSig_OI_det_hactive_start(0),
      I2 => blk00000001_sig000005d2,
      I3 => NlwRenamedSig_OI_det_hactive_start(10),
      I4 => NlwRenamedSig_OI_det_hactive_start(9),
      I5 => blk00000001_sig000005d1,
      O => blk00000001_sig000006b7
    );
  blk00000001_blk00000531 : LUT6
    generic map(
      INIT => X"22F222F2FFFF22F2"
    )
    port map (
      I0 => blk00000001_sig000005ca,
      I1 => NlwRenamedSig_OI_det_hactive_start(2),
      I2 => blk00000001_sig000005cb,
      I3 => NlwRenamedSig_OI_det_hactive_start(3),
      I4 => blk00000001_sig000005c9,
      I5 => NlwRenamedSig_OI_det_hactive_start(1),
      O => blk00000001_sig000006b6
    );
  blk00000001_blk00000530 : LUT6
    generic map(
      INIT => X"22F222F2FFFF22F2"
    )
    port map (
      I0 => blk00000001_sig0000059e,
      I1 => NlwRenamedSig_OI_det_v0bp_start(2),
      I2 => blk00000001_sig0000059f,
      I3 => NlwRenamedSig_OI_det_v0bp_start(3),
      I4 => blk00000001_sig0000059d,
      I5 => NlwRenamedSig_OI_det_v0bp_start(1),
      O => blk00000001_sig000006b5
    );
  blk00000001_blk0000052f : LUT6
    generic map(
      INIT => X"00AACCEEF0FAFCFE"
    )
    port map (
      I0 => blk00000001_sig000005a0,
      I1 => blk00000001_sig000005a2,
      I2 => blk00000001_sig000005a1,
      I3 => NlwRenamedSig_OI_det_v0bp_start(4),
      I4 => NlwRenamedSig_OI_det_v0bp_start(6),
      I5 => NlwRenamedSig_OI_det_v0bp_start(5),
      O => blk00000001_sig000006b4
    );
  blk00000001_blk0000052e : LUT6
    generic map(
      INIT => X"00AACCEEF0FAFCFE"
    )
    port map (
      I0 => blk00000001_sig000005a3,
      I1 => blk00000001_sig000005a5,
      I2 => blk00000001_sig000005a4,
      I3 => NlwRenamedSig_OI_det_v0bp_start(7),
      I4 => NlwRenamedSig_OI_det_v0bp_start(9),
      I5 => NlwRenamedSig_OI_det_v0bp_start(8),
      O => blk00000001_sig000006b3
    );
  blk00000001_blk0000052d : LUT6
    generic map(
      INIT => X"7F3F5F0F77335500"
    )
    port map (
      I0 => blk00000001_sig000005a2,
      I1 => blk00000001_sig000005a4,
      I2 => blk00000001_sig000005a3,
      I3 => NlwRenamedSig_OI_det_v0bp_start(6),
      I4 => NlwRenamedSig_OI_det_v0bp_start(8),
      I5 => NlwRenamedSig_OI_det_v0bp_start(7),
      O => blk00000001_sig000006b2
    );
  blk00000001_blk0000052c : LUT6
    generic map(
      INIT => X"5500DDCCF5F0FDFC"
    )
    port map (
      I0 => blk00000001_sig000005a5,
      I1 => blk00000001_sig000005a6,
      I2 => blk00000001_sig0000059c,
      I3 => NlwRenamedSig_OI_det_v0bp_start(9),
      I4 => NlwRenamedSig_OI_det_v0bp_start(10),
      I5 => NlwRenamedSig_OI_det_v0bp_start(0),
      O => blk00000001_sig000006b1
    );
  blk00000001_blk0000052b : LUT6
    generic map(
      INIT => X"7F3F5F0F77335500"
    )
    port map (
      I0 => blk00000001_sig000005a6,
      I1 => blk00000001_sig0000059e,
      I2 => blk00000001_sig0000059d,
      I3 => NlwRenamedSig_OI_det_v0bp_start(10),
      I4 => NlwRenamedSig_OI_det_v0bp_start(2),
      I5 => NlwRenamedSig_OI_det_v0bp_start(1),
      O => blk00000001_sig000006b0
    );
  blk00000001_blk0000052a : LUT6
    generic map(
      INIT => X"7F3F5F0F77335500"
    )
    port map (
      I0 => blk00000001_sig0000059f,
      I1 => blk00000001_sig000005a1,
      I2 => blk00000001_sig000005a0,
      I3 => NlwRenamedSig_OI_det_v0bp_start(3),
      I4 => NlwRenamedSig_OI_det_v0bp_start(5),
      I5 => NlwRenamedSig_OI_det_v0bp_start(4),
      O => blk00000001_sig000006af
    );
  blk00000001_blk00000529 : LUT4
    generic map(
      INIT => X"22F2"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_v0sync_hend(0),
      I1 => blk00000001_sig00000591,
      I2 => NlwRenamedSig_OI_det_v0sync_hend(10),
      I3 => blk00000001_sig0000059b,
      O => blk00000001_sig000006ae
    );
  blk00000001_blk00000528 : LUT6
    generic map(
      INIT => X"22F222F2FFFF22F2"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_v0sync_hend(2),
      I1 => blk00000001_sig00000593,
      I2 => NlwRenamedSig_OI_det_v0sync_hend(3),
      I3 => blk00000001_sig00000594,
      I4 => NlwRenamedSig_OI_det_v0sync_hend(1),
      I5 => blk00000001_sig00000592,
      O => blk00000001_sig000006ad
    );
  blk00000001_blk00000527 : LUT6
    generic map(
      INIT => X"22F222F2FFFF22F2"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_v0sync_hend(5),
      I1 => blk00000001_sig00000596,
      I2 => NlwRenamedSig_OI_det_v0sync_hend(6),
      I3 => blk00000001_sig00000597,
      I4 => NlwRenamedSig_OI_det_v0sync_hend(4),
      I5 => blk00000001_sig00000595,
      O => blk00000001_sig000006ac
    );
  blk00000001_blk00000526 : LUT6
    generic map(
      INIT => X"22F222F2FFFF22F2"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_v0sync_hend(8),
      I1 => blk00000001_sig00000599,
      I2 => NlwRenamedSig_OI_det_v0sync_hend(9),
      I3 => blk00000001_sig0000059a,
      I4 => NlwRenamedSig_OI_det_v0sync_hend(7),
      I5 => blk00000001_sig00000598,
      O => blk00000001_sig000006ab
    );
  blk00000001_blk00000525 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => blk00000001_sig000006a6,
      I1 => blk00000001_sig000006a7,
      I2 => blk00000001_sig000006a8,
      I3 => blk00000001_sig000006a9,
      O => blk00000001_sig000006aa
    );
  blk00000001_blk00000524 : LUT6
    generic map(
      INIT => X"22F222F2FFFF22F2"
    )
    port map (
      I0 => blk00000001_sig00000597,
      I1 => NlwRenamedSig_OI_det_v0sync_hend(6),
      I2 => blk00000001_sig00000598,
      I3 => NlwRenamedSig_OI_det_v0sync_hend(7),
      I4 => blk00000001_sig00000596,
      I5 => NlwRenamedSig_OI_det_v0sync_hend(5),
      O => blk00000001_sig000006a9
    );
  blk00000001_blk00000523 : LUT6
    generic map(
      INIT => X"22F222F2FFFF22F2"
    )
    port map (
      I0 => blk00000001_sig0000059a,
      I1 => NlwRenamedSig_OI_det_v0sync_hend(9),
      I2 => NlwRenamedSig_OI_det_v0bp_start(0),
      I3 => blk00000001_sig0000059c,
      I4 => blk00000001_sig00000599,
      I5 => NlwRenamedSig_OI_det_v0sync_hend(8),
      O => blk00000001_sig000006a8
    );
  blk00000001_blk00000522 : LUT6
    generic map(
      INIT => X"22F222F2FFFF22F2"
    )
    port map (
      I0 => blk00000001_sig0000059b,
      I1 => NlwRenamedSig_OI_det_v0sync_hend(10),
      I2 => blk00000001_sig00000592,
      I3 => NlwRenamedSig_OI_det_v0sync_hend(1),
      I4 => blk00000001_sig00000591,
      I5 => NlwRenamedSig_OI_det_v0sync_hend(0),
      O => blk00000001_sig000006a7
    );
  blk00000001_blk00000521 : LUT6
    generic map(
      INIT => X"22F222F2FFFF22F2"
    )
    port map (
      I0 => blk00000001_sig00000594,
      I1 => NlwRenamedSig_OI_det_v0sync_hend(3),
      I2 => blk00000001_sig00000595,
      I3 => NlwRenamedSig_OI_det_v0sync_hend(4),
      I4 => blk00000001_sig00000593,
      I5 => NlwRenamedSig_OI_det_v0sync_hend(2),
      O => blk00000001_sig000006a6
    );
  blk00000001_blk00000520 : LUT6
    generic map(
      INIT => X"22F222F2FFFF22F2"
    )
    port map (
      I0 => blk00000001_sig00000572,
      I1 => NlwRenamedSig_OI_det_v0active_start(2),
      I2 => blk00000001_sig00000573,
      I3 => NlwRenamedSig_OI_det_v0active_start(3),
      I4 => blk00000001_sig00000571,
      I5 => NlwRenamedSig_OI_det_v0active_start(1),
      O => blk00000001_sig000006a5
    );
  blk00000001_blk0000051f : LUT6
    generic map(
      INIT => X"00AACCEEF0FAFCFE"
    )
    port map (
      I0 => blk00000001_sig00000574,
      I1 => blk00000001_sig00000576,
      I2 => blk00000001_sig00000575,
      I3 => NlwRenamedSig_OI_det_v0active_start(4),
      I4 => NlwRenamedSig_OI_det_v0active_start(6),
      I5 => NlwRenamedSig_OI_det_v0active_start(5),
      O => blk00000001_sig000006a4
    );
  blk00000001_blk0000051e : LUT6
    generic map(
      INIT => X"00AACCEEF0FAFCFE"
    )
    port map (
      I0 => blk00000001_sig00000577,
      I1 => blk00000001_sig00000579,
      I2 => blk00000001_sig00000578,
      I3 => NlwRenamedSig_OI_det_v0active_start(7),
      I4 => NlwRenamedSig_OI_det_v0active_start(9),
      I5 => NlwRenamedSig_OI_det_v0active_start(8),
      O => blk00000001_sig000006a3
    );
  blk00000001_blk0000051d : LUT6
    generic map(
      INIT => X"7F3F5F0F77335500"
    )
    port map (
      I0 => blk00000001_sig00000576,
      I1 => blk00000001_sig00000578,
      I2 => blk00000001_sig00000577,
      I3 => NlwRenamedSig_OI_det_v0active_start(6),
      I4 => NlwRenamedSig_OI_det_v0active_start(8),
      I5 => NlwRenamedSig_OI_det_v0active_start(7),
      O => blk00000001_sig000006a2
    );
  blk00000001_blk0000051c : LUT6
    generic map(
      INIT => X"5500DDCCF5F0FDFC"
    )
    port map (
      I0 => blk00000001_sig00000579,
      I1 => blk00000001_sig0000057a,
      I2 => blk00000001_sig00000570,
      I3 => NlwRenamedSig_OI_det_v0active_start(9),
      I4 => NlwRenamedSig_OI_det_v0active_start(10),
      I5 => NlwRenamedSig_OI_det_v0active_start(0),
      O => blk00000001_sig000006a1
    );
  blk00000001_blk0000051b : LUT6
    generic map(
      INIT => X"7F3F5F0F77335500"
    )
    port map (
      I0 => blk00000001_sig0000057a,
      I1 => blk00000001_sig00000572,
      I2 => blk00000001_sig00000571,
      I3 => NlwRenamedSig_OI_det_v0active_start(10),
      I4 => NlwRenamedSig_OI_det_v0active_start(2),
      I5 => NlwRenamedSig_OI_det_v0active_start(1),
      O => blk00000001_sig000006a0
    );
  blk00000001_blk0000051a : LUT6
    generic map(
      INIT => X"7F3F5F0F77335500"
    )
    port map (
      I0 => blk00000001_sig00000573,
      I1 => blk00000001_sig00000575,
      I2 => blk00000001_sig00000574,
      I3 => NlwRenamedSig_OI_det_v0active_start(3),
      I4 => NlwRenamedSig_OI_det_v0active_start(5),
      I5 => NlwRenamedSig_OI_det_v0active_start(4),
      O => blk00000001_sig0000069f
    );
  blk00000001_blk00000519 : LUT4
    generic map(
      INIT => X"22F2"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_v0blank_hend(0),
      I1 => blk00000001_sig00000565,
      I2 => NlwRenamedSig_OI_det_v0blank_hend(10),
      I3 => blk00000001_sig0000056f,
      O => blk00000001_sig0000069e
    );
  blk00000001_blk00000518 : LUT6
    generic map(
      INIT => X"22F222F2FFFF22F2"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_v0blank_hend(2),
      I1 => blk00000001_sig00000567,
      I2 => NlwRenamedSig_OI_det_v0blank_hend(3),
      I3 => blk00000001_sig00000568,
      I4 => NlwRenamedSig_OI_det_v0blank_hend(1),
      I5 => blk00000001_sig00000566,
      O => blk00000001_sig0000069d
    );
  blk00000001_blk00000517 : LUT6
    generic map(
      INIT => X"22F222F2FFFF22F2"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_v0blank_hend(5),
      I1 => blk00000001_sig0000056a,
      I2 => NlwRenamedSig_OI_det_v0blank_hend(6),
      I3 => blk00000001_sig0000056b,
      I4 => NlwRenamedSig_OI_det_v0blank_hend(4),
      I5 => blk00000001_sig00000569,
      O => blk00000001_sig0000069c
    );
  blk00000001_blk00000516 : LUT6
    generic map(
      INIT => X"22F222F2FFFF22F2"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_v0blank_hend(8),
      I1 => blk00000001_sig0000056d,
      I2 => NlwRenamedSig_OI_det_v0blank_hend(9),
      I3 => blk00000001_sig0000056e,
      I4 => NlwRenamedSig_OI_det_v0blank_hend(7),
      I5 => blk00000001_sig0000056c,
      O => blk00000001_sig0000069b
    );
  blk00000001_blk00000515 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => blk00000001_sig00000696,
      I1 => blk00000001_sig00000697,
      I2 => blk00000001_sig00000698,
      I3 => blk00000001_sig00000699,
      O => blk00000001_sig0000069a
    );
  blk00000001_blk00000514 : LUT6
    generic map(
      INIT => X"22F222F2FFFF22F2"
    )
    port map (
      I0 => blk00000001_sig0000056b,
      I1 => NlwRenamedSig_OI_det_v0blank_hend(6),
      I2 => blk00000001_sig0000056c,
      I3 => NlwRenamedSig_OI_det_v0blank_hend(7),
      I4 => blk00000001_sig0000056a,
      I5 => NlwRenamedSig_OI_det_v0blank_hend(5),
      O => blk00000001_sig00000699
    );
  blk00000001_blk00000513 : LUT6
    generic map(
      INIT => X"22F222F2FFFF22F2"
    )
    port map (
      I0 => blk00000001_sig0000056e,
      I1 => NlwRenamedSig_OI_det_v0blank_hend(9),
      I2 => NlwRenamedSig_OI_det_v0active_start(0),
      I3 => blk00000001_sig00000570,
      I4 => blk00000001_sig0000056d,
      I5 => NlwRenamedSig_OI_det_v0blank_hend(8),
      O => blk00000001_sig00000698
    );
  blk00000001_blk00000512 : LUT6
    generic map(
      INIT => X"00AACCEEF0FAFCFE"
    )
    port map (
      I0 => blk00000001_sig00000565,
      I1 => blk00000001_sig00000566,
      I2 => blk00000001_sig0000056f,
      I3 => NlwRenamedSig_OI_det_v0blank_hend(0),
      I4 => NlwRenamedSig_OI_det_v0blank_hend(1),
      I5 => NlwRenamedSig_OI_det_v0blank_hend(10),
      O => blk00000001_sig00000697
    );
  blk00000001_blk00000511 : LUT6
    generic map(
      INIT => X"00AACCEEF0FAFCFE"
    )
    port map (
      I0 => blk00000001_sig00000567,
      I1 => blk00000001_sig00000569,
      I2 => blk00000001_sig00000568,
      I3 => NlwRenamedSig_OI_det_v0blank_hend(2),
      I4 => NlwRenamedSig_OI_det_v0blank_hend(4),
      I5 => NlwRenamedSig_OI_det_v0blank_hend(3),
      O => blk00000001_sig00000696
    );
  blk00000001_blk00000510 : LUT6
    generic map(
      INIT => X"B0BB00000000B0BB"
    )
    port map (
      I0 => blk00000001_sig000002e7,
      I1 => blk00000001_sig00000258,
      I2 => blk00000001_sig0000025c,
      I3 => blk00000001_sig000002eb,
      I4 => blk00000001_sig0000025b,
      I5 => blk00000001_sig000002ea,
      O => blk00000001_sig00000695
    );
  blk00000001_blk0000050f : LUT6
    generic map(
      INIT => X"8040201088442211"
    )
    port map (
      I0 => blk00000001_sig000002ec,
      I1 => blk00000001_sig000002e9,
      I2 => blk00000001_sig000002eb,
      I3 => blk00000001_sig0000025d,
      I4 => blk00000001_sig0000025a,
      I5 => blk00000001_sig0000025c,
      O => blk00000001_sig00000694
    );
  blk00000001_blk0000050e : LUT6
    generic map(
      INIT => X"8844080422110201"
    )
    port map (
      I0 => blk00000001_sig000002ee,
      I1 => blk00000001_sig000002f1,
      I2 => blk00000001_sig000002e7,
      I3 => blk00000001_sig0000025f,
      I4 => blk00000001_sig00000258,
      I5 => blk00000001_sig00000262,
      O => blk00000001_sig00000693
    );
  blk00000001_blk0000050d : LUT5
    generic map(
      INIT => X"80082002"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig000002ef,
      I2 => blk00000001_sig000002f0,
      I3 => blk00000001_sig00000261,
      I4 => blk00000001_sig00000260,
      O => blk00000001_sig00000692
    );
  blk00000001_blk0000050c : LUT6
    generic map(
      INIT => X"9000000000000000"
    )
    port map (
      I0 => blk00000001_sig000002cb,
      I1 => blk00000001_sig0000025d,
      I2 => blk00000001_sig00000690,
      I3 => blk00000001_sig0000068f,
      I4 => blk00000001_sig0000068e,
      I5 => blk00000001_sig00000691,
      O => blk00000001_sig00000237
    );
  blk00000001_blk0000050b : LUT6
    generic map(
      INIT => X"8040201008040201"
    )
    port map (
      I0 => blk00000001_sig000002c7,
      I1 => blk00000001_sig000002c8,
      I2 => blk00000001_sig000002c9,
      I3 => blk00000001_sig00000259,
      I4 => blk00000001_sig0000025a,
      I5 => blk00000001_sig0000025b,
      O => blk00000001_sig00000691
    );
  blk00000001_blk0000050a : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => blk00000001_sig00000258,
      I1 => blk00000001_sig000002c6,
      I2 => blk00000001_sig0000025c,
      I3 => blk00000001_sig000002ca,
      O => blk00000001_sig00000690
    );
  blk00000001_blk00000509 : LUT5
    generic map(
      INIT => X"80082002"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig000002ce,
      I2 => blk00000001_sig000002cf,
      I3 => blk00000001_sig00000261,
      I4 => blk00000001_sig00000260,
      O => blk00000001_sig0000068f
    );
  blk00000001_blk00000508 : LUT6
    generic map(
      INIT => X"8008400420021001"
    )
    port map (
      I0 => blk00000001_sig000002cc,
      I1 => blk00000001_sig000002d0,
      I2 => blk00000001_sig000002cd,
      I3 => blk00000001_sig0000025f,
      I4 => blk00000001_sig0000025e,
      I5 => blk00000001_sig00000262,
      O => blk00000001_sig0000068e
    );
  blk00000001_blk00000507 : LUT6
    generic map(
      INIT => X"9000000000000000"
    )
    port map (
      I0 => blk00000001_sig00000246,
      I1 => blk00000001_sig0000025d,
      I2 => blk00000001_sig0000068b,
      I3 => blk00000001_sig0000068d,
      I4 => blk00000001_sig0000068c,
      I5 => blk00000001_sig0000068a,
      O => blk00000001_sig00000238
    );
  blk00000001_blk00000506 : LUT6
    generic map(
      INIT => X"8040201008040201"
    )
    port map (
      I0 => blk00000001_sig00000242,
      I1 => blk00000001_sig00000243,
      I2 => blk00000001_sig00000244,
      I3 => blk00000001_sig00000259,
      I4 => blk00000001_sig0000025a,
      I5 => blk00000001_sig0000025b,
      O => blk00000001_sig0000068d
    );
  blk00000001_blk00000505 : LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      I0 => blk00000001_sig00000245,
      I1 => blk00000001_sig00000241,
      I2 => blk00000001_sig00000258,
      I3 => blk00000001_sig0000025c,
      O => blk00000001_sig0000068c
    );
  blk00000001_blk00000504 : LUT5
    generic map(
      INIT => X"80082002"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig00000249,
      I2 => blk00000001_sig0000024a,
      I3 => blk00000001_sig00000261,
      I4 => blk00000001_sig00000260,
      O => blk00000001_sig0000068b
    );
  blk00000001_blk00000503 : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => blk00000001_sig0000025f,
      I1 => blk00000001_sig00000248,
      I2 => blk00000001_sig00000262,
      I3 => blk00000001_sig0000024b,
      I4 => blk00000001_sig0000025e,
      I5 => blk00000001_sig00000247,
      O => blk00000001_sig0000068a
    );
  blk00000001_blk00000502 : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => fsync_vstart(10),
      I1 => blk00000001_sig00000257,
      I2 => fsync_vstart(4),
      I3 => blk00000001_sig00000251,
      I4 => fsync_vstart(3),
      I5 => blk00000001_sig00000250,
      O => blk00000001_sig00000689
    );
  blk00000001_blk00000501 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => fsync_vstart(0),
      I1 => blk00000001_sig0000024d,
      I2 => fsync_vstart(6),
      I3 => blk00000001_sig00000253,
      O => blk00000001_sig00000688
    );
  blk00000001_blk00000500 : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => fsync_vstart(2),
      I1 => blk00000001_sig0000024f,
      I2 => fsync_vstart(1),
      I3 => blk00000001_sig0000024e,
      I4 => fsync_vstart(9),
      I5 => blk00000001_sig00000256,
      O => blk00000001_sig00000687
    );
  blk00000001_blk000004ff : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => fsync_vstart(8),
      I1 => blk00000001_sig00000255,
      I2 => fsync_vstart(7),
      I3 => blk00000001_sig00000254,
      I4 => fsync_vstart(5),
      I5 => blk00000001_sig00000252,
      O => blk00000001_sig00000686
    );
  blk00000001_blk000004fe : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => blk00000001_sig00000684,
      I1 => blk00000001_sig00000683,
      I2 => blk00000001_sig00000682,
      I3 => blk00000001_sig00000685,
      O => blk00000001_sig00000222
    );
  blk00000001_blk000004fd : LUT6
    generic map(
      INIT => X"8040201008040201"
    )
    port map (
      I0 => blk00000001_sig000002be,
      I1 => blk00000001_sig000002bf,
      I2 => blk00000001_sig000002c5,
      I3 => blk00000001_sig00000250,
      I4 => blk00000001_sig00000251,
      I5 => blk00000001_sig00000257,
      O => blk00000001_sig00000685
    );
  blk00000001_blk000004fc : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => blk00000001_sig000002bb,
      I1 => blk00000001_sig0000024d,
      I2 => blk00000001_sig000002c1,
      I3 => blk00000001_sig00000253,
      O => blk00000001_sig00000684
    );
  blk00000001_blk000004fb : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => blk00000001_sig000002bd,
      I1 => blk00000001_sig0000024f,
      I2 => blk00000001_sig000002bc,
      I3 => blk00000001_sig0000024e,
      I4 => blk00000001_sig000002c4,
      I5 => blk00000001_sig00000256,
      O => blk00000001_sig00000683
    );
  blk00000001_blk000004fa : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => blk00000001_sig000002c3,
      I1 => blk00000001_sig00000255,
      I2 => blk00000001_sig000002c2,
      I3 => blk00000001_sig00000254,
      I4 => blk00000001_sig000002c0,
      I5 => blk00000001_sig00000252,
      O => blk00000001_sig00000682
    );
  blk00000001_blk000004f9 : LUT6
    generic map(
      INIT => X"66F666F6FFFF66F6"
    )
    port map (
      I0 => blk00000001_sig0000025d,
      I1 => blk00000001_sig000002d6,
      I2 => blk00000001_sig000002d7,
      I3 => blk00000001_sig0000025e,
      I4 => blk00000001_sig0000025c,
      I5 => blk00000001_sig000002d5,
      O => blk00000001_sig00000681
    );
  blk00000001_blk000004f8 : LUT6
    generic map(
      INIT => X"66F666F6FFFF66F6"
    )
    port map (
      I0 => blk00000001_sig0000025f,
      I1 => blk00000001_sig000002d8,
      I2 => blk00000001_sig000002d9,
      I3 => blk00000001_sig00000260,
      I4 => blk00000001_sig0000025e,
      I5 => blk00000001_sig000002d7,
      O => blk00000001_sig00000680
    );
  blk00000001_blk000004f7 : LUT6
    generic map(
      INIT => X"77BB55AAF7FBF5FA"
    )
    port map (
      I0 => blk00000001_sig000002da,
      I1 => blk00000001_sig000002d9,
      I2 => blk00000001_sig000002db,
      I3 => blk00000001_sig00000261,
      I4 => blk00000001_sig00000260,
      I5 => blk00000001_sig00000262,
      O => blk00000001_sig0000067f
    );
  blk00000001_blk000004f6 : LUT6
    generic map(
      INIT => X"7FDF77DDBFEFBBEE"
    )
    port map (
      I0 => blk00000001_sig000002d1,
      I1 => blk00000001_sig000002d2,
      I2 => blk00000001_sig000002db,
      I3 => blk00000001_sig00000259,
      I4 => blk00000001_sig00000262,
      I5 => blk00000001_sig00000258,
      O => blk00000001_sig0000067e
    );
  blk00000001_blk000004f5 : LUT6
    generic map(
      INIT => X"6FF66FF6FFFF6FF6"
    )
    port map (
      I0 => blk00000001_sig0000025a,
      I1 => blk00000001_sig000002d3,
      I2 => blk00000001_sig0000025b,
      I3 => blk00000001_sig000002d4,
      I4 => blk00000001_sig000002d5,
      I5 => blk00000001_sig0000025c,
      O => blk00000001_sig0000067d
    );
  blk00000001_blk000004f4 : LUT6
    generic map(
      INIT => X"9000000000000000"
    )
    port map (
      I0 => blk00000001_sig000002e1,
      I1 => blk00000001_sig0000025d,
      I2 => blk00000001_sig00000679,
      I3 => blk00000001_sig0000067b,
      I4 => blk00000001_sig0000067a,
      I5 => blk00000001_sig00000678,
      O => blk00000001_sig0000067c
    );
  blk00000001_blk000004f3 : LUT6
    generic map(
      INIT => X"8040201008040201"
    )
    port map (
      I0 => blk00000001_sig000002dd,
      I1 => blk00000001_sig000002de,
      I2 => blk00000001_sig000002df,
      I3 => blk00000001_sig00000259,
      I4 => blk00000001_sig0000025a,
      I5 => blk00000001_sig0000025b,
      O => blk00000001_sig0000067b
    );
  blk00000001_blk000004f2 : LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      I0 => blk00000001_sig000002e0,
      I1 => blk00000001_sig000002dc,
      I2 => blk00000001_sig00000258,
      I3 => blk00000001_sig0000025c,
      O => blk00000001_sig0000067a
    );
  blk00000001_blk000004f1 : LUT5
    generic map(
      INIT => X"80082002"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig000002e4,
      I2 => blk00000001_sig000002e5,
      I3 => blk00000001_sig00000261,
      I4 => blk00000001_sig00000260,
      O => blk00000001_sig00000679
    );
  blk00000001_blk000004f0 : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => blk00000001_sig0000025f,
      I1 => blk00000001_sig000002e3,
      I2 => blk00000001_sig00000262,
      I3 => blk00000001_sig000002e6,
      I4 => blk00000001_sig0000025e,
      I5 => blk00000001_sig000002e2,
      O => blk00000001_sig00000678
    );
  blk00000001_blk000004ef : LUT5
    generic map(
      INIT => X"FFFFFFF2"
    )
    port map (
      I0 => fsync_hstart(0),
      I1 => blk00000001_sig00000258,
      I2 => blk00000001_sig00000674,
      I3 => blk00000001_sig00000676,
      I4 => blk00000001_sig00000675,
      O => blk00000001_sig00000677
    );
  blk00000001_blk000004ee : LUT6
    generic map(
      INIT => X"00CCF0FCAAEEFAFE"
    )
    port map (
      I0 => fsync_hstart(10),
      I1 => fsync_hstart(2),
      I2 => fsync_hstart(1),
      I3 => blk00000001_sig0000025a,
      I4 => blk00000001_sig00000259,
      I5 => blk00000001_sig00000262,
      O => blk00000001_sig00000676
    );
  blk00000001_blk000004ed : LUT6
    generic map(
      INIT => X"00AACCEEF0FAFCFE"
    )
    port map (
      I0 => fsync_hstart(3),
      I1 => fsync_hstart(5),
      I2 => fsync_hstart(4),
      I3 => blk00000001_sig0000025b,
      I4 => blk00000001_sig0000025d,
      I5 => blk00000001_sig0000025c,
      O => blk00000001_sig00000675
    );
  blk00000001_blk000004ec : LUT6
    generic map(
      INIT => X"00F0AAFACCFCEEFE"
    )
    port map (
      I0 => fsync_hstart(6),
      I1 => fsync_hstart(8),
      I2 => fsync_hstart(7),
      I3 => blk00000001_sig0000025f,
      I4 => blk00000001_sig0000025e,
      I5 => blk00000001_sig00000260,
      O => blk00000001_sig00000674
    );
  blk00000001_blk000004eb : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => blk00000001_sig0000066f,
      I1 => blk00000001_sig00000670,
      I2 => blk00000001_sig00000671,
      I3 => blk00000001_sig00000672,
      O => blk00000001_sig00000673
    );
  blk00000001_blk000004ea : LUT6
    generic map(
      INIT => X"22F222F2FFFF22F2"
    )
    port map (
      I0 => blk00000001_sig0000025d,
      I1 => fsync_hstart(5),
      I2 => blk00000001_sig0000025e,
      I3 => fsync_hstart(6),
      I4 => blk00000001_sig0000025c,
      I5 => fsync_hstart(4),
      O => blk00000001_sig00000672
    );
  blk00000001_blk000004e9 : LUT6
    generic map(
      INIT => X"7F3F5F0F77335500"
    )
    port map (
      I0 => fsync_hstart(7),
      I1 => fsync_hstart(9),
      I2 => fsync_hstart(8),
      I3 => blk00000001_sig0000025f,
      I4 => blk00000001_sig00000261,
      I5 => blk00000001_sig00000260,
      O => blk00000001_sig00000671
    );
  blk00000001_blk000004e8 : LUT6
    generic map(
      INIT => X"3FBF0FAF33BB00AA"
    )
    port map (
      I0 => fsync_hstart(9),
      I1 => fsync_hstart(10),
      I2 => fsync_hstart(0),
      I3 => blk00000001_sig00000261,
      I4 => blk00000001_sig00000262,
      I5 => blk00000001_sig00000258,
      O => blk00000001_sig00000670
    );
  blk00000001_blk000004e7 : LUT6
    generic map(
      INIT => X"7F3F5F0F77335500"
    )
    port map (
      I0 => fsync_hstart(1),
      I1 => fsync_hstart(3),
      I2 => fsync_hstart(2),
      I3 => blk00000001_sig00000259,
      I4 => blk00000001_sig0000025b,
      I5 => blk00000001_sig0000025a,
      O => blk00000001_sig0000066f
    );
  blk00000001_blk000004e6 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => blk00000001_sig000002fe,
      I1 => blk00000001_sig000002ff,
      I2 => blk00000001_sig00000300,
      I3 => blk00000001_sig00000301,
      I4 => blk00000001_sig000002fd,
      I5 => blk00000001_sig0000066e,
      O => blk00000001_sig0000021b
    );
  blk00000001_blk000004e5 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => blk00000001_sig00000302,
      I1 => blk00000001_sig00000303,
      I2 => blk00000001_sig00000304,
      I3 => blk00000001_sig00000305,
      I4 => blk00000001_sig00000306,
      I5 => blk00000001_sig00000307,
      O => blk00000001_sig0000066e
    );
  blk00000001_blk000004e4 : LUT6
    generic map(
      INIT => X"AAAAAAAAAAA9AAAA"
    )
    port map (
      I0 => blk00000001_sig000002f8,
      I1 => blk00000001_sig000002f7,
      I2 => blk00000001_sig000002f6,
      I3 => blk00000001_sig000002f5,
      I4 => blk00000001_sig000001dc,
      I5 => blk00000001_sig0000066d,
      O => blk00000001_sig00000227
    );
  blk00000001_blk000004e3 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => blk00000001_sig000002f4,
      I1 => blk00000001_sig000002f3,
      O => blk00000001_sig0000066d
    );
  blk00000001_blk000004e2 : LUT6
    generic map(
      INIT => X"AAAAAAAAAAA9AAAA"
    )
    port map (
      I0 => blk00000001_sig000002fa,
      I1 => blk00000001_sig000002f9,
      I2 => blk00000001_sig000002f8,
      I3 => blk00000001_sig000002f7,
      I4 => blk00000001_sig000001dc,
      I5 => blk00000001_sig0000066c,
      O => blk00000001_sig00000229
    );
  blk00000001_blk000004e1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => blk00000001_sig000002f6,
      I1 => blk00000001_sig000002f5,
      I2 => blk00000001_sig000002f4,
      I3 => blk00000001_sig000002f3,
      O => blk00000001_sig0000066c
    );
  blk00000001_blk000004e0 : LUT6
    generic map(
      INIT => X"AAAAAAAAAAA9AAAA"
    )
    port map (
      I0 => blk00000001_sig000002f9,
      I1 => blk00000001_sig000002f8,
      I2 => blk00000001_sig000002f7,
      I3 => blk00000001_sig000002f6,
      I4 => blk00000001_sig000001dc,
      I5 => blk00000001_sig0000066b,
      O => blk00000001_sig00000228
    );
  blk00000001_blk000004df : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => blk00000001_sig000002f5,
      I1 => blk00000001_sig000002f4,
      I2 => blk00000001_sig000002f3,
      O => blk00000001_sig0000066b
    );
  blk00000001_blk000004de : LUT6
    generic map(
      INIT => X"CCCCCCCCCCCCCCC9"
    )
    port map (
      I0 => blk00000001_sig000002f2,
      I1 => blk00000001_sig000002fb,
      I2 => blk00000001_sig000001f3,
      I3 => blk00000001_sig000002fa,
      I4 => blk00000001_sig000002f9,
      I5 => blk00000001_sig0000066a,
      O => blk00000001_sig0000022a
    );
  blk00000001_blk000004dd : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => blk00000001_sig000002f8,
      I1 => blk00000001_sig000002f7,
      I2 => blk00000001_sig000002f6,
      I3 => blk00000001_sig000002f5,
      I4 => blk00000001_sig000002f4,
      I5 => blk00000001_sig000002f3,
      O => blk00000001_sig0000066a
    );
  blk00000001_blk000004dc : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => blk00000001_sig00000668,
      I1 => blk00000001_sig00000666,
      I2 => blk00000001_sig00000669,
      I3 => blk00000001_sig00000667,
      O => blk00000001_sig00000219
    );
  blk00000001_blk000004db : LUT6
    generic map(
      INIT => X"8040201008040201"
    )
    port map (
      I0 => blk00000001_sig000002b3,
      I1 => blk00000001_sig000002b4,
      I2 => blk00000001_sig000002ba,
      I3 => blk00000001_sig00000250,
      I4 => blk00000001_sig00000251,
      I5 => blk00000001_sig00000257,
      O => blk00000001_sig00000669
    );
  blk00000001_blk000004da : LUT4
    generic map(
      INIT => X"8421"
    )
    port map (
      I0 => blk00000001_sig000002b6,
      I1 => blk00000001_sig000002b0,
      I2 => blk00000001_sig00000253,
      I3 => blk00000001_sig0000024d,
      O => blk00000001_sig00000668
    );
  blk00000001_blk000004d9 : LUT6
    generic map(
      INIT => X"8040201008040201"
    )
    port map (
      I0 => blk00000001_sig000002b9,
      I1 => blk00000001_sig000002b1,
      I2 => blk00000001_sig000002b2,
      I3 => blk00000001_sig00000256,
      I4 => blk00000001_sig0000024e,
      I5 => blk00000001_sig0000024f,
      O => blk00000001_sig00000667
    );
  blk00000001_blk000004d8 : LUT6
    generic map(
      INIT => X"8040201008040201"
    )
    port map (
      I0 => blk00000001_sig000002b5,
      I1 => blk00000001_sig000002b7,
      I2 => blk00000001_sig000002b8,
      I3 => blk00000001_sig00000252,
      I4 => blk00000001_sig00000254,
      I5 => blk00000001_sig00000255,
      O => blk00000001_sig00000666
    );
  blk00000001_blk000004d7 : LUT6
    generic map(
      INIT => X"8040201008040201"
    )
    port map (
      I0 => blk00000001_sig0000028b,
      I1 => blk00000001_sig00000285,
      I2 => blk00000001_sig00000286,
      I3 => blk00000001_sig0000025f,
      I4 => blk00000001_sig00000259,
      I5 => blk00000001_sig0000025a,
      O => blk00000001_sig00000665
    );
  blk00000001_blk000004d6 : LUT6
    generic map(
      INIT => X"8020401008020401"
    )
    port map (
      I0 => blk00000001_sig0000028c,
      I1 => blk00000001_sig0000028d,
      I2 => blk00000001_sig0000028e,
      I3 => blk00000001_sig00000261,
      I4 => blk00000001_sig00000260,
      I5 => blk00000001_sig00000262,
      O => blk00000001_sig00000664
    );
  blk00000001_blk000004d5 : LUT5
    generic map(
      INIT => X"90090000"
    )
    port map (
      I0 => blk00000001_sig00000258,
      I1 => blk00000001_sig00000284,
      I2 => blk00000001_sig0000025c,
      I3 => blk00000001_sig00000288,
      I4 => blk00000001_sig00000662,
      O => blk00000001_sig00000663
    );
  blk00000001_blk000004d4 : LUT6
    generic map(
      INIT => X"8040080420100201"
    )
    port map (
      I0 => blk00000001_sig00000289,
      I1 => blk00000001_sig0000028a,
      I2 => blk00000001_sig00000287,
      I3 => blk00000001_sig0000025d,
      I4 => blk00000001_sig0000025b,
      I5 => blk00000001_sig0000025e,
      O => blk00000001_sig00000662
    );
  blk00000001_blk000004d3 : LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => blk00000001_sig00000660,
      I1 => blk00000001_sig0000065f,
      I2 => blk00000001_sig0000065e,
      I3 => blk00000001_sig00000661,
      I4 => blk00000001_sig000001db,
      O => blk00000001_sig00000217
    );
  blk00000001_blk000004d2 : LUT6
    generic map(
      INIT => X"8040080420100201"
    )
    port map (
      I0 => blk00000001_sig00000266,
      I1 => blk00000001_sig00000267,
      I2 => blk00000001_sig0000026d,
      I3 => blk00000001_sig0000025b,
      I4 => blk00000001_sig00000262,
      I5 => blk00000001_sig0000025c,
      O => blk00000001_sig00000661
    );
  blk00000001_blk000004d1 : LUT4
    generic map(
      INIT => X"8421"
    )
    port map (
      I0 => blk00000001_sig0000026a,
      I1 => blk00000001_sig00000263,
      I2 => blk00000001_sig0000025f,
      I3 => blk00000001_sig00000258,
      O => blk00000001_sig00000660
    );
  blk00000001_blk000004d0 : LUT6
    generic map(
      INIT => X"8040201008040201"
    )
    port map (
      I0 => blk00000001_sig0000026c,
      I1 => blk00000001_sig00000264,
      I2 => blk00000001_sig00000265,
      I3 => blk00000001_sig00000261,
      I4 => blk00000001_sig00000259,
      I5 => blk00000001_sig0000025a,
      O => blk00000001_sig0000065f
    );
  blk00000001_blk000004cf : LUT6
    generic map(
      INIT => X"8040201008040201"
    )
    port map (
      I0 => blk00000001_sig00000268,
      I1 => blk00000001_sig00000269,
      I2 => blk00000001_sig0000026b,
      I3 => blk00000001_sig0000025d,
      I4 => blk00000001_sig0000025e,
      I5 => blk00000001_sig00000260,
      O => blk00000001_sig0000065e
    );
  blk00000001_blk000004ce : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => blk00000001_sig0000065c,
      I1 => blk00000001_sig0000065b,
      I2 => blk00000001_sig0000065a,
      I3 => blk00000001_sig0000065d,
      O => blk00000001_sig000001db
    );
  blk00000001_blk000004cd : LUT6
    generic map(
      INIT => X"8040201008040201"
    )
    port map (
      I0 => blk00000001_sig00000292,
      I1 => blk00000001_sig00000293,
      I2 => blk00000001_sig00000299,
      I3 => blk00000001_sig00000250,
      I4 => blk00000001_sig00000251,
      I5 => blk00000001_sig00000257,
      O => blk00000001_sig0000065d
    );
  blk00000001_blk000004cc : LUT4
    generic map(
      INIT => X"8421"
    )
    port map (
      I0 => blk00000001_sig00000295,
      I1 => blk00000001_sig0000028f,
      I2 => blk00000001_sig00000253,
      I3 => blk00000001_sig0000024d,
      O => blk00000001_sig0000065c
    );
  blk00000001_blk000004cb : LUT6
    generic map(
      INIT => X"8040201008040201"
    )
    port map (
      I0 => blk00000001_sig00000298,
      I1 => blk00000001_sig00000290,
      I2 => blk00000001_sig00000291,
      I3 => blk00000001_sig00000256,
      I4 => blk00000001_sig0000024e,
      I5 => blk00000001_sig0000024f,
      O => blk00000001_sig0000065b
    );
  blk00000001_blk000004ca : LUT6
    generic map(
      INIT => X"8040201008040201"
    )
    port map (
      I0 => blk00000001_sig00000294,
      I1 => blk00000001_sig00000296,
      I2 => blk00000001_sig00000297,
      I3 => blk00000001_sig00000252,
      I4 => blk00000001_sig00000254,
      I5 => blk00000001_sig00000255,
      O => blk00000001_sig0000065a
    );
  blk00000001_blk000004c9 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => blk00000001_sig00000658,
      I1 => blk00000001_sig00000657,
      I2 => blk00000001_sig00000655,
      I3 => blk00000001_sig00000656,
      O => blk00000001_sig00000659
    );
  blk00000001_blk000004c8 : LUT6
    generic map(
      INIT => X"8040201008040201"
    )
    port map (
      I0 => blk00000001_sig000002a7,
      I1 => blk00000001_sig000002a9,
      I2 => blk00000001_sig000002aa,
      I3 => blk00000001_sig0000024f,
      I4 => blk00000001_sig00000251,
      I5 => blk00000001_sig00000252,
      O => blk00000001_sig00000658
    );
  blk00000001_blk000004c7 : LUT6
    generic map(
      INIT => X"8040201008040201"
    )
    port map (
      I0 => blk00000001_sig000002ad,
      I1 => blk00000001_sig000002ae,
      I2 => blk00000001_sig000002a6,
      I3 => blk00000001_sig00000255,
      I4 => blk00000001_sig00000256,
      I5 => blk00000001_sig0000024e,
      O => blk00000001_sig00000657
    );
  blk00000001_blk000004c6 : LUT6
    generic map(
      INIT => X"8008400420021001"
    )
    port map (
      I0 => blk00000001_sig0000027f,
      I1 => blk00000001_sig00000281,
      I2 => blk00000001_sig00000282,
      I3 => blk00000001_sig00000261,
      I4 => blk00000001_sig0000025e,
      I5 => blk00000001_sig00000260,
      O => blk00000001_sig00000656
    );
  blk00000001_blk000004c5 : LUT6
    generic map(
      INIT => X"8040201008040201"
    )
    port map (
      I0 => blk00000001_sig000002ab,
      I1 => blk00000001_sig000002ac,
      I2 => blk00000001_sig000002a8,
      I3 => blk00000001_sig00000253,
      I4 => blk00000001_sig00000254,
      I5 => blk00000001_sig00000250,
      O => blk00000001_sig00000655
    );
  blk00000001_blk000004c4 : LUT5
    generic map(
      INIT => X"90000000"
    )
    port map (
      I0 => blk00000001_sig00000279,
      I1 => blk00000001_sig00000258,
      I2 => blk00000001_sig00000652,
      I3 => blk00000001_sig00000653,
      I4 => blk00000001_sig00000651,
      O => blk00000001_sig00000654
    );
  blk00000001_blk000004c3 : LUT6
    generic map(
      INIT => X"8040201008040201"
    )
    port map (
      I0 => blk00000001_sig0000027b,
      I1 => blk00000001_sig0000027e,
      I2 => blk00000001_sig00000280,
      I3 => blk00000001_sig0000025a,
      I4 => blk00000001_sig0000025d,
      I5 => blk00000001_sig0000025f,
      O => blk00000001_sig00000653
    );
  blk00000001_blk000004c2 : LUT6
    generic map(
      INIT => X"8040080420100201"
    )
    port map (
      I0 => blk00000001_sig000002a5,
      I1 => blk00000001_sig00000283,
      I2 => blk00000001_sig0000027a,
      I3 => blk00000001_sig0000024d,
      I4 => blk00000001_sig00000259,
      I5 => blk00000001_sig00000262,
      O => blk00000001_sig00000652
    );
  blk00000001_blk000004c1 : LUT6
    generic map(
      INIT => X"8008400420021001"
    )
    port map (
      I0 => blk00000001_sig0000027c,
      I1 => blk00000001_sig0000027d,
      I2 => blk00000001_sig000002af,
      I3 => blk00000001_sig00000257,
      I4 => blk00000001_sig0000025b,
      I5 => blk00000001_sig0000025c,
      O => blk00000001_sig00000651
    );
  blk00000001_blk000004c0 : LUT6
    generic map(
      INIT => X"9000000000000000"
    )
    port map (
      I0 => blk00000001_sig000002a4,
      I1 => blk00000001_sig00000257,
      I2 => blk00000001_sig0000064f,
      I3 => blk00000001_sig0000064e,
      I4 => blk00000001_sig00000650,
      I5 => blk00000001_sig0000064d,
      O => blk00000001_sig0000021a
    );
  blk00000001_blk000004bf : LUT6
    generic map(
      INIT => X"8040201008040201"
    )
    port map (
      I0 => blk00000001_sig00000270,
      I1 => blk00000001_sig00000271,
      I2 => blk00000001_sig00000272,
      I3 => blk00000001_sig0000025a,
      I4 => blk00000001_sig0000025b,
      I5 => blk00000001_sig0000025c,
      O => blk00000001_sig00000650
    );
  blk00000001_blk000004be : LUT6
    generic map(
      INIT => X"8020401008020401"
    )
    port map (
      I0 => blk00000001_sig00000277,
      I1 => blk00000001_sig0000029a,
      I2 => blk00000001_sig0000026f,
      I3 => blk00000001_sig0000024d,
      I4 => blk00000001_sig00000261,
      I5 => blk00000001_sig00000259,
      O => blk00000001_sig0000064f
    );
  blk00000001_blk000004bd : LUT6
    generic map(
      INIT => X"8040201008040201"
    )
    port map (
      I0 => blk00000001_sig0000029d,
      I1 => blk00000001_sig00000278,
      I2 => blk00000001_sig0000026e,
      I3 => blk00000001_sig00000250,
      I4 => blk00000001_sig00000262,
      I5 => blk00000001_sig00000258,
      O => blk00000001_sig0000064e
    );
  blk00000001_blk000004bc : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => blk00000001_sig0000064c,
      I1 => blk00000001_sig0000064a,
      I2 => blk00000001_sig0000064b,
      I3 => blk00000001_sig00000649,
      O => blk00000001_sig0000064d
    );
  blk00000001_blk000004bb : LUT6
    generic map(
      INIT => X"8040201008040201"
    )
    port map (
      I0 => blk00000001_sig0000029f,
      I1 => blk00000001_sig000002a2,
      I2 => blk00000001_sig000002a3,
      I3 => blk00000001_sig00000252,
      I4 => blk00000001_sig00000255,
      I5 => blk00000001_sig00000256,
      O => blk00000001_sig0000064c
    );
  blk00000001_blk000004ba : LUT6
    generic map(
      INIT => X"8008400420021001"
    )
    port map (
      I0 => blk00000001_sig00000273,
      I1 => blk00000001_sig00000275,
      I2 => blk00000001_sig0000029e,
      I3 => blk00000001_sig00000251,
      I4 => blk00000001_sig0000025d,
      I5 => blk00000001_sig0000025f,
      O => blk00000001_sig0000064b
    );
  blk00000001_blk000004b9 : LUT6
    generic map(
      INIT => X"8020080240100401"
    )
    port map (
      I0 => blk00000001_sig00000276,
      I1 => blk00000001_sig0000029b,
      I2 => blk00000001_sig0000029c,
      I3 => blk00000001_sig0000024e,
      I4 => blk00000001_sig0000024f,
      I5 => blk00000001_sig00000260,
      O => blk00000001_sig0000064a
    );
  blk00000001_blk000004b8 : LUT6
    generic map(
      INIT => X"8040201008040201"
    )
    port map (
      I0 => blk00000001_sig000002a0,
      I1 => blk00000001_sig000002a1,
      I2 => blk00000001_sig00000274,
      I3 => blk00000001_sig00000253,
      I4 => blk00000001_sig00000254,
      I5 => blk00000001_sig0000025e,
      O => blk00000001_sig00000649
    );
  blk00000001_blk000004b7 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFEFE"
    )
    port map (
      I0 => blk00000001_sig00000648,
      I1 => blk00000001_sig00000646,
      I2 => blk00000001_sig00000645,
      I3 => NlwRenamedSig_OI_intr_status_12_Q,
      I4 => intr_enable(12),
      I5 => blk00000001_sig00000647,
      O => blk00000001_sig0000019d
    );
  blk00000001_blk000004b6 : LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => NlwRenamedSig_OI_intr_status_8_Q,
      I1 => intr_enable(8),
      I2 => NlwRenamedSig_OI_intr_status_7_Q,
      I3 => intr_enable(7),
      I4 => NlwRenamedSig_OI_intr_status_9_Q,
      I5 => intr_enable(9),
      O => blk00000001_sig00000648
    );
  blk00000001_blk000004b5 : LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => NlwRenamedSig_OI_intr_status_3_Q,
      I1 => intr_enable(3),
      I2 => NlwRenamedSig_OI_intr_status_2_Q,
      I3 => intr_enable(2),
      I4 => NlwRenamedSig_OI_intr_status_5_Q,
      I5 => intr_enable(5),
      O => blk00000001_sig00000647
    );
  blk00000001_blk000004b4 : LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => NlwRenamedSig_OI_intr_status_0_Q,
      I1 => intr_enable(0),
      I2 => NlwRenamedSig_OI_intr_status_16_Q,
      I3 => intr_enable(16),
      I4 => NlwRenamedSig_OI_intr_status_1_Q,
      I5 => intr_enable(1),
      O => blk00000001_sig00000646
    );
  blk00000001_blk000004b3 : LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => NlwRenamedSig_OI_intr_status_14_Q,
      I1 => intr_enable(14),
      I2 => NlwRenamedSig_OI_intr_status_13_Q,
      I3 => intr_enable(13),
      I4 => NlwRenamedSig_OI_intr_status_15_Q,
      I5 => intr_enable(15),
      O => blk00000001_sig00000645
    );
  blk00000001_blk000004b2 : LUT6
    generic map(
      INIT => X"AAAAAAAA00800800"
    )
    port map (
      I0 => blk00000001_sig000001be,
      I1 => blk00000001_sig000001c9,
      I2 => NlwRenamedSig_OI_det_status_25_Q,
      I3 => blk00000001_sig000001c3,
      I4 => active_video_in,
      I5 => blk00000001_sig00000644,
      O => blk00000001_sig000001a0
    );
  blk00000001_blk000004b1 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => NlwRenamedSig_OI_intr_status_9_Q,
      I1 => intr_clr(9),
      I2 => blk00000001_sig000001d5,
      O => blk00000001_sig00000644
    );
  blk00000001_blk000004b0 : LUT6
    generic map(
      INIT => X"AAAAAAAA00800800"
    )
    port map (
      I0 => blk00000001_sig000001be,
      I1 => blk00000001_sig000001ca,
      I2 => NlwRenamedSig_OI_det_status_23_Q,
      I3 => blk00000001_sig000001c4,
      I4 => vblank_in,
      I5 => blk00000001_sig00000643,
      O => blk00000001_sig000001a1
    );
  blk00000001_blk000004af : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => NlwRenamedSig_OI_intr_status_8_Q,
      I1 => intr_clr(8),
      I2 => blk00000001_sig000001d4,
      O => blk00000001_sig00000643
    );
  blk00000001_blk000004ae : LUT5
    generic map(
      INIT => X"8808AAAA"
    )
    port map (
      I0 => blk00000001_sig000001c2,
      I1 => NlwRenamedSig_OI_intr_status_13_Q,
      I2 => intr_clr(13),
      I3 => blk00000001_sig000001d7,
      I4 => blk00000001_sig00000642,
      O => blk00000001_sig000001a3
    );
  blk00000001_blk000004ad : LUT3
    generic map(
      INIT => X"BD"
    )
    port map (
      I0 => blk00000001_sig000001c5,
      I1 => NlwRenamedSig_OI_active_video_out,
      I2 => control(25),
      O => blk00000001_sig00000642
    );
  blk00000001_blk000004ac : LUT5
    generic map(
      INIT => X"8808AAAA"
    )
    port map (
      I0 => blk00000001_sig000001c2,
      I1 => NlwRenamedSig_OI_intr_status_12_Q,
      I2 => intr_clr(12),
      I3 => blk00000001_sig000001d6,
      I4 => blk00000001_sig00000641,
      O => blk00000001_sig000001a4
    );
  blk00000001_blk000004ab : LUT3
    generic map(
      INIT => X"BD"
    )
    port map (
      I0 => blk00000001_sig000001c6,
      I1 => NlwRenamedSig_OI_vblank_out,
      I2 => control(23),
      O => blk00000001_sig00000641
    );
  blk00000001_blk000004aa : LUT5
    generic map(
      INIT => X"8808AAAA"
    )
    port map (
      I0 => blk00000001_sig000001be,
      I1 => NlwRenamedSig_OI_intr_status_5_Q,
      I2 => intr_clr(5),
      I3 => blk00000001_sig000001d2,
      I4 => blk00000001_sig00000640,
      O => blk00000001_sig000001a9
    );
  blk00000001_blk000004a9 : LUT3
    generic map(
      INIT => X"BD"
    )
    port map (
      I0 => blk00000001_sig000001b4,
      I1 => blk00000001_sig000001c9,
      I2 => control(3),
      O => blk00000001_sig00000640
    );
  blk00000001_blk000004a8 : LUT5
    generic map(
      INIT => X"8808AAAA"
    )
    port map (
      I0 => blk00000001_sig000001be,
      I1 => NlwRenamedSig_OI_intr_status_1_Q,
      I2 => intr_clr(1),
      I3 => blk00000001_sig000001cf,
      I4 => blk00000001_sig0000063f,
      O => blk00000001_sig000001a6
    );
  blk00000001_blk000004a7 : LUT3
    generic map(
      INIT => X"BD"
    )
    port map (
      I0 => blk00000001_sig000001b7,
      I1 => blk00000001_sig000001cc,
      I2 => control(3),
      O => blk00000001_sig0000063f
    );
  blk00000001_blk000004a6 : LUT6
    generic map(
      INIT => X"AAAA200820082008"
    )
    port map (
      I0 => blk00000001_sig000001be,
      I1 => blk00000001_sig000001b5,
      I2 => blk00000001_sig000001ca,
      I3 => control(3),
      I4 => blk00000001_sig0000063e,
      I5 => NlwRenamedSig_OI_intr_status_3_Q,
      O => blk00000001_sig000001a8
    );
  blk00000001_blk000004a5 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => intr_clr(3),
      I1 => blk00000001_sig000001d1,
      O => blk00000001_sig0000063e
    );
  blk00000001_blk000004a4 : LUT6
    generic map(
      INIT => X"AAAA200820082008"
    )
    port map (
      I0 => blk00000001_sig000001be,
      I1 => blk00000001_sig000001b6,
      I2 => blk00000001_sig000001cb,
      I3 => control(3),
      I4 => blk00000001_sig0000063d,
      I5 => NlwRenamedSig_OI_intr_status_2_Q,
      O => blk00000001_sig000001a7
    );
  blk00000001_blk000004a3 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => intr_clr(2),
      I1 => blk00000001_sig000001d0,
      O => blk00000001_sig0000063d
    );
  blk00000001_blk000004a2 : LUT5
    generic map(
      INIT => X"8808AAAA"
    )
    port map (
      I0 => blk00000001_sig000001be,
      I1 => NlwRenamedSig_OI_intr_status_0_Q,
      I2 => intr_clr(0),
      I3 => blk00000001_sig000001ce,
      I4 => blk00000001_sig0000063c,
      O => blk00000001_sig000001a5
    );
  blk00000001_blk000004a1 : LUT3
    generic map(
      INIT => X"BD"
    )
    port map (
      I0 => blk00000001_sig000001b8,
      I1 => blk00000001_sig000001cd,
      I2 => control(3),
      O => blk00000001_sig0000063c
    );
  blk00000001_blk000004a0 : LUT5
    generic map(
      INIT => X"8808AAAA"
    )
    port map (
      I0 => blk00000001_sig000001be,
      I1 => NlwRenamedSig_OI_intr_status_7_Q,
      I2 => intr_clr(7),
      I3 => blk00000001_sig000001d3,
      I4 => blk00000001_sig0000063b,
      O => blk00000001_sig000001aa
    );
  blk00000001_blk0000049f : LUT3
    generic map(
      INIT => X"BD"
    )
    port map (
      I0 => blk00000001_sig000001b9,
      I1 => blk00000001_sig000001ba,
      I2 => control(3),
      O => blk00000001_sig0000063b
    );
  blk00000001_blk0000049e : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => blk00000001_sig00000634,
      I1 => blk00000001_sig00000632,
      I2 => blk00000001_sig000001b3,
      O => blk00000001_sig00000630
    );
  blk00000001_blk0000049d : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => blk00000001_sig00000635,
      I1 => blk00000001_sig00000639,
      O => blk00000001_sig0000062f
    );
  blk00000001_blk0000049c : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => blk00000001_sig00000633,
      I1 => blk00000001_sig00000635,
      I2 => blk00000001_sig00000634,
      I3 => blk00000001_sig0000061d,
      O => blk00000001_sig0000062e
    );
  blk00000001_blk0000049b : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => blk00000001_sig00000634,
      I1 => blk00000001_sig00000633,
      I2 => blk00000001_sig0000061d,
      O => blk00000001_sig0000062d
    );
  blk00000001_blk0000049a : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => blk00000001_sig00000635,
      I1 => blk00000001_sig00000639,
      O => blk00000001_sig0000062c
    );
  blk00000001_blk00000499 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => blk00000001_sig00000622,
      I1 => blk00000001_sig00000623,
      O => blk00000001_sig00000625
    );
  blk00000001_blk00000498 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => blk00000001_sig00000621,
      I1 => blk00000001_sig00000623,
      I2 => blk00000001_sig00000622,
      O => blk00000001_sig00000626
    );
  blk00000001_blk00000497 : LUT3
    generic map(
      INIT => X"9C"
    )
    port map (
      I0 => blk00000001_sig0000061d,
      I1 => blk00000001_sig00000638,
      I2 => blk00000001_sig00000633,
      O => blk00000001_sig0000062b
    );
  blk00000001_blk00000496 : LUT5
    generic map(
      INIT => X"00008000"
    )
    port map (
      I0 => blk00000001_sig00000620,
      I1 => blk00000001_sig0000061f,
      I2 => blk00000001_sig0000061e,
      I3 => blk00000001_sig0000061d,
      I4 => blk00000001_sig0000061b,
      O => blk00000001_sig0000061c
    );
  blk00000001_blk00000495 : LUT5
    generic map(
      INIT => X"AAAA6AAA"
    )
    port map (
      I0 => blk00000001_sig0000061d,
      I1 => blk00000001_sig00000620,
      I2 => blk00000001_sig0000061f,
      I3 => blk00000001_sig0000061e,
      I4 => blk00000001_sig0000061b,
      O => blk00000001_sig0000062a
    );
  blk00000001_blk00000494 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => blk00000001_sig00000623,
      I1 => blk00000001_sig00000622,
      I2 => blk00000001_sig00000621,
      O => blk00000001_sig0000061b
    );
  blk00000001_blk00000493 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_htotal(3),
      I1 => NlwRenamedSig_OI_det_htotal(2),
      O => blk00000001_sig000004ff
    );
  blk00000001_blk00000492 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0active_start(9),
      I2 => blk00000001_sig00000448,
      O => blk00000001_sig000004d8
    );
  blk00000001_blk00000491 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0active_start(8),
      I2 => blk00000001_sig00000449,
      O => blk00000001_sig000004d7
    );
  blk00000001_blk00000490 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0active_start(7),
      I2 => blk00000001_sig0000044a,
      O => blk00000001_sig000004d6
    );
  blk00000001_blk0000048f : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0active_start(6),
      I2 => blk00000001_sig0000044b,
      O => blk00000001_sig000004d5
    );
  blk00000001_blk0000048e : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0active_start(5),
      I2 => blk00000001_sig0000044c,
      O => blk00000001_sig000004d4
    );
  blk00000001_blk0000048d : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0active_start(4),
      I2 => blk00000001_sig0000044d,
      O => blk00000001_sig000004d3
    );
  blk00000001_blk0000048c : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0active_start(3),
      I2 => blk00000001_sig0000044e,
      O => blk00000001_sig000004d2
    );
  blk00000001_blk0000048b : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0active_start(2),
      I2 => blk00000001_sig0000044f,
      O => blk00000001_sig000004d1
    );
  blk00000001_blk0000048a : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0active_start(1),
      I2 => blk00000001_sig00000450,
      O => blk00000001_sig000004d0
    );
  blk00000001_blk00000489 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0active_start(10),
      I2 => blk00000001_sig00000447,
      O => blk00000001_sig000004d9
    );
  blk00000001_blk00000488 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0active_start(0),
      I2 => blk00000001_sig00000451,
      O => blk00000001_sig000004cf
    );
  blk00000001_blk00000487 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0fp_start(9),
      I2 => blk00000001_sig00000448,
      O => blk00000001_sig000004ee
    );
  blk00000001_blk00000486 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0fp_start(8),
      I2 => blk00000001_sig00000449,
      O => blk00000001_sig000004ed
    );
  blk00000001_blk00000485 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0fp_start(7),
      I2 => blk00000001_sig0000044a,
      O => blk00000001_sig000004ec
    );
  blk00000001_blk00000484 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0fp_start(6),
      I2 => blk00000001_sig0000044b,
      O => blk00000001_sig000004eb
    );
  blk00000001_blk00000483 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0fp_start(5),
      I2 => blk00000001_sig0000044c,
      O => blk00000001_sig000004ea
    );
  blk00000001_blk00000482 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0fp_start(4),
      I2 => blk00000001_sig0000044d,
      O => blk00000001_sig000004e9
    );
  blk00000001_blk00000481 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0fp_start(3),
      I2 => blk00000001_sig0000044e,
      O => blk00000001_sig000004e8
    );
  blk00000001_blk00000480 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0fp_start(2),
      I2 => blk00000001_sig0000044f,
      O => blk00000001_sig000004e7
    );
  blk00000001_blk0000047f : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0fp_start(1),
      I2 => blk00000001_sig00000450,
      O => blk00000001_sig000004e6
    );
  blk00000001_blk0000047e : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0fp_start(10),
      I2 => blk00000001_sig00000447,
      O => blk00000001_sig000004ef
    );
  blk00000001_blk0000047d : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0fp_start(0),
      I2 => blk00000001_sig00000451,
      O => blk00000001_sig000004e5
    );
  blk00000001_blk0000047c : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0blank_hstart(9),
      I2 => blk00000001_sig0000054b,
      O => blk00000001_sig000004e3
    );
  blk00000001_blk0000047b : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0blank_hstart(8),
      I2 => blk00000001_sig0000054a,
      O => blk00000001_sig000004e2
    );
  blk00000001_blk0000047a : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0blank_hstart(7),
      I2 => blk00000001_sig00000549,
      O => blk00000001_sig000004e1
    );
  blk00000001_blk00000479 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0blank_hstart(6),
      I2 => blk00000001_sig00000548,
      O => blk00000001_sig000004e0
    );
  blk00000001_blk00000478 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0blank_hstart(5),
      I2 => blk00000001_sig00000547,
      O => blk00000001_sig000004df
    );
  blk00000001_blk00000477 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0blank_hstart(4),
      I2 => blk00000001_sig00000546,
      O => blk00000001_sig000004de
    );
  blk00000001_blk00000476 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0blank_hstart(3),
      I2 => blk00000001_sig00000545,
      O => blk00000001_sig000004dd
    );
  blk00000001_blk00000475 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0blank_hstart(2),
      I2 => blk00000001_sig00000544,
      O => blk00000001_sig000004dc
    );
  blk00000001_blk00000474 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0blank_hstart(1),
      I2 => blk00000001_sig00000543,
      O => blk00000001_sig000004db
    );
  blk00000001_blk00000473 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0blank_hstart(10),
      I2 => blk00000001_sig0000054c,
      O => blk00000001_sig000004e4
    );
  blk00000001_blk00000472 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0blank_hstart(0),
      I2 => blk00000001_sig00000542,
      O => blk00000001_sig000004da
    );
  blk00000001_blk00000471 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0blank_hend(9),
      I2 => blk00000001_sig0000054b,
      O => blk00000001_sig000004cd
    );
  blk00000001_blk00000470 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0blank_hend(8),
      I2 => blk00000001_sig0000054a,
      O => blk00000001_sig000004cc
    );
  blk00000001_blk0000046f : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0blank_hend(7),
      I2 => blk00000001_sig00000549,
      O => blk00000001_sig000004cb
    );
  blk00000001_blk0000046e : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0blank_hend(6),
      I2 => blk00000001_sig00000548,
      O => blk00000001_sig000004ca
    );
  blk00000001_blk0000046d : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0blank_hend(5),
      I2 => blk00000001_sig00000547,
      O => blk00000001_sig000004c9
    );
  blk00000001_blk0000046c : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0blank_hend(4),
      I2 => blk00000001_sig00000546,
      O => blk00000001_sig000004c8
    );
  blk00000001_blk0000046b : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0blank_hend(3),
      I2 => blk00000001_sig00000545,
      O => blk00000001_sig000004c7
    );
  blk00000001_blk0000046a : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0blank_hend(2),
      I2 => blk00000001_sig00000544,
      O => blk00000001_sig000004c6
    );
  blk00000001_blk00000469 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0blank_hend(1),
      I2 => blk00000001_sig00000543,
      O => blk00000001_sig000004c5
    );
  blk00000001_blk00000468 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0blank_hend(10),
      I2 => blk00000001_sig0000054c,
      O => blk00000001_sig000004ce
    );
  blk00000001_blk00000467 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig000005fc,
      I1 => NlwRenamedSig_OI_det_v0blank_hend(0),
      I2 => blk00000001_sig00000542,
      O => blk00000001_sig000004c4
    );
  blk00000001_blk00000466 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => active_video_in,
      I1 => NlwRenamedSig_OI_det_status_25_Q,
      O => blk00000001_sig000004bd
    );
  blk00000001_blk00000465 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig00000429,
      I1 => blk00000001_sig00000448,
      I2 => blk00000001_sig00000613,
      O => blk00000001_sig000004fc
    );
  blk00000001_blk00000464 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig00000429,
      I1 => blk00000001_sig00000449,
      I2 => blk00000001_sig00000612,
      O => blk00000001_sig000004fb
    );
  blk00000001_blk00000463 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig00000429,
      I1 => blk00000001_sig0000044a,
      I2 => blk00000001_sig00000611,
      O => blk00000001_sig000004fa
    );
  blk00000001_blk00000462 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig00000429,
      I1 => blk00000001_sig0000044b,
      I2 => blk00000001_sig00000610,
      O => blk00000001_sig000004f9
    );
  blk00000001_blk00000461 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig00000429,
      I1 => blk00000001_sig0000044c,
      I2 => blk00000001_sig0000060f,
      O => blk00000001_sig000004f8
    );
  blk00000001_blk00000460 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig00000429,
      I1 => blk00000001_sig0000044d,
      I2 => blk00000001_sig0000060e,
      O => blk00000001_sig000004f7
    );
  blk00000001_blk0000045f : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig00000429,
      I1 => blk00000001_sig0000044e,
      I2 => blk00000001_sig0000060d,
      O => blk00000001_sig000004f6
    );
  blk00000001_blk0000045e : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig00000429,
      I1 => blk00000001_sig0000044f,
      I2 => blk00000001_sig0000060c,
      O => blk00000001_sig000004f5
    );
  blk00000001_blk0000045d : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig00000429,
      I1 => blk00000001_sig00000450,
      I2 => blk00000001_sig0000060b,
      O => blk00000001_sig000004f4
    );
  blk00000001_blk0000045c : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig00000429,
      I1 => blk00000001_sig00000447,
      I2 => blk00000001_sig00000614,
      O => blk00000001_sig000004fd
    );
  blk00000001_blk0000045b : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => blk00000001_sig00000429,
      I1 => blk00000001_sig00000451,
      I2 => blk00000001_sig0000060a,
      O => blk00000001_sig000004f3
    );
  blk00000001_blk0000045a : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig00000606,
      O => blk00000001_sig000004a0
    );
  blk00000001_blk00000459 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig00000609,
      O => blk00000001_sig00000486
    );
  blk00000001_blk00000458 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig00000602,
      O => blk00000001_sig0000046c
    );
  blk00000001_blk00000457 : LUT4
    generic map(
      INIT => X"08AA"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig000005fe,
      I2 => blk00000001_sig000005fd,
      I3 => blk00000001_sig000005fc,
      O => blk00000001_sig000004a2
    );
  blk00000001_blk00000456 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => blk00000001_sig000005fd,
      I1 => blk00000001_sig000005fe,
      I2 => ce,
      O => blk00000001_sig000003a9
    );
  blk00000001_blk00000455 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => blk00000001_sig00000608,
      I1 => blk00000001_sig00000609,
      I2 => ce,
      O => blk00000001_sig000003ab
    );
  blk00000001_blk00000454 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_status_22_Q,
      I1 => vsync_in,
      O => blk00000001_sig000004bf
    );
  blk00000001_blk00000453 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_status_23_Q,
      I1 => vblank_in,
      O => blk00000001_sig000004be
    );
  blk00000001_blk00000452 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hsync_in,
      I1 => NlwRenamedSig_OI_det_status_20_Q,
      O => blk00000001_sig000004c1
    );
  blk00000001_blk00000451 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => blk00000001_sig00000619,
      I1 => ce,
      I2 => blk00000001_sig000004f0,
      O => blk00000001_sig000003ad
    );
  blk00000001_blk00000450 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_status_21_Q,
      I1 => hblank_in,
      O => blk00000001_sig000004c0
    );
  blk00000001_blk0000044f : LUT5
    generic map(
      INIT => X"060A0000"
    )
    port map (
      I0 => blk00000001_sig0000044f,
      I1 => blk00000001_sig00000450,
      I2 => blk00000001_sig0000054e,
      I3 => blk00000001_sig00000451,
      I4 => blk00000001_sig000003a5,
      O => blk00000001_sig000004ad
    );
  blk00000001_blk0000044e : LUT4
    generic map(
      INIT => X"1200"
    )
    port map (
      I0 => blk00000001_sig00000450,
      I1 => blk00000001_sig0000054e,
      I2 => blk00000001_sig00000451,
      I3 => blk00000001_sig000003a5,
      O => blk00000001_sig000004ac
    );
  blk00000001_blk0000044d : LUT5
    generic map(
      INIT => X"0A060000"
    )
    port map (
      I0 => blk00000001_sig0000044d,
      I1 => blk00000001_sig0000044e,
      I2 => blk00000001_sig0000054e,
      I3 => blk00000001_sig000003a6,
      I4 => blk00000001_sig000003a5,
      O => blk00000001_sig000004af
    );
  blk00000001_blk0000044c : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => blk00000001_sig0000044f,
      I1 => blk00000001_sig00000451,
      I2 => blk00000001_sig00000450,
      O => blk00000001_sig000003a6
    );
  blk00000001_blk0000044b : LUT5
    generic map(
      INIT => X"0A060000"
    )
    port map (
      I0 => blk00000001_sig0000044a,
      I1 => blk00000001_sig0000044b,
      I2 => blk00000001_sig0000054e,
      I3 => blk00000001_sig000003a7,
      I4 => blk00000001_sig000003a5,
      O => blk00000001_sig000004b2
    );
  blk00000001_blk0000044a : LUT4
    generic map(
      INIT => X"2100"
    )
    port map (
      I0 => blk00000001_sig0000044b,
      I1 => blk00000001_sig0000054e,
      I2 => blk00000001_sig000003a7,
      I3 => blk00000001_sig000003a5,
      O => blk00000001_sig000004b1
    );
  blk00000001_blk00000449 : LUT5
    generic map(
      INIT => X"0A000600"
    )
    port map (
      I0 => blk00000001_sig00000448,
      I1 => blk00000001_sig00000449,
      I2 => blk00000001_sig0000054e,
      I3 => blk00000001_sig000003a5,
      I4 => blk00000001_sig000003a8,
      O => blk00000001_sig000004b4
    );
  blk00000001_blk00000448 : LUT6
    generic map(
      INIT => X"00AA0000006A0000"
    )
    port map (
      I0 => blk00000001_sig00000447,
      I1 => blk00000001_sig00000448,
      I2 => blk00000001_sig00000449,
      I3 => blk00000001_sig0000054e,
      I4 => blk00000001_sig000003a5,
      I5 => blk00000001_sig000003a8,
      O => blk00000001_sig000004b5
    );
  blk00000001_blk00000447 : LUT4
    generic map(
      INIT => X"2010"
    )
    port map (
      I0 => blk00000001_sig00000449,
      I1 => blk00000001_sig0000054e,
      I2 => blk00000001_sig000003a5,
      I3 => blk00000001_sig000003a8,
      O => blk00000001_sig000004b3
    );
  blk00000001_blk00000446 : LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig00000601,
      I2 => blk00000001_sig00000602,
      O => blk00000001_sig00000452
    );
  blk00000001_blk00000445 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => blk00000001_sig000005fe,
      I1 => ce,
      I2 => blk00000001_sig000005fd,
      O => blk00000001_sig000003ac
    );
  blk00000001_blk00000444 : LUT5
    generic map(
      INIT => X"AAAAA9AA"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_htotal(9),
      I1 => NlwRenamedSig_OI_det_htotal(6),
      I2 => NlwRenamedSig_OI_det_htotal(8),
      I3 => blk00000001_sig000003a4,
      I4 => NlwRenamedSig_OI_det_htotal(7),
      O => blk00000001_sig00000505
    );
  blk00000001_blk00000443 : LUT6
    generic map(
      INIT => X"AAAAAAAAAAA9AAAA"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_htotal(10),
      I1 => NlwRenamedSig_OI_det_htotal(6),
      I2 => NlwRenamedSig_OI_det_htotal(8),
      I3 => NlwRenamedSig_OI_det_htotal(7),
      I4 => blk00000001_sig000003a4,
      I5 => NlwRenamedSig_OI_det_htotal(9),
      O => blk00000001_sig00000506
    );
  blk00000001_blk00000442 : LUT4
    generic map(
      INIT => X"AA9A"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_htotal(8),
      I1 => NlwRenamedSig_OI_det_htotal(6),
      I2 => blk00000001_sig000003a4,
      I3 => NlwRenamedSig_OI_det_htotal(7),
      O => blk00000001_sig00000504
    );
  blk00000001_blk00000441 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_htotal(2),
      I1 => NlwRenamedSig_OI_det_htotal(3),
      I2 => NlwRenamedSig_OI_det_htotal(4),
      I3 => NlwRenamedSig_OI_det_htotal(5),
      O => blk00000001_sig000003a4
    );
  blk00000001_blk00000440 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => blk00000001_sig00000609,
      I1 => blk00000001_sig00000608,
      I2 => ce,
      O => blk00000001_sig000003aa
    );
  blk00000001_blk0000043f : LUT5
    generic map(
      INIT => X"FFFFAAA8"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_v0total(6),
      I1 => NlwRenamedSig_OI_det_v0total(4),
      I2 => NlwRenamedSig_OI_det_v0total(5),
      I3 => blk00000001_sig000003a2,
      I4 => blk00000001_sig000003a3,
      O => blk00000001_sig000004f2
    );
  blk00000001_blk0000043e : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_v0total(10),
      I1 => NlwRenamedSig_OI_det_v0total(7),
      I2 => NlwRenamedSig_OI_det_v0total(8),
      I3 => NlwRenamedSig_OI_det_v0total(9),
      O => blk00000001_sig000003a3
    );
  blk00000001_blk0000043d : LUT5
    generic map(
      INIT => X"FFFFFEFA"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_v0total(6),
      I1 => NlwRenamedSig_OI_det_v0total(4),
      I2 => NlwRenamedSig_OI_det_v0total(5),
      I3 => blk00000001_sig000003a2,
      I4 => blk00000001_sig000003a3,
      O => blk00000001_sig000004f1
    );
  blk00000001_blk0000043c : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_v0total(0),
      I1 => NlwRenamedSig_OI_det_v0total(1),
      I2 => NlwRenamedSig_OI_det_v0total(2),
      I3 => NlwRenamedSig_OI_det_v0total(3),
      O => blk00000001_sig000003a2
    );
  blk00000001_blk0000043b : LUT4
    generic map(
      INIT => X"CCC9"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_htotal(4),
      I1 => NlwRenamedSig_OI_det_htotal(5),
      I2 => NlwRenamedSig_OI_det_htotal(2),
      I3 => NlwRenamedSig_OI_det_htotal(3),
      O => blk00000001_sig00000501
    );
  blk00000001_blk0000043a : LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_htotal(4),
      I1 => NlwRenamedSig_OI_det_htotal(2),
      I2 => NlwRenamedSig_OI_det_htotal(3),
      O => blk00000001_sig00000500
    );
  blk00000001_blk00000439 : LUT6
    generic map(
      INIT => X"00AA006A00000000"
    )
    port map (
      I0 => blk00000001_sig0000044c,
      I1 => blk00000001_sig0000044d,
      I2 => blk00000001_sig0000044e,
      I3 => blk00000001_sig0000054e,
      I4 => blk00000001_sig000003a6,
      I5 => blk00000001_sig000003a5,
      O => blk00000001_sig000004b0
    );
  blk00000001_blk00000438 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => blk00000001_sig0000061a,
      I1 => ce,
      I2 => blk00000001_sig000004c3,
      O => blk00000001_sig000004a3
    );
  blk00000001_blk00000437 : LUT6
    generic map(
      INIT => X"FCFDFEFFFFFFFFFF"
    )
    port map (
      I0 => blk00000001_sig00000604,
      I1 => blk00000001_sig0000061a,
      I2 => blk00000001_sig00000619,
      I3 => blk00000001_sig000004c1,
      I4 => blk00000001_sig000004c0,
      I5 => blk00000001_sig000004c3,
      O => blk00000001_sig000003a5
    );
  blk00000001_blk00000436 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(10),
      I1 => NlwRenamedSig_OI_det_hsync_start(9),
      I2 => gen_hsync_start(9),
      O => blk00000001_sig0000038a
    );
  blk00000001_blk00000435 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(10),
      I1 => NlwRenamedSig_OI_det_hsync_start(8),
      I2 => gen_hsync_start(8),
      O => blk00000001_sig00000389
    );
  blk00000001_blk00000434 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(10),
      I1 => NlwRenamedSig_OI_det_hsync_start(7),
      I2 => gen_hsync_start(7),
      O => blk00000001_sig00000388
    );
  blk00000001_blk00000433 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(10),
      I1 => NlwRenamedSig_OI_det_hsync_start(6),
      I2 => gen_hsync_start(6),
      O => blk00000001_sig00000387
    );
  blk00000001_blk00000432 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(10),
      I1 => NlwRenamedSig_OI_det_hsync_start(5),
      I2 => gen_hsync_start(5),
      O => blk00000001_sig00000386
    );
  blk00000001_blk00000431 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(10),
      I1 => NlwRenamedSig_OI_det_hsync_start(4),
      I2 => gen_hsync_start(4),
      O => blk00000001_sig00000385
    );
  blk00000001_blk00000430 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(10),
      I1 => NlwRenamedSig_OI_det_hsync_start(3),
      I2 => gen_hsync_start(3),
      O => blk00000001_sig00000384
    );
  blk00000001_blk0000042f : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(10),
      I1 => NlwRenamedSig_OI_det_hsync_start(2),
      I2 => gen_hsync_start(2),
      O => blk00000001_sig00000383
    );
  blk00000001_blk0000042e : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(10),
      I1 => NlwRenamedSig_OI_det_hsync_start(1),
      I2 => gen_hsync_start(1),
      O => blk00000001_sig00000382
    );
  blk00000001_blk0000042d : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(10),
      I1 => NlwRenamedSig_OI_det_hsync_start(10),
      I2 => gen_hsync_start(10),
      O => blk00000001_sig0000038b
    );
  blk00000001_blk0000042c : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(10),
      I1 => NlwRenamedSig_OI_det_hsync_start(0),
      I2 => gen_hsync_start(0),
      O => blk00000001_sig00000381
    );
  blk00000001_blk0000042b : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(8),
      I1 => NlwRenamedSig_OI_det_htotal(9),
      I2 => gen_htotal(9),
      O => blk00000001_sig000003a0
    );
  blk00000001_blk0000042a : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(8),
      I1 => NlwRenamedSig_OI_det_htotal(8),
      I2 => gen_htotal(8),
      O => blk00000001_sig0000039f
    );
  blk00000001_blk00000429 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(8),
      I1 => NlwRenamedSig_OI_det_htotal(7),
      I2 => gen_htotal(7),
      O => blk00000001_sig0000039e
    );
  blk00000001_blk00000428 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(8),
      I1 => NlwRenamedSig_OI_det_htotal(6),
      I2 => gen_htotal(6),
      O => blk00000001_sig0000039d
    );
  blk00000001_blk00000427 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(8),
      I1 => NlwRenamedSig_OI_det_htotal(5),
      I2 => gen_htotal(5),
      O => blk00000001_sig0000039c
    );
  blk00000001_blk00000426 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(8),
      I1 => NlwRenamedSig_OI_det_htotal(4),
      I2 => gen_htotal(4),
      O => blk00000001_sig0000039b
    );
  blk00000001_blk00000425 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(8),
      I1 => NlwRenamedSig_OI_det_htotal(3),
      I2 => gen_htotal(3),
      O => blk00000001_sig0000039a
    );
  blk00000001_blk00000424 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(8),
      I1 => NlwRenamedSig_OI_det_htotal(2),
      I2 => gen_htotal(2),
      O => blk00000001_sig00000399
    );
  blk00000001_blk00000423 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(8),
      I1 => NlwRenamedSig_OI_det_htotal(1),
      I2 => gen_htotal(1),
      O => blk00000001_sig00000398
    );
  blk00000001_blk00000422 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(8),
      I1 => NlwRenamedSig_OI_det_htotal(10),
      I2 => gen_htotal(10),
      O => blk00000001_sig000003a1
    );
  blk00000001_blk00000421 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(8),
      I1 => NlwRenamedSig_OI_det_htotal(0),
      I2 => gen_htotal(0),
      O => blk00000001_sig00000397
    );
  blk00000001_blk00000420 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(9),
      I1 => NlwRenamedSig_OI_det_hfp_start(9),
      I2 => gen_hfp_start(9),
      O => blk00000001_sig00000395
    );
  blk00000001_blk0000041f : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(9),
      I1 => NlwRenamedSig_OI_det_hfp_start(8),
      I2 => gen_hfp_start(8),
      O => blk00000001_sig00000394
    );
  blk00000001_blk0000041e : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(9),
      I1 => NlwRenamedSig_OI_det_hfp_start(7),
      I2 => gen_hfp_start(7),
      O => blk00000001_sig00000393
    );
  blk00000001_blk0000041d : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(9),
      I1 => NlwRenamedSig_OI_det_hfp_start(6),
      I2 => gen_hfp_start(6),
      O => blk00000001_sig00000392
    );
  blk00000001_blk0000041c : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(9),
      I1 => NlwRenamedSig_OI_det_hfp_start(5),
      I2 => gen_hfp_start(5),
      O => blk00000001_sig00000391
    );
  blk00000001_blk0000041b : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(9),
      I1 => NlwRenamedSig_OI_det_hfp_start(4),
      I2 => gen_hfp_start(4),
      O => blk00000001_sig00000390
    );
  blk00000001_blk0000041a : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(9),
      I1 => NlwRenamedSig_OI_det_hfp_start(3),
      I2 => gen_hfp_start(3),
      O => blk00000001_sig0000038f
    );
  blk00000001_blk00000419 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(9),
      I1 => NlwRenamedSig_OI_det_hfp_start(2),
      I2 => gen_hfp_start(2),
      O => blk00000001_sig0000038e
    );
  blk00000001_blk00000418 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(9),
      I1 => NlwRenamedSig_OI_det_hfp_start(1),
      I2 => gen_hfp_start(1),
      O => blk00000001_sig0000038d
    );
  blk00000001_blk00000417 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(9),
      I1 => NlwRenamedSig_OI_det_hfp_start(10),
      I2 => gen_hfp_start(10),
      O => blk00000001_sig00000396
    );
  blk00000001_blk00000416 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(9),
      I1 => NlwRenamedSig_OI_det_hfp_start(0),
      I2 => gen_hfp_start(0),
      O => blk00000001_sig0000038c
    );
  blk00000001_blk00000415 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(11),
      I1 => NlwRenamedSig_OI_det_hbp_start(9),
      I2 => gen_hbp_start(9),
      O => blk00000001_sig0000037f
    );
  blk00000001_blk00000414 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(11),
      I1 => NlwRenamedSig_OI_det_hbp_start(8),
      I2 => gen_hbp_start(8),
      O => blk00000001_sig0000037e
    );
  blk00000001_blk00000413 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(11),
      I1 => NlwRenamedSig_OI_det_hbp_start(7),
      I2 => gen_hbp_start(7),
      O => blk00000001_sig0000037d
    );
  blk00000001_blk00000412 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(11),
      I1 => NlwRenamedSig_OI_det_hbp_start(6),
      I2 => gen_hbp_start(6),
      O => blk00000001_sig0000037c
    );
  blk00000001_blk00000411 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(11),
      I1 => NlwRenamedSig_OI_det_hbp_start(5),
      I2 => gen_hbp_start(5),
      O => blk00000001_sig0000037b
    );
  blk00000001_blk00000410 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(11),
      I1 => NlwRenamedSig_OI_det_hbp_start(4),
      I2 => gen_hbp_start(4),
      O => blk00000001_sig0000037a
    );
  blk00000001_blk0000040f : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(11),
      I1 => NlwRenamedSig_OI_det_hbp_start(3),
      I2 => gen_hbp_start(3),
      O => blk00000001_sig00000379
    );
  blk00000001_blk0000040e : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(11),
      I1 => NlwRenamedSig_OI_det_hbp_start(2),
      I2 => gen_hbp_start(2),
      O => blk00000001_sig00000378
    );
  blk00000001_blk0000040d : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(11),
      I1 => NlwRenamedSig_OI_det_hbp_start(1),
      I2 => gen_hbp_start(1),
      O => blk00000001_sig00000377
    );
  blk00000001_blk0000040c : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(11),
      I1 => NlwRenamedSig_OI_det_hbp_start(10),
      I2 => gen_hbp_start(10),
      O => blk00000001_sig00000380
    );
  blk00000001_blk0000040b : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(11),
      I1 => NlwRenamedSig_OI_det_hbp_start(0),
      I2 => gen_hbp_start(0),
      O => blk00000001_sig00000376
    );
  blk00000001_blk0000040a : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(12),
      I1 => NlwRenamedSig_OI_det_hactive_start(9),
      I2 => gen_hactive_start(9),
      O => blk00000001_sig00000374
    );
  blk00000001_blk00000409 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(12),
      I1 => NlwRenamedSig_OI_det_hactive_start(8),
      I2 => gen_hactive_start(8),
      O => blk00000001_sig00000373
    );
  blk00000001_blk00000408 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(12),
      I1 => NlwRenamedSig_OI_det_hactive_start(7),
      I2 => gen_hactive_start(7),
      O => blk00000001_sig00000372
    );
  blk00000001_blk00000407 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(12),
      I1 => NlwRenamedSig_OI_det_hactive_start(6),
      I2 => gen_hactive_start(6),
      O => blk00000001_sig00000371
    );
  blk00000001_blk00000406 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(12),
      I1 => NlwRenamedSig_OI_det_hactive_start(5),
      I2 => gen_hactive_start(5),
      O => blk00000001_sig00000370
    );
  blk00000001_blk00000405 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(12),
      I1 => NlwRenamedSig_OI_det_hactive_start(4),
      I2 => gen_hactive_start(4),
      O => blk00000001_sig0000036f
    );
  blk00000001_blk00000404 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(12),
      I1 => NlwRenamedSig_OI_det_hactive_start(3),
      I2 => gen_hactive_start(3),
      O => blk00000001_sig0000036e
    );
  blk00000001_blk00000403 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(12),
      I1 => NlwRenamedSig_OI_det_hactive_start(2),
      I2 => gen_hactive_start(2),
      O => blk00000001_sig0000036d
    );
  blk00000001_blk00000402 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(12),
      I1 => NlwRenamedSig_OI_det_hactive_start(1),
      I2 => gen_hactive_start(1),
      O => blk00000001_sig0000036c
    );
  blk00000001_blk00000401 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(12),
      I1 => NlwRenamedSig_OI_det_hactive_start(10),
      I2 => gen_hactive_start(10),
      O => blk00000001_sig00000375
    );
  blk00000001_blk00000400 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(12),
      I1 => NlwRenamedSig_OI_det_hactive_start(0),
      I2 => gen_hactive_start(0),
      O => blk00000001_sig0000036b
    );
  blk00000001_blk000003ff : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(15),
      I1 => NlwRenamedSig_OI_det_v0sync_start(9),
      I2 => gen_v0sync_start(9),
      O => blk00000001_sig00000353
    );
  blk00000001_blk000003fe : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(15),
      I1 => NlwRenamedSig_OI_det_v0sync_start(8),
      I2 => gen_v0sync_start(8),
      O => blk00000001_sig00000352
    );
  blk00000001_blk000003fd : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(15),
      I1 => NlwRenamedSig_OI_det_v0sync_start(7),
      I2 => gen_v0sync_start(7),
      O => blk00000001_sig00000351
    );
  blk00000001_blk000003fc : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(15),
      I1 => NlwRenamedSig_OI_det_v0sync_start(6),
      I2 => gen_v0sync_start(6),
      O => blk00000001_sig00000350
    );
  blk00000001_blk000003fb : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(15),
      I1 => NlwRenamedSig_OI_det_v0sync_start(5),
      I2 => gen_v0sync_start(5),
      O => blk00000001_sig0000034f
    );
  blk00000001_blk000003fa : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(15),
      I1 => NlwRenamedSig_OI_det_v0sync_start(4),
      I2 => gen_v0sync_start(4),
      O => blk00000001_sig0000034e
    );
  blk00000001_blk000003f9 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(15),
      I1 => NlwRenamedSig_OI_det_v0sync_start(3),
      I2 => gen_v0sync_start(3),
      O => blk00000001_sig0000034d
    );
  blk00000001_blk000003f8 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(15),
      I1 => NlwRenamedSig_OI_det_v0sync_start(2),
      I2 => gen_v0sync_start(2),
      O => blk00000001_sig0000034c
    );
  blk00000001_blk000003f7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(15),
      I1 => NlwRenamedSig_OI_det_v0sync_start(1),
      I2 => gen_v0sync_start(1),
      O => blk00000001_sig0000034b
    );
  blk00000001_blk000003f6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(15),
      I1 => NlwRenamedSig_OI_det_v0sync_start(10),
      I2 => gen_v0sync_start(10),
      O => blk00000001_sig00000354
    );
  blk00000001_blk000003f5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(15),
      I1 => NlwRenamedSig_OI_det_v0sync_start(0),
      I2 => gen_v0sync_start(0),
      O => blk00000001_sig0000034a
    );
  blk00000001_blk000003f4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(13),
      I1 => NlwRenamedSig_OI_det_v0total(9),
      I2 => gen_v0total(9),
      O => blk00000001_sig00000369
    );
  blk00000001_blk000003f3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(13),
      I1 => NlwRenamedSig_OI_det_v0total(8),
      I2 => gen_v0total(8),
      O => blk00000001_sig00000368
    );
  blk00000001_blk000003f2 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(13),
      I1 => NlwRenamedSig_OI_det_v0total(7),
      I2 => gen_v0total(7),
      O => blk00000001_sig00000367
    );
  blk00000001_blk000003f1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(13),
      I1 => NlwRenamedSig_OI_det_v0total(6),
      I2 => gen_v0total(6),
      O => blk00000001_sig00000366
    );
  blk00000001_blk000003f0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(13),
      I1 => NlwRenamedSig_OI_det_v0total(5),
      I2 => gen_v0total(5),
      O => blk00000001_sig00000365
    );
  blk00000001_blk000003ef : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(13),
      I1 => NlwRenamedSig_OI_det_v0total(4),
      I2 => gen_v0total(4),
      O => blk00000001_sig00000364
    );
  blk00000001_blk000003ee : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(13),
      I1 => NlwRenamedSig_OI_det_v0total(3),
      I2 => gen_v0total(3),
      O => blk00000001_sig00000363
    );
  blk00000001_blk000003ed : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(13),
      I1 => NlwRenamedSig_OI_det_v0total(2),
      I2 => gen_v0total(2),
      O => blk00000001_sig00000362
    );
  blk00000001_blk000003ec : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(13),
      I1 => NlwRenamedSig_OI_det_v0total(1),
      I2 => gen_v0total(1),
      O => blk00000001_sig00000361
    );
  blk00000001_blk000003eb : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(13),
      I1 => NlwRenamedSig_OI_det_v0total(10),
      I2 => gen_v0total(10),
      O => blk00000001_sig0000036a
    );
  blk00000001_blk000003ea : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(13),
      I1 => NlwRenamedSig_OI_det_v0total(0),
      I2 => gen_v0total(0),
      O => blk00000001_sig00000360
    );
  blk00000001_blk000003e9 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(14),
      I1 => NlwRenamedSig_OI_det_v0fp_start(9),
      I2 => gen_v0fp_start(9),
      O => blk00000001_sig0000035e
    );
  blk00000001_blk000003e8 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(14),
      I1 => NlwRenamedSig_OI_det_v0fp_start(8),
      I2 => gen_v0fp_start(8),
      O => blk00000001_sig0000035d
    );
  blk00000001_blk000003e7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(14),
      I1 => NlwRenamedSig_OI_det_v0fp_start(7),
      I2 => gen_v0fp_start(7),
      O => blk00000001_sig0000035c
    );
  blk00000001_blk000003e6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(14),
      I1 => NlwRenamedSig_OI_det_v0fp_start(6),
      I2 => gen_v0fp_start(6),
      O => blk00000001_sig0000035b
    );
  blk00000001_blk000003e5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(14),
      I1 => NlwRenamedSig_OI_det_v0fp_start(5),
      I2 => gen_v0fp_start(5),
      O => blk00000001_sig0000035a
    );
  blk00000001_blk000003e4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(14),
      I1 => NlwRenamedSig_OI_det_v0fp_start(4),
      I2 => gen_v0fp_start(4),
      O => blk00000001_sig00000359
    );
  blk00000001_blk000003e3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(14),
      I1 => NlwRenamedSig_OI_det_v0fp_start(3),
      I2 => gen_v0fp_start(3),
      O => blk00000001_sig00000358
    );
  blk00000001_blk000003e2 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(14),
      I1 => NlwRenamedSig_OI_det_v0fp_start(2),
      I2 => gen_v0fp_start(2),
      O => blk00000001_sig00000357
    );
  blk00000001_blk000003e1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(14),
      I1 => NlwRenamedSig_OI_det_v0fp_start(1),
      I2 => gen_v0fp_start(1),
      O => blk00000001_sig00000356
    );
  blk00000001_blk000003e0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(14),
      I1 => NlwRenamedSig_OI_det_v0fp_start(10),
      I2 => gen_v0fp_start(10),
      O => blk00000001_sig0000035f
    );
  blk00000001_blk000003df : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(14),
      I1 => NlwRenamedSig_OI_det_v0fp_start(0),
      I2 => gen_v0fp_start(0),
      O => blk00000001_sig00000355
    );
  blk00000001_blk000003de : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(16),
      I1 => NlwRenamedSig_OI_det_v0bp_start(9),
      I2 => gen_v0bp_start(9),
      O => blk00000001_sig00000348
    );
  blk00000001_blk000003dd : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(16),
      I1 => NlwRenamedSig_OI_det_v0bp_start(8),
      I2 => gen_v0bp_start(8),
      O => blk00000001_sig00000347
    );
  blk00000001_blk000003dc : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(16),
      I1 => NlwRenamedSig_OI_det_v0bp_start(7),
      I2 => gen_v0bp_start(7),
      O => blk00000001_sig00000346
    );
  blk00000001_blk000003db : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(16),
      I1 => NlwRenamedSig_OI_det_v0bp_start(6),
      I2 => gen_v0bp_start(6),
      O => blk00000001_sig00000345
    );
  blk00000001_blk000003da : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(16),
      I1 => NlwRenamedSig_OI_det_v0bp_start(5),
      I2 => gen_v0bp_start(5),
      O => blk00000001_sig00000344
    );
  blk00000001_blk000003d9 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(16),
      I1 => NlwRenamedSig_OI_det_v0bp_start(4),
      I2 => gen_v0bp_start(4),
      O => blk00000001_sig00000343
    );
  blk00000001_blk000003d8 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(16),
      I1 => NlwRenamedSig_OI_det_v0bp_start(3),
      I2 => gen_v0bp_start(3),
      O => blk00000001_sig00000342
    );
  blk00000001_blk000003d7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(16),
      I1 => NlwRenamedSig_OI_det_v0bp_start(2),
      I2 => gen_v0bp_start(2),
      O => blk00000001_sig00000341
    );
  blk00000001_blk000003d6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(16),
      I1 => NlwRenamedSig_OI_det_v0bp_start(1),
      I2 => gen_v0bp_start(1),
      O => blk00000001_sig00000340
    );
  blk00000001_blk000003d5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(16),
      I1 => NlwRenamedSig_OI_det_v0bp_start(10),
      I2 => gen_v0bp_start(10),
      O => blk00000001_sig00000349
    );
  blk00000001_blk000003d4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(16),
      I1 => NlwRenamedSig_OI_det_v0bp_start(0),
      I2 => gen_v0bp_start(0),
      O => blk00000001_sig0000033f
    );
  blk00000001_blk000003d3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(17),
      I1 => NlwRenamedSig_OI_det_v0active_start(9),
      I2 => gen_v0active_start(9),
      O => blk00000001_sig0000033d
    );
  blk00000001_blk000003d2 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(17),
      I1 => NlwRenamedSig_OI_det_v0active_start(8),
      I2 => gen_v0active_start(8),
      O => blk00000001_sig0000033c
    );
  blk00000001_blk000003d1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(17),
      I1 => NlwRenamedSig_OI_det_v0active_start(7),
      I2 => gen_v0active_start(7),
      O => blk00000001_sig0000033b
    );
  blk00000001_blk000003d0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(17),
      I1 => NlwRenamedSig_OI_det_v0active_start(6),
      I2 => gen_v0active_start(6),
      O => blk00000001_sig0000033a
    );
  blk00000001_blk000003cf : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(17),
      I1 => NlwRenamedSig_OI_det_v0active_start(5),
      I2 => gen_v0active_start(5),
      O => blk00000001_sig00000339
    );
  blk00000001_blk000003ce : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(17),
      I1 => NlwRenamedSig_OI_det_v0active_start(4),
      I2 => gen_v0active_start(4),
      O => blk00000001_sig00000338
    );
  blk00000001_blk000003cd : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(17),
      I1 => NlwRenamedSig_OI_det_v0active_start(3),
      I2 => gen_v0active_start(3),
      O => blk00000001_sig00000337
    );
  blk00000001_blk000003cc : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(17),
      I1 => NlwRenamedSig_OI_det_v0active_start(2),
      I2 => gen_v0active_start(2),
      O => blk00000001_sig00000336
    );
  blk00000001_blk000003cb : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(17),
      I1 => NlwRenamedSig_OI_det_v0active_start(1),
      I2 => gen_v0active_start(1),
      O => blk00000001_sig00000335
    );
  blk00000001_blk000003ca : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(17),
      I1 => NlwRenamedSig_OI_det_v0active_start(10),
      I2 => gen_v0active_start(10),
      O => blk00000001_sig0000033e
    );
  blk00000001_blk000003c9 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(17),
      I1 => NlwRenamedSig_OI_det_v0active_start(0),
      I2 => gen_v0active_start(0),
      O => blk00000001_sig00000334
    );
  blk00000001_blk000003c8 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(16),
      I1 => NlwRenamedSig_OI_det_v0sync_hend(9),
      I2 => gen_v0sync_hend(9),
      O => blk00000001_sig0000031c
    );
  blk00000001_blk000003c7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(16),
      I1 => NlwRenamedSig_OI_det_v0sync_hend(8),
      I2 => gen_v0sync_hend(8),
      O => blk00000001_sig0000031b
    );
  blk00000001_blk000003c6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(16),
      I1 => NlwRenamedSig_OI_det_v0sync_hend(7),
      I2 => gen_v0sync_hend(7),
      O => blk00000001_sig0000031a
    );
  blk00000001_blk000003c5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(16),
      I1 => NlwRenamedSig_OI_det_v0sync_hend(6),
      I2 => gen_v0sync_hend(6),
      O => blk00000001_sig00000319
    );
  blk00000001_blk000003c4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(16),
      I1 => NlwRenamedSig_OI_det_v0sync_hend(5),
      I2 => gen_v0sync_hend(5),
      O => blk00000001_sig00000318
    );
  blk00000001_blk000003c3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(16),
      I1 => NlwRenamedSig_OI_det_v0sync_hend(4),
      I2 => gen_v0sync_hend(4),
      O => blk00000001_sig00000317
    );
  blk00000001_blk000003c2 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(16),
      I1 => NlwRenamedSig_OI_det_v0sync_hend(3),
      I2 => gen_v0sync_hend(3),
      O => blk00000001_sig00000316
    );
  blk00000001_blk000003c1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(16),
      I1 => NlwRenamedSig_OI_det_v0sync_hend(2),
      I2 => gen_v0sync_hend(2),
      O => blk00000001_sig00000315
    );
  blk00000001_blk000003c0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(16),
      I1 => NlwRenamedSig_OI_det_v0sync_hend(1),
      I2 => gen_v0sync_hend(1),
      O => blk00000001_sig00000314
    );
  blk00000001_blk000003bf : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(16),
      I1 => NlwRenamedSig_OI_det_v0sync_hend(10),
      I2 => gen_v0sync_hend(10),
      O => blk00000001_sig0000031d
    );
  blk00000001_blk000003be : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(16),
      I1 => NlwRenamedSig_OI_det_v0sync_hend(0),
      I2 => gen_v0sync_hend(0),
      O => blk00000001_sig00000313
    );
  blk00000001_blk000003bd : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(14),
      I1 => NlwRenamedSig_OI_det_v0blank_hstart(9),
      I2 => gen_v0blank_hstart(9),
      O => blk00000001_sig00000332
    );
  blk00000001_blk000003bc : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(14),
      I1 => NlwRenamedSig_OI_det_v0blank_hstart(8),
      I2 => gen_v0blank_hstart(8),
      O => blk00000001_sig00000331
    );
  blk00000001_blk000003bb : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(14),
      I1 => NlwRenamedSig_OI_det_v0blank_hstart(7),
      I2 => gen_v0blank_hstart(7),
      O => blk00000001_sig00000330
    );
  blk00000001_blk000003ba : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(14),
      I1 => NlwRenamedSig_OI_det_v0blank_hstart(6),
      I2 => gen_v0blank_hstart(6),
      O => blk00000001_sig0000032f
    );
  blk00000001_blk000003b9 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(14),
      I1 => NlwRenamedSig_OI_det_v0blank_hstart(5),
      I2 => gen_v0blank_hstart(5),
      O => blk00000001_sig0000032e
    );
  blk00000001_blk000003b8 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(14),
      I1 => NlwRenamedSig_OI_det_v0blank_hstart(4),
      I2 => gen_v0blank_hstart(4),
      O => blk00000001_sig0000032d
    );
  blk00000001_blk000003b7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(14),
      I1 => NlwRenamedSig_OI_det_v0blank_hstart(3),
      I2 => gen_v0blank_hstart(3),
      O => blk00000001_sig0000032c
    );
  blk00000001_blk000003b6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(14),
      I1 => NlwRenamedSig_OI_det_v0blank_hstart(2),
      I2 => gen_v0blank_hstart(2),
      O => blk00000001_sig0000032b
    );
  blk00000001_blk000003b5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(14),
      I1 => NlwRenamedSig_OI_det_v0blank_hstart(1),
      I2 => gen_v0blank_hstart(1),
      O => blk00000001_sig0000032a
    );
  blk00000001_blk000003b4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(14),
      I1 => NlwRenamedSig_OI_det_v0blank_hstart(10),
      I2 => gen_v0blank_hstart(10),
      O => blk00000001_sig00000333
    );
  blk00000001_blk000003b3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(14),
      I1 => NlwRenamedSig_OI_det_v0blank_hstart(0),
      I2 => gen_v0blank_hstart(0),
      O => blk00000001_sig00000329
    );
  blk00000001_blk000003b2 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(15),
      I1 => NlwRenamedSig_OI_det_v0sync_hstart(9),
      I2 => gen_v0sync_hstart(9),
      O => blk00000001_sig00000327
    );
  blk00000001_blk000003b1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(15),
      I1 => NlwRenamedSig_OI_det_v0sync_hstart(8),
      I2 => gen_v0sync_hstart(8),
      O => blk00000001_sig00000326
    );
  blk00000001_blk000003b0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(15),
      I1 => NlwRenamedSig_OI_det_v0sync_hstart(7),
      I2 => gen_v0sync_hstart(7),
      O => blk00000001_sig00000325
    );
  blk00000001_blk000003af : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(15),
      I1 => NlwRenamedSig_OI_det_v0sync_hstart(6),
      I2 => gen_v0sync_hstart(6),
      O => blk00000001_sig00000324
    );
  blk00000001_blk000003ae : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(15),
      I1 => NlwRenamedSig_OI_det_v0sync_hstart(5),
      I2 => gen_v0sync_hstart(5),
      O => blk00000001_sig00000323
    );
  blk00000001_blk000003ad : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(15),
      I1 => NlwRenamedSig_OI_det_v0sync_hstart(4),
      I2 => gen_v0sync_hstart(4),
      O => blk00000001_sig00000322
    );
  blk00000001_blk000003ac : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(15),
      I1 => NlwRenamedSig_OI_det_v0sync_hstart(3),
      I2 => gen_v0sync_hstart(3),
      O => blk00000001_sig00000321
    );
  blk00000001_blk000003ab : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(15),
      I1 => NlwRenamedSig_OI_det_v0sync_hstart(2),
      I2 => gen_v0sync_hstart(2),
      O => blk00000001_sig00000320
    );
  blk00000001_blk000003aa : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(15),
      I1 => NlwRenamedSig_OI_det_v0sync_hstart(1),
      I2 => gen_v0sync_hstart(1),
      O => blk00000001_sig0000031f
    );
  blk00000001_blk000003a9 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(15),
      I1 => NlwRenamedSig_OI_det_v0sync_hstart(10),
      I2 => gen_v0sync_hstart(10),
      O => blk00000001_sig00000328
    );
  blk00000001_blk000003a8 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(15),
      I1 => NlwRenamedSig_OI_det_v0sync_hstart(0),
      I2 => gen_v0sync_hstart(0),
      O => blk00000001_sig0000031e
    );
  blk00000001_blk000003a7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(17),
      I1 => NlwRenamedSig_OI_det_v0blank_hend(9),
      I2 => gen_v0blank_hend(9),
      O => blk00000001_sig00000311
    );
  blk00000001_blk000003a6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(17),
      I1 => NlwRenamedSig_OI_det_v0blank_hend(8),
      I2 => gen_v0blank_hend(8),
      O => blk00000001_sig00000310
    );
  blk00000001_blk000003a5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(17),
      I1 => NlwRenamedSig_OI_det_v0blank_hend(7),
      I2 => gen_v0blank_hend(7),
      O => blk00000001_sig0000030f
    );
  blk00000001_blk000003a4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(17),
      I1 => NlwRenamedSig_OI_det_v0blank_hend(6),
      I2 => gen_v0blank_hend(6),
      O => blk00000001_sig0000030e
    );
  blk00000001_blk000003a3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(17),
      I1 => NlwRenamedSig_OI_det_v0blank_hend(5),
      I2 => gen_v0blank_hend(5),
      O => blk00000001_sig0000030d
    );
  blk00000001_blk000003a2 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(17),
      I1 => NlwRenamedSig_OI_det_v0blank_hend(4),
      I2 => gen_v0blank_hend(4),
      O => blk00000001_sig0000030c
    );
  blk00000001_blk000003a1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(17),
      I1 => NlwRenamedSig_OI_det_v0blank_hend(3),
      I2 => gen_v0blank_hend(3),
      O => blk00000001_sig0000030b
    );
  blk00000001_blk000003a0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(17),
      I1 => NlwRenamedSig_OI_det_v0blank_hend(2),
      I2 => gen_v0blank_hend(2),
      O => blk00000001_sig0000030a
    );
  blk00000001_blk0000039f : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(17),
      I1 => NlwRenamedSig_OI_det_v0blank_hend(1),
      I2 => gen_v0blank_hend(1),
      O => blk00000001_sig00000309
    );
  blk00000001_blk0000039e : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(17),
      I1 => NlwRenamedSig_OI_det_v0blank_hend(10),
      I2 => gen_v0blank_hend(10),
      O => blk00000001_sig00000312
    );
  blk00000001_blk0000039d : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => control(17),
      I1 => NlwRenamedSig_OI_det_v0blank_hend(0),
      I2 => gen_v0blank_hend(0),
      O => blk00000001_sig00000308
    );
  blk00000001_blk0000039c : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => blk00000001_sig0000023c,
      I1 => control(22),
      O => blk00000001_sig0000021d
    );
  blk00000001_blk0000039b : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => blk00000001_sig0000023b,
      I1 => control(23),
      O => blk00000001_sig0000021e
    );
  blk00000001_blk0000039a : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => blk00000001_sig0000023e,
      I1 => control(20),
      O => blk00000001_sig0000021f
    );
  blk00000001_blk00000399 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => blk00000001_sig0000023d,
      I1 => control(21),
      O => blk00000001_sig00000220
    );
  blk00000001_blk00000398 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => ce,
      I1 => control(8),
      I2 => blk00000001_sig000001b2,
      O => blk00000001_sig00000214
    );
  blk00000001_blk00000397 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => ce,
      I1 => control(8),
      I2 => blk00000001_sig000001b2,
      I3 => blk00000001_sig00000307,
      O => blk00000001_sig0000022c
    );
  blk00000001_blk00000396 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => ce,
      I1 => control(9),
      I2 => blk00000001_sig000001b2,
      O => blk00000001_sig00000213
    );
  blk00000001_blk00000395 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => ce,
      I1 => control(9),
      I2 => blk00000001_sig000001b2,
      I3 => blk00000001_sig00000306,
      O => blk00000001_sig0000022d
    );
  blk00000001_blk00000394 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => ce,
      I1 => control(10),
      I2 => blk00000001_sig000001b2,
      O => blk00000001_sig00000212
    );
  blk00000001_blk00000393 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => ce,
      I1 => control(10),
      I2 => blk00000001_sig000001b2,
      I3 => blk00000001_sig00000305,
      O => blk00000001_sig0000022e
    );
  blk00000001_blk00000392 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => ce,
      I1 => control(11),
      I2 => blk00000001_sig000001b2,
      O => blk00000001_sig00000211
    );
  blk00000001_blk00000391 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => ce,
      I1 => control(11),
      I2 => blk00000001_sig000001b2,
      I3 => blk00000001_sig00000304,
      O => blk00000001_sig0000022f
    );
  blk00000001_blk00000390 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig000001b2,
      I2 => control(14),
      O => blk00000001_sig00000210
    );
  blk00000001_blk0000038f : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig000001b2,
      I2 => control(14),
      I3 => blk00000001_sig00000301,
      O => blk00000001_sig00000232
    );
  blk00000001_blk0000038e : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => ce,
      I1 => control(12),
      I2 => blk00000001_sig000001b2,
      O => blk00000001_sig0000020f
    );
  blk00000001_blk0000038d : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => ce,
      I1 => control(12),
      I2 => blk00000001_sig000001b2,
      I3 => blk00000001_sig00000303,
      O => blk00000001_sig00000230
    );
  blk00000001_blk0000038c : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig000001b2,
      I2 => control(13),
      O => blk00000001_sig0000020e
    );
  blk00000001_blk0000038b : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig000001b2,
      I2 => control(13),
      I3 => blk00000001_sig00000302,
      O => blk00000001_sig00000231
    );
  blk00000001_blk0000038a : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig000001b2,
      I2 => control(15),
      O => blk00000001_sig0000020d
    );
  blk00000001_blk00000389 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig000001b2,
      I2 => control(15),
      I3 => blk00000001_sig00000300,
      O => blk00000001_sig00000233
    );
  blk00000001_blk00000388 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig000001b2,
      I2 => control(16),
      O => blk00000001_sig0000020c
    );
  blk00000001_blk00000387 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig000001b2,
      I2 => control(16),
      I3 => blk00000001_sig000002ff,
      O => blk00000001_sig00000234
    );
  blk00000001_blk00000386 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig000001b2,
      I2 => control(17),
      O => blk00000001_sig0000020b
    );
  blk00000001_blk00000385 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig000001b2,
      I2 => control(17),
      I3 => blk00000001_sig000002fe,
      O => blk00000001_sig00000235
    );
  blk00000001_blk00000384 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => ce,
      I1 => blk00000001_sig000001b2,
      I2 => control(18),
      I3 => blk00000001_sig000002fd,
      O => blk00000001_sig00000236
    );
  blk00000001_blk00000383 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => sclr,
      I1 => blk00000001_sig0000024c,
      O => blk00000001_sig00000239
    );
  blk00000001_blk00000382 : LUT4
    generic map(
      INIT => X"5595"
    )
    port map (
      I0 => control(25),
      I1 => blk00000001_sig0000023d,
      I2 => blk00000001_sig0000023b,
      I3 => blk00000001_sig0000023a,
      O => blk00000001_sig0000021c
    );
  blk00000001_blk00000381 : LUT6
    generic map(
      INIT => X"AAAAAAAAAAA9AAAA"
    )
    port map (
      I0 => blk00000001_sig000002f7,
      I1 => blk00000001_sig000002f3,
      I2 => blk00000001_sig000002f4,
      I3 => blk00000001_sig000002f5,
      I4 => blk00000001_sig000001dc,
      I5 => blk00000001_sig000002f6,
      O => blk00000001_sig00000226
    );
  blk00000001_blk00000380 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => blk00000001_sig000001f3,
      I1 => blk00000001_sig000002f2,
      O => blk00000001_sig000001dc
    );
  blk00000001_blk0000037f : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => control(1),
      I1 => blk00000001_sig000001b3,
      O => blk00000001_sig000001ad
    );
  blk00000001_blk0000037e : LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => blk00000001_sig000001c9,
      I1 => blk00000001_sig000001cc,
      I2 => blk00000001_sig000001cd,
      I3 => blk00000001_sig000001ca,
      I4 => blk00000001_sig000001cb,
      O => blk00000001_sig000001ac
    );
  blk00000001_blk0000037d : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => blk00000001_sig000001c8,
      I1 => blk00000001_sig000001af,
      O => blk00000001_sig000001ab
    );
  blk00000001_blk0000037c : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => blk00000001_sig000001b3,
      I1 => sclr,
      O => blk00000001_sig0000019c
    );
  blk00000001_blk0000037b : LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => control(0),
      I1 => sclr,
      I2 => blk00000001_sig000001b3,
      O => blk00000001_sig000001c7
    );
  blk00000001_blk0000037a : LUT5
    generic map(
      INIT => X"AAAA8088"
    )
    port map (
      I0 => blk00000001_sig000001c2,
      I1 => NlwRenamedSig_OI_intr_status_16_Q,
      I2 => blk00000001_sig000001da,
      I3 => intr_clr(16),
      I4 => NlwRenamedSig_OI_fsync(0),
      O => blk00000001_sig000001a2
    );
  blk00000001_blk00000379 : LUT6
    generic map(
      INIT => X"8A8A8A8AFF8A8A8A"
    )
    port map (
      I0 => NlwRenamedSig_OI_intr_status_15_Q,
      I1 => blk00000001_sig000001d9,
      I2 => intr_clr(15),
      I3 => blk00000001_sig000001be,
      I4 => blk00000001_sig000001b9,
      I5 => blk00000001_sig000001ba,
      O => blk00000001_sig0000019f
    );
  blk00000001_blk00000378 : LUT6
    generic map(
      INIT => X"8A8A8A8AFF8A8A8A"
    )
    port map (
      I0 => NlwRenamedSig_OI_intr_status_14_Q,
      I1 => blk00000001_sig000001d8,
      I2 => intr_clr(14),
      I3 => blk00000001_sig000001ba,
      I4 => blk00000001_sig000001be,
      I5 => blk00000001_sig000001b9,
      O => blk00000001_sig0000019e
    );
  blk00000001_blk00000377 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig0000062f,
      Q => blk00000001_sig00000639
    );
  blk00000001_blk00000376 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000630,
      Q => blk00000001_sig000001b3
    );
  blk00000001_blk00000375 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000631,
      Q => blk00000001_sig00000637
    );
  blk00000001_blk00000374 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig0000062e,
      Q => blk00000001_sig00000636
    );
  blk00000001_blk00000373 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig0000062c,
      Q => blk00000001_sig00000635
    );
  blk00000001_blk00000372 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000639,
      D => blk00000001_sig00000624,
      R => blk00000001_sig00000632,
      Q => blk00000001_sig00000623
    );
  blk00000001_blk00000371 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000639,
      D => blk00000001_sig00000625,
      R => blk00000001_sig00000632,
      Q => blk00000001_sig00000622
    );
  blk00000001_blk00000370 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000639,
      D => blk00000001_sig00000626,
      R => blk00000001_sig00000632,
      Q => blk00000001_sig00000621
    );
  blk00000001_blk0000036f : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000639,
      D => blk00000001_sig00000627,
      R => blk00000001_sig00000632,
      Q => blk00000001_sig00000620
    );
  blk00000001_blk0000036e : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000639,
      D => blk00000001_sig00000628,
      R => blk00000001_sig00000632,
      Q => blk00000001_sig0000061f
    );
  blk00000001_blk0000036d : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000639,
      D => blk00000001_sig00000629,
      R => blk00000001_sig00000632,
      Q => blk00000001_sig0000061e
    );
  blk00000001_blk0000036c : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000639,
      D => blk00000001_sig0000062a,
      R => blk00000001_sig00000632,
      Q => blk00000001_sig0000061d
    );
  blk00000001_blk0000036b : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000639,
      D => blk00000001_sig0000061c,
      R => blk00000001_sig00000632,
      Q => blk00000001_sig00000632
    );
  blk00000001_blk0000036a : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000639,
      D => blk00000001_sig0000062d,
      R => blk00000001_sig00000632,
      Q => blk00000001_sig00000634
    );
  blk00000001_blk00000369 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig0000063a,
      Q => blk00000001_sig00000638
    );
  blk00000001_blk00000368 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000639,
      D => blk00000001_sig0000062b,
      S => blk00000001_sig00000632,
      Q => blk00000001_sig00000633
    );
  blk00000001_blk00000367 : RAM64X1S
    generic map(
      INIT => X"80000001EE1A5168"
    )
    port map (
      A0 => blk00000001_sig00000623,
      A1 => blk00000001_sig00000622,
      A2 => blk00000001_sig00000621,
      A3 => blk00000001_sig00000620,
      A4 => blk00000001_sig0000061f,
      A5 => blk00000001_sig0000061e,
      D => blk00000001_sig00000637,
      WCLK => NlwRenamedSignal_video_clk_in,
      WE => blk00000001_sig00000636,
      O => blk00000001_sig0000063a
    );
  blk00000001_blk00000366 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ac,
      D => blk00000001_sig000005fa,
      R => blk00000001_sig00000507,
      Q => blk00000001_sig000005f9
    );
  blk00000001_blk00000365 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ad,
      D => blk00000001_sig00000542,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_htotal(0)
    );
  blk00000001_blk00000364 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ad,
      D => blk00000001_sig00000543,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_htotal(1)
    );
  blk00000001_blk00000363 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ad,
      D => blk00000001_sig00000544,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_htotal(2)
    );
  blk00000001_blk00000362 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ad,
      D => blk00000001_sig00000545,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_htotal(3)
    );
  blk00000001_blk00000361 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ad,
      D => blk00000001_sig00000546,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_htotal(4)
    );
  blk00000001_blk00000360 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ad,
      D => blk00000001_sig00000547,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_htotal(5)
    );
  blk00000001_blk0000035f : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ad,
      D => blk00000001_sig00000548,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_htotal(6)
    );
  blk00000001_blk0000035e : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ad,
      D => blk00000001_sig00000549,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_htotal(7)
    );
  blk00000001_blk0000035d : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ad,
      D => blk00000001_sig0000054a,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_htotal(8)
    );
  blk00000001_blk0000035c : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ad,
      D => blk00000001_sig0000054b,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_htotal(9)
    );
  blk00000001_blk0000035b : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ad,
      D => blk00000001_sig0000054c,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_htotal(10)
    );
  blk00000001_blk0000035a : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => blk00000001_sig000004c1,
      R => blk00000001_sig00000508,
      Q => blk00000001_sig00000609
    );
  blk00000001_blk00000359 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ab,
      D => blk00000001_sig00000542,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hsync_start(0)
    );
  blk00000001_blk00000358 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ab,
      D => blk00000001_sig00000543,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hsync_start(1)
    );
  blk00000001_blk00000357 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ab,
      D => blk00000001_sig00000544,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hsync_start(2)
    );
  blk00000001_blk00000356 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ab,
      D => blk00000001_sig00000545,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hsync_start(3)
    );
  blk00000001_blk00000355 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ab,
      D => blk00000001_sig00000546,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hsync_start(4)
    );
  blk00000001_blk00000354 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ab,
      D => blk00000001_sig00000547,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hsync_start(5)
    );
  blk00000001_blk00000353 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ab,
      D => blk00000001_sig00000548,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hsync_start(6)
    );
  blk00000001_blk00000352 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ab,
      D => blk00000001_sig00000549,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hsync_start(7)
    );
  blk00000001_blk00000351 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ab,
      D => blk00000001_sig0000054a,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hsync_start(8)
    );
  blk00000001_blk00000350 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ab,
      D => blk00000001_sig0000054b,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hsync_start(9)
    );
  blk00000001_blk0000034f : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ab,
      D => blk00000001_sig0000054c,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hsync_start(10)
    );
  blk00000001_blk0000034e : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003aa,
      D => blk00000001_sig00000542,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hbp_start(0)
    );
  blk00000001_blk0000034d : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003aa,
      D => blk00000001_sig00000543,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hbp_start(1)
    );
  blk00000001_blk0000034c : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003aa,
      D => blk00000001_sig00000544,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hbp_start(2)
    );
  blk00000001_blk0000034b : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003aa,
      D => blk00000001_sig00000545,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hbp_start(3)
    );
  blk00000001_blk0000034a : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003aa,
      D => blk00000001_sig00000546,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hbp_start(4)
    );
  blk00000001_blk00000349 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003aa,
      D => blk00000001_sig00000547,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hbp_start(5)
    );
  blk00000001_blk00000348 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003aa,
      D => blk00000001_sig00000548,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hbp_start(6)
    );
  blk00000001_blk00000347 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003aa,
      D => blk00000001_sig00000549,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hbp_start(7)
    );
  blk00000001_blk00000346 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003aa,
      D => blk00000001_sig0000054a,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hbp_start(8)
    );
  blk00000001_blk00000345 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003aa,
      D => blk00000001_sig0000054b,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hbp_start(9)
    );
  blk00000001_blk00000344 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003aa,
      D => blk00000001_sig0000054c,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hbp_start(10)
    );
  blk00000001_blk00000343 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004ab,
      D => blk00000001_sig00000542,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hfp_start(0)
    );
  blk00000001_blk00000342 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004ab,
      D => blk00000001_sig00000543,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hfp_start(1)
    );
  blk00000001_blk00000341 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004ab,
      D => blk00000001_sig00000544,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hfp_start(2)
    );
  blk00000001_blk00000340 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004ab,
      D => blk00000001_sig00000545,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hfp_start(3)
    );
  blk00000001_blk0000033f : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004ab,
      D => blk00000001_sig00000546,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hfp_start(4)
    );
  blk00000001_blk0000033e : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004ab,
      D => blk00000001_sig00000547,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hfp_start(5)
    );
  blk00000001_blk0000033d : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004ab,
      D => blk00000001_sig00000548,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hfp_start(6)
    );
  blk00000001_blk0000033c : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004ab,
      D => blk00000001_sig00000549,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hfp_start(7)
    );
  blk00000001_blk0000033b : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004ab,
      D => blk00000001_sig0000054a,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hfp_start(8)
    );
  blk00000001_blk0000033a : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004ab,
      D => blk00000001_sig0000054b,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hfp_start(9)
    );
  blk00000001_blk00000339 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004ab,
      D => blk00000001_sig0000054c,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hfp_start(10)
    );
  blk00000001_blk00000338 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004aa,
      D => blk00000001_sig00000542,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hactive_start(0)
    );
  blk00000001_blk00000337 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004aa,
      D => blk00000001_sig00000543,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hactive_start(1)
    );
  blk00000001_blk00000336 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004aa,
      D => blk00000001_sig00000544,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hactive_start(2)
    );
  blk00000001_blk00000335 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004aa,
      D => blk00000001_sig00000545,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hactive_start(3)
    );
  blk00000001_blk00000334 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004aa,
      D => blk00000001_sig00000546,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hactive_start(4)
    );
  blk00000001_blk00000333 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004aa,
      D => blk00000001_sig00000547,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hactive_start(5)
    );
  blk00000001_blk00000332 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004aa,
      D => blk00000001_sig00000548,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hactive_start(6)
    );
  blk00000001_blk00000331 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004aa,
      D => blk00000001_sig00000549,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hactive_start(7)
    );
  blk00000001_blk00000330 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004aa,
      D => blk00000001_sig0000054a,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hactive_start(8)
    );
  blk00000001_blk0000032f : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004aa,
      D => blk00000001_sig0000054b,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hactive_start(9)
    );
  blk00000001_blk0000032e : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004aa,
      D => blk00000001_sig0000054c,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_hactive_start(10)
    );
  blk00000001_blk0000032d : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => blk00000001_sig000004c0,
      R => blk00000001_sig00000508,
      Q => blk00000001_sig00000606
    );
  blk00000001_blk0000032c : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => blk00000001_sig000004bd,
      R => blk00000001_sig000004c2,
      Q => blk00000001_sig00000602
    );
  blk00000001_blk0000032b : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => blk00000001_sig000004bf,
      R => blk00000001_sig00000508,
      Q => blk00000001_sig000005fe
    );
  blk00000001_blk0000032a : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => blk00000001_sig000004be,
      R => blk00000001_sig00000508,
      Q => blk00000001_sig000005f8
    );
  blk00000001_blk00000329 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ad,
      D => blk00000001_sig0000054d,
      R => blk00000001_sig00000508,
      Q => blk00000001_sig000005f4
    );
  blk00000001_blk00000328 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a9,
      D => blk00000001_sig00000542,
      R => blk00000001_sig000004a8,
      Q => NlwRenamedSig_OI_det_v0blank_hstart(0)
    );
  blk00000001_blk00000327 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a9,
      D => blk00000001_sig00000543,
      R => blk00000001_sig000004a8,
      Q => NlwRenamedSig_OI_det_v0blank_hstart(1)
    );
  blk00000001_blk00000326 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a9,
      D => blk00000001_sig00000544,
      R => blk00000001_sig000004a8,
      Q => NlwRenamedSig_OI_det_v0blank_hstart(2)
    );
  blk00000001_blk00000325 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a9,
      D => blk00000001_sig00000545,
      R => blk00000001_sig000004a8,
      Q => NlwRenamedSig_OI_det_v0blank_hstart(3)
    );
  blk00000001_blk00000324 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a9,
      D => blk00000001_sig00000546,
      R => blk00000001_sig000004a8,
      Q => NlwRenamedSig_OI_det_v0blank_hstart(4)
    );
  blk00000001_blk00000323 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a9,
      D => blk00000001_sig00000547,
      R => blk00000001_sig000004a8,
      Q => NlwRenamedSig_OI_det_v0blank_hstart(5)
    );
  blk00000001_blk00000322 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a9,
      D => blk00000001_sig00000548,
      R => blk00000001_sig000004a8,
      Q => NlwRenamedSig_OI_det_v0blank_hstart(6)
    );
  blk00000001_blk00000321 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a9,
      D => blk00000001_sig00000549,
      R => blk00000001_sig000004a8,
      Q => NlwRenamedSig_OI_det_v0blank_hstart(7)
    );
  blk00000001_blk00000320 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a9,
      D => blk00000001_sig0000054a,
      R => blk00000001_sig000004a8,
      Q => NlwRenamedSig_OI_det_v0blank_hstart(8)
    );
  blk00000001_blk0000031f : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a9,
      D => blk00000001_sig0000054b,
      R => blk00000001_sig000004a8,
      Q => NlwRenamedSig_OI_det_v0blank_hstart(9)
    );
  blk00000001_blk0000031e : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a9,
      D => blk00000001_sig0000054c,
      R => blk00000001_sig000004a8,
      Q => NlwRenamedSig_OI_det_v0blank_hstart(10)
    );
  blk00000001_blk0000031d : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a7,
      D => blk00000001_sig00000542,
      R => blk00000001_sig000004a6,
      Q => NlwRenamedSig_OI_det_v0blank_hend(0)
    );
  blk00000001_blk0000031c : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a7,
      D => blk00000001_sig00000543,
      R => blk00000001_sig000004a6,
      Q => NlwRenamedSig_OI_det_v0blank_hend(1)
    );
  blk00000001_blk0000031b : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a7,
      D => blk00000001_sig00000544,
      R => blk00000001_sig000004a6,
      Q => NlwRenamedSig_OI_det_v0blank_hend(2)
    );
  blk00000001_blk0000031a : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a7,
      D => blk00000001_sig00000545,
      R => blk00000001_sig000004a6,
      Q => NlwRenamedSig_OI_det_v0blank_hend(3)
    );
  blk00000001_blk00000319 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a7,
      D => blk00000001_sig00000546,
      R => blk00000001_sig000004a6,
      Q => NlwRenamedSig_OI_det_v0blank_hend(4)
    );
  blk00000001_blk00000318 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a7,
      D => blk00000001_sig00000547,
      R => blk00000001_sig000004a6,
      Q => NlwRenamedSig_OI_det_v0blank_hend(5)
    );
  blk00000001_blk00000317 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a7,
      D => blk00000001_sig00000548,
      R => blk00000001_sig000004a6,
      Q => NlwRenamedSig_OI_det_v0blank_hend(6)
    );
  blk00000001_blk00000316 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a7,
      D => blk00000001_sig00000549,
      R => blk00000001_sig000004a6,
      Q => NlwRenamedSig_OI_det_v0blank_hend(7)
    );
  blk00000001_blk00000315 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a7,
      D => blk00000001_sig0000054a,
      R => blk00000001_sig000004a6,
      Q => NlwRenamedSig_OI_det_v0blank_hend(8)
    );
  blk00000001_blk00000314 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a7,
      D => blk00000001_sig0000054b,
      R => blk00000001_sig000004a6,
      Q => NlwRenamedSig_OI_det_v0blank_hend(9)
    );
  blk00000001_blk00000313 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a7,
      D => blk00000001_sig0000054c,
      R => blk00000001_sig000004a6,
      Q => NlwRenamedSig_OI_det_v0blank_hend(10)
    );
  blk00000001_blk00000312 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => blk00000001_sig00000609,
      R => blk00000001_sig00000508,
      Q => blk00000001_sig00000608
    );
  blk00000001_blk00000311 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => blk00000001_sig00000606,
      R => blk00000001_sig00000508,
      Q => blk00000001_sig00000605
    );
  blk00000001_blk00000310 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => blk00000001_sig00000602,
      R => blk00000001_sig000004c2,
      Q => blk00000001_sig00000601
    );
  blk00000001_blk0000030f : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => blk00000001_sig000005fe,
      R => blk00000001_sig00000508,
      Q => blk00000001_sig000005fd
    );
  blk00000001_blk0000030e : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => blk00000001_sig000005f8,
      R => blk00000001_sig00000508,
      Q => blk00000001_sig000005f7
    );
  blk00000001_blk0000030d : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => blk00000001_sig00000509,
      R => blk00000001_sig00000507,
      Q => blk00000001_sig000001ca
    );
  blk00000001_blk0000030c : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ab,
      D => NlwRenamedSig_OI_det_hsync_start(0),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005e9
    );
  blk00000001_blk0000030b : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ab,
      D => NlwRenamedSig_OI_det_hsync_start(1),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005ea
    );
  blk00000001_blk0000030a : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ab,
      D => NlwRenamedSig_OI_det_hsync_start(2),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005eb
    );
  blk00000001_blk00000309 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ab,
      D => NlwRenamedSig_OI_det_hsync_start(3),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005ec
    );
  blk00000001_blk00000308 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ab,
      D => NlwRenamedSig_OI_det_hsync_start(4),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005ed
    );
  blk00000001_blk00000307 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ab,
      D => NlwRenamedSig_OI_det_hsync_start(5),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005ee
    );
  blk00000001_blk00000306 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ab,
      D => NlwRenamedSig_OI_det_hsync_start(6),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005ef
    );
  blk00000001_blk00000305 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ab,
      D => NlwRenamedSig_OI_det_hsync_start(7),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005f0
    );
  blk00000001_blk00000304 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ab,
      D => NlwRenamedSig_OI_det_hsync_start(8),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005f1
    );
  blk00000001_blk00000303 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ab,
      D => NlwRenamedSig_OI_det_hsync_start(9),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005f2
    );
  blk00000001_blk00000302 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ab,
      D => NlwRenamedSig_OI_det_hsync_start(10),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005f3
    );
  blk00000001_blk00000301 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003aa,
      D => NlwRenamedSig_OI_det_hbp_start(0),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005de
    );
  blk00000001_blk00000300 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003aa,
      D => NlwRenamedSig_OI_det_hbp_start(1),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005df
    );
  blk00000001_blk000002ff : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003aa,
      D => NlwRenamedSig_OI_det_hbp_start(2),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005e0
    );
  blk00000001_blk000002fe : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003aa,
      D => NlwRenamedSig_OI_det_hbp_start(3),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005e1
    );
  blk00000001_blk000002fd : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003aa,
      D => NlwRenamedSig_OI_det_hbp_start(4),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005e2
    );
  blk00000001_blk000002fc : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003aa,
      D => NlwRenamedSig_OI_det_hbp_start(5),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005e3
    );
  blk00000001_blk000002fb : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003aa,
      D => NlwRenamedSig_OI_det_hbp_start(6),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005e4
    );
  blk00000001_blk000002fa : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003aa,
      D => NlwRenamedSig_OI_det_hbp_start(7),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005e5
    );
  blk00000001_blk000002f9 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003aa,
      D => NlwRenamedSig_OI_det_hbp_start(8),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005e6
    );
  blk00000001_blk000002f8 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003aa,
      D => NlwRenamedSig_OI_det_hbp_start(9),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005e7
    );
  blk00000001_blk000002f7 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003aa,
      D => NlwRenamedSig_OI_det_hbp_start(10),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005e8
    );
  blk00000001_blk000002f6 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004ab,
      D => NlwRenamedSig_OI_det_hfp_start(0),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005d3
    );
  blk00000001_blk000002f5 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004ab,
      D => NlwRenamedSig_OI_det_hfp_start(1),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005d4
    );
  blk00000001_blk000002f4 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004ab,
      D => NlwRenamedSig_OI_det_hfp_start(2),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005d5
    );
  blk00000001_blk000002f3 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004ab,
      D => NlwRenamedSig_OI_det_hfp_start(3),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005d6
    );
  blk00000001_blk000002f2 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004ab,
      D => NlwRenamedSig_OI_det_hfp_start(4),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005d7
    );
  blk00000001_blk000002f1 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004ab,
      D => NlwRenamedSig_OI_det_hfp_start(5),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005d8
    );
  blk00000001_blk000002f0 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004ab,
      D => NlwRenamedSig_OI_det_hfp_start(6),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005d9
    );
  blk00000001_blk000002ef : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004ab,
      D => NlwRenamedSig_OI_det_hfp_start(7),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005da
    );
  blk00000001_blk000002ee : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004ab,
      D => NlwRenamedSig_OI_det_hfp_start(8),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005db
    );
  blk00000001_blk000002ed : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004ab,
      D => NlwRenamedSig_OI_det_hfp_start(9),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005dc
    );
  blk00000001_blk000002ec : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004ab,
      D => NlwRenamedSig_OI_det_hfp_start(10),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005dd
    );
  blk00000001_blk000002eb : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004aa,
      D => NlwRenamedSig_OI_det_hactive_start(0),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005c8
    );
  blk00000001_blk000002ea : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004aa,
      D => NlwRenamedSig_OI_det_hactive_start(1),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005c9
    );
  blk00000001_blk000002e9 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004aa,
      D => NlwRenamedSig_OI_det_hactive_start(2),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005ca
    );
  blk00000001_blk000002e8 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004aa,
      D => NlwRenamedSig_OI_det_hactive_start(3),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005cb
    );
  blk00000001_blk000002e7 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004aa,
      D => NlwRenamedSig_OI_det_hactive_start(4),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005cc
    );
  blk00000001_blk000002e6 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004aa,
      D => NlwRenamedSig_OI_det_hactive_start(5),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005cd
    );
  blk00000001_blk000002e5 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004aa,
      D => NlwRenamedSig_OI_det_hactive_start(6),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005ce
    );
  blk00000001_blk000002e4 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004aa,
      D => NlwRenamedSig_OI_det_hactive_start(7),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005cf
    );
  blk00000001_blk000002e3 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004aa,
      D => NlwRenamedSig_OI_det_hactive_start(8),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005d0
    );
  blk00000001_blk000002e2 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004aa,
      D => NlwRenamedSig_OI_det_hactive_start(9),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005d1
    );
  blk00000001_blk000002e1 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004aa,
      D => NlwRenamedSig_OI_det_hactive_start(10),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005d2
    );
  blk00000001_blk000002e0 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a9,
      D => NlwRenamedSig_OI_det_v0blank_hstart(0),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig0000057b
    );
  blk00000001_blk000002df : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a9,
      D => NlwRenamedSig_OI_det_v0blank_hstart(1),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig0000057c
    );
  blk00000001_blk000002de : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a9,
      D => NlwRenamedSig_OI_det_v0blank_hstart(2),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig0000057d
    );
  blk00000001_blk000002dd : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a9,
      D => NlwRenamedSig_OI_det_v0blank_hstart(3),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig0000057e
    );
  blk00000001_blk000002dc : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a9,
      D => NlwRenamedSig_OI_det_v0blank_hstart(4),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig0000057f
    );
  blk00000001_blk000002db : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a9,
      D => NlwRenamedSig_OI_det_v0blank_hstart(5),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig00000580
    );
  blk00000001_blk000002da : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a9,
      D => NlwRenamedSig_OI_det_v0blank_hstart(6),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig00000581
    );
  blk00000001_blk000002d9 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a9,
      D => NlwRenamedSig_OI_det_v0blank_hstart(7),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig00000582
    );
  blk00000001_blk000002d8 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a9,
      D => NlwRenamedSig_OI_det_v0blank_hstart(8),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig00000583
    );
  blk00000001_blk000002d7 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a9,
      D => NlwRenamedSig_OI_det_v0blank_hstart(9),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig00000584
    );
  blk00000001_blk000002d6 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a9,
      D => NlwRenamedSig_OI_det_v0blank_hstart(10),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig00000585
    );
  blk00000001_blk000002d5 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007be,
      D => NlwRenamedSig_OI_det_v0blank_hend(0),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig00000565
    );
  blk00000001_blk000002d4 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007be,
      D => NlwRenamedSig_OI_det_v0blank_hend(1),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig00000566
    );
  blk00000001_blk000002d3 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007be,
      D => NlwRenamedSig_OI_det_v0blank_hend(2),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig00000567
    );
  blk00000001_blk000002d2 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007be,
      D => NlwRenamedSig_OI_det_v0blank_hend(3),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig00000568
    );
  blk00000001_blk000002d1 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007be,
      D => NlwRenamedSig_OI_det_v0blank_hend(4),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig00000569
    );
  blk00000001_blk000002d0 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007be,
      D => NlwRenamedSig_OI_det_v0blank_hend(5),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig0000056a
    );
  blk00000001_blk000002cf : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007be,
      D => NlwRenamedSig_OI_det_v0blank_hend(6),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig0000056b
    );
  blk00000001_blk000002ce : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007be,
      D => NlwRenamedSig_OI_det_v0blank_hend(7),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig0000056c
    );
  blk00000001_blk000002cd : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007be,
      D => NlwRenamedSig_OI_det_v0blank_hend(8),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig0000056d
    );
  blk00000001_blk000002cc : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007be,
      D => NlwRenamedSig_OI_det_v0blank_hend(9),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig0000056e
    );
  blk00000001_blk000002cb : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007be,
      D => NlwRenamedSig_OI_det_v0blank_hend(10),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig0000056f
    );
  blk00000001_blk000002ca : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000004c3,
      Q => blk00000001_sig0000061a
    );
  blk00000001_blk000002c9 : FD
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000004f0,
      Q => blk00000001_sig00000619
    );
  blk00000001_blk000002c8 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => blk00000001_sig000004bc,
      R => blk00000001_sig00000508,
      Q => blk00000001_sig00000607
    );
  blk00000001_blk000002c7 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => blk00000001_sig000004bb,
      R => blk00000001_sig00000508,
      Q => blk00000001_sig00000603
    );
  blk00000001_blk000002c6 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => blk00000001_sig000004ba,
      R => blk00000001_sig00000508,
      Q => blk00000001_sig000005ff
    );
  blk00000001_blk000002c5 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a2,
      D => blk00000001_sig000004da,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0sync_hstart(0)
    );
  blk00000001_blk000002c4 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a2,
      D => blk00000001_sig000004db,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0sync_hstart(1)
    );
  blk00000001_blk000002c3 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a2,
      D => blk00000001_sig000004dc,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0sync_hstart(2)
    );
  blk00000001_blk000002c2 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a2,
      D => blk00000001_sig000004dd,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0sync_hstart(3)
    );
  blk00000001_blk000002c1 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a2,
      D => blk00000001_sig000004de,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0sync_hstart(4)
    );
  blk00000001_blk000002c0 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a2,
      D => blk00000001_sig000004df,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0sync_hstart(5)
    );
  blk00000001_blk000002bf : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a2,
      D => blk00000001_sig000004e0,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0sync_hstart(6)
    );
  blk00000001_blk000002be : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a2,
      D => blk00000001_sig000004e1,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0sync_hstart(7)
    );
  blk00000001_blk000002bd : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a2,
      D => blk00000001_sig000004e2,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0sync_hstart(8)
    );
  blk00000001_blk000002bc : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a2,
      D => blk00000001_sig000004e3,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0sync_hstart(9)
    );
  blk00000001_blk000002bb : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a2,
      D => blk00000001_sig000004e4,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0sync_hstart(10)
    );
  blk00000001_blk000002ba : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a1,
      D => blk00000001_sig000004c4,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0sync_hend(0)
    );
  blk00000001_blk000002b9 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a1,
      D => blk00000001_sig000004c5,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0sync_hend(1)
    );
  blk00000001_blk000002b8 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a1,
      D => blk00000001_sig000004c6,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0sync_hend(2)
    );
  blk00000001_blk000002b7 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a1,
      D => blk00000001_sig000004c7,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0sync_hend(3)
    );
  blk00000001_blk000002b6 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a1,
      D => blk00000001_sig000004c8,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0sync_hend(4)
    );
  blk00000001_blk000002b5 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a1,
      D => blk00000001_sig000004c9,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0sync_hend(5)
    );
  blk00000001_blk000002b4 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a1,
      D => blk00000001_sig000004ca,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0sync_hend(6)
    );
  blk00000001_blk000002b3 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a1,
      D => blk00000001_sig000004cb,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0sync_hend(7)
    );
  blk00000001_blk000002b2 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a1,
      D => blk00000001_sig000004cc,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0sync_hend(8)
    );
  blk00000001_blk000002b1 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a1,
      D => blk00000001_sig000004cd,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0sync_hend(9)
    );
  blk00000001_blk000002b0 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a1,
      D => blk00000001_sig000004ce,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0sync_hend(10)
    );
  blk00000001_blk000002af : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => blk00000001_sig00000515,
      R => blk00000001_sig00000507,
      Q => blk00000001_sig000001cb
    );
  blk00000001_blk000002ae : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => NlwRenamedSig_OI_det_htotal(0),
      S => blk00000001_sig00000508,
      Q => blk00000001_sig0000054f
    );
  blk00000001_blk000002ad : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => NlwRenamedSig_OI_det_htotal(1),
      S => blk00000001_sig00000508,
      Q => blk00000001_sig00000550
    );
  blk00000001_blk000002ac : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => blk00000001_sig000004fe,
      S => blk00000001_sig00000508,
      Q => blk00000001_sig00000551
    );
  blk00000001_blk000002ab : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => blk00000001_sig000004ff,
      S => blk00000001_sig00000508,
      Q => blk00000001_sig00000552
    );
  blk00000001_blk000002aa : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => blk00000001_sig00000500,
      S => blk00000001_sig00000508,
      Q => blk00000001_sig00000553
    );
  blk00000001_blk000002a9 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => blk00000001_sig00000501,
      S => blk00000001_sig00000508,
      Q => blk00000001_sig00000554
    );
  blk00000001_blk000002a8 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => blk00000001_sig00000502,
      S => blk00000001_sig00000508,
      Q => blk00000001_sig00000555
    );
  blk00000001_blk000002a7 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => blk00000001_sig00000503,
      S => blk00000001_sig00000508,
      Q => blk00000001_sig00000556
    );
  blk00000001_blk000002a6 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => blk00000001_sig00000504,
      S => blk00000001_sig00000508,
      Q => blk00000001_sig00000557
    );
  blk00000001_blk000002a5 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => blk00000001_sig00000505,
      S => blk00000001_sig00000508,
      Q => blk00000001_sig00000558
    );
  blk00000001_blk000002a4 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => blk00000001_sig00000506,
      S => blk00000001_sig00000508,
      Q => blk00000001_sig00000559
    );
  blk00000001_blk000002a3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a5,
      D => blk00000001_sig000004ac,
      R => blk00000001_sig000004a4,
      Q => blk00000001_sig00000450
    );
  blk00000001_blk000002a2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a5,
      D => blk00000001_sig000004ad,
      R => blk00000001_sig000004a4,
      Q => blk00000001_sig0000044f
    );
  blk00000001_blk000002a1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a5,
      D => blk00000001_sig000004ae,
      R => blk00000001_sig000004a4,
      Q => blk00000001_sig0000044e
    );
  blk00000001_blk000002a0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a5,
      D => blk00000001_sig000004af,
      R => blk00000001_sig000004a4,
      Q => blk00000001_sig0000044d
    );
  blk00000001_blk0000029f : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a5,
      D => blk00000001_sig000004b0,
      R => blk00000001_sig000004a4,
      Q => blk00000001_sig0000044c
    );
  blk00000001_blk0000029e : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a5,
      D => blk00000001_sig000004b1,
      R => blk00000001_sig000004a4,
      Q => blk00000001_sig0000044b
    );
  blk00000001_blk0000029d : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a5,
      D => blk00000001_sig000004b2,
      R => blk00000001_sig000004a4,
      Q => blk00000001_sig0000044a
    );
  blk00000001_blk0000029c : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a5,
      D => blk00000001_sig000004b3,
      R => blk00000001_sig000004a4,
      Q => blk00000001_sig00000449
    );
  blk00000001_blk0000029b : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a5,
      D => blk00000001_sig000004b4,
      R => blk00000001_sig000004a4,
      Q => blk00000001_sig00000448
    );
  blk00000001_blk0000029a : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a5,
      D => blk00000001_sig000004b5,
      R => blk00000001_sig000004a4,
      Q => blk00000001_sig00000447
    );
  blk00000001_blk00000299 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ad,
      D => blk00000001_sig00000451,
      R => blk00000001_sig00000508,
      Q => blk00000001_sig0000060a
    );
  blk00000001_blk00000298 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ad,
      D => blk00000001_sig00000450,
      R => blk00000001_sig00000508,
      Q => blk00000001_sig0000060b
    );
  blk00000001_blk00000297 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ad,
      D => blk00000001_sig0000044f,
      R => blk00000001_sig00000508,
      Q => blk00000001_sig0000060c
    );
  blk00000001_blk00000296 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ad,
      D => blk00000001_sig0000044e,
      R => blk00000001_sig00000508,
      Q => blk00000001_sig0000060d
    );
  blk00000001_blk00000295 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ad,
      D => blk00000001_sig0000044d,
      R => blk00000001_sig00000508,
      Q => blk00000001_sig0000060e
    );
  blk00000001_blk00000294 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ad,
      D => blk00000001_sig0000044c,
      R => blk00000001_sig00000508,
      Q => blk00000001_sig0000060f
    );
  blk00000001_blk00000293 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ad,
      D => blk00000001_sig0000044b,
      R => blk00000001_sig00000508,
      Q => blk00000001_sig00000610
    );
  blk00000001_blk00000292 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ad,
      D => blk00000001_sig0000044a,
      R => blk00000001_sig00000508,
      Q => blk00000001_sig00000611
    );
  blk00000001_blk00000291 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ad,
      D => blk00000001_sig00000449,
      R => blk00000001_sig00000508,
      Q => blk00000001_sig00000612
    );
  blk00000001_blk00000290 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ad,
      D => blk00000001_sig00000448,
      R => blk00000001_sig00000508,
      Q => blk00000001_sig00000613
    );
  blk00000001_blk0000028f : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ad,
      D => blk00000001_sig00000447,
      R => blk00000001_sig00000508,
      Q => blk00000001_sig00000614
    );
  blk00000001_blk0000028e : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007bf,
      D => blk00000001_sig00000451,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0fp_start(0)
    );
  blk00000001_blk0000028d : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007bf,
      D => blk00000001_sig00000450,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0fp_start(1)
    );
  blk00000001_blk0000028c : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007bf,
      D => blk00000001_sig0000044f,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0fp_start(2)
    );
  blk00000001_blk0000028b : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007bf,
      D => blk00000001_sig0000044e,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0fp_start(3)
    );
  blk00000001_blk0000028a : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007bf,
      D => blk00000001_sig0000044d,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0fp_start(4)
    );
  blk00000001_blk00000289 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007bf,
      D => blk00000001_sig0000044c,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0fp_start(5)
    );
  blk00000001_blk00000288 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007bf,
      D => blk00000001_sig0000044b,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0fp_start(6)
    );
  blk00000001_blk00000287 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007bf,
      D => blk00000001_sig0000044a,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0fp_start(7)
    );
  blk00000001_blk00000286 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007bf,
      D => blk00000001_sig00000449,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0fp_start(8)
    );
  blk00000001_blk00000285 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007bf,
      D => blk00000001_sig00000448,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0fp_start(9)
    );
  blk00000001_blk00000284 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007bf,
      D => blk00000001_sig00000447,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0fp_start(10)
    );
  blk00000001_blk00000283 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a7,
      D => blk00000001_sig00000451,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0active_start(0)
    );
  blk00000001_blk00000282 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a7,
      D => blk00000001_sig00000450,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0active_start(1)
    );
  blk00000001_blk00000281 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a7,
      D => blk00000001_sig0000044f,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0active_start(2)
    );
  blk00000001_blk00000280 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a7,
      D => blk00000001_sig0000044e,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0active_start(3)
    );
  blk00000001_blk0000027f : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a7,
      D => blk00000001_sig0000044d,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0active_start(4)
    );
  blk00000001_blk0000027e : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a7,
      D => blk00000001_sig0000044c,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0active_start(5)
    );
  blk00000001_blk0000027d : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a7,
      D => blk00000001_sig0000044b,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0active_start(6)
    );
  blk00000001_blk0000027c : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a7,
      D => blk00000001_sig0000044a,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0active_start(7)
    );
  blk00000001_blk0000027b : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a7,
      D => blk00000001_sig00000449,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0active_start(8)
    );
  blk00000001_blk0000027a : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a7,
      D => blk00000001_sig00000448,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0active_start(9)
    );
  blk00000001_blk00000279 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a7,
      D => blk00000001_sig00000447,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0active_start(10)
    );
  blk00000001_blk00000278 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003a9,
      D => NlwRenamedSig_OI_det_v0sync_hstart(0),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005a7
    );
  blk00000001_blk00000277 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003a9,
      D => NlwRenamedSig_OI_det_v0sync_hstart(1),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005a8
    );
  blk00000001_blk00000276 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003a9,
      D => NlwRenamedSig_OI_det_v0sync_hstart(2),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005a9
    );
  blk00000001_blk00000275 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003a9,
      D => NlwRenamedSig_OI_det_v0sync_hstart(3),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005aa
    );
  blk00000001_blk00000274 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003a9,
      D => NlwRenamedSig_OI_det_v0sync_hstart(4),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005ab
    );
  blk00000001_blk00000273 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003a9,
      D => NlwRenamedSig_OI_det_v0sync_hstart(5),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005ac
    );
  blk00000001_blk00000272 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003a9,
      D => NlwRenamedSig_OI_det_v0sync_hstart(6),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005ad
    );
  blk00000001_blk00000271 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003a9,
      D => NlwRenamedSig_OI_det_v0sync_hstart(7),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005ae
    );
  blk00000001_blk00000270 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003a9,
      D => NlwRenamedSig_OI_det_v0sync_hstart(8),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005af
    );
  blk00000001_blk0000026f : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003a9,
      D => NlwRenamedSig_OI_det_v0sync_hstart(9),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005b0
    );
  blk00000001_blk0000026e : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003a9,
      D => NlwRenamedSig_OI_det_v0sync_hstart(10),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005b1
    );
  blk00000001_blk0000026d : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ac,
      D => NlwRenamedSig_OI_det_v0sync_hend(0),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig00000591
    );
  blk00000001_blk0000026c : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ac,
      D => NlwRenamedSig_OI_det_v0sync_hend(1),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig00000592
    );
  blk00000001_blk0000026b : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ac,
      D => NlwRenamedSig_OI_det_v0sync_hend(2),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig00000593
    );
  blk00000001_blk0000026a : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ac,
      D => NlwRenamedSig_OI_det_v0sync_hend(3),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig00000594
    );
  blk00000001_blk00000269 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ac,
      D => NlwRenamedSig_OI_det_v0sync_hend(4),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig00000595
    );
  blk00000001_blk00000268 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ac,
      D => NlwRenamedSig_OI_det_v0sync_hend(5),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig00000596
    );
  blk00000001_blk00000267 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ac,
      D => NlwRenamedSig_OI_det_v0sync_hend(6),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig00000597
    );
  blk00000001_blk00000266 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ac,
      D => NlwRenamedSig_OI_det_v0sync_hend(7),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig00000598
    );
  blk00000001_blk00000265 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ac,
      D => NlwRenamedSig_OI_det_v0sync_hend(8),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig00000599
    );
  blk00000001_blk00000264 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ac,
      D => NlwRenamedSig_OI_det_v0sync_hend(9),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig0000059a
    );
  blk00000001_blk00000263 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ac,
      D => NlwRenamedSig_OI_det_v0sync_hend(10),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig0000059b
    );
  blk00000001_blk00000262 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007bf,
      D => NlwRenamedSig_OI_det_v0fp_start(0),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig00000586
    );
  blk00000001_blk00000261 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007bf,
      D => NlwRenamedSig_OI_det_v0fp_start(1),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig00000587
    );
  blk00000001_blk00000260 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007bf,
      D => NlwRenamedSig_OI_det_v0fp_start(2),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig00000588
    );
  blk00000001_blk0000025f : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007bf,
      D => NlwRenamedSig_OI_det_v0fp_start(3),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig00000589
    );
  blk00000001_blk0000025e : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007bf,
      D => NlwRenamedSig_OI_det_v0fp_start(4),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig0000058a
    );
  blk00000001_blk0000025d : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007bf,
      D => NlwRenamedSig_OI_det_v0fp_start(5),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig0000058b
    );
  blk00000001_blk0000025c : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007bf,
      D => NlwRenamedSig_OI_det_v0fp_start(6),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig0000058c
    );
  blk00000001_blk0000025b : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007bf,
      D => NlwRenamedSig_OI_det_v0fp_start(7),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig0000058d
    );
  blk00000001_blk0000025a : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007bf,
      D => NlwRenamedSig_OI_det_v0fp_start(8),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig0000058e
    );
  blk00000001_blk00000259 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007bf,
      D => NlwRenamedSig_OI_det_v0fp_start(9),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig0000058f
    );
  blk00000001_blk00000258 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007bf,
      D => NlwRenamedSig_OI_det_v0fp_start(10),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig00000590
    );
  blk00000001_blk00000257 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007be,
      D => NlwRenamedSig_OI_det_v0active_start(0),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig00000570
    );
  blk00000001_blk00000256 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007be,
      D => NlwRenamedSig_OI_det_v0active_start(1),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig00000571
    );
  blk00000001_blk00000255 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007be,
      D => NlwRenamedSig_OI_det_v0active_start(2),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig00000572
    );
  blk00000001_blk00000254 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007be,
      D => NlwRenamedSig_OI_det_v0active_start(3),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig00000573
    );
  blk00000001_blk00000253 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007be,
      D => NlwRenamedSig_OI_det_v0active_start(4),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig00000574
    );
  blk00000001_blk00000252 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007be,
      D => NlwRenamedSig_OI_det_v0active_start(5),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig00000575
    );
  blk00000001_blk00000251 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007be,
      D => NlwRenamedSig_OI_det_v0active_start(6),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig00000576
    );
  blk00000001_blk00000250 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007be,
      D => NlwRenamedSig_OI_det_v0active_start(7),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig00000577
    );
  blk00000001_blk0000024f : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007be,
      D => NlwRenamedSig_OI_det_v0active_start(8),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig00000578
    );
  blk00000001_blk0000024e : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007be,
      D => NlwRenamedSig_OI_det_v0active_start(9),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig00000579
    );
  blk00000001_blk0000024d : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000007be,
      D => NlwRenamedSig_OI_det_v0active_start(10),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig0000057a
    );
  blk00000001_blk0000024c : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a3,
      D => blk00000001_sig000004f3,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0total(0)
    );
  blk00000001_blk0000024b : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a3,
      D => blk00000001_sig000004f4,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0total(1)
    );
  blk00000001_blk0000024a : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a3,
      D => blk00000001_sig000004f5,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0total(2)
    );
  blk00000001_blk00000249 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a3,
      D => blk00000001_sig000004f6,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0total(3)
    );
  blk00000001_blk00000248 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a3,
      D => blk00000001_sig000004f7,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0total(4)
    );
  blk00000001_blk00000247 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a3,
      D => blk00000001_sig000004f8,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0total(5)
    );
  blk00000001_blk00000246 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a3,
      D => blk00000001_sig000004f9,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0total(6)
    );
  blk00000001_blk00000245 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a3,
      D => blk00000001_sig000004fa,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0total(7)
    );
  blk00000001_blk00000244 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a3,
      D => blk00000001_sig000004fb,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0total(8)
    );
  blk00000001_blk00000243 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a3,
      D => blk00000001_sig000004fc,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0total(9)
    );
  blk00000001_blk00000242 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a3,
      D => blk00000001_sig000004fd,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0total(10)
    );
  blk00000001_blk00000241 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a2,
      D => blk00000001_sig000004e5,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0sync_start(0)
    );
  blk00000001_blk00000240 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a2,
      D => blk00000001_sig000004e6,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0sync_start(1)
    );
  blk00000001_blk0000023f : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a2,
      D => blk00000001_sig000004e7,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0sync_start(2)
    );
  blk00000001_blk0000023e : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a2,
      D => blk00000001_sig000004e8,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0sync_start(3)
    );
  blk00000001_blk0000023d : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a2,
      D => blk00000001_sig000004e9,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0sync_start(4)
    );
  blk00000001_blk0000023c : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a2,
      D => blk00000001_sig000004ea,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0sync_start(5)
    );
  blk00000001_blk0000023b : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a2,
      D => blk00000001_sig000004eb,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0sync_start(6)
    );
  blk00000001_blk0000023a : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a2,
      D => blk00000001_sig000004ec,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0sync_start(7)
    );
  blk00000001_blk00000239 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a2,
      D => blk00000001_sig000004ed,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0sync_start(8)
    );
  blk00000001_blk00000238 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a2,
      D => blk00000001_sig000004ee,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0sync_start(9)
    );
  blk00000001_blk00000237 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a2,
      D => blk00000001_sig000004ef,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0sync_start(10)
    );
  blk00000001_blk00000236 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a1,
      D => blk00000001_sig000004cf,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0bp_start(0)
    );
  blk00000001_blk00000235 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a1,
      D => blk00000001_sig000004d0,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0bp_start(1)
    );
  blk00000001_blk00000234 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a1,
      D => blk00000001_sig000004d1,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0bp_start(2)
    );
  blk00000001_blk00000233 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a1,
      D => blk00000001_sig000004d2,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0bp_start(3)
    );
  blk00000001_blk00000232 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a1,
      D => blk00000001_sig000004d3,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0bp_start(4)
    );
  blk00000001_blk00000231 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a1,
      D => blk00000001_sig000004d4,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0bp_start(5)
    );
  blk00000001_blk00000230 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a1,
      D => blk00000001_sig000004d5,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0bp_start(6)
    );
  blk00000001_blk0000022f : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a1,
      D => blk00000001_sig000004d6,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0bp_start(7)
    );
  blk00000001_blk0000022e : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a1,
      D => blk00000001_sig000004d7,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0bp_start(8)
    );
  blk00000001_blk0000022d : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a1,
      D => blk00000001_sig000004d8,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0bp_start(9)
    );
  blk00000001_blk0000022c : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a1,
      D => blk00000001_sig000004d9,
      R => blk00000001_sig00000508,
      Q => NlwRenamedSig_OI_det_v0bp_start(10)
    );
  blk00000001_blk0000022b : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003a9,
      D => NlwRenamedSig_OI_det_v0sync_start(0),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005b2
    );
  blk00000001_blk0000022a : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003a9,
      D => NlwRenamedSig_OI_det_v0sync_start(1),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005b3
    );
  blk00000001_blk00000229 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003a9,
      D => NlwRenamedSig_OI_det_v0sync_start(2),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005b4
    );
  blk00000001_blk00000228 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003a9,
      D => NlwRenamedSig_OI_det_v0sync_start(3),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005b5
    );
  blk00000001_blk00000227 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003a9,
      D => NlwRenamedSig_OI_det_v0sync_start(4),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005b6
    );
  blk00000001_blk00000226 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003a9,
      D => NlwRenamedSig_OI_det_v0sync_start(5),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005b7
    );
  blk00000001_blk00000225 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003a9,
      D => NlwRenamedSig_OI_det_v0sync_start(6),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005b8
    );
  blk00000001_blk00000224 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003a9,
      D => NlwRenamedSig_OI_det_v0sync_start(7),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005b9
    );
  blk00000001_blk00000223 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003a9,
      D => NlwRenamedSig_OI_det_v0sync_start(8),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005ba
    );
  blk00000001_blk00000222 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003a9,
      D => NlwRenamedSig_OI_det_v0sync_start(9),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005bb
    );
  blk00000001_blk00000221 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003a9,
      D => NlwRenamedSig_OI_det_v0sync_start(10),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005bc
    );
  blk00000001_blk00000220 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ac,
      D => NlwRenamedSig_OI_det_v0bp_start(0),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig0000059c
    );
  blk00000001_blk0000021f : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ac,
      D => NlwRenamedSig_OI_det_v0bp_start(1),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig0000059d
    );
  blk00000001_blk0000021e : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ac,
      D => NlwRenamedSig_OI_det_v0bp_start(2),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig0000059e
    );
  blk00000001_blk0000021d : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ac,
      D => NlwRenamedSig_OI_det_v0bp_start(3),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig0000059f
    );
  blk00000001_blk0000021c : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ac,
      D => NlwRenamedSig_OI_det_v0bp_start(4),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005a0
    );
  blk00000001_blk0000021b : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ac,
      D => NlwRenamedSig_OI_det_v0bp_start(5),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005a1
    );
  blk00000001_blk0000021a : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ac,
      D => NlwRenamedSig_OI_det_v0bp_start(6),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005a2
    );
  blk00000001_blk00000219 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ac,
      D => NlwRenamedSig_OI_det_v0bp_start(7),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005a3
    );
  blk00000001_blk00000218 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ac,
      D => NlwRenamedSig_OI_det_v0bp_start(8),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005a4
    );
  blk00000001_blk00000217 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ac,
      D => NlwRenamedSig_OI_det_v0bp_start(9),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005a5
    );
  blk00000001_blk00000216 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000003ac,
      D => NlwRenamedSig_OI_det_v0bp_start(10),
      S => blk00000001_sig00000507,
      Q => blk00000001_sig000005a6
    );
  blk00000001_blk00000215 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => NlwRenamedSig_OI_det_v0total(0),
      S => blk00000001_sig00000508,
      Q => blk00000001_sig0000055a
    );
  blk00000001_blk00000214 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => NlwRenamedSig_OI_det_v0total(1),
      S => blk00000001_sig00000508,
      Q => blk00000001_sig0000055b
    );
  blk00000001_blk00000213 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => NlwRenamedSig_OI_det_v0total(2),
      S => blk00000001_sig00000508,
      Q => blk00000001_sig0000055c
    );
  blk00000001_blk00000212 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => NlwRenamedSig_OI_det_v0total(3),
      S => blk00000001_sig00000508,
      Q => blk00000001_sig0000055d
    );
  blk00000001_blk00000211 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => NlwRenamedSig_OI_det_v0total(4),
      S => blk00000001_sig00000508,
      Q => blk00000001_sig0000055e
    );
  blk00000001_blk00000210 : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => NlwRenamedSig_OI_det_v0total(5),
      S => blk00000001_sig00000508,
      Q => blk00000001_sig0000055f
    );
  blk00000001_blk0000020f : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => NlwRenamedSig_OI_det_v0total(6),
      S => blk00000001_sig00000508,
      Q => blk00000001_sig00000560
    );
  blk00000001_blk0000020e : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => NlwRenamedSig_OI_det_v0total(7),
      S => blk00000001_sig00000508,
      Q => blk00000001_sig00000561
    );
  blk00000001_blk0000020d : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => NlwRenamedSig_OI_det_v0total(8),
      S => blk00000001_sig00000508,
      Q => blk00000001_sig00000562
    );
  blk00000001_blk0000020c : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => NlwRenamedSig_OI_det_v0total(9),
      S => blk00000001_sig00000508,
      Q => blk00000001_sig00000563
    );
  blk00000001_blk0000020b : FDSE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => NlwRenamedSig_OI_det_v0total(10),
      S => blk00000001_sig00000508,
      Q => blk00000001_sig00000564
    );
  blk00000001_blk0000020a : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a0,
      D => blk00000001_sig0000049d,
      R => blk00000001_sig0000049f,
      Q => blk00000001_sig0000052d
    );
  blk00000001_blk00000209 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a0,
      D => blk00000001_sig0000049c,
      R => blk00000001_sig0000049f,
      Q => blk00000001_sig0000052e
    );
  blk00000001_blk00000208 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a0,
      D => blk00000001_sig0000049b,
      R => blk00000001_sig0000049f,
      Q => blk00000001_sig0000052f
    );
  blk00000001_blk00000207 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a0,
      D => blk00000001_sig00000498,
      R => blk00000001_sig0000049f,
      Q => blk00000001_sig00000532
    );
  blk00000001_blk00000206 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a0,
      D => blk00000001_sig0000049a,
      R => blk00000001_sig0000049f,
      Q => blk00000001_sig00000530
    );
  blk00000001_blk00000205 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a0,
      D => blk00000001_sig00000499,
      R => blk00000001_sig0000049f,
      Q => blk00000001_sig00000531
    );
  blk00000001_blk00000204 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a0,
      D => blk00000001_sig00000497,
      R => blk00000001_sig0000049f,
      Q => blk00000001_sig00000533
    );
  blk00000001_blk00000203 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a0,
      D => blk00000001_sig00000496,
      R => blk00000001_sig0000049f,
      Q => blk00000001_sig00000534
    );
  blk00000001_blk00000202 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a0,
      D => blk00000001_sig00000495,
      R => blk00000001_sig0000049f,
      Q => blk00000001_sig00000535
    );
  blk00000001_blk00000201 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a0,
      D => blk00000001_sig00000494,
      R => blk00000001_sig0000049f,
      Q => blk00000001_sig00000536
    );
  blk00000001_blk00000200 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000493,
      D => blk00000001_sig00000490,
      R => blk00000001_sig00000492,
      Q => blk00000001_sig00000543
    );
  blk00000001_blk000001ff : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000493,
      D => blk00000001_sig0000048f,
      R => blk00000001_sig00000492,
      Q => blk00000001_sig00000544
    );
  blk00000001_blk000001fe : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000493,
      D => blk00000001_sig0000048e,
      R => blk00000001_sig00000492,
      Q => blk00000001_sig00000545
    );
  blk00000001_blk000001fd : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000493,
      D => blk00000001_sig0000048d,
      R => blk00000001_sig00000492,
      Q => blk00000001_sig00000546
    );
  blk00000001_blk000001fc : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000493,
      D => blk00000001_sig0000048c,
      R => blk00000001_sig00000492,
      Q => blk00000001_sig00000547
    );
  blk00000001_blk000001fb : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000493,
      D => blk00000001_sig0000048b,
      R => blk00000001_sig00000492,
      Q => blk00000001_sig00000548
    );
  blk00000001_blk000001fa : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000493,
      D => blk00000001_sig0000048a,
      R => blk00000001_sig00000492,
      Q => blk00000001_sig00000549
    );
  blk00000001_blk000001f9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000493,
      D => blk00000001_sig00000489,
      R => blk00000001_sig00000492,
      Q => blk00000001_sig0000054a
    );
  blk00000001_blk000001f8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000493,
      D => blk00000001_sig00000488,
      R => blk00000001_sig00000492,
      Q => blk00000001_sig0000054b
    );
  blk00000001_blk000001f7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000493,
      D => blk00000001_sig00000487,
      R => blk00000001_sig00000492,
      Q => blk00000001_sig0000054c
    );
  blk00000001_blk000001f6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000486,
      D => blk00000001_sig00000483,
      R => blk00000001_sig00000485,
      Q => blk00000001_sig00000538
    );
  blk00000001_blk000001f5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000486,
      D => blk00000001_sig00000480,
      R => blk00000001_sig00000485,
      Q => blk00000001_sig0000053b
    );
  blk00000001_blk000001f4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000486,
      D => blk00000001_sig00000482,
      R => blk00000001_sig00000485,
      Q => blk00000001_sig00000539
    );
  blk00000001_blk000001f3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000486,
      D => blk00000001_sig00000481,
      R => blk00000001_sig00000485,
      Q => blk00000001_sig0000053a
    );
  blk00000001_blk000001f2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000486,
      D => blk00000001_sig0000047f,
      R => blk00000001_sig00000485,
      Q => blk00000001_sig0000053c
    );
  blk00000001_blk000001f1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000486,
      D => blk00000001_sig0000047e,
      R => blk00000001_sig00000485,
      Q => blk00000001_sig0000053d
    );
  blk00000001_blk000001f0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000486,
      D => blk00000001_sig0000047d,
      R => blk00000001_sig00000485,
      Q => blk00000001_sig0000053e
    );
  blk00000001_blk000001ef : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000486,
      D => blk00000001_sig0000047c,
      R => blk00000001_sig00000485,
      Q => blk00000001_sig0000053f
    );
  blk00000001_blk000001ee : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000486,
      D => blk00000001_sig0000047b,
      R => blk00000001_sig00000485,
      Q => blk00000001_sig00000540
    );
  blk00000001_blk000001ed : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000486,
      D => blk00000001_sig0000047a,
      R => blk00000001_sig00000485,
      Q => blk00000001_sig00000541
    );
  blk00000001_blk000001ec : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000479,
      D => blk00000001_sig00000476,
      R => blk00000001_sig00000478,
      Q => blk00000001_sig0000050b
    );
  blk00000001_blk000001eb : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000479,
      D => blk00000001_sig00000475,
      R => blk00000001_sig00000478,
      Q => blk00000001_sig0000050c
    );
  blk00000001_blk000001ea : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000479,
      D => blk00000001_sig00000474,
      R => blk00000001_sig00000478,
      Q => blk00000001_sig0000050d
    );
  blk00000001_blk000001e9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000479,
      D => blk00000001_sig00000471,
      R => blk00000001_sig00000478,
      Q => blk00000001_sig00000510
    );
  blk00000001_blk000001e8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000479,
      D => blk00000001_sig00000473,
      R => blk00000001_sig00000478,
      Q => blk00000001_sig0000050e
    );
  blk00000001_blk000001e7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000479,
      D => blk00000001_sig00000472,
      R => blk00000001_sig00000478,
      Q => blk00000001_sig0000050f
    );
  blk00000001_blk000001e6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000479,
      D => blk00000001_sig00000470,
      R => blk00000001_sig00000478,
      Q => blk00000001_sig00000511
    );
  blk00000001_blk000001e5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000479,
      D => blk00000001_sig0000046f,
      R => blk00000001_sig00000478,
      Q => blk00000001_sig00000512
    );
  blk00000001_blk000001e4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000479,
      D => blk00000001_sig0000046e,
      R => blk00000001_sig00000478,
      Q => blk00000001_sig00000513
    );
  blk00000001_blk000001e3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000479,
      D => blk00000001_sig0000046d,
      R => blk00000001_sig00000478,
      Q => blk00000001_sig00000514
    );
  blk00000001_blk000001e2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000046c,
      D => blk00000001_sig00000469,
      R => blk00000001_sig0000046b,
      Q => blk00000001_sig00000522
    );
  blk00000001_blk000001e1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000046c,
      D => blk00000001_sig00000468,
      R => blk00000001_sig0000046b,
      Q => blk00000001_sig00000523
    );
  blk00000001_blk000001e0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000046c,
      D => blk00000001_sig00000467,
      R => blk00000001_sig0000046b,
      Q => blk00000001_sig00000524
    );
  blk00000001_blk000001df : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000046c,
      D => blk00000001_sig00000466,
      R => blk00000001_sig0000046b,
      Q => blk00000001_sig00000525
    );
  blk00000001_blk000001de : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000046c,
      D => blk00000001_sig00000465,
      R => blk00000001_sig0000046b,
      Q => blk00000001_sig00000526
    );
  blk00000001_blk000001dd : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000046c,
      D => blk00000001_sig00000464,
      R => blk00000001_sig0000046b,
      Q => blk00000001_sig00000527
    );
  blk00000001_blk000001dc : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000046c,
      D => blk00000001_sig00000461,
      R => blk00000001_sig0000046b,
      Q => blk00000001_sig0000052a
    );
  blk00000001_blk000001db : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000046c,
      D => blk00000001_sig00000463,
      R => blk00000001_sig0000046b,
      Q => blk00000001_sig00000528
    );
  blk00000001_blk000001da : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000046c,
      D => blk00000001_sig00000462,
      R => blk00000001_sig0000046b,
      Q => blk00000001_sig00000529
    );
  blk00000001_blk000001d9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000046c,
      D => blk00000001_sig00000460,
      R => blk00000001_sig0000046b,
      Q => blk00000001_sig0000052b
    );
  blk00000001_blk000001d8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000045f,
      D => blk00000001_sig0000045c,
      R => blk00000001_sig0000045e,
      Q => blk00000001_sig00000517
    );
  blk00000001_blk000001d7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000045f,
      D => blk00000001_sig00000459,
      R => blk00000001_sig0000045e,
      Q => blk00000001_sig0000051a
    );
  blk00000001_blk000001d6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000045f,
      D => blk00000001_sig0000045b,
      R => blk00000001_sig0000045e,
      Q => blk00000001_sig00000518
    );
  blk00000001_blk000001d5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000045f,
      D => blk00000001_sig0000045a,
      R => blk00000001_sig0000045e,
      Q => blk00000001_sig00000519
    );
  blk00000001_blk000001d4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000045f,
      D => blk00000001_sig00000458,
      R => blk00000001_sig0000045e,
      Q => blk00000001_sig0000051b
    );
  blk00000001_blk000001d3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000045f,
      D => blk00000001_sig00000457,
      R => blk00000001_sig0000045e,
      Q => blk00000001_sig0000051c
    );
  blk00000001_blk000001d2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000045f,
      D => blk00000001_sig00000456,
      R => blk00000001_sig0000045e,
      Q => blk00000001_sig0000051d
    );
  blk00000001_blk000001d1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000045f,
      D => blk00000001_sig00000455,
      R => blk00000001_sig0000045e,
      Q => blk00000001_sig0000051e
    );
  blk00000001_blk000001d0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000045f,
      D => blk00000001_sig00000454,
      R => blk00000001_sig0000045e,
      Q => blk00000001_sig0000051f
    );
  blk00000001_blk000001cf : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000045f,
      D => blk00000001_sig00000453,
      R => blk00000001_sig0000045e,
      Q => blk00000001_sig00000520
    );
  blk00000001_blk000001ce : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig000004a0,
      D => blk00000001_sig0000049e,
      R => blk00000001_sig0000049f,
      Q => blk00000001_sig0000052c
    );
  blk00000001_blk000001cd : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000493,
      D => blk00000001_sig00000491,
      R => blk00000001_sig00000492,
      Q => blk00000001_sig00000542
    );
  blk00000001_blk000001cc : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000486,
      D => blk00000001_sig00000484,
      R => blk00000001_sig00000485,
      Q => blk00000001_sig00000537
    );
  blk00000001_blk000001cb : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000479,
      D => blk00000001_sig00000477,
      R => blk00000001_sig00000478,
      Q => blk00000001_sig0000050a
    );
  blk00000001_blk000001ca : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000046c,
      D => blk00000001_sig0000046a,
      R => blk00000001_sig0000046b,
      Q => blk00000001_sig00000521
    );
  blk00000001_blk000001c9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000045f,
      D => blk00000001_sig0000045d,
      R => blk00000001_sig0000045e,
      Q => blk00000001_sig00000516
    );
  blk00000001_blk000001c8 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => blk00000001_sig00000537,
      I1 => NlwRenamedSig_OI_det_htotal(1),
      I2 => blk00000001_sig00000538,
      I3 => NlwRenamedSig_OI_det_htotal(2),
      O => blk00000001_sig00000445
    );
  blk00000001_blk000001c7 : MUXCY
    port map (
      CI => NlwRenamedSig_OI_det_status_0_Q,
      DI => blk00000001_sig00000446,
      S => blk00000001_sig00000445,
      O => blk00000001_sig00000444
    );
  blk00000001_blk000001c6 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => blk00000001_sig00000539,
      I1 => NlwRenamedSig_OI_det_htotal(3),
      I2 => blk00000001_sig0000053a,
      I3 => NlwRenamedSig_OI_det_htotal(4),
      O => blk00000001_sig00000442
    );
  blk00000001_blk000001c5 : MUXCY
    port map (
      CI => blk00000001_sig00000444,
      DI => blk00000001_sig00000443,
      S => blk00000001_sig00000442,
      O => blk00000001_sig00000441
    );
  blk00000001_blk000001c4 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => blk00000001_sig0000053b,
      I1 => NlwRenamedSig_OI_det_htotal(5),
      I2 => blk00000001_sig0000053c,
      I3 => NlwRenamedSig_OI_det_htotal(6),
      O => blk00000001_sig0000043f
    );
  blk00000001_blk000001c3 : MUXCY
    port map (
      CI => blk00000001_sig00000441,
      DI => blk00000001_sig00000440,
      S => blk00000001_sig0000043f,
      O => blk00000001_sig0000043e
    );
  blk00000001_blk000001c2 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => blk00000001_sig0000053d,
      I1 => NlwRenamedSig_OI_det_htotal(7),
      I2 => blk00000001_sig0000053e,
      I3 => NlwRenamedSig_OI_det_htotal(8),
      O => blk00000001_sig0000043c
    );
  blk00000001_blk000001c1 : MUXCY
    port map (
      CI => blk00000001_sig0000043e,
      DI => blk00000001_sig0000043d,
      S => blk00000001_sig0000043c,
      O => blk00000001_sig0000043b
    );
  blk00000001_blk000001c0 : LUT5
    generic map(
      INIT => X"00009009"
    )
    port map (
      I0 => blk00000001_sig0000053f,
      I1 => NlwRenamedSig_OI_det_htotal(9),
      I2 => blk00000001_sig00000540,
      I3 => NlwRenamedSig_OI_det_htotal(10),
      I4 => blk00000001_sig00000541,
      O => blk00000001_sig00000439
    );
  blk00000001_blk000001bf : MUXCY
    port map (
      CI => blk00000001_sig0000043b,
      DI => blk00000001_sig0000043a,
      S => blk00000001_sig00000439,
      O => blk00000001_sig00000438
    );
  blk00000001_blk000001be : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_htotal(2),
      I1 => NlwRenamedSig_OI_det_htotal(1),
      I2 => blk00000001_sig00000542,
      I3 => blk00000001_sig00000543,
      O => blk00000001_sig00000437
    );
  blk00000001_blk000001bd : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => blk00000001_sig00000542,
      I1 => NlwRenamedSig_OI_det_htotal(1),
      I2 => blk00000001_sig00000543,
      I3 => NlwRenamedSig_OI_det_htotal(2),
      O => blk00000001_sig00000436
    );
  blk00000001_blk000001bc : MUXCY
    port map (
      CI => NlwRenamedSig_OI_det_status_24_Q,
      DI => blk00000001_sig00000437,
      S => blk00000001_sig00000436,
      O => blk00000001_sig00000435
    );
  blk00000001_blk000001bb : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_htotal(4),
      I1 => NlwRenamedSig_OI_det_htotal(3),
      I2 => blk00000001_sig00000544,
      I3 => blk00000001_sig00000545,
      O => blk00000001_sig00000434
    );
  blk00000001_blk000001ba : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => blk00000001_sig00000544,
      I1 => NlwRenamedSig_OI_det_htotal(3),
      I2 => blk00000001_sig00000545,
      I3 => NlwRenamedSig_OI_det_htotal(4),
      O => blk00000001_sig00000433
    );
  blk00000001_blk000001b9 : MUXCY
    port map (
      CI => blk00000001_sig00000435,
      DI => blk00000001_sig00000434,
      S => blk00000001_sig00000433,
      O => blk00000001_sig00000432
    );
  blk00000001_blk000001b8 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_htotal(6),
      I1 => NlwRenamedSig_OI_det_htotal(5),
      I2 => blk00000001_sig00000546,
      I3 => blk00000001_sig00000547,
      O => blk00000001_sig00000431
    );
  blk00000001_blk000001b7 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => blk00000001_sig00000546,
      I1 => NlwRenamedSig_OI_det_htotal(5),
      I2 => blk00000001_sig00000547,
      I3 => NlwRenamedSig_OI_det_htotal(6),
      O => blk00000001_sig00000430
    );
  blk00000001_blk000001b6 : MUXCY
    port map (
      CI => blk00000001_sig00000432,
      DI => blk00000001_sig00000431,
      S => blk00000001_sig00000430,
      O => blk00000001_sig0000042f
    );
  blk00000001_blk000001b5 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_htotal(8),
      I1 => NlwRenamedSig_OI_det_htotal(7),
      I2 => blk00000001_sig00000548,
      I3 => blk00000001_sig00000549,
      O => blk00000001_sig0000042e
    );
  blk00000001_blk000001b4 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => blk00000001_sig00000548,
      I1 => NlwRenamedSig_OI_det_htotal(7),
      I2 => blk00000001_sig00000549,
      I3 => NlwRenamedSig_OI_det_htotal(8),
      O => blk00000001_sig0000042d
    );
  blk00000001_blk000001b3 : MUXCY
    port map (
      CI => blk00000001_sig0000042f,
      DI => blk00000001_sig0000042e,
      S => blk00000001_sig0000042d,
      O => blk00000001_sig0000042c
    );
  blk00000001_blk000001b2 : LUT5
    generic map(
      INIT => X"00404454"
    )
    port map (
      I0 => blk00000001_sig0000054c,
      I1 => NlwRenamedSig_OI_det_htotal(10),
      I2 => NlwRenamedSig_OI_det_htotal(9),
      I3 => blk00000001_sig0000054a,
      I4 => blk00000001_sig0000054b,
      O => blk00000001_sig0000042b
    );
  blk00000001_blk000001b1 : LUT5
    generic map(
      INIT => X"00009009"
    )
    port map (
      I0 => blk00000001_sig0000054a,
      I1 => NlwRenamedSig_OI_det_htotal(9),
      I2 => blk00000001_sig0000054b,
      I3 => NlwRenamedSig_OI_det_htotal(10),
      I4 => blk00000001_sig0000054c,
      O => blk00000001_sig0000042a
    );
  blk00000001_blk000001b0 : MUXCY
    port map (
      CI => blk00000001_sig0000042c,
      DI => blk00000001_sig0000042b,
      S => blk00000001_sig0000042a,
      O => blk00000001_sig00000429
    );
  blk00000001_blk000001af : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => blk00000001_sig00000516,
      I1 => NlwRenamedSig_OI_det_v0total(1),
      I2 => blk00000001_sig00000517,
      I3 => NlwRenamedSig_OI_det_v0total(2),
      O => blk00000001_sig00000427
    );
  blk00000001_blk000001ae : MUXCY
    port map (
      CI => NlwRenamedSig_OI_det_status_0_Q,
      DI => blk00000001_sig00000428,
      S => blk00000001_sig00000427,
      O => blk00000001_sig00000426
    );
  blk00000001_blk000001ad : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => blk00000001_sig00000518,
      I1 => NlwRenamedSig_OI_det_v0total(3),
      I2 => blk00000001_sig00000519,
      I3 => NlwRenamedSig_OI_det_v0total(4),
      O => blk00000001_sig00000424
    );
  blk00000001_blk000001ac : MUXCY
    port map (
      CI => blk00000001_sig00000426,
      DI => blk00000001_sig00000425,
      S => blk00000001_sig00000424,
      O => blk00000001_sig00000423
    );
  blk00000001_blk000001ab : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => blk00000001_sig0000051a,
      I1 => NlwRenamedSig_OI_det_v0total(5),
      I2 => blk00000001_sig0000051b,
      I3 => NlwRenamedSig_OI_det_v0total(6),
      O => blk00000001_sig00000421
    );
  blk00000001_blk000001aa : MUXCY
    port map (
      CI => blk00000001_sig00000423,
      DI => blk00000001_sig00000422,
      S => blk00000001_sig00000421,
      O => blk00000001_sig00000420
    );
  blk00000001_blk000001a9 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => blk00000001_sig0000051c,
      I1 => NlwRenamedSig_OI_det_v0total(7),
      I2 => blk00000001_sig0000051d,
      I3 => NlwRenamedSig_OI_det_v0total(8),
      O => blk00000001_sig0000041e
    );
  blk00000001_blk000001a8 : MUXCY
    port map (
      CI => blk00000001_sig00000420,
      DI => blk00000001_sig0000041f,
      S => blk00000001_sig0000041e,
      O => blk00000001_sig0000041d
    );
  blk00000001_blk000001a7 : LUT5
    generic map(
      INIT => X"00009009"
    )
    port map (
      I0 => blk00000001_sig0000051e,
      I1 => NlwRenamedSig_OI_det_v0total(9),
      I2 => blk00000001_sig0000051f,
      I3 => NlwRenamedSig_OI_det_v0total(10),
      I4 => blk00000001_sig00000520,
      O => blk00000001_sig0000041b
    );
  blk00000001_blk000001a6 : MUXCY
    port map (
      CI => blk00000001_sig0000041d,
      DI => blk00000001_sig0000041c,
      S => blk00000001_sig0000041b,
      O => blk00000001_sig0000041a
    );
  blk00000001_blk000001a5 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => blk00000001_sig0000052c,
      I1 => NlwRenamedSig_OI_det_htotal(1),
      I2 => blk00000001_sig0000052d,
      I3 => NlwRenamedSig_OI_det_htotal(2),
      O => blk00000001_sig00000418
    );
  blk00000001_blk000001a4 : MUXCY
    port map (
      CI => NlwRenamedSig_OI_det_status_0_Q,
      DI => blk00000001_sig00000419,
      S => blk00000001_sig00000418,
      O => blk00000001_sig00000417
    );
  blk00000001_blk000001a3 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => blk00000001_sig0000052e,
      I1 => NlwRenamedSig_OI_det_htotal(3),
      I2 => blk00000001_sig0000052f,
      I3 => NlwRenamedSig_OI_det_htotal(4),
      O => blk00000001_sig00000415
    );
  blk00000001_blk000001a2 : MUXCY
    port map (
      CI => blk00000001_sig00000417,
      DI => blk00000001_sig00000416,
      S => blk00000001_sig00000415,
      O => blk00000001_sig00000414
    );
  blk00000001_blk000001a1 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => blk00000001_sig00000530,
      I1 => NlwRenamedSig_OI_det_htotal(5),
      I2 => blk00000001_sig00000531,
      I3 => NlwRenamedSig_OI_det_htotal(6),
      O => blk00000001_sig00000412
    );
  blk00000001_blk000001a0 : MUXCY
    port map (
      CI => blk00000001_sig00000414,
      DI => blk00000001_sig00000413,
      S => blk00000001_sig00000412,
      O => blk00000001_sig00000411
    );
  blk00000001_blk0000019f : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => blk00000001_sig00000532,
      I1 => NlwRenamedSig_OI_det_htotal(7),
      I2 => blk00000001_sig00000533,
      I3 => NlwRenamedSig_OI_det_htotal(8),
      O => blk00000001_sig0000040f
    );
  blk00000001_blk0000019e : MUXCY
    port map (
      CI => blk00000001_sig00000411,
      DI => blk00000001_sig00000410,
      S => blk00000001_sig0000040f,
      O => blk00000001_sig0000040e
    );
  blk00000001_blk0000019d : LUT5
    generic map(
      INIT => X"00009009"
    )
    port map (
      I0 => blk00000001_sig00000534,
      I1 => NlwRenamedSig_OI_det_htotal(9),
      I2 => blk00000001_sig00000535,
      I3 => NlwRenamedSig_OI_det_htotal(10),
      I4 => blk00000001_sig00000536,
      O => blk00000001_sig0000040c
    );
  blk00000001_blk0000019c : MUXCY
    port map (
      CI => blk00000001_sig0000040e,
      DI => blk00000001_sig0000040d,
      S => blk00000001_sig0000040c,
      O => blk00000001_sig0000040b
    );
  blk00000001_blk0000019b : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_htotal(2),
      I1 => NlwRenamedSig_OI_det_htotal(1),
      I2 => blk00000001_sig00000521,
      I3 => blk00000001_sig00000522,
      O => blk00000001_sig0000040a
    );
  blk00000001_blk0000019a : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => blk00000001_sig00000521,
      I1 => NlwRenamedSig_OI_det_htotal(1),
      I2 => blk00000001_sig00000522,
      I3 => NlwRenamedSig_OI_det_htotal(2),
      O => blk00000001_sig00000409
    );
  blk00000001_blk00000199 : MUXCY
    port map (
      CI => NlwRenamedSig_OI_det_status_24_Q,
      DI => blk00000001_sig0000040a,
      S => blk00000001_sig00000409,
      O => blk00000001_sig00000408
    );
  blk00000001_blk00000198 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_htotal(4),
      I1 => NlwRenamedSig_OI_det_htotal(3),
      I2 => blk00000001_sig00000523,
      I3 => blk00000001_sig00000524,
      O => blk00000001_sig00000407
    );
  blk00000001_blk00000197 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => blk00000001_sig00000523,
      I1 => NlwRenamedSig_OI_det_htotal(3),
      I2 => blk00000001_sig00000524,
      I3 => NlwRenamedSig_OI_det_htotal(4),
      O => blk00000001_sig00000406
    );
  blk00000001_blk00000196 : MUXCY
    port map (
      CI => blk00000001_sig00000408,
      DI => blk00000001_sig00000407,
      S => blk00000001_sig00000406,
      O => blk00000001_sig00000405
    );
  blk00000001_blk00000195 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_htotal(6),
      I1 => NlwRenamedSig_OI_det_htotal(5),
      I2 => blk00000001_sig00000525,
      I3 => blk00000001_sig00000526,
      O => blk00000001_sig00000404
    );
  blk00000001_blk00000194 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => blk00000001_sig00000525,
      I1 => NlwRenamedSig_OI_det_htotal(5),
      I2 => blk00000001_sig00000526,
      I3 => NlwRenamedSig_OI_det_htotal(6),
      O => blk00000001_sig00000403
    );
  blk00000001_blk00000193 : MUXCY
    port map (
      CI => blk00000001_sig00000405,
      DI => blk00000001_sig00000404,
      S => blk00000001_sig00000403,
      O => blk00000001_sig00000402
    );
  blk00000001_blk00000192 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => NlwRenamedSig_OI_det_htotal(8),
      I1 => NlwRenamedSig_OI_det_htotal(7),
      I2 => blk00000001_sig00000527,
      I3 => blk00000001_sig00000528,
      O => blk00000001_sig00000401
    );
  blk00000001_blk00000191 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => blk00000001_sig00000527,
      I1 => NlwRenamedSig_OI_det_htotal(7),
      I2 => blk00000001_sig00000528,
      I3 => NlwRenamedSig_OI_det_htotal(8),
      O => blk00000001_sig00000400
    );
  blk00000001_blk00000190 : MUXCY
    port map (
      CI => blk00000001_sig00000402,
      DI => blk00000001_sig00000401,
      S => blk00000001_sig00000400,
      O => blk00000001_sig000003ff
    );
  blk00000001_blk0000018f : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => blk00000001_sig0000050a,
      I1 => NlwRenamedSig_OI_det_v0total(1),
      I2 => blk00000001_sig0000050b,
      I3 => NlwRenamedSig_OI_det_v0total(2),
      O => blk00000001_sig000003fd
    );
  blk00000001_blk0000018e : MUXCY
    port map (
      CI => NlwRenamedSig_OI_det_status_0_Q,
      DI => blk00000001_sig000003fe,
      S => blk00000001_sig000003fd,
      O => blk00000001_sig000003fc
    );
  blk00000001_blk0000018d : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => blk00000001_sig0000050c,
      I1 => NlwRenamedSig_OI_det_v0total(3),
      I2 => blk00000001_sig0000050d,
      I3 => NlwRenamedSig_OI_det_v0total(4),
      O => blk00000001_sig000003fa
    );
  blk00000001_blk0000018c : MUXCY
    port map (
      CI => blk00000001_sig000003fc,
      DI => blk00000001_sig000003fb,
      S => blk00000001_sig000003fa,
      O => blk00000001_sig000003f9
    );
  blk00000001_blk0000018b : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => blk00000001_sig0000050e,
      I1 => NlwRenamedSig_OI_det_v0total(5),
      I2 => blk00000001_sig0000050f,
      I3 => NlwRenamedSig_OI_det_v0total(6),
      O => blk00000001_sig000003f7
    );
  blk00000001_blk0000018a : MUXCY
    port map (
      CI => blk00000001_sig000003f9,
      DI => blk00000001_sig000003f8,
      S => blk00000001_sig000003f7,
      O => blk00000001_sig000003f6
    );
  blk00000001_blk00000189 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => blk00000001_sig00000510,
      I1 => NlwRenamedSig_OI_det_v0total(7),
      I2 => blk00000001_sig00000511,
      I3 => NlwRenamedSig_OI_det_v0total(8),
      O => blk00000001_sig000003f4
    );
  blk00000001_blk00000188 : MUXCY
    port map (
      CI => blk00000001_sig000003f6,
      DI => blk00000001_sig000003f5,
      S => blk00000001_sig000003f4,
      O => blk00000001_sig000003f3
    );
  blk00000001_blk00000187 : LUT5
    generic map(
      INIT => X"00009009"
    )
    port map (
      I0 => blk00000001_sig00000512,
      I1 => NlwRenamedSig_OI_det_v0total(9),
      I2 => blk00000001_sig00000513,
      I3 => NlwRenamedSig_OI_det_v0total(10),
      I4 => blk00000001_sig00000514,
      O => blk00000001_sig000003f1
    );
  blk00000001_blk00000186 : MUXCY
    port map (
      CI => blk00000001_sig000003f3,
      DI => blk00000001_sig000003f2,
      S => blk00000001_sig000003f1,
      O => blk00000001_sig000003f0
    );
  blk00000001_blk00000185 : MUXCY
    port map (
      CI => NlwRenamedSig_OI_det_status_0_Q,
      DI => NlwRenamedSig_OI_det_status_24_Q,
      S => blk00000001_sig000003ef,
      O => blk00000001_sig000003ee
    );
  blk00000001_blk00000184 : XORCY
    port map (
      CI => NlwRenamedSig_OI_det_status_0_Q,
      LI => blk00000001_sig000003ef,
      O => blk00000001_sig00000484
    );
  blk00000001_blk00000183 : MUXCY
    port map (
      CI => blk00000001_sig000003ee,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000766,
      O => blk00000001_sig000003ed
    );
  blk00000001_blk00000182 : XORCY
    port map (
      CI => blk00000001_sig000003ee,
      LI => blk00000001_sig00000766,
      O => blk00000001_sig00000483
    );
  blk00000001_blk00000181 : MUXCY
    port map (
      CI => blk00000001_sig000003ed,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000765,
      O => blk00000001_sig000003ec
    );
  blk00000001_blk00000180 : XORCY
    port map (
      CI => blk00000001_sig000003ed,
      LI => blk00000001_sig00000765,
      O => blk00000001_sig00000482
    );
  blk00000001_blk0000017f : MUXCY
    port map (
      CI => blk00000001_sig000003ec,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000764,
      O => blk00000001_sig000003eb
    );
  blk00000001_blk0000017e : XORCY
    port map (
      CI => blk00000001_sig000003ec,
      LI => blk00000001_sig00000764,
      O => blk00000001_sig00000481
    );
  blk00000001_blk0000017d : MUXCY
    port map (
      CI => blk00000001_sig000003eb,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000763,
      O => blk00000001_sig000003ea
    );
  blk00000001_blk0000017c : XORCY
    port map (
      CI => blk00000001_sig000003eb,
      LI => blk00000001_sig00000763,
      O => blk00000001_sig00000480
    );
  blk00000001_blk0000017b : MUXCY
    port map (
      CI => blk00000001_sig000003ea,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000762,
      O => blk00000001_sig000003e9
    );
  blk00000001_blk0000017a : XORCY
    port map (
      CI => blk00000001_sig000003ea,
      LI => blk00000001_sig00000762,
      O => blk00000001_sig0000047f
    );
  blk00000001_blk00000179 : MUXCY
    port map (
      CI => blk00000001_sig000003e9,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000761,
      O => blk00000001_sig000003e8
    );
  blk00000001_blk00000178 : XORCY
    port map (
      CI => blk00000001_sig000003e9,
      LI => blk00000001_sig00000761,
      O => blk00000001_sig0000047e
    );
  blk00000001_blk00000177 : MUXCY
    port map (
      CI => blk00000001_sig000003e8,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000760,
      O => blk00000001_sig000003e7
    );
  blk00000001_blk00000176 : XORCY
    port map (
      CI => blk00000001_sig000003e8,
      LI => blk00000001_sig00000760,
      O => blk00000001_sig0000047d
    );
  blk00000001_blk00000175 : MUXCY
    port map (
      CI => blk00000001_sig000003e7,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig0000075f,
      O => blk00000001_sig000003e6
    );
  blk00000001_blk00000174 : XORCY
    port map (
      CI => blk00000001_sig000003e7,
      LI => blk00000001_sig0000075f,
      O => blk00000001_sig0000047c
    );
  blk00000001_blk00000173 : MUXCY
    port map (
      CI => blk00000001_sig000003e6,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig0000075e,
      O => blk00000001_sig000003e5
    );
  blk00000001_blk00000172 : XORCY
    port map (
      CI => blk00000001_sig000003e6,
      LI => blk00000001_sig0000075e,
      O => blk00000001_sig0000047b
    );
  blk00000001_blk00000171 : XORCY
    port map (
      CI => blk00000001_sig000003e5,
      LI => blk00000001_sig0000076e,
      O => blk00000001_sig0000047a
    );
  blk00000001_blk00000170 : MUXCY
    port map (
      CI => NlwRenamedSig_OI_det_status_0_Q,
      DI => NlwRenamedSig_OI_det_status_24_Q,
      S => blk00000001_sig000003e4,
      O => blk00000001_sig000003e3
    );
  blk00000001_blk0000016f : XORCY
    port map (
      CI => NlwRenamedSig_OI_det_status_0_Q,
      LI => blk00000001_sig000003e4,
      O => blk00000001_sig0000049e
    );
  blk00000001_blk0000016e : MUXCY
    port map (
      CI => blk00000001_sig000003e3,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig0000075d,
      O => blk00000001_sig000003e2
    );
  blk00000001_blk0000016d : XORCY
    port map (
      CI => blk00000001_sig000003e3,
      LI => blk00000001_sig0000075d,
      O => blk00000001_sig0000049d
    );
  blk00000001_blk0000016c : MUXCY
    port map (
      CI => blk00000001_sig000003e2,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig0000075c,
      O => blk00000001_sig000003e1
    );
  blk00000001_blk0000016b : XORCY
    port map (
      CI => blk00000001_sig000003e2,
      LI => blk00000001_sig0000075c,
      O => blk00000001_sig0000049c
    );
  blk00000001_blk0000016a : MUXCY
    port map (
      CI => blk00000001_sig000003e1,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig0000075b,
      O => blk00000001_sig000003e0
    );
  blk00000001_blk00000169 : XORCY
    port map (
      CI => blk00000001_sig000003e1,
      LI => blk00000001_sig0000075b,
      O => blk00000001_sig0000049b
    );
  blk00000001_blk00000168 : MUXCY
    port map (
      CI => blk00000001_sig000003e0,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig0000075a,
      O => blk00000001_sig000003df
    );
  blk00000001_blk00000167 : XORCY
    port map (
      CI => blk00000001_sig000003e0,
      LI => blk00000001_sig0000075a,
      O => blk00000001_sig0000049a
    );
  blk00000001_blk00000166 : MUXCY
    port map (
      CI => blk00000001_sig000003df,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000759,
      O => blk00000001_sig000003de
    );
  blk00000001_blk00000165 : XORCY
    port map (
      CI => blk00000001_sig000003df,
      LI => blk00000001_sig00000759,
      O => blk00000001_sig00000499
    );
  blk00000001_blk00000164 : MUXCY
    port map (
      CI => blk00000001_sig000003de,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000758,
      O => blk00000001_sig000003dd
    );
  blk00000001_blk00000163 : XORCY
    port map (
      CI => blk00000001_sig000003de,
      LI => blk00000001_sig00000758,
      O => blk00000001_sig00000498
    );
  blk00000001_blk00000162 : MUXCY
    port map (
      CI => blk00000001_sig000003dd,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000757,
      O => blk00000001_sig000003dc
    );
  blk00000001_blk00000161 : XORCY
    port map (
      CI => blk00000001_sig000003dd,
      LI => blk00000001_sig00000757,
      O => blk00000001_sig00000497
    );
  blk00000001_blk00000160 : MUXCY
    port map (
      CI => blk00000001_sig000003dc,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000756,
      O => blk00000001_sig000003db
    );
  blk00000001_blk0000015f : XORCY
    port map (
      CI => blk00000001_sig000003dc,
      LI => blk00000001_sig00000756,
      O => blk00000001_sig00000496
    );
  blk00000001_blk0000015e : MUXCY
    port map (
      CI => blk00000001_sig000003db,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000755,
      O => blk00000001_sig000003da
    );
  blk00000001_blk0000015d : XORCY
    port map (
      CI => blk00000001_sig000003db,
      LI => blk00000001_sig00000755,
      O => blk00000001_sig00000495
    );
  blk00000001_blk0000015c : XORCY
    port map (
      CI => blk00000001_sig000003da,
      LI => blk00000001_sig0000076d,
      O => blk00000001_sig00000494
    );
  blk00000001_blk0000015b : MUXCY
    port map (
      CI => NlwRenamedSig_OI_det_status_0_Q,
      DI => NlwRenamedSig_OI_det_status_24_Q,
      S => blk00000001_sig000003d9,
      O => blk00000001_sig000003d8
    );
  blk00000001_blk0000015a : XORCY
    port map (
      CI => NlwRenamedSig_OI_det_status_0_Q,
      LI => blk00000001_sig000003d9,
      O => blk00000001_sig00000491
    );
  blk00000001_blk00000159 : MUXCY
    port map (
      CI => blk00000001_sig000003d8,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000754,
      O => blk00000001_sig000003d7
    );
  blk00000001_blk00000158 : XORCY
    port map (
      CI => blk00000001_sig000003d8,
      LI => blk00000001_sig00000754,
      O => blk00000001_sig00000490
    );
  blk00000001_blk00000157 : MUXCY
    port map (
      CI => blk00000001_sig000003d7,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000753,
      O => blk00000001_sig000003d6
    );
  blk00000001_blk00000156 : XORCY
    port map (
      CI => blk00000001_sig000003d7,
      LI => blk00000001_sig00000753,
      O => blk00000001_sig0000048f
    );
  blk00000001_blk00000155 : MUXCY
    port map (
      CI => blk00000001_sig000003d6,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000752,
      O => blk00000001_sig000003d5
    );
  blk00000001_blk00000154 : XORCY
    port map (
      CI => blk00000001_sig000003d6,
      LI => blk00000001_sig00000752,
      O => blk00000001_sig0000048e
    );
  blk00000001_blk00000153 : MUXCY
    port map (
      CI => blk00000001_sig000003d5,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000751,
      O => blk00000001_sig000003d4
    );
  blk00000001_blk00000152 : XORCY
    port map (
      CI => blk00000001_sig000003d5,
      LI => blk00000001_sig00000751,
      O => blk00000001_sig0000048d
    );
  blk00000001_blk00000151 : MUXCY
    port map (
      CI => blk00000001_sig000003d4,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000750,
      O => blk00000001_sig000003d3
    );
  blk00000001_blk00000150 : XORCY
    port map (
      CI => blk00000001_sig000003d4,
      LI => blk00000001_sig00000750,
      O => blk00000001_sig0000048c
    );
  blk00000001_blk0000014f : MUXCY
    port map (
      CI => blk00000001_sig000003d3,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig0000074f,
      O => blk00000001_sig000003d2
    );
  blk00000001_blk0000014e : XORCY
    port map (
      CI => blk00000001_sig000003d3,
      LI => blk00000001_sig0000074f,
      O => blk00000001_sig0000048b
    );
  blk00000001_blk0000014d : MUXCY
    port map (
      CI => blk00000001_sig000003d2,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig0000074e,
      O => blk00000001_sig000003d1
    );
  blk00000001_blk0000014c : XORCY
    port map (
      CI => blk00000001_sig000003d2,
      LI => blk00000001_sig0000074e,
      O => blk00000001_sig0000048a
    );
  blk00000001_blk0000014b : MUXCY
    port map (
      CI => blk00000001_sig000003d1,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig0000074d,
      O => blk00000001_sig000003d0
    );
  blk00000001_blk0000014a : XORCY
    port map (
      CI => blk00000001_sig000003d1,
      LI => blk00000001_sig0000074d,
      O => blk00000001_sig00000489
    );
  blk00000001_blk00000149 : MUXCY
    port map (
      CI => blk00000001_sig000003d0,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig0000074c,
      O => blk00000001_sig000003cf
    );
  blk00000001_blk00000148 : XORCY
    port map (
      CI => blk00000001_sig000003d0,
      LI => blk00000001_sig0000074c,
      O => blk00000001_sig00000488
    );
  blk00000001_blk00000147 : XORCY
    port map (
      CI => blk00000001_sig000003cf,
      LI => blk00000001_sig0000076c,
      O => blk00000001_sig00000487
    );
  blk00000001_blk00000146 : MUXCY
    port map (
      CI => NlwRenamedSig_OI_det_status_0_Q,
      DI => NlwRenamedSig_OI_det_status_24_Q,
      S => blk00000001_sig000003ce,
      O => blk00000001_sig000003cd
    );
  blk00000001_blk00000145 : XORCY
    port map (
      CI => NlwRenamedSig_OI_det_status_0_Q,
      LI => blk00000001_sig000003ce,
      O => blk00000001_sig0000045d
    );
  blk00000001_blk00000144 : MUXCY
    port map (
      CI => blk00000001_sig000003cd,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig0000074b,
      O => blk00000001_sig000003cc
    );
  blk00000001_blk00000143 : XORCY
    port map (
      CI => blk00000001_sig000003cd,
      LI => blk00000001_sig0000074b,
      O => blk00000001_sig0000045c
    );
  blk00000001_blk00000142 : MUXCY
    port map (
      CI => blk00000001_sig000003cc,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig0000074a,
      O => blk00000001_sig000003cb
    );
  blk00000001_blk00000141 : XORCY
    port map (
      CI => blk00000001_sig000003cc,
      LI => blk00000001_sig0000074a,
      O => blk00000001_sig0000045b
    );
  blk00000001_blk00000140 : MUXCY
    port map (
      CI => blk00000001_sig000003cb,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000749,
      O => blk00000001_sig000003ca
    );
  blk00000001_blk0000013f : XORCY
    port map (
      CI => blk00000001_sig000003cb,
      LI => blk00000001_sig00000749,
      O => blk00000001_sig0000045a
    );
  blk00000001_blk0000013e : MUXCY
    port map (
      CI => blk00000001_sig000003ca,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000748,
      O => blk00000001_sig000003c9
    );
  blk00000001_blk0000013d : XORCY
    port map (
      CI => blk00000001_sig000003ca,
      LI => blk00000001_sig00000748,
      O => blk00000001_sig00000459
    );
  blk00000001_blk0000013c : MUXCY
    port map (
      CI => blk00000001_sig000003c9,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000747,
      O => blk00000001_sig000003c8
    );
  blk00000001_blk0000013b : XORCY
    port map (
      CI => blk00000001_sig000003c9,
      LI => blk00000001_sig00000747,
      O => blk00000001_sig00000458
    );
  blk00000001_blk0000013a : MUXCY
    port map (
      CI => blk00000001_sig000003c8,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000746,
      O => blk00000001_sig000003c7
    );
  blk00000001_blk00000139 : XORCY
    port map (
      CI => blk00000001_sig000003c8,
      LI => blk00000001_sig00000746,
      O => blk00000001_sig00000457
    );
  blk00000001_blk00000138 : MUXCY
    port map (
      CI => blk00000001_sig000003c7,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000745,
      O => blk00000001_sig000003c6
    );
  blk00000001_blk00000137 : XORCY
    port map (
      CI => blk00000001_sig000003c7,
      LI => blk00000001_sig00000745,
      O => blk00000001_sig00000456
    );
  blk00000001_blk00000136 : MUXCY
    port map (
      CI => blk00000001_sig000003c6,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000744,
      O => blk00000001_sig000003c5
    );
  blk00000001_blk00000135 : XORCY
    port map (
      CI => blk00000001_sig000003c6,
      LI => blk00000001_sig00000744,
      O => blk00000001_sig00000455
    );
  blk00000001_blk00000134 : MUXCY
    port map (
      CI => blk00000001_sig000003c5,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000743,
      O => blk00000001_sig000003c4
    );
  blk00000001_blk00000133 : XORCY
    port map (
      CI => blk00000001_sig000003c5,
      LI => blk00000001_sig00000743,
      O => blk00000001_sig00000454
    );
  blk00000001_blk00000132 : XORCY
    port map (
      CI => blk00000001_sig000003c4,
      LI => blk00000001_sig0000076b,
      O => blk00000001_sig00000453
    );
  blk00000001_blk00000131 : MUXCY
    port map (
      CI => NlwRenamedSig_OI_det_status_0_Q,
      DI => NlwRenamedSig_OI_det_status_24_Q,
      S => blk00000001_sig000003c3,
      O => blk00000001_sig000003c2
    );
  blk00000001_blk00000130 : XORCY
    port map (
      CI => NlwRenamedSig_OI_det_status_0_Q,
      LI => blk00000001_sig000003c3,
      O => blk00000001_sig00000477
    );
  blk00000001_blk0000012f : MUXCY
    port map (
      CI => blk00000001_sig000003c2,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000742,
      O => blk00000001_sig000003c1
    );
  blk00000001_blk0000012e : XORCY
    port map (
      CI => blk00000001_sig000003c2,
      LI => blk00000001_sig00000742,
      O => blk00000001_sig00000476
    );
  blk00000001_blk0000012d : MUXCY
    port map (
      CI => blk00000001_sig000003c1,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000741,
      O => blk00000001_sig000003c0
    );
  blk00000001_blk0000012c : XORCY
    port map (
      CI => blk00000001_sig000003c1,
      LI => blk00000001_sig00000741,
      O => blk00000001_sig00000475
    );
  blk00000001_blk0000012b : MUXCY
    port map (
      CI => blk00000001_sig000003c0,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000740,
      O => blk00000001_sig000003bf
    );
  blk00000001_blk0000012a : XORCY
    port map (
      CI => blk00000001_sig000003c0,
      LI => blk00000001_sig00000740,
      O => blk00000001_sig00000474
    );
  blk00000001_blk00000129 : MUXCY
    port map (
      CI => blk00000001_sig000003bf,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig0000073f,
      O => blk00000001_sig000003be
    );
  blk00000001_blk00000128 : XORCY
    port map (
      CI => blk00000001_sig000003bf,
      LI => blk00000001_sig0000073f,
      O => blk00000001_sig00000473
    );
  blk00000001_blk00000127 : MUXCY
    port map (
      CI => blk00000001_sig000003be,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig0000073e,
      O => blk00000001_sig000003bd
    );
  blk00000001_blk00000126 : XORCY
    port map (
      CI => blk00000001_sig000003be,
      LI => blk00000001_sig0000073e,
      O => blk00000001_sig00000472
    );
  blk00000001_blk00000125 : MUXCY
    port map (
      CI => blk00000001_sig000003bd,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig0000073d,
      O => blk00000001_sig000003bc
    );
  blk00000001_blk00000124 : XORCY
    port map (
      CI => blk00000001_sig000003bd,
      LI => blk00000001_sig0000073d,
      O => blk00000001_sig00000471
    );
  blk00000001_blk00000123 : MUXCY
    port map (
      CI => blk00000001_sig000003bc,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig0000073c,
      O => blk00000001_sig000003bb
    );
  blk00000001_blk00000122 : XORCY
    port map (
      CI => blk00000001_sig000003bc,
      LI => blk00000001_sig0000073c,
      O => blk00000001_sig00000470
    );
  blk00000001_blk00000121 : MUXCY
    port map (
      CI => blk00000001_sig000003bb,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig0000073b,
      O => blk00000001_sig000003ba
    );
  blk00000001_blk00000120 : XORCY
    port map (
      CI => blk00000001_sig000003bb,
      LI => blk00000001_sig0000073b,
      O => blk00000001_sig0000046f
    );
  blk00000001_blk0000011f : MUXCY
    port map (
      CI => blk00000001_sig000003ba,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig0000073a,
      O => blk00000001_sig000003b9
    );
  blk00000001_blk0000011e : XORCY
    port map (
      CI => blk00000001_sig000003ba,
      LI => blk00000001_sig0000073a,
      O => blk00000001_sig0000046e
    );
  blk00000001_blk0000011d : XORCY
    port map (
      CI => blk00000001_sig000003b9,
      LI => blk00000001_sig0000076a,
      O => blk00000001_sig0000046d
    );
  blk00000001_blk0000011c : MUXCY
    port map (
      CI => NlwRenamedSig_OI_det_status_0_Q,
      DI => NlwRenamedSig_OI_det_status_24_Q,
      S => blk00000001_sig000003b8,
      O => blk00000001_sig000003b7
    );
  blk00000001_blk0000011b : XORCY
    port map (
      CI => NlwRenamedSig_OI_det_status_0_Q,
      LI => blk00000001_sig000003b8,
      O => blk00000001_sig0000046a
    );
  blk00000001_blk0000011a : MUXCY
    port map (
      CI => blk00000001_sig000003b7,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000739,
      O => blk00000001_sig000003b6
    );
  blk00000001_blk00000119 : XORCY
    port map (
      CI => blk00000001_sig000003b7,
      LI => blk00000001_sig00000739,
      O => blk00000001_sig00000469
    );
  blk00000001_blk00000118 : MUXCY
    port map (
      CI => blk00000001_sig000003b6,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000738,
      O => blk00000001_sig000003b5
    );
  blk00000001_blk00000117 : XORCY
    port map (
      CI => blk00000001_sig000003b6,
      LI => blk00000001_sig00000738,
      O => blk00000001_sig00000468
    );
  blk00000001_blk00000116 : MUXCY
    port map (
      CI => blk00000001_sig000003b5,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000737,
      O => blk00000001_sig000003b4
    );
  blk00000001_blk00000115 : XORCY
    port map (
      CI => blk00000001_sig000003b5,
      LI => blk00000001_sig00000737,
      O => blk00000001_sig00000467
    );
  blk00000001_blk00000114 : MUXCY
    port map (
      CI => blk00000001_sig000003b4,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000736,
      O => blk00000001_sig000003b3
    );
  blk00000001_blk00000113 : XORCY
    port map (
      CI => blk00000001_sig000003b4,
      LI => blk00000001_sig00000736,
      O => blk00000001_sig00000466
    );
  blk00000001_blk00000112 : MUXCY
    port map (
      CI => blk00000001_sig000003b3,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000735,
      O => blk00000001_sig000003b2
    );
  blk00000001_blk00000111 : XORCY
    port map (
      CI => blk00000001_sig000003b3,
      LI => blk00000001_sig00000735,
      O => blk00000001_sig00000465
    );
  blk00000001_blk00000110 : MUXCY
    port map (
      CI => blk00000001_sig000003b2,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000734,
      O => blk00000001_sig000003b1
    );
  blk00000001_blk0000010f : XORCY
    port map (
      CI => blk00000001_sig000003b2,
      LI => blk00000001_sig00000734,
      O => blk00000001_sig00000464
    );
  blk00000001_blk0000010e : MUXCY
    port map (
      CI => blk00000001_sig000003b1,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000733,
      O => blk00000001_sig000003b0
    );
  blk00000001_blk0000010d : XORCY
    port map (
      CI => blk00000001_sig000003b1,
      LI => blk00000001_sig00000733,
      O => blk00000001_sig00000463
    );
  blk00000001_blk0000010c : MUXCY
    port map (
      CI => blk00000001_sig000003b0,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000732,
      O => blk00000001_sig000003af
    );
  blk00000001_blk0000010b : XORCY
    port map (
      CI => blk00000001_sig000003b0,
      LI => blk00000001_sig00000732,
      O => blk00000001_sig00000462
    );
  blk00000001_blk0000010a : MUXCY
    port map (
      CI => blk00000001_sig000003af,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000731,
      O => blk00000001_sig000003ae
    );
  blk00000001_blk00000109 : XORCY
    port map (
      CI => blk00000001_sig000003af,
      LI => blk00000001_sig00000731,
      O => blk00000001_sig00000461
    );
  blk00000001_blk00000108 : XORCY
    port map (
      CI => blk00000001_sig000003ae,
      LI => blk00000001_sig00000769,
      O => blk00000001_sig00000460
    );
  blk00000001_blk00000107 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000214,
      D => blk00000001_sig00000397,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000001f3
    );
  blk00000001_blk00000106 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000214,
      D => blk00000001_sig00000398,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002f2
    );
  blk00000001_blk00000105 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000214,
      D => blk00000001_sig00000399,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002f3
    );
  blk00000001_blk00000104 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000214,
      D => blk00000001_sig0000039a,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002f4
    );
  blk00000001_blk00000103 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000214,
      D => blk00000001_sig0000039b,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002f5
    );
  blk00000001_blk00000102 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000214,
      D => blk00000001_sig0000039c,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002f6
    );
  blk00000001_blk00000101 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000214,
      D => blk00000001_sig0000039d,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002f7
    );
  blk00000001_blk00000100 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000214,
      D => blk00000001_sig0000039e,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002f8
    );
  blk00000001_blk000000ff : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000214,
      D => blk00000001_sig0000039f,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002f9
    );
  blk00000001_blk000000fe : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000214,
      D => blk00000001_sig000003a0,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002fa
    );
  blk00000001_blk000000fd : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000214,
      D => blk00000001_sig000003a1,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002fb
    );
  blk00000001_blk000000fc : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000213,
      D => blk00000001_sig0000038c,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002e7
    );
  blk00000001_blk000000fb : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000213,
      D => blk00000001_sig0000038d,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002e8
    );
  blk00000001_blk000000fa : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000213,
      D => blk00000001_sig0000038e,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002e9
    );
  blk00000001_blk000000f9 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000213,
      D => blk00000001_sig0000038f,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002ea
    );
  blk00000001_blk000000f8 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000213,
      D => blk00000001_sig00000390,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002eb
    );
  blk00000001_blk000000f7 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000213,
      D => blk00000001_sig00000391,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002ec
    );
  blk00000001_blk000000f6 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000213,
      D => blk00000001_sig00000392,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002ed
    );
  blk00000001_blk000000f5 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000213,
      D => blk00000001_sig00000393,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002ee
    );
  blk00000001_blk000000f4 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000213,
      D => blk00000001_sig00000394,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002ef
    );
  blk00000001_blk000000f3 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000213,
      D => blk00000001_sig00000395,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002f0
    );
  blk00000001_blk000000f2 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000213,
      D => blk00000001_sig00000396,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002f1
    );
  blk00000001_blk000000f1 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000212,
      D => blk00000001_sig00000381,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002dc
    );
  blk00000001_blk000000f0 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000212,
      D => blk00000001_sig00000382,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002dd
    );
  blk00000001_blk000000ef : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000212,
      D => blk00000001_sig00000383,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002de
    );
  blk00000001_blk000000ee : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000212,
      D => blk00000001_sig00000384,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002df
    );
  blk00000001_blk000000ed : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000212,
      D => blk00000001_sig00000385,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002e0
    );
  blk00000001_blk000000ec : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000212,
      D => blk00000001_sig00000386,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002e1
    );
  blk00000001_blk000000eb : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000212,
      D => blk00000001_sig00000387,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002e2
    );
  blk00000001_blk000000ea : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000212,
      D => blk00000001_sig00000388,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002e3
    );
  blk00000001_blk000000e9 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000212,
      D => blk00000001_sig00000389,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002e4
    );
  blk00000001_blk000000e8 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000212,
      D => blk00000001_sig0000038a,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002e5
    );
  blk00000001_blk000000e7 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000212,
      D => blk00000001_sig0000038b,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002e6
    );
  blk00000001_blk000000e6 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000211,
      D => blk00000001_sig00000376,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002d1
    );
  blk00000001_blk000000e5 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000211,
      D => blk00000001_sig00000377,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002d2
    );
  blk00000001_blk000000e4 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000211,
      D => blk00000001_sig00000378,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002d3
    );
  blk00000001_blk000000e3 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000211,
      D => blk00000001_sig00000379,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002d4
    );
  blk00000001_blk000000e2 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000211,
      D => blk00000001_sig0000037a,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002d5
    );
  blk00000001_blk000000e1 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000211,
      D => blk00000001_sig0000037b,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002d6
    );
  blk00000001_blk000000e0 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000211,
      D => blk00000001_sig0000037c,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002d7
    );
  blk00000001_blk000000df : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000211,
      D => blk00000001_sig0000037d,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002d8
    );
  blk00000001_blk000000de : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000211,
      D => blk00000001_sig0000037e,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002d9
    );
  blk00000001_blk000000dd : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000211,
      D => blk00000001_sig0000037f,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002da
    );
  blk00000001_blk000000dc : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000211,
      D => blk00000001_sig00000380,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002db
    );
  blk00000001_blk000000db : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000210,
      D => blk00000001_sig00000355,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002b0
    );
  blk00000001_blk000000da : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000210,
      D => blk00000001_sig00000356,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002b1
    );
  blk00000001_blk000000d9 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000210,
      D => blk00000001_sig00000357,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002b2
    );
  blk00000001_blk000000d8 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000210,
      D => blk00000001_sig00000358,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002b3
    );
  blk00000001_blk000000d7 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000210,
      D => blk00000001_sig00000359,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002b4
    );
  blk00000001_blk000000d6 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000210,
      D => blk00000001_sig0000035a,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002b5
    );
  blk00000001_blk000000d5 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000210,
      D => blk00000001_sig0000035b,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002b6
    );
  blk00000001_blk000000d4 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000210,
      D => blk00000001_sig0000035c,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002b7
    );
  blk00000001_blk000000d3 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000210,
      D => blk00000001_sig0000035d,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002b8
    );
  blk00000001_blk000000d2 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000210,
      D => blk00000001_sig0000035e,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002b9
    );
  blk00000001_blk000000d1 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000210,
      D => blk00000001_sig0000035f,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002ba
    );
  blk00000001_blk000000d0 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020f,
      D => blk00000001_sig0000036b,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002c6
    );
  blk00000001_blk000000cf : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020f,
      D => blk00000001_sig0000036c,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002c7
    );
  blk00000001_blk000000ce : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020f,
      D => blk00000001_sig0000036d,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002c8
    );
  blk00000001_blk000000cd : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020f,
      D => blk00000001_sig0000036e,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002c9
    );
  blk00000001_blk000000cc : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020f,
      D => blk00000001_sig0000036f,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002ca
    );
  blk00000001_blk000000cb : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020f,
      D => blk00000001_sig00000370,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002cb
    );
  blk00000001_blk000000ca : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020f,
      D => blk00000001_sig00000371,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002cc
    );
  blk00000001_blk000000c9 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020f,
      D => blk00000001_sig00000372,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002cd
    );
  blk00000001_blk000000c8 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020f,
      D => blk00000001_sig00000373,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002ce
    );
  blk00000001_blk000000c7 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020f,
      D => blk00000001_sig00000374,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002cf
    );
  blk00000001_blk000000c6 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020f,
      D => blk00000001_sig00000375,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002d0
    );
  blk00000001_blk000000c5 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020e,
      D => blk00000001_sig00000360,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002bb
    );
  blk00000001_blk000000c4 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020e,
      D => blk00000001_sig00000361,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002bc
    );
  blk00000001_blk000000c3 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020e,
      D => blk00000001_sig00000362,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002bd
    );
  blk00000001_blk000000c2 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020e,
      D => blk00000001_sig00000363,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002be
    );
  blk00000001_blk000000c1 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020e,
      D => blk00000001_sig00000364,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002bf
    );
  blk00000001_blk000000c0 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020e,
      D => blk00000001_sig00000365,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002c0
    );
  blk00000001_blk000000bf : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020e,
      D => blk00000001_sig00000366,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002c1
    );
  blk00000001_blk000000be : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020e,
      D => blk00000001_sig00000367,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002c2
    );
  blk00000001_blk000000bd : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020e,
      D => blk00000001_sig00000368,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002c3
    );
  blk00000001_blk000000bc : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020e,
      D => blk00000001_sig00000369,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002c4
    );
  blk00000001_blk000000bb : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020e,
      D => blk00000001_sig0000036a,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002c5
    );
  blk00000001_blk000000ba : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020d,
      D => blk00000001_sig0000034a,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002a5
    );
  blk00000001_blk000000b9 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020d,
      D => blk00000001_sig0000034b,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002a6
    );
  blk00000001_blk000000b8 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020d,
      D => blk00000001_sig0000034c,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002a7
    );
  blk00000001_blk000000b7 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020d,
      D => blk00000001_sig0000034d,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002a8
    );
  blk00000001_blk000000b6 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020d,
      D => blk00000001_sig0000034e,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002a9
    );
  blk00000001_blk000000b5 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020d,
      D => blk00000001_sig0000034f,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002aa
    );
  blk00000001_blk000000b4 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020d,
      D => blk00000001_sig00000350,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002ab
    );
  blk00000001_blk000000b3 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020d,
      D => blk00000001_sig00000351,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002ac
    );
  blk00000001_blk000000b2 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020d,
      D => blk00000001_sig00000352,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002ad
    );
  blk00000001_blk000000b1 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020d,
      D => blk00000001_sig00000353,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002ae
    );
  blk00000001_blk000000b0 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020d,
      D => blk00000001_sig00000354,
      R => blk00000001_sig00000239,
      Q => blk00000001_sig000002af
    );
  blk00000001_blk000000af : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020c,
      D => blk00000001_sig0000033f,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig0000029a
    );
  blk00000001_blk000000ae : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020c,
      D => blk00000001_sig00000340,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig0000029b
    );
  blk00000001_blk000000ad : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020c,
      D => blk00000001_sig00000341,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig0000029c
    );
  blk00000001_blk000000ac : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020c,
      D => blk00000001_sig00000342,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig0000029d
    );
  blk00000001_blk000000ab : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020c,
      D => blk00000001_sig00000343,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig0000029e
    );
  blk00000001_blk000000aa : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020c,
      D => blk00000001_sig00000344,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig0000029f
    );
  blk00000001_blk000000a9 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020c,
      D => blk00000001_sig00000345,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig000002a0
    );
  blk00000001_blk000000a8 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020c,
      D => blk00000001_sig00000346,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig000002a1
    );
  blk00000001_blk000000a7 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020c,
      D => blk00000001_sig00000347,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig000002a2
    );
  blk00000001_blk000000a6 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020c,
      D => blk00000001_sig00000348,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig000002a3
    );
  blk00000001_blk000000a5 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020c,
      D => blk00000001_sig00000349,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig000002a4
    );
  blk00000001_blk000000a4 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020b,
      D => blk00000001_sig00000334,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig0000028f
    );
  blk00000001_blk000000a3 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020b,
      D => blk00000001_sig00000335,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000290
    );
  blk00000001_blk000000a2 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020b,
      D => blk00000001_sig00000336,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000291
    );
  blk00000001_blk000000a1 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020b,
      D => blk00000001_sig00000337,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000292
    );
  blk00000001_blk000000a0 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020b,
      D => blk00000001_sig00000338,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000293
    );
  blk00000001_blk0000009f : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020b,
      D => blk00000001_sig00000339,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000294
    );
  blk00000001_blk0000009e : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020b,
      D => blk00000001_sig0000033a,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000295
    );
  blk00000001_blk0000009d : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020b,
      D => blk00000001_sig0000033b,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000296
    );
  blk00000001_blk0000009c : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020b,
      D => blk00000001_sig0000033c,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000297
    );
  blk00000001_blk0000009b : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020b,
      D => blk00000001_sig0000033d,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000298
    );
  blk00000001_blk0000009a : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020b,
      D => blk00000001_sig0000033e,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000299
    );
  blk00000001_blk00000099 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000210,
      D => blk00000001_sig00000329,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000284
    );
  blk00000001_blk00000098 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000210,
      D => blk00000001_sig0000032a,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000285
    );
  blk00000001_blk00000097 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000210,
      D => blk00000001_sig0000032b,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000286
    );
  blk00000001_blk00000096 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000210,
      D => blk00000001_sig0000032c,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000287
    );
  blk00000001_blk00000095 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000210,
      D => blk00000001_sig0000032d,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000288
    );
  blk00000001_blk00000094 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000210,
      D => blk00000001_sig0000032e,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000289
    );
  blk00000001_blk00000093 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000210,
      D => blk00000001_sig0000032f,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig0000028a
    );
  blk00000001_blk00000092 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000210,
      D => blk00000001_sig00000330,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig0000028b
    );
  blk00000001_blk00000091 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000210,
      D => blk00000001_sig00000331,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig0000028c
    );
  blk00000001_blk00000090 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000210,
      D => blk00000001_sig00000332,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig0000028d
    );
  blk00000001_blk0000008f : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig00000210,
      D => blk00000001_sig00000333,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig0000028e
    );
  blk00000001_blk0000008e : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020b,
      D => blk00000001_sig00000308,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000263
    );
  blk00000001_blk0000008d : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020b,
      D => blk00000001_sig00000309,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000264
    );
  blk00000001_blk0000008c : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020b,
      D => blk00000001_sig0000030a,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000265
    );
  blk00000001_blk0000008b : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020b,
      D => blk00000001_sig0000030b,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000266
    );
  blk00000001_blk0000008a : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020b,
      D => blk00000001_sig0000030c,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000267
    );
  blk00000001_blk00000089 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020b,
      D => blk00000001_sig0000030d,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000268
    );
  blk00000001_blk00000088 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020b,
      D => blk00000001_sig0000030e,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000269
    );
  blk00000001_blk00000087 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020b,
      D => blk00000001_sig0000030f,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig0000026a
    );
  blk00000001_blk00000086 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020b,
      D => blk00000001_sig00000310,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig0000026b
    );
  blk00000001_blk00000085 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020b,
      D => blk00000001_sig00000311,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig0000026c
    );
  blk00000001_blk00000084 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020b,
      D => blk00000001_sig00000312,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig0000026d
    );
  blk00000001_blk00000083 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020d,
      D => blk00000001_sig0000031e,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000279
    );
  blk00000001_blk00000082 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020d,
      D => blk00000001_sig0000031f,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig0000027a
    );
  blk00000001_blk00000081 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020d,
      D => blk00000001_sig00000320,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig0000027b
    );
  blk00000001_blk00000080 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020d,
      D => blk00000001_sig00000321,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig0000027c
    );
  blk00000001_blk0000007f : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020d,
      D => blk00000001_sig00000322,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig0000027d
    );
  blk00000001_blk0000007e : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020d,
      D => blk00000001_sig00000323,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig0000027e
    );
  blk00000001_blk0000007d : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020d,
      D => blk00000001_sig00000324,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig0000027f
    );
  blk00000001_blk0000007c : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020d,
      D => blk00000001_sig00000325,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000280
    );
  blk00000001_blk0000007b : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020d,
      D => blk00000001_sig00000326,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000281
    );
  blk00000001_blk0000007a : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020d,
      D => blk00000001_sig00000327,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000282
    );
  blk00000001_blk00000079 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020d,
      D => blk00000001_sig00000328,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000283
    );
  blk00000001_blk00000078 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020c,
      D => blk00000001_sig00000313,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig0000026e
    );
  blk00000001_blk00000077 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020c,
      D => blk00000001_sig00000314,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig0000026f
    );
  blk00000001_blk00000076 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020c,
      D => blk00000001_sig00000315,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000270
    );
  blk00000001_blk00000075 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020c,
      D => blk00000001_sig00000316,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000271
    );
  blk00000001_blk00000074 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020c,
      D => blk00000001_sig00000317,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000272
    );
  blk00000001_blk00000073 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020c,
      D => blk00000001_sig00000318,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000273
    );
  blk00000001_blk00000072 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020c,
      D => blk00000001_sig00000319,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000274
    );
  blk00000001_blk00000071 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020c,
      D => blk00000001_sig0000031a,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000275
    );
  blk00000001_blk00000070 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020c,
      D => blk00000001_sig0000031b,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000276
    );
  blk00000001_blk0000006f : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020c,
      D => blk00000001_sig0000031c,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000277
    );
  blk00000001_blk0000006e : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => blk00000001_sig0000020c,
      D => blk00000001_sig0000031d,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000278
    );
  blk00000001_blk0000006d : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => blk00000001_sig0000021c,
      R => blk00000001_sig00000221,
      Q => NlwRenamedSig_OI_active_video_out
    );
  blk00000001_blk0000006c : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => blk00000001_sig0000021f,
      R => blk00000001_sig00000221,
      Q => hsync_out
    );
  blk00000001_blk0000006b : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => blk00000001_sig00000220,
      R => blk00000001_sig00000221,
      Q => hblank_out
    );
  blk00000001_blk0000006a : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => blk00000001_sig0000021d,
      R => blk00000001_sig00000221,
      Q => vsync_out
    );
  blk00000001_blk00000069 : FDRE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => ce,
      D => blk00000001_sig0000021e,
      R => blk00000001_sig00000221,
      Q => NlwRenamedSig_OI_vblank_out
    );
  blk00000001_blk00000068 : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig0000022c,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000307
    );
  blk00000001_blk00000067 : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig0000022d,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000306
    );
  blk00000001_blk00000066 : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig0000022e,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000305
    );
  blk00000001_blk00000065 : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig0000022f,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000304
    );
  blk00000001_blk00000064 : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000230,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000303
    );
  blk00000001_blk00000063 : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000231,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000302
    );
  blk00000001_blk00000062 : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000232,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000301
    );
  blk00000001_blk00000061 : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000233,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig00000300
    );
  blk00000001_blk00000060 : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000234,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig000002ff
    );
  blk00000001_blk0000005f : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000235,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig000002fe
    );
  blk00000001_blk0000005e : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig00000236,
      R => blk00000001_sig000007a5,
      Q => blk00000001_sig000002fd
    );
  blk00000001_blk0000005d : MUXCY
    port map (
      CI => NlwRenamedSig_OI_det_status_0_Q,
      DI => NlwRenamedSig_OI_det_status_24_Q,
      S => blk00000001_sig000001f2,
      O => blk00000001_sig000001f1
    );
  blk00000001_blk0000005c : XORCY
    port map (
      CI => NlwRenamedSig_OI_det_status_0_Q,
      LI => blk00000001_sig000001f2,
      O => blk00000001_sig00000209
    );
  blk00000001_blk0000005b : MUXCY
    port map (
      CI => blk00000001_sig000001f1,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000730,
      O => blk00000001_sig000001f0
    );
  blk00000001_blk0000005a : XORCY
    port map (
      CI => blk00000001_sig000001f1,
      LI => blk00000001_sig00000730,
      O => blk00000001_sig00000208
    );
  blk00000001_blk00000059 : MUXCY
    port map (
      CI => blk00000001_sig000001f0,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig0000072f,
      O => blk00000001_sig000001ef
    );
  blk00000001_blk00000058 : XORCY
    port map (
      CI => blk00000001_sig000001f0,
      LI => blk00000001_sig0000072f,
      O => blk00000001_sig00000207
    );
  blk00000001_blk00000057 : MUXCY
    port map (
      CI => blk00000001_sig000001ef,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig0000072e,
      O => blk00000001_sig000001ee
    );
  blk00000001_blk00000056 : XORCY
    port map (
      CI => blk00000001_sig000001ef,
      LI => blk00000001_sig0000072e,
      O => blk00000001_sig00000206
    );
  blk00000001_blk00000055 : MUXCY
    port map (
      CI => blk00000001_sig000001ee,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig0000072d,
      O => blk00000001_sig000001ed
    );
  blk00000001_blk00000054 : XORCY
    port map (
      CI => blk00000001_sig000001ee,
      LI => blk00000001_sig0000072d,
      O => blk00000001_sig00000205
    );
  blk00000001_blk00000053 : MUXCY
    port map (
      CI => blk00000001_sig000001ed,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig0000072c,
      O => blk00000001_sig000001ec
    );
  blk00000001_blk00000052 : XORCY
    port map (
      CI => blk00000001_sig000001ed,
      LI => blk00000001_sig0000072c,
      O => blk00000001_sig00000204
    );
  blk00000001_blk00000051 : MUXCY
    port map (
      CI => blk00000001_sig000001ec,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig0000072b,
      O => blk00000001_sig000001eb
    );
  blk00000001_blk00000050 : XORCY
    port map (
      CI => blk00000001_sig000001ec,
      LI => blk00000001_sig0000072b,
      O => blk00000001_sig00000203
    );
  blk00000001_blk0000004f : MUXCY
    port map (
      CI => blk00000001_sig000001eb,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig0000072a,
      O => blk00000001_sig000001ea
    );
  blk00000001_blk0000004e : XORCY
    port map (
      CI => blk00000001_sig000001eb,
      LI => blk00000001_sig0000072a,
      O => blk00000001_sig00000202
    );
  blk00000001_blk0000004d : MUXCY
    port map (
      CI => blk00000001_sig000001ea,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000729,
      O => blk00000001_sig000001e9
    );
  blk00000001_blk0000004c : XORCY
    port map (
      CI => blk00000001_sig000001ea,
      LI => blk00000001_sig00000729,
      O => blk00000001_sig00000201
    );
  blk00000001_blk0000004b : MUXCY
    port map (
      CI => blk00000001_sig000001e9,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000728,
      O => blk00000001_sig000001e8
    );
  blk00000001_blk0000004a : XORCY
    port map (
      CI => blk00000001_sig000001e9,
      LI => blk00000001_sig00000728,
      O => blk00000001_sig00000200
    );
  blk00000001_blk00000049 : XORCY
    port map (
      CI => blk00000001_sig000001e8,
      LI => blk00000001_sig00000768,
      O => blk00000001_sig000001ff
    );
  blk00000001_blk00000048 : MUXCY
    port map (
      CI => NlwRenamedSig_OI_det_status_0_Q,
      DI => NlwRenamedSig_OI_det_status_24_Q,
      S => blk00000001_sig000001e7,
      O => blk00000001_sig000001e6
    );
  blk00000001_blk00000047 : XORCY
    port map (
      CI => NlwRenamedSig_OI_det_status_0_Q,
      LI => blk00000001_sig000001e7,
      O => blk00000001_sig000001fe
    );
  blk00000001_blk00000046 : MUXCY
    port map (
      CI => blk00000001_sig000001e6,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000727,
      O => blk00000001_sig000001e5
    );
  blk00000001_blk00000045 : XORCY
    port map (
      CI => blk00000001_sig000001e6,
      LI => blk00000001_sig00000727,
      O => blk00000001_sig000001fd
    );
  blk00000001_blk00000044 : MUXCY
    port map (
      CI => blk00000001_sig000001e5,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000726,
      O => blk00000001_sig000001e4
    );
  blk00000001_blk00000043 : XORCY
    port map (
      CI => blk00000001_sig000001e5,
      LI => blk00000001_sig00000726,
      O => blk00000001_sig000001fc
    );
  blk00000001_blk00000042 : MUXCY
    port map (
      CI => blk00000001_sig000001e4,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000725,
      O => blk00000001_sig000001e3
    );
  blk00000001_blk00000041 : XORCY
    port map (
      CI => blk00000001_sig000001e4,
      LI => blk00000001_sig00000725,
      O => blk00000001_sig000001fb
    );
  blk00000001_blk00000040 : MUXCY
    port map (
      CI => blk00000001_sig000001e3,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000724,
      O => blk00000001_sig000001e2
    );
  blk00000001_blk0000003f : XORCY
    port map (
      CI => blk00000001_sig000001e3,
      LI => blk00000001_sig00000724,
      O => blk00000001_sig000001fa
    );
  blk00000001_blk0000003e : MUXCY
    port map (
      CI => blk00000001_sig000001e2,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000723,
      O => blk00000001_sig000001e1
    );
  blk00000001_blk0000003d : XORCY
    port map (
      CI => blk00000001_sig000001e2,
      LI => blk00000001_sig00000723,
      O => blk00000001_sig000001f9
    );
  blk00000001_blk0000003c : MUXCY
    port map (
      CI => blk00000001_sig000001e1,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000722,
      O => blk00000001_sig000001e0
    );
  blk00000001_blk0000003b : XORCY
    port map (
      CI => blk00000001_sig000001e1,
      LI => blk00000001_sig00000722,
      O => blk00000001_sig000001f8
    );
  blk00000001_blk0000003a : MUXCY
    port map (
      CI => blk00000001_sig000001e0,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000721,
      O => blk00000001_sig000001df
    );
  blk00000001_blk00000039 : XORCY
    port map (
      CI => blk00000001_sig000001e0,
      LI => blk00000001_sig00000721,
      O => blk00000001_sig000001f7
    );
  blk00000001_blk00000038 : MUXCY
    port map (
      CI => blk00000001_sig000001df,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig00000720,
      O => blk00000001_sig000001de
    );
  blk00000001_blk00000037 : XORCY
    port map (
      CI => blk00000001_sig000001df,
      LI => blk00000001_sig00000720,
      O => blk00000001_sig000001f6
    );
  blk00000001_blk00000036 : MUXCY
    port map (
      CI => blk00000001_sig000001de,
      DI => NlwRenamedSig_OI_det_status_0_Q,
      S => blk00000001_sig0000071f,
      O => blk00000001_sig000001dd
    );
  blk00000001_blk00000035 : XORCY
    port map (
      CI => blk00000001_sig000001de,
      LI => blk00000001_sig0000071f,
      O => blk00000001_sig000001f5
    );
  blk00000001_blk00000034 : XORCY
    port map (
      CI => blk00000001_sig000001dd,
      LI => blk00000001_sig00000767,
      O => blk00000001_sig000001f4
    );
  blk00000001_blk00000033 : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => intr_clr(0),
      R => sclr,
      Q => blk00000001_sig000001ce
    );
  blk00000001_blk00000032 : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => intr_clr(1),
      R => sclr,
      Q => blk00000001_sig000001cf
    );
  blk00000001_blk00000031 : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => intr_clr(2),
      R => sclr,
      Q => blk00000001_sig000001d0
    );
  blk00000001_blk00000030 : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => intr_clr(3),
      R => sclr,
      Q => blk00000001_sig000001d1
    );
  blk00000001_blk0000002f : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => intr_clr(5),
      R => sclr,
      Q => blk00000001_sig000001d2
    );
  blk00000001_blk0000002e : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => intr_clr(7),
      R => sclr,
      Q => blk00000001_sig000001d3
    );
  blk00000001_blk0000002d : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => intr_clr(8),
      R => sclr,
      Q => blk00000001_sig000001d4
    );
  blk00000001_blk0000002c : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => intr_clr(9),
      R => sclr,
      Q => blk00000001_sig000001d5
    );
  blk00000001_blk0000002b : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => intr_clr(12),
      R => sclr,
      Q => blk00000001_sig000001d6
    );
  blk00000001_blk0000002a : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => intr_clr(13),
      R => sclr,
      Q => blk00000001_sig000001d7
    );
  blk00000001_blk00000029 : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => intr_clr(14),
      R => sclr,
      Q => blk00000001_sig000001d8
    );
  blk00000001_blk00000028 : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => intr_clr(15),
      R => sclr,
      Q => blk00000001_sig000001d9
    );
  blk00000001_blk00000027 : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => intr_clr(16),
      R => sclr,
      Q => blk00000001_sig000001da
    );
  blk00000001_blk00000026 : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig0000019d,
      R => sclr,
      Q => intr_out
    );
  blk00000001_blk00000025 : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => vblank_in,
      R => sclr,
      Q => blk00000001_sig000001c4
    );
  blk00000001_blk00000024 : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => active_video_in,
      R => sclr,
      Q => blk00000001_sig000001c3
    );
  blk00000001_blk00000023 : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => control(0),
      R => blk00000001_sig0000019c,
      Q => blk00000001_sig000001bf
    );
  blk00000001_blk00000022 : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000001bf,
      R => sclr,
      Q => blk00000001_sig000001c0
    );
  blk00000001_blk00000021 : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000001c0,
      R => sclr,
      Q => blk00000001_sig000001c1
    );
  blk00000001_blk00000020 : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000001c1,
      R => sclr,
      Q => blk00000001_sig000001c2
    );
  blk00000001_blk0000001f : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => control(1),
      R => blk00000001_sig0000019c,
      Q => blk00000001_sig000001bb
    );
  blk00000001_blk0000001e : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000001bb,
      R => sclr,
      Q => blk00000001_sig000001bc
    );
  blk00000001_blk0000001d : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000001bc,
      R => sclr,
      Q => blk00000001_sig000001bd
    );
  blk00000001_blk0000001c : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000001bd,
      R => sclr,
      Q => blk00000001_sig000001be
    );
  blk00000001_blk0000001b : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000001ac,
      R => sclr,
      Q => blk00000001_sig000001ba
    );
  blk00000001_blk0000001a : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000001ac,
      R => blk00000001_sig000001c7,
      Q => blk00000001_sig000001b1
    );
  blk00000001_blk00000019 : FDS
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000001ba,
      S => sclr,
      Q => blk00000001_sig000001b9
    );
  blk00000001_blk00000018 : FDS
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000001b1,
      S => blk00000001_sig000001c7,
      Q => blk00000001_sig000001af
    );
  blk00000001_blk00000017 : FDE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => sclr,
      D => blk00000001_sig000001cd,
      Q => blk00000001_sig000001b8
    );
  blk00000001_blk00000016 : FDE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => sclr,
      D => blk00000001_sig000001cc,
      Q => blk00000001_sig000001b7
    );
  blk00000001_blk00000015 : FDE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => sclr,
      D => blk00000001_sig000001cb,
      Q => blk00000001_sig000001b6
    );
  blk00000001_blk00000014 : FDE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => sclr,
      D => blk00000001_sig000001ca,
      Q => blk00000001_sig000001b5
    );
  blk00000001_blk00000013 : FDE
    port map (
      C => NlwRenamedSignal_video_clk_in,
      CE => sclr,
      D => blk00000001_sig000001c9,
      Q => blk00000001_sig000001b4
    );
  blk00000001_blk00000012 : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => NlwRenamedSig_OI_vblank_out,
      R => sclr,
      Q => blk00000001_sig000001c6
    );
  blk00000001_blk00000011 : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => NlwRenamedSig_OI_active_video_out,
      R => sclr,
      Q => blk00000001_sig000001c5
    );
  blk00000001_blk00000010 : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000001a5,
      R => sclr,
      Q => NlwRenamedSig_OI_intr_status_0_Q
    );
  blk00000001_blk0000000f : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000001a6,
      R => sclr,
      Q => NlwRenamedSig_OI_intr_status_1_Q
    );
  blk00000001_blk0000000e : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000001a7,
      R => sclr,
      Q => NlwRenamedSig_OI_intr_status_2_Q
    );
  blk00000001_blk0000000d : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000001a8,
      R => sclr,
      Q => NlwRenamedSig_OI_intr_status_3_Q
    );
  blk00000001_blk0000000c : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000001a9,
      R => sclr,
      Q => NlwRenamedSig_OI_intr_status_5_Q
    );
  blk00000001_blk0000000b : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000001aa,
      R => sclr,
      Q => NlwRenamedSig_OI_intr_status_7_Q
    );
  blk00000001_blk0000000a : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000001a1,
      R => sclr,
      Q => NlwRenamedSig_OI_intr_status_8_Q
    );
  blk00000001_blk00000009 : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000001a0,
      R => sclr,
      Q => NlwRenamedSig_OI_intr_status_9_Q
    );
  blk00000001_blk00000008 : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000001a4,
      R => sclr,
      Q => NlwRenamedSig_OI_intr_status_12_Q
    );
  blk00000001_blk00000007 : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000001a3,
      R => sclr,
      Q => NlwRenamedSig_OI_intr_status_13_Q
    );
  blk00000001_blk00000006 : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig0000019e,
      R => sclr,
      Q => NlwRenamedSig_OI_intr_status_14_Q
    );
  blk00000001_blk00000005 : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig0000019f,
      R => sclr,
      Q => NlwRenamedSig_OI_intr_status_15_Q
    );
  blk00000001_blk00000004 : FDR
    port map (
      C => NlwRenamedSignal_video_clk_in,
      D => blk00000001_sig000001a2,
      R => sclr,
      Q => NlwRenamedSig_OI_intr_status_16_Q
    );
  blk00000001_blk00000003 : GND
    port map (
      G => NlwRenamedSig_OI_det_status_0_Q
    );
  blk00000001_blk00000002 : VCC
    port map (
      P => NlwRenamedSig_OI_det_status_24_Q
    );

end STRUCTURE;

-- synthesis translate_on
