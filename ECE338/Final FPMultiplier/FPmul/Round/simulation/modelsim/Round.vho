-- Copyright (C) 1991-2007 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 7.1 Build 156 04/30/2007 SJ Web Edition"

-- DATE "04/10/2007 21:04:49"

-- 
-- Device: Altera EP1C6Q240C8 Package PQFP240
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE, cyclone;
USE IEEE.std_logic_1164.all;
USE cyclone.cyclone_components.all;

ENTITY 	Round IS
    PORT (
	rndip : IN std_logic_vector(45 DOWNTO 0);
	en : IN std_logic;
	rndop : OUT std_logic_vector(22 DOWNTO 0);
	addexp : OUT std_logic_vector(7 DOWNTO 0)
	);
END Round;

ARCHITECTURE structure OF Round IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rndip : std_logic_vector(45 DOWNTO 0);
SIGNAL ww_en : std_logic;
SIGNAL ww_rndop : std_logic_vector(22 DOWNTO 0);
SIGNAL ww_addexp : std_logic_vector(7 DOWNTO 0);
SIGNAL \en~combout\ : std_logic;
SIGNAL \process0~15543_combout\ : std_logic;
SIGNAL \process0~160_combout\ : std_logic;
SIGNAL \process0~15544_combout\ : std_logic;
SIGNAL \process0~274_combout\ : std_logic;
SIGNAL \process0~332_combout\ : std_logic;
SIGNAL \process0~361_combout\ : std_logic;
SIGNAL \process0~448_combout\ : std_logic;
SIGNAL \process0~538_combout\ : std_logic;
SIGNAL \process0~15565_combout\ : std_logic;
SIGNAL \process0~568_combout\ : std_logic;
SIGNAL \process0~15566_combout\ : std_logic;
SIGNAL \process0~15567_combout\ : std_logic;
SIGNAL \process0~478_combout\ : std_logic;
SIGNAL \process0~15568_combout\ : std_logic;
SIGNAL \process0~390_combout\ : std_logic;
SIGNAL \process0~15569_combout\ : std_logic;
SIGNAL \process0~15570_combout\ : std_logic;
SIGNAL \process0~15571_combout\ : std_logic;
SIGNAL \process0~15572_combout\ : std_logic;
SIGNAL \process0~15573_combout\ : std_logic;
SIGNAL \process0~628_combout\ : std_logic;
SIGNAL \process0~15574_combout\ : std_logic;
SIGNAL \process0~15583_combout\ : std_logic;
SIGNAL \process0~216_combout\ : std_logic;
SIGNAL \process0~15584_combout\ : std_logic;
SIGNAL \process0~15585_combout\ : std_logic;
SIGNAL \process0~15582_combout\ : std_logic;
SIGNAL \process0~15586_combout\ : std_logic;
SIGNAL \process0~15587_combout\ : std_logic;
SIGNAL \process0~15577_combout\ : std_logic;
SIGNAL \process0~15578_combout\ : std_logic;
SIGNAL \process0~15579_combout\ : std_logic;
SIGNAL \process0~15580_combout\ : std_logic;
SIGNAL \process0~15575_combout\ : std_logic;
SIGNAL \process0~104_combout\ : std_logic;
SIGNAL \process0~15576_combout\ : std_logic;
SIGNAL \process0~15581_combout\ : std_logic;
SIGNAL \process0~15588_combout\ : std_logic;
SIGNAL \process0~15589_combout\ : std_logic;
SIGNAL \process0~15548_combout\ : std_logic;
SIGNAL \process0~15550_combout\ : std_logic;
SIGNAL \process0~15549_combout\ : std_logic;
SIGNAL \process0~15551_combout\ : std_logic;
SIGNAL \process0~15552_combout\ : std_logic;
SIGNAL \process0~15553_combout\ : std_logic;
SIGNAL \process0~15554_combout\ : std_logic;
SIGNAL \process0~15555_combout\ : std_logic;
SIGNAL \process0~15556_combout\ : std_logic;
SIGNAL \process0~15547_combout\ : std_logic;
SIGNAL \process0~15557_combout\ : std_logic;
SIGNAL \process0~15558_combout\ : std_logic;
SIGNAL \process0~15559_combout\ : std_logic;
SIGNAL \process0~508_combout\ : std_logic;
SIGNAL \process0~15545_combout\ : std_logic;
SIGNAL \process0~15546_combout\ : std_logic;
SIGNAL \process0~419_combout\ : std_logic;
SIGNAL \process0~15560_combout\ : std_logic;
SIGNAL \process0~15561_combout\ : std_logic;
SIGNAL \process0~15562_combout\ : std_logic;
SIGNAL \process0~15563_combout\ : std_logic;
SIGNAL \process0~15564_combout\ : std_logic;
SIGNAL \process0~15599_combout\ : std_logic;
SIGNAL \process0~15600_combout\ : std_logic;
SIGNAL \process0~15601_combout\ : std_logic;
SIGNAL \process0~15602_combout\ : std_logic;
SIGNAL \process0~15603_combout\ : std_logic;
SIGNAL \process0~15597_combout\ : std_logic;
SIGNAL \process0~15598_combout\ : std_logic;
SIGNAL \process0~15604_combout\ : std_logic;
SIGNAL \process0~15590_combout\ : std_logic;
SIGNAL \process0~15592_combout\ : std_logic;
SIGNAL \process0~15593_combout\ : std_logic;
SIGNAL \process0~15591_combout\ : std_logic;
SIGNAL \process0~15594_combout\ : std_logic;
SIGNAL \process0~15595_combout\ : std_logic;
SIGNAL \process0~15596_combout\ : std_logic;
SIGNAL \process0~15605_combout\ : std_logic;
SIGNAL \rndopt[1]~115\ : std_logic;
SIGNAL \process0~15608_combout\ : std_logic;
SIGNAL \process0~15609_combout\ : std_logic;
SIGNAL \process0~15607_combout\ : std_logic;
SIGNAL \process0~15610_combout\ : std_logic;
SIGNAL \process0~15606_combout\ : std_logic;
SIGNAL \process0~15611_combout\ : std_logic;
SIGNAL \process0~15612_combout\ : std_logic;
SIGNAL \process0~15614_combout\ : std_logic;
SIGNAL \process0~15615_combout\ : std_logic;
SIGNAL \process0~15613_combout\ : std_logic;
SIGNAL \process0~15616_combout\ : std_logic;
SIGNAL \process0~15617_combout\ : std_logic;
SIGNAL \process0~15618_combout\ : std_logic;
SIGNAL \process0~15619_combout\ : std_logic;
SIGNAL \process0~15620_combout\ : std_logic;
SIGNAL \process0~15621_combout\ : std_logic;
SIGNAL \rndopt[2]~116\ : std_logic;
SIGNAL \rndopt[2]~116COUT1\ : std_logic;
SIGNAL \process0~15624_combout\ : std_logic;
SIGNAL \process0~15625_combout\ : std_logic;
SIGNAL \process0~15623_combout\ : std_logic;
SIGNAL \process0~15626_combout\ : std_logic;
SIGNAL \process0~15622_combout\ : std_logic;
SIGNAL \process0~15627_combout\ : std_logic;
SIGNAL \process0~15628_combout\ : std_logic;
SIGNAL \process0~15629_combout\ : std_logic;
SIGNAL \process0~15630_combout\ : std_logic;
SIGNAL \process0~15631_combout\ : std_logic;
SIGNAL \process0~15632_combout\ : std_logic;
SIGNAL \process0~15633_combout\ : std_logic;
SIGNAL \process0~15634_combout\ : std_logic;
SIGNAL \process0~15635_combout\ : std_logic;
SIGNAL \process0~15636_combout\ : std_logic;
SIGNAL \process0~15637_combout\ : std_logic;
SIGNAL \rndopt[3]~117\ : std_logic;
SIGNAL \rndopt[3]~117COUT1\ : std_logic;
SIGNAL \process0~15638_combout\ : std_logic;
SIGNAL \process0~15640_combout\ : std_logic;
SIGNAL \process0~15641_combout\ : std_logic;
SIGNAL \process0~15639_combout\ : std_logic;
SIGNAL \process0~15642_combout\ : std_logic;
SIGNAL \process0~15643_combout\ : std_logic;
SIGNAL \process0~15644_combout\ : std_logic;
SIGNAL \process0~15649_combout\ : std_logic;
SIGNAL \process0~15650_combout\ : std_logic;
SIGNAL \process0~15651_combout\ : std_logic;
SIGNAL \process0~15646_combout\ : std_logic;
SIGNAL \process0~15647_combout\ : std_logic;
SIGNAL \process0~15645_combout\ : std_logic;
SIGNAL \process0~15648_combout\ : std_logic;
SIGNAL \process0~15652_combout\ : std_logic;
SIGNAL \process0~15653_combout\ : std_logic;
SIGNAL \rndopt[4]~118\ : std_logic;
SIGNAL \rndopt[4]~118COUT1\ : std_logic;
SIGNAL \process0~15661_combout\ : std_logic;
SIGNAL \process0~15662_combout\ : std_logic;
SIGNAL \process0~15663_combout\ : std_logic;
SIGNAL \process0~15664_combout\ : std_logic;
SIGNAL \process0~15665_combout\ : std_logic;
SIGNAL \process0~15666_combout\ : std_logic;
SIGNAL \process0~15667_combout\ : std_logic;
SIGNAL \process0~15668_combout\ : std_logic;
SIGNAL \process0~15654_combout\ : std_logic;
SIGNAL \process0~15655_combout\ : std_logic;
SIGNAL \process0~15656_combout\ : std_logic;
SIGNAL \process0~15657_combout\ : std_logic;
SIGNAL \process0~15658_combout\ : std_logic;
SIGNAL \process0~15659_combout\ : std_logic;
SIGNAL \process0~15660_combout\ : std_logic;
SIGNAL \process0~15669_combout\ : std_logic;
SIGNAL \rndopt[5]~119\ : std_logic;
SIGNAL \rndopt[5]~119COUT1\ : std_logic;
SIGNAL \process0~15670_combout\ : std_logic;
SIGNAL \process0~15672_combout\ : std_logic;
SIGNAL \process0~15673_combout\ : std_logic;
SIGNAL \process0~15671_combout\ : std_logic;
SIGNAL \process0~15674_combout\ : std_logic;
SIGNAL \process0~15675_combout\ : std_logic;
SIGNAL \process0~15676_combout\ : std_logic;
SIGNAL \process0~15681_combout\ : std_logic;
SIGNAL \process0~15682_combout\ : std_logic;
SIGNAL \process0~15683_combout\ : std_logic;
SIGNAL \process0~15677_combout\ : std_logic;
SIGNAL \process0~15678_combout\ : std_logic;
SIGNAL \process0~15679_combout\ : std_logic;
SIGNAL \process0~15680_combout\ : std_logic;
SIGNAL \process0~15684_combout\ : std_logic;
SIGNAL \process0~15685_combout\ : std_logic;
SIGNAL \rndopt[6]~120\ : std_logic;
SIGNAL \process0~15686_combout\ : std_logic;
SIGNAL \process0~15688_combout\ : std_logic;
SIGNAL \process0~15689_combout\ : std_logic;
SIGNAL \process0~15687_combout\ : std_logic;
SIGNAL \process0~15690_combout\ : std_logic;
SIGNAL \process0~15691_combout\ : std_logic;
SIGNAL \process0~15692_combout\ : std_logic;
SIGNAL \process0~15693_combout\ : std_logic;
SIGNAL \process0~15694_combout\ : std_logic;
SIGNAL \process0~15695_combout\ : std_logic;
SIGNAL \process0~15696_combout\ : std_logic;
SIGNAL \process0~15697_combout\ : std_logic;
SIGNAL \process0~15698_combout\ : std_logic;
SIGNAL \process0~15699_combout\ : std_logic;
SIGNAL \process0~15700_combout\ : std_logic;
SIGNAL \process0~15701_combout\ : std_logic;
SIGNAL \rndopt[7]~121\ : std_logic;
SIGNAL \rndopt[7]~121COUT1\ : std_logic;
SIGNAL \process0~15709_combout\ : std_logic;
SIGNAL \process0~15710_combout\ : std_logic;
SIGNAL \process0~15711_combout\ : std_logic;
SIGNAL \process0~15712_combout\ : std_logic;
SIGNAL \process0~15713_combout\ : std_logic;
SIGNAL \process0~15714_combout\ : std_logic;
SIGNAL \process0~15715_combout\ : std_logic;
SIGNAL \process0~15716_combout\ : std_logic;
SIGNAL \process0~15702_combout\ : std_logic;
SIGNAL \process0~15704_combout\ : std_logic;
SIGNAL \process0~15705_combout\ : std_logic;
SIGNAL \process0~15703_combout\ : std_logic;
SIGNAL \process0~15706_combout\ : std_logic;
SIGNAL \process0~15707_combout\ : std_logic;
SIGNAL \process0~15708_combout\ : std_logic;
SIGNAL \process0~15717_combout\ : std_logic;
SIGNAL \rndopt[8]~122\ : std_logic;
SIGNAL \rndopt[8]~122COUT1\ : std_logic;
SIGNAL \process0~15725_combout\ : std_logic;
SIGNAL \process0~15726_combout\ : std_logic;
SIGNAL \process0~15728_combout\ : std_logic;
SIGNAL \process0~15729_combout\ : std_logic;
SIGNAL \process0~15727_combout\ : std_logic;
SIGNAL \process0~15730_combout\ : std_logic;
SIGNAL \process0~15731_combout\ : std_logic;
SIGNAL \process0~15732_combout\ : std_logic;
SIGNAL \process0~15719_combout\ : std_logic;
SIGNAL \process0~15720_combout\ : std_logic;
SIGNAL \process0~15721_combout\ : std_logic;
SIGNAL \process0~15722_combout\ : std_logic;
SIGNAL \process0~15718_combout\ : std_logic;
SIGNAL \process0~15723_combout\ : std_logic;
SIGNAL \process0~15724_combout\ : std_logic;
SIGNAL \process0~15733_combout\ : std_logic;
SIGNAL \rndopt[9]~123\ : std_logic;
SIGNAL \rndopt[9]~123COUT1\ : std_logic;
SIGNAL \process0~15742_combout\ : std_logic;
SIGNAL \process0~15743_combout\ : std_logic;
SIGNAL \process0~15741_combout\ : std_logic;
SIGNAL \process0~15744_combout\ : std_logic;
SIGNAL \process0~15745_combout\ : std_logic;
SIGNAL \process0~15746_combout\ : std_logic;
SIGNAL \process0~15747_combout\ : std_logic;
SIGNAL \process0~15748_combout\ : std_logic;
SIGNAL \process0~15734_combout\ : std_logic;
SIGNAL \process0~15736_combout\ : std_logic;
SIGNAL \process0~15737_combout\ : std_logic;
SIGNAL \process0~15735_combout\ : std_logic;
SIGNAL \process0~15738_combout\ : std_logic;
SIGNAL \process0~15739_combout\ : std_logic;
SIGNAL \process0~15740_combout\ : std_logic;
SIGNAL \process0~15749_combout\ : std_logic;
SIGNAL \rndopt[10]~124\ : std_logic;
SIGNAL \rndopt[10]~124COUT1\ : std_logic;
SIGNAL \process0~15752_combout\ : std_logic;
SIGNAL \process0~15753_combout\ : std_logic;
SIGNAL \process0~15751_combout\ : std_logic;
SIGNAL \process0~15754_combout\ : std_logic;
SIGNAL \process0~15750_combout\ : std_logic;
SIGNAL \process0~15755_combout\ : std_logic;
SIGNAL \process0~15756_combout\ : std_logic;
SIGNAL \process0~15759_combout\ : std_logic;
SIGNAL \process0~15760_combout\ : std_logic;
SIGNAL \process0~15761_combout\ : std_logic;
SIGNAL \process0~15762_combout\ : std_logic;
SIGNAL \process0~15763_combout\ : std_logic;
SIGNAL \process0~15757_combout\ : std_logic;
SIGNAL \process0~15758_combout\ : std_logic;
SIGNAL \process0~15764_combout\ : std_logic;
SIGNAL \process0~15765_combout\ : std_logic;
SIGNAL \rndopt[11]~125\ : std_logic;
SIGNAL \process0~15774_combout\ : std_logic;
SIGNAL \process0~15775_combout\ : std_logic;
SIGNAL \process0~15773_combout\ : std_logic;
SIGNAL \process0~15776_combout\ : std_logic;
SIGNAL \process0~15777_combout\ : std_logic;
SIGNAL \process0~15778_combout\ : std_logic;
SIGNAL \process0~15779_combout\ : std_logic;
SIGNAL \process0~15780_combout\ : std_logic;
SIGNAL \process0~15766_combout\ : std_logic;
SIGNAL \process0~15767_combout\ : std_logic;
SIGNAL \process0~15768_combout\ : std_logic;
SIGNAL \process0~15769_combout\ : std_logic;
SIGNAL \process0~15770_combout\ : std_logic;
SIGNAL \process0~15771_combout\ : std_logic;
SIGNAL \process0~15772_combout\ : std_logic;
SIGNAL \process0~15781_combout\ : std_logic;
SIGNAL \rndopt[12]~126\ : std_logic;
SIGNAL \rndopt[12]~126COUT1\ : std_logic;
SIGNAL \process0~15784_combout\ : std_logic;
SIGNAL \process0~15785_combout\ : std_logic;
SIGNAL \process0~15783_combout\ : std_logic;
SIGNAL \process0~15786_combout\ : std_logic;
SIGNAL \process0~15782_combout\ : std_logic;
SIGNAL \process0~15787_combout\ : std_logic;
SIGNAL \process0~15788_combout\ : std_logic;
SIGNAL \process0~15789_combout\ : std_logic;
SIGNAL \process0~15790_combout\ : std_logic;
SIGNAL \process0~15792_combout\ : std_logic;
SIGNAL \process0~15793_combout\ : std_logic;
SIGNAL \process0~15791_combout\ : std_logic;
SIGNAL \process0~15794_combout\ : std_logic;
SIGNAL \process0~15795_combout\ : std_logic;
SIGNAL \process0~15796_combout\ : std_logic;
SIGNAL \process0~15797_combout\ : std_logic;
SIGNAL \rndopt[13]~127\ : std_logic;
SIGNAL \rndopt[13]~127COUT1\ : std_logic;
SIGNAL \process0~15805_combout\ : std_logic;
SIGNAL \process0~15806_combout\ : std_logic;
SIGNAL \process0~15807_combout\ : std_logic;
SIGNAL \process0~15808_combout\ : std_logic;
SIGNAL \process0~15809_combout\ : std_logic;
SIGNAL \process0~15810_combout\ : std_logic;
SIGNAL \process0~15811_combout\ : std_logic;
SIGNAL \process0~15812_combout\ : std_logic;
SIGNAL \process0~15799_combout\ : std_logic;
SIGNAL \process0~15800_combout\ : std_logic;
SIGNAL \process0~15801_combout\ : std_logic;
SIGNAL \process0~15802_combout\ : std_logic;
SIGNAL \process0~15798_combout\ : std_logic;
SIGNAL \process0~15803_combout\ : std_logic;
SIGNAL \process0~15804_combout\ : std_logic;
SIGNAL \process0~15813_combout\ : std_logic;
SIGNAL \rndopt[14]~128\ : std_logic;
SIGNAL \rndopt[14]~128COUT1\ : std_logic;
SIGNAL \process0~15821_combout\ : std_logic;
SIGNAL \process0~15822_combout\ : std_logic;
SIGNAL \process0~15824_combout\ : std_logic;
SIGNAL \process0~15825_combout\ : std_logic;
SIGNAL \process0~15823_combout\ : std_logic;
SIGNAL \process0~15826_combout\ : std_logic;
SIGNAL \process0~15827_combout\ : std_logic;
SIGNAL \process0~15828_combout\ : std_logic;
SIGNAL \process0~15816_combout\ : std_logic;
SIGNAL \process0~15817_combout\ : std_logic;
SIGNAL \process0~15815_combout\ : std_logic;
SIGNAL \process0~15818_combout\ : std_logic;
SIGNAL \process0~15814_combout\ : std_logic;
SIGNAL \process0~15819_combout\ : std_logic;
SIGNAL \process0~15820_combout\ : std_logic;
SIGNAL \process0~15829_combout\ : std_logic;
SIGNAL \rndopt[15]~129\ : std_logic;
SIGNAL \rndopt[15]~129COUT1\ : std_logic;
SIGNAL \process0~15830_combout\ : std_logic;
SIGNAL \process0~15832_combout\ : std_logic;
SIGNAL \process0~15833_combout\ : std_logic;
SIGNAL \process0~15831_combout\ : std_logic;
SIGNAL \process0~15834_combout\ : std_logic;
SIGNAL \process0~15835_combout\ : std_logic;
SIGNAL \process0~15836_combout\ : std_logic;
SIGNAL \process0~15838_combout\ : std_logic;
SIGNAL \process0~15839_combout\ : std_logic;
SIGNAL \process0~15837_combout\ : std_logic;
SIGNAL \process0~15840_combout\ : std_logic;
SIGNAL \process0~15841_combout\ : std_logic;
SIGNAL \process0~15842_combout\ : std_logic;
SIGNAL \process0~15843_combout\ : std_logic;
SIGNAL \process0~15844_combout\ : std_logic;
SIGNAL \process0~15845_combout\ : std_logic;
SIGNAL \rndopt[16]~130\ : std_logic;
SIGNAL \process0~15847_combout\ : std_logic;
SIGNAL \process0~15848_combout\ : std_logic;
SIGNAL \process0~15849_combout\ : std_logic;
SIGNAL \process0~15850_combout\ : std_logic;
SIGNAL \process0~15846_combout\ : std_logic;
SIGNAL \process0~15851_combout\ : std_logic;
SIGNAL \process0~15852_combout\ : std_logic;
SIGNAL \process0~15853_combout\ : std_logic;
SIGNAL \process0~15854_combout\ : std_logic;
SIGNAL \process0~15855_combout\ : std_logic;
SIGNAL \process0~15856_combout\ : std_logic;
SIGNAL \process0~15857_combout\ : std_logic;
SIGNAL \process0~15858_combout\ : std_logic;
SIGNAL \process0~15859_combout\ : std_logic;
SIGNAL \process0~15860_combout\ : std_logic;
SIGNAL \process0~15861_combout\ : std_logic;
SIGNAL \rndopt[17]~131\ : std_logic;
SIGNAL \rndopt[17]~131COUT1\ : std_logic;
SIGNAL \process0~15864_combout\ : std_logic;
SIGNAL \process0~15865_combout\ : std_logic;
SIGNAL \process0~15863_combout\ : std_logic;
SIGNAL \process0~15866_combout\ : std_logic;
SIGNAL \process0~15862_combout\ : std_logic;
SIGNAL \process0~15867_combout\ : std_logic;
SIGNAL \process0~15868_combout\ : std_logic;
SIGNAL \process0~15873_combout\ : std_logic;
SIGNAL \process0~15874_combout\ : std_logic;
SIGNAL \process0~15875_combout\ : std_logic;
SIGNAL \process0~15869_combout\ : std_logic;
SIGNAL \process0~15870_combout\ : std_logic;
SIGNAL \process0~15871_combout\ : std_logic;
SIGNAL \process0~15872_combout\ : std_logic;
SIGNAL \process0~15876_combout\ : std_logic;
SIGNAL \process0~15877_combout\ : std_logic;
SIGNAL \rndopt[18]~132\ : std_logic;
SIGNAL \rndopt[18]~132COUT1\ : std_logic;
SIGNAL \process0~15880_combout\ : std_logic;
SIGNAL \process0~15881_combout\ : std_logic;
SIGNAL \process0~15879_combout\ : std_logic;
SIGNAL \process0~15882_combout\ : std_logic;
SIGNAL \process0~15878_combout\ : std_logic;
SIGNAL \process0~15883_combout\ : std_logic;
SIGNAL \process0~15884_combout\ : std_logic;
SIGNAL \process0~15885_combout\ : std_logic;
SIGNAL \process0~15886_combout\ : std_logic;
SIGNAL \process0~15887_combout\ : std_logic;
SIGNAL \process0~15888_combout\ : std_logic;
SIGNAL \process0~15889_combout\ : std_logic;
SIGNAL \process0~15890_combout\ : std_logic;
SIGNAL \process0~15891_combout\ : std_logic;
SIGNAL \process0~15892_combout\ : std_logic;
SIGNAL \process0~15893_combout\ : std_logic;
SIGNAL \rndopt[19]~133\ : std_logic;
SIGNAL \rndopt[19]~133COUT1\ : std_logic;
SIGNAL \process0~15902_combout\ : std_logic;
SIGNAL \process0~15903_combout\ : std_logic;
SIGNAL \process0~15901_combout\ : std_logic;
SIGNAL \process0~15904_combout\ : std_logic;
SIGNAL \process0~15905_combout\ : std_logic;
SIGNAL \process0~15906_combout\ : std_logic;
SIGNAL \process0~15907_combout\ : std_logic;
SIGNAL \process0~15908_combout\ : std_logic;
SIGNAL \process0~15896_combout\ : std_logic;
SIGNAL \process0~15897_combout\ : std_logic;
SIGNAL \process0~15895_combout\ : std_logic;
SIGNAL \process0~15898_combout\ : std_logic;
SIGNAL \process0~15894_combout\ : std_logic;
SIGNAL \process0~15899_combout\ : std_logic;
SIGNAL \process0~15900_combout\ : std_logic;
SIGNAL \process0~15909_combout\ : std_logic;
SIGNAL \rndopt[20]~134\ : std_logic;
SIGNAL \rndopt[20]~134COUT1\ : std_logic;
SIGNAL \process0~15918_combout\ : std_logic;
SIGNAL \process0~15919_combout\ : std_logic;
SIGNAL \process0~15920_combout\ : std_logic;
SIGNAL \process0~15921_combout\ : std_logic;
SIGNAL \process0~15922_combout\ : std_logic;
SIGNAL \process0~15923_combout\ : std_logic;
SIGNAL \process0~15924_combout\ : std_logic;
SIGNAL \process0~15913_combout\ : std_logic;
SIGNAL \process0~15914_combout\ : std_logic;
SIGNAL \process0~15912_combout\ : std_logic;
SIGNAL \process0~15915_combout\ : std_logic;
SIGNAL \process0~15916_combout\ : std_logic;
SIGNAL \process0~188_combout\ : std_logic;
SIGNAL \process0~15910_combout\ : std_logic;
SIGNAL \process0~15911_combout\ : std_logic;
SIGNAL \process0~15917_combout\ : std_logic;
SIGNAL \process0~15925_combout\ : std_logic;
SIGNAL \rndopt[21]~135\ : std_logic;
SIGNAL \process0~15928_combout\ : std_logic;
SIGNAL \process0~15930_combout\ : std_logic;
SIGNAL \process0~15929_combout\ : std_logic;
SIGNAL \process0~15931_combout\ : std_logic;
SIGNAL \process0~15932_combout\ : std_logic;
SIGNAL \process0~15933_combout\ : std_logic;
SIGNAL \process0~15934_combout\ : std_logic;
SIGNAL \process0~15935_combout\ : std_logic;
SIGNAL \process0~15926_combout\ : std_logic;
SIGNAL \process0~15927_combout\ : std_logic;
SIGNAL \process0~15936_combout\ : std_logic;
SIGNAL \process0~15937_combout\ : std_logic;
SIGNAL \rndopt[22]~136\ : std_logic;
SIGNAL \rndopt[22]~136COUT1\ : std_logic;
SIGNAL \process0~15938_combout\ : std_logic;
SIGNAL \process0~15939_combout\ : std_logic;
SIGNAL \process0~15940_combout\ : std_logic;
SIGNAL \process0~15941_combout\ : std_logic;
SIGNAL \process0~15942_combout\ : std_logic;
SIGNAL \process0~15943_combout\ : std_logic;
SIGNAL \process0~15944_combout\ : std_logic;
SIGNAL \process0~15949_combout\ : std_logic;
SIGNAL \process0~15946_combout\ : std_logic;
SIGNAL \process0~15947_combout\ : std_logic;
SIGNAL \process0~15948_combout\ : std_logic;
SIGNAL \process0~15951_combout\ : std_logic;
SIGNAL aexpt : std_logic_vector(7 DOWNTO 0);
SIGNAL \rndip~combout\ : std_logic_vector(45 DOWNTO 0);
SIGNAL rndopt : std_logic_vector(23 DOWNTO 0);

BEGIN

ww_rndip <= rndip;
ww_en <= en;
rndop <= ww_rndop;
addexp <= ww_addexp;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\en~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_en,
	combout => \en~combout\);

\rndip[37]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(37),
	combout => \rndip~combout\(37));

\rndip[38]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(38),
	combout => \rndip~combout\(38));

\rndip[41]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(41),
	combout => \rndip~combout\(41));

\rndip[39]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(39),
	combout => \rndip~combout\(39));

\rndip[40]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(40),
	combout => \rndip~combout\(40));

\rndip[45]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(45),
	combout => \rndip~combout\(45));

\rndip[42]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(42),
	combout => \rndip~combout\(42));

\rndip[44]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(44),
	combout => \rndip~combout\(44));

\rndip[43]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(43),
	combout => \rndip~combout\(43));

\process0~15543\ : cyclone_lcell
-- Equation(s):
-- \process0~15543_combout\ = !\rndip~combout\(45) & !\rndip~combout\(42) & !\rndip~combout\(44) & !\rndip~combout\(43)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(45),
	datab => \rndip~combout\(42),
	datac => \rndip~combout\(44),
	datad => \rndip~combout\(43),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15543_combout\);

\process0~160\ : cyclone_lcell
-- Equation(s):
-- \process0~160_combout\ = \rndip~combout\(41) # \rndip~combout\(39) # \rndip~combout\(40) # !\process0~15543_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(41),
	datab => \rndip~combout\(39),
	datac => \rndip~combout\(40),
	datad => \process0~15543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~160_combout\);

\rndip[35]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(35),
	combout => \rndip~combout\(35));

\rndip[36]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(36),
	combout => \rndip~combout\(36));

\process0~15544\ : cyclone_lcell
-- Equation(s):
-- \process0~15544_combout\ = !\rndip~combout\(35) & !\rndip~combout\(36)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \rndip~combout\(35),
	datad => \rndip~combout\(36),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15544_combout\);

\process0~274\ : cyclone_lcell
-- Equation(s):
-- \process0~274_combout\ = \rndip~combout\(37) # \rndip~combout\(38) # \process0~160_combout\ # !\process0~15544_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(37),
	datab => \rndip~combout\(38),
	datac => \process0~160_combout\,
	datad => \process0~15544_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~274_combout\);

\rndip[34]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(34),
	combout => \rndip~combout\(34));

\rndip[33]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(33),
	combout => \rndip~combout\(33));

\process0~332\ : cyclone_lcell
-- Equation(s):
-- \process0~332_combout\ = \process0~274_combout\ # \rndip~combout\(34) # \rndip~combout\(33)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~274_combout\,
	datab => \rndip~combout\(34),
	datac => \rndip~combout\(33),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~332_combout\);

\rndip[25]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(25),
	combout => \rndip~combout\(25));

\rndip[24]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(24),
	combout => \rndip~combout\(24));

\rndip[27]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(27),
	combout => \rndip~combout\(27));

\rndip[28]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(28),
	combout => \rndip~combout\(28));

\rndip[26]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(26),
	combout => \rndip~combout\(26));

\rndip[30]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(30),
	combout => \rndip~combout\(30));

\rndip[31]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(31),
	combout => \rndip~combout\(31));

\rndip[29]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(29),
	combout => \rndip~combout\(29));

\rndip[32]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(32),
	combout => \rndip~combout\(32));

\process0~361\ : cyclone_lcell
-- Equation(s):
-- \process0~361_combout\ = \rndip~combout\(34) # \rndip~combout\(33) # \process0~274_combout\ # \rndip~combout\(32)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(34),
	datab => \rndip~combout\(33),
	datac => \process0~274_combout\,
	datad => \rndip~combout\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~361_combout\);

\process0~448\ : cyclone_lcell
-- Equation(s):
-- \process0~448_combout\ = \rndip~combout\(30) # \rndip~combout\(31) # \rndip~combout\(29) # \process0~361_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(30),
	datab => \rndip~combout\(31),
	datac => \rndip~combout\(29),
	datad => \process0~361_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~448_combout\);

\process0~538\ : cyclone_lcell
-- Equation(s):
-- \process0~538_combout\ = \rndip~combout\(27) # \rndip~combout\(28) # \rndip~combout\(26) # \process0~448_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(27),
	datab => \rndip~combout\(28),
	datac => \rndip~combout\(26),
	datad => \process0~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~538_combout\);

\process0~15565\ : cyclone_lcell
-- Equation(s):
-- \process0~15565_combout\ = \process0~538_combout\ # !\rndip~combout\(25) & \rndip~combout\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rndip~combout\(25),
	datac => \rndip~combout\(24),
	datad => \process0~538_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15565_combout\);

\rndip[3]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(3),
	combout => \rndip~combout\(3));

\rndip[1]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(1),
	combout => \rndip~combout\(1));

\process0~568\ : cyclone_lcell
-- Equation(s):
-- \process0~568_combout\ = \rndip~combout\(25) # \process0~538_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \rndip~combout\(25),
	datad => \process0~538_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~568_combout\);

\process0~15566\ : cyclone_lcell
-- Equation(s):
-- \process0~15566_combout\ = \process0~568_combout\ & (\rndip~combout\(3) # \process0~15565_combout\) # !\process0~568_combout\ & (\rndip~combout\(1) & !\process0~15565_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(3),
	datab => \rndip~combout\(1),
	datac => \process0~568_combout\,
	datad => \process0~15565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15566_combout\);

\rndip[2]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(2),
	combout => \rndip~combout\(2));

\process0~15567\ : cyclone_lcell
-- Equation(s):
-- \process0~15567_combout\ = \process0~448_combout\ # \rndip~combout\(27) & !\rndip~combout\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(27),
	datab => \rndip~combout\(28),
	datad => \process0~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15567_combout\);

\rndip[5]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(5),
	combout => \rndip~combout\(5));

\rndip[4]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(4),
	combout => \rndip~combout\(4));

\process0~478\ : cyclone_lcell
-- Equation(s):
-- \process0~478_combout\ = \rndip~combout\(28) # \process0~448_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rndip~combout\(28),
	datad => \process0~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~478_combout\);

\rndip[6]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(6),
	combout => \rndip~combout\(6));

\process0~15568\ : cyclone_lcell
-- Equation(s):
-- \process0~15568_combout\ = \process0~15567_combout\ & (\process0~478_combout\) # !\process0~15567_combout\ & (\process0~478_combout\ & (\rndip~combout\(6)) # !\process0~478_combout\ & \rndip~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15567_combout\,
	datab => \rndip~combout\(4),
	datac => \process0~478_combout\,
	datad => \rndip~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15568_combout\);

\rndip[8]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(8),
	combout => \rndip~combout\(8));

\rndip[10]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(10),
	combout => \rndip~combout\(10));

\process0~390\ : cyclone_lcell
-- Equation(s):
-- \process0~390_combout\ = \rndip~combout\(31) # \process0~361_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rndip~combout\(31),
	datac => \process0~361_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~390_combout\);

\rndip[9]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(9),
	combout => \rndip~combout\(9));

\rndip[7]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(7),
	combout => \rndip~combout\(7));

\process0~15569\ : cyclone_lcell
-- Equation(s):
-- \process0~15569_combout\ = \process0~361_combout\ # \rndip~combout\(30) & !\rndip~combout\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rndip~combout\(30),
	datac => \process0~361_combout\,
	datad => \rndip~combout\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15569_combout\);

\process0~15570\ : cyclone_lcell
-- Equation(s):
-- \process0~15570_combout\ = \process0~390_combout\ & (\rndip~combout\(9) # \process0~15569_combout\) # !\process0~390_combout\ & (\rndip~combout\(7) & !\process0~15569_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~390_combout\,
	datab => \rndip~combout\(9),
	datac => \rndip~combout\(7),
	datad => \process0~15569_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15570_combout\);

\process0~15571\ : cyclone_lcell
-- Equation(s):
-- \process0~15571_combout\ = \process0~15570_combout\ & (\rndip~combout\(10) # !\process0~15569_combout\) # !\process0~15570_combout\ & \rndip~combout\(8) & (\process0~15569_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(8),
	datab => \rndip~combout\(10),
	datac => \process0~15570_combout\,
	datad => \process0~15569_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15571_combout\);

\process0~15572\ : cyclone_lcell
-- Equation(s):
-- \process0~15572_combout\ = \process0~15567_combout\ & (\process0~15568_combout\ & (\process0~15571_combout\) # !\process0~15568_combout\ & \rndip~combout\(5)) # !\process0~15567_combout\ & (\process0~15568_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f858",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15567_combout\,
	datab => \rndip~combout\(5),
	datac => \process0~15568_combout\,
	datad => \process0~15571_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15572_combout\);

\process0~15573\ : cyclone_lcell
-- Equation(s):
-- \process0~15573_combout\ = \process0~15565_combout\ & (\process0~15566_combout\ & (\process0~15572_combout\) # !\process0~15566_combout\ & \rndip~combout\(2)) # !\process0~15565_combout\ & \process0~15566_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15565_combout\,
	datab => \process0~15566_combout\,
	datac => \rndip~combout\(2),
	datad => \process0~15572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15573_combout\);

\rndip[23]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(23),
	combout => \rndip~combout\(23));

\process0~628\ : cyclone_lcell
-- Equation(s):
-- \process0~628_combout\ = \rndip~combout\(24) # \rndip~combout\(23) # \process0~538_combout\ # \rndip~combout\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(24),
	datab => \rndip~combout\(23),
	datac => \process0~538_combout\,
	datad => \rndip~combout\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~628_combout\);

\rndip[0]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(0),
	combout => \rndip~combout\(0));

\process0~15574\ : cyclone_lcell
-- Equation(s):
-- \process0~15574_combout\ = !\process0~332_combout\ & (\process0~628_combout\ & \process0~15573_combout\ # !\process0~628_combout\ & (\rndip~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2320",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15573_combout\,
	datab => \process0~332_combout\,
	datac => \process0~628_combout\,
	datad => \rndip~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15574_combout\);

\rndip[11]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(11),
	combout => \rndip~combout\(11));

\rndip[14]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(14),
	combout => \rndip~combout\(14));

\rndip[16]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(16),
	combout => \rndip~combout\(16));

\process0~15583\ : cyclone_lcell
-- Equation(s):
-- \process0~15583_combout\ = \rndip~combout\(38) # \process0~160_combout\ # \rndip~combout\(36) & !\rndip~combout\(37)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(36),
	datab => \rndip~combout\(38),
	datac => \process0~160_combout\,
	datad => \rndip~combout\(37),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15583_combout\);

\rndip[15]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(15),
	combout => \rndip~combout\(15));

\process0~216\ : cyclone_lcell
-- Equation(s):
-- \process0~216_combout\ = \rndip~combout\(37) # \rndip~combout\(38) # \process0~160_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(37),
	datac => \rndip~combout\(38),
	datad => \process0~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~216_combout\);

\rndip[13]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(13),
	combout => \rndip~combout\(13));

\process0~15584\ : cyclone_lcell
-- Equation(s):
-- \process0~15584_combout\ = \process0~15583_combout\ & (\process0~216_combout\) # !\process0~15583_combout\ & (\process0~216_combout\ & \rndip~combout\(15) # !\process0~216_combout\ & (\rndip~combout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e5e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15583_combout\,
	datab => \rndip~combout\(15),
	datac => \process0~216_combout\,
	datad => \rndip~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15584_combout\);

\process0~15585\ : cyclone_lcell
-- Equation(s):
-- \process0~15585_combout\ = \process0~15583_combout\ & (\process0~15584_combout\ & (\rndip~combout\(16)) # !\process0~15584_combout\ & \rndip~combout\(14)) # !\process0~15583_combout\ & (\process0~15584_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(14),
	datab => \rndip~combout\(16),
	datac => \process0~15583_combout\,
	datad => \process0~15584_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15585_combout\);

\process0~15582\ : cyclone_lcell
-- Equation(s):
-- \process0~15582_combout\ = \process0~160_combout\ # \rndip~combout\(34) & !\process0~274_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aeae",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~160_combout\,
	datab => \rndip~combout\(34),
	datac => \process0~274_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15582_combout\);

\process0~15586\ : cyclone_lcell
-- Equation(s):
-- \process0~15586_combout\ = \process0~216_combout\ & (!\process0~160_combout\) # !\process0~216_combout\ & (\rndip~combout\(34) # !\process0~15544_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "31fd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15544_combout\,
	datab => \process0~216_combout\,
	datac => \rndip~combout\(34),
	datad => \process0~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15586_combout\);

\process0~15587\ : cyclone_lcell
-- Equation(s):
-- \process0~15587_combout\ = \process0~15582_combout\ & (\process0~15586_combout\) # !\process0~15582_combout\ & (\process0~15586_combout\ & (\process0~15585_combout\) # !\process0~15586_combout\ & \rndip~combout\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(11),
	datab => \process0~15585_combout\,
	datac => \process0~15582_combout\,
	datad => \process0~15586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15587_combout\);

\rndip[12]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(12),
	combout => \rndip~combout\(12));

\rndip[19]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(19),
	combout => \rndip~combout\(19));

\process0~15577\ : cyclone_lcell
-- Equation(s):
-- \process0~15577_combout\ = !\rndip~combout\(44) & !\rndip~combout\(45)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \rndip~combout\(44),
	datad => \rndip~combout\(45),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15577_combout\);

\process0~15578\ : cyclone_lcell
-- Equation(s):
-- \process0~15578_combout\ = \rndip~combout\(45) # !\rndip~combout\(44) & !\rndip~combout\(43)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(45),
	datac => \rndip~combout\(44),
	datad => \rndip~combout\(43),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15578_combout\);

\rndip[21]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(21),
	combout => \rndip~combout\(21));

\rndip[20]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(20),
	combout => \rndip~combout\(20));

\process0~15579\ : cyclone_lcell
-- Equation(s):
-- \process0~15579_combout\ = \process0~15578_combout\ & (\rndip~combout\(20) # !\process0~15577_combout\) # !\process0~15578_combout\ & \rndip~combout\(21) & (\process0~15577_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15578_combout\,
	datab => \rndip~combout\(21),
	datac => \rndip~combout\(20),
	datad => \process0~15577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15579_combout\);

\rndip[22]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(22),
	combout => \rndip~combout\(22));

\process0~15580\ : cyclone_lcell
-- Equation(s):
-- \process0~15580_combout\ = \process0~15577_combout\ & (\process0~15579_combout\) # !\process0~15577_combout\ & (\process0~15579_combout\ & \rndip~combout\(23) # !\process0~15579_combout\ & (\rndip~combout\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e5e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15577_combout\,
	datab => \rndip~combout\(23),
	datac => \process0~15579_combout\,
	datad => \rndip~combout\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15580_combout\);

\rndip[18]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(18),
	combout => \rndip~combout\(18));

\rndip[17]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rndip(17),
	combout => \rndip~combout\(17));

\process0~15575\ : cyclone_lcell
-- Equation(s):
-- \process0~15575_combout\ = !\rndip~combout\(41) & \rndip~combout\(40) # !\process0~15543_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(41),
	datac => \rndip~combout\(40),
	datad => \process0~15543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15575_combout\);

\process0~104\ : cyclone_lcell
-- Equation(s):
-- \process0~104_combout\ = \rndip~combout\(41) # !\process0~15543_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(41),
	datad => \process0~15543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~104_combout\);

\process0~15576\ : cyclone_lcell
-- Equation(s):
-- \process0~15576_combout\ = \process0~15575_combout\ & (\rndip~combout\(18) # \process0~104_combout\) # !\process0~15575_combout\ & (\rndip~combout\(17) & !\process0~104_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(18),
	datab => \rndip~combout\(17),
	datac => \process0~15575_combout\,
	datad => \process0~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15576_combout\);

\process0~15581\ : cyclone_lcell
-- Equation(s):
-- \process0~15581_combout\ = \process0~15576_combout\ & (\process0~15580_combout\ # !\process0~104_combout\) # !\process0~15576_combout\ & \rndip~combout\(19) & (\process0~104_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(19),
	datab => \process0~15580_combout\,
	datac => \process0~15576_combout\,
	datad => \process0~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15581_combout\);

\process0~15588\ : cyclone_lcell
-- Equation(s):
-- \process0~15588_combout\ = \process0~15587_combout\ & (\rndip~combout\(12) # !\process0~15582_combout\) # !\process0~15587_combout\ & (\process0~15582_combout\ & \process0~15581_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "da8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15587_combout\,
	datab => \rndip~combout\(12),
	datac => \process0~15582_combout\,
	datad => \process0~15581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15588_combout\);

\process0~15589\ : cyclone_lcell
-- Equation(s):
-- \process0~15589_combout\ = \process0~15574_combout\ # \process0~332_combout\ & \process0~15588_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \process0~332_combout\,
	datac => \process0~15574_combout\,
	datad => \process0~15588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15589_combout\);

\process0~15548\ : cyclone_lcell
-- Equation(s):
-- \process0~15548_combout\ = !\process0~160_combout\ & (\rndip~combout\(38) & (\rndip~combout\(15)) # !\rndip~combout\(38) & \rndip~combout\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(38),
	datab => \rndip~combout\(14),
	datac => \rndip~combout\(15),
	datad => \process0~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15548_combout\);

\process0~15550\ : cyclone_lcell
-- Equation(s):
-- \process0~15550_combout\ = \rndip~combout\(41) & \rndip~combout\(18) # !\rndip~combout\(41) & (\rndip~combout\(40) & \rndip~combout\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(18),
	datab => \rndip~combout\(40),
	datac => \rndip~combout\(41),
	datad => \rndip~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15550_combout\);

\process0~15549\ : cyclone_lcell
-- Equation(s):
-- \process0~15549_combout\ = \rndip~combout\(39) & !\rndip~combout\(41) & !\rndip~combout\(40) & \rndip~combout\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(39),
	datab => \rndip~combout\(41),
	datac => \rndip~combout\(40),
	datad => \rndip~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15549_combout\);

\process0~15551\ : cyclone_lcell
-- Equation(s):
-- \process0~15551_combout\ = \rndip~combout\(42) & (\rndip~combout\(19)) # !\rndip~combout\(42) & (\process0~15550_combout\ # \process0~15549_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15550_combout\,
	datab => \rndip~combout\(19),
	datac => \rndip~combout\(42),
	datad => \process0~15549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15551_combout\);

\process0~15552\ : cyclone_lcell
-- Equation(s):
-- \process0~15552_combout\ = \rndip~combout\(43) & (\rndip~combout\(20)) # !\rndip~combout\(43) & (\process0~15551_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(43),
	datac => \rndip~combout\(20),
	datad => \process0~15551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15552_combout\);

\process0~15553\ : cyclone_lcell
-- Equation(s):
-- \process0~15553_combout\ = \rndip~combout\(44) & \rndip~combout\(21) # !\rndip~combout\(44) & (\process0~15552_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rndip~combout\(44),
	datac => \rndip~combout\(21),
	datad => \process0~15552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15553_combout\);

\process0~15554\ : cyclone_lcell
-- Equation(s):
-- \process0~15554_combout\ = \process0~15548_combout\ # \rndip~combout\(45) & \rndip~combout\(22) # !\rndip~combout\(45) & (\process0~15553_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdf8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(45),
	datab => \rndip~combout\(22),
	datac => \process0~15548_combout\,
	datad => \process0~15553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15554_combout\);

\process0~15555\ : cyclone_lcell
-- Equation(s):
-- \process0~15555_combout\ = \rndip~combout\(36) & (\rndip~combout\(13)) # !\rndip~combout\(36) & (\rndip~combout\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(36),
	datac => \rndip~combout\(12),
	datad => \rndip~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15555_combout\);

\process0~15556\ : cyclone_lcell
-- Equation(s):
-- \process0~15556_combout\ = \process0~216_combout\ & \process0~15554_combout\ # !\process0~216_combout\ & (!\process0~15544_combout\ & \process0~15555_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8b88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15554_combout\,
	datab => \process0~216_combout\,
	datac => \process0~15544_combout\,
	datad => \process0~15555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15556_combout\);

\process0~15547\ : cyclone_lcell
-- Equation(s):
-- \process0~15547_combout\ = !\process0~332_combout\ & (\rndip~combout\(32) & (\rndip~combout\(9)) # !\rndip~combout\(32) & \rndip~combout\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(32),
	datab => \rndip~combout\(8),
	datac => \process0~332_combout\,
	datad => \rndip~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15547_combout\);

\process0~15557\ : cyclone_lcell
-- Equation(s):
-- \process0~15557_combout\ = !\process0~274_combout\ & (\rndip~combout\(34) & \rndip~combout\(11) # !\rndip~combout\(34) & (\rndip~combout\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0b08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(11),
	datab => \rndip~combout\(34),
	datac => \process0~274_combout\,
	datad => \rndip~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15557_combout\);

\process0~15558\ : cyclone_lcell
-- Equation(s):
-- \process0~15558_combout\ = \process0~15547_combout\ # \process0~332_combout\ & (\process0~15556_combout\ # \process0~15557_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15556_combout\,
	datab => \process0~15547_combout\,
	datac => \process0~332_combout\,
	datad => \process0~15557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15558_combout\);

\process0~15559\ : cyclone_lcell
-- Equation(s):
-- \process0~15559_combout\ = \process0~390_combout\ & (\process0~15558_combout\) # !\process0~390_combout\ & \rndip~combout\(7) & \rndip~combout\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(7),
	datab => \rndip~combout\(30),
	datac => \process0~15558_combout\,
	datad => \process0~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15559_combout\);

\process0~508\ : cyclone_lcell
-- Equation(s):
-- \process0~508_combout\ = \rndip~combout\(27) # \rndip~combout\(28) # \process0~448_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(27),
	datab => \rndip~combout\(28),
	datad => \process0~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~508_combout\);

\process0~15545\ : cyclone_lcell
-- Equation(s):
-- \process0~15545_combout\ = !\process0~538_combout\ & (\rndip~combout\(25) & (\rndip~combout\(2)) # !\rndip~combout\(25) & \rndip~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(25),
	datab => \rndip~combout\(1),
	datac => \rndip~combout\(2),
	datad => \process0~538_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15545_combout\);

\process0~15546\ : cyclone_lcell
-- Equation(s):
-- \process0~15546_combout\ = \process0~15545_combout\ # \rndip~combout\(3) & \rndip~combout\(26) & !\process0~508_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(3),
	datab => \rndip~combout\(26),
	datac => \process0~508_combout\,
	datad => \process0~15545_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15546_combout\);

\process0~419\ : cyclone_lcell
-- Equation(s):
-- \process0~419_combout\ = \rndip~combout\(30) # \process0~361_combout\ # \rndip~combout\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rndip~combout\(30),
	datac => \process0~361_combout\,
	datad => \rndip~combout\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~419_combout\);

\process0~15560\ : cyclone_lcell
-- Equation(s):
-- \process0~15560_combout\ = !\process0~448_combout\ & (\rndip~combout\(28) & (\rndip~combout\(5)) # !\rndip~combout\(28) & \rndip~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(4),
	datab => \process0~448_combout\,
	datac => \rndip~combout\(28),
	datad => \rndip~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15560_combout\);

\process0~15561\ : cyclone_lcell
-- Equation(s):
-- \process0~15561_combout\ = \process0~15560_combout\ # \rndip~combout\(6) & !\process0~419_combout\ & \rndip~combout\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(6),
	datab => \process0~419_combout\,
	datac => \rndip~combout\(29),
	datad => \process0~15560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15561_combout\);

\process0~15562\ : cyclone_lcell
-- Equation(s):
-- \process0~15562_combout\ = \process0~15546_combout\ # \process0~508_combout\ & (\process0~15559_combout\ # \process0~15561_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcf8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15559_combout\,
	datab => \process0~508_combout\,
	datac => \process0~15546_combout\,
	datad => \process0~15561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15562_combout\);

\process0~15563\ : cyclone_lcell
-- Equation(s):
-- \process0~15563_combout\ = !\rndip~combout\(25) & (!\rndip~combout\(24) & !\process0~538_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(25),
	datac => \rndip~combout\(24),
	datad => \process0~538_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15563_combout\);

\process0~15564\ : cyclone_lcell
-- Equation(s):
-- \process0~15564_combout\ = \process0~15563_combout\ & \rndip~combout\(0) & (\rndip~combout\(23)) # !\process0~15563_combout\ & (\process0~15562_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(0),
	datab => \process0~15562_combout\,
	datac => \rndip~combout\(23),
	datad => \process0~15563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15564_combout\);

\rndopt[1]\ : cyclone_lcell
-- Equation(s):
-- rndopt(1) = DFFEAS(\process0~15589_combout\ $ \process0~15564_combout\, GLOBAL(\en~combout\), VCC, , , , , , )
-- \rndopt[1]~115\ = CARRY(\process0~15589_combout\ & \process0~15564_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \en~combout\,
	dataa => \process0~15589_combout\,
	datab => \process0~15564_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rndopt(1),
	cout => \rndopt[1]~115\);

\process0~15599\ : cyclone_lcell
-- Equation(s):
-- \process0~15599_combout\ = \process0~104_combout\ & (\rndip~combout\(20) # \process0~15575_combout\) # !\process0~104_combout\ & \rndip~combout\(18) & (!\process0~15575_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(18),
	datab => \process0~104_combout\,
	datac => \rndip~combout\(20),
	datad => \process0~15575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15599_combout\);

\process0~15600\ : cyclone_lcell
-- Equation(s):
-- \process0~15600_combout\ = \process0~15577_combout\ & (!\process0~15578_combout\ & \rndip~combout\(22)) # !\process0~15577_combout\ & (\rndip~combout\(23) # \process0~15578_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5e54",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15577_combout\,
	datab => \rndip~combout\(23),
	datac => \process0~15578_combout\,
	datad => \rndip~combout\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15600_combout\);

\process0~15601\ : cyclone_lcell
-- Equation(s):
-- \process0~15601_combout\ = \process0~15578_combout\ & (\process0~15600_combout\ & \rndip~combout\(24) # !\process0~15600_combout\ & (\rndip~combout\(21))) # !\process0~15578_combout\ & (\process0~15600_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(24),
	datab => \rndip~combout\(21),
	datac => \process0~15578_combout\,
	datad => \process0~15600_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15601_combout\);

\process0~15602\ : cyclone_lcell
-- Equation(s):
-- \process0~15602_combout\ = \process0~15575_combout\ & (\process0~15599_combout\ & (\process0~15601_combout\) # !\process0~15599_combout\ & \rndip~combout\(19)) # !\process0~15575_combout\ & (\process0~15599_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f838",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(19),
	datab => \process0~15575_combout\,
	datac => \process0~15599_combout\,
	datad => \process0~15601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15602_combout\);

\process0~15603\ : cyclone_lcell
-- Equation(s):
-- \process0~15603_combout\ = \process0~15586_combout\ & \process0~15582_combout\ # !\process0~15586_combout\ & (\process0~15582_combout\ & (\process0~15602_combout\) # !\process0~15582_combout\ & \rndip~combout\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15586_combout\,
	datab => \process0~15582_combout\,
	datac => \rndip~combout\(12),
	datad => \process0~15602_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15603_combout\);

\process0~15597\ : cyclone_lcell
-- Equation(s):
-- \process0~15597_combout\ = \process0~15583_combout\ & (\rndip~combout\(15) # \process0~216_combout\) # !\process0~15583_combout\ & (!\process0~216_combout\ & \rndip~combout\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ada8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15583_combout\,
	datab => \rndip~combout\(15),
	datac => \process0~216_combout\,
	datad => \rndip~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15597_combout\);

\process0~15598\ : cyclone_lcell
-- Equation(s):
-- \process0~15598_combout\ = \process0~216_combout\ & (\process0~15597_combout\ & \rndip~combout\(17) # !\process0~15597_combout\ & (\rndip~combout\(16))) # !\process0~216_combout\ & (\process0~15597_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(17),
	datab => \process0~216_combout\,
	datac => \rndip~combout\(16),
	datad => \process0~15597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15598_combout\);

\process0~15604\ : cyclone_lcell
-- Equation(s):
-- \process0~15604_combout\ = \process0~15586_combout\ & (\process0~15603_combout\ & \rndip~combout\(13) # !\process0~15603_combout\ & (\process0~15598_combout\)) # !\process0~15586_combout\ & \process0~15603_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15586_combout\,
	datab => \process0~15603_combout\,
	datac => \rndip~combout\(13),
	datad => \process0~15598_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15604_combout\);

\process0~15590\ : cyclone_lcell
-- Equation(s):
-- \process0~15590_combout\ = \process0~568_combout\ & (\process0~15565_combout\) # !\process0~568_combout\ & (\process0~15565_combout\ & \rndip~combout\(3) # !\process0~15565_combout\ & (\rndip~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e5e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~568_combout\,
	datab => \rndip~combout\(3),
	datac => \process0~15565_combout\,
	datad => \rndip~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15590_combout\);

\process0~15592\ : cyclone_lcell
-- Equation(s):
-- \process0~15592_combout\ = \process0~390_combout\ & (\process0~15569_combout\) # !\process0~390_combout\ & (\process0~15569_combout\ & (\rndip~combout\(9)) # !\process0~15569_combout\ & \rndip~combout\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(8),
	datab => \rndip~combout\(9),
	datac => \process0~390_combout\,
	datad => \process0~15569_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15592_combout\);

\process0~15593\ : cyclone_lcell
-- Equation(s):
-- \process0~15593_combout\ = \process0~390_combout\ & (\process0~15592_combout\ & \rndip~combout\(11) # !\process0~15592_combout\ & (\rndip~combout\(10))) # !\process0~390_combout\ & (\process0~15592_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(11),
	datab => \rndip~combout\(10),
	datac => \process0~390_combout\,
	datad => \process0~15592_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15593_combout\);

\process0~15591\ : cyclone_lcell
-- Equation(s):
-- \process0~15591_combout\ = \process0~478_combout\ & (\process0~15567_combout\) # !\process0~478_combout\ & (\process0~15567_combout\ & \rndip~combout\(6) # !\process0~15567_combout\ & (\rndip~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(6),
	datab => \process0~478_combout\,
	datac => \rndip~combout\(5),
	datad => \process0~15567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15591_combout\);

\process0~15594\ : cyclone_lcell
-- Equation(s):
-- \process0~15594_combout\ = \process0~478_combout\ & (\process0~15591_combout\ & (\process0~15593_combout\) # !\process0~15591_combout\ & \rndip~combout\(7)) # !\process0~478_combout\ & (\process0~15591_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(7),
	datab => \process0~478_combout\,
	datac => \process0~15593_combout\,
	datad => \process0~15591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15594_combout\);

\process0~15595\ : cyclone_lcell
-- Equation(s):
-- \process0~15595_combout\ = \process0~568_combout\ & (\process0~15590_combout\ & (\process0~15594_combout\) # !\process0~15590_combout\ & \rndip~combout\(4)) # !\process0~568_combout\ & \process0~15590_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~568_combout\,
	datab => \process0~15590_combout\,
	datac => \rndip~combout\(4),
	datad => \process0~15594_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15595_combout\);

\process0~15596\ : cyclone_lcell
-- Equation(s):
-- \process0~15596_combout\ = !\process0~332_combout\ & (\process0~628_combout\ & (\process0~15595_combout\) # !\process0~628_combout\ & \rndip~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(1),
	datab => \process0~332_combout\,
	datac => \process0~628_combout\,
	datad => \process0~15595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15596_combout\);

\process0~15605\ : cyclone_lcell
-- Equation(s):
-- \process0~15605_combout\ = \process0~15596_combout\ # \process0~15604_combout\ & \process0~332_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15604_combout\,
	datac => \process0~15596_combout\,
	datad => \process0~332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15605_combout\);

\rndopt[2]\ : cyclone_lcell
-- Equation(s):
-- rndopt(2) = DFFEAS(\process0~15605_combout\ $ (\rndopt[1]~115\), GLOBAL(\en~combout\), VCC, , , , , , )
-- \rndopt[2]~116\ = CARRY(!\rndopt[1]~115\ # !\process0~15605_combout\)
-- \rndopt[2]~116COUT1\ = CARRY(!\rndopt[1]~115\ # !\process0~15605_combout\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \en~combout\,
	dataa => \process0~15605_combout\,
	aclr => GND,
	cin => \rndopt[1]~115\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rndopt(2),
	cout0 => \rndopt[2]~116\,
	cout1 => \rndopt[2]~116COUT1\);

\process0~15608\ : cyclone_lcell
-- Equation(s):
-- \process0~15608_combout\ = \process0~15569_combout\ & (\process0~390_combout\) # !\process0~15569_combout\ & (\process0~390_combout\ & \rndip~combout\(11) # !\process0~390_combout\ & (\rndip~combout\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(11),
	datab => \rndip~combout\(9),
	datac => \process0~15569_combout\,
	datad => \process0~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15608_combout\);

\process0~15609\ : cyclone_lcell
-- Equation(s):
-- \process0~15609_combout\ = \process0~15569_combout\ & (\process0~15608_combout\ & (\rndip~combout\(12)) # !\process0~15608_combout\ & \rndip~combout\(10)) # !\process0~15569_combout\ & (\process0~15608_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(10),
	datab => \rndip~combout\(12),
	datac => \process0~15569_combout\,
	datad => \process0~15608_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15609_combout\);

\process0~15607\ : cyclone_lcell
-- Equation(s):
-- \process0~15607_combout\ = \process0~15567_combout\ & (\process0~478_combout\) # !\process0~15567_combout\ & (\process0~478_combout\ & (\rndip~combout\(8)) # !\process0~478_combout\ & \rndip~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2c2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(6),
	datab => \process0~15567_combout\,
	datac => \process0~478_combout\,
	datad => \rndip~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15607_combout\);

\process0~15610\ : cyclone_lcell
-- Equation(s):
-- \process0~15610_combout\ = \process0~15567_combout\ & (\process0~15607_combout\ & (\process0~15609_combout\) # !\process0~15607_combout\ & \rndip~combout\(7)) # !\process0~15567_combout\ & (\process0~15607_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(7),
	datab => \process0~15609_combout\,
	datac => \process0~15567_combout\,
	datad => \process0~15607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15610_combout\);

\process0~15606\ : cyclone_lcell
-- Equation(s):
-- \process0~15606_combout\ = \process0~15565_combout\ & (\process0~568_combout\) # !\process0~15565_combout\ & (\process0~568_combout\ & \rndip~combout\(5) # !\process0~568_combout\ & (\rndip~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(5),
	datab => \rndip~combout\(3),
	datac => \process0~15565_combout\,
	datad => \process0~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15606_combout\);

\process0~15611\ : cyclone_lcell
-- Equation(s):
-- \process0~15611_combout\ = \process0~15565_combout\ & (\process0~15606_combout\ & \process0~15610_combout\ # !\process0~15606_combout\ & (\rndip~combout\(4))) # !\process0~15565_combout\ & (\process0~15606_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15565_combout\,
	datab => \process0~15610_combout\,
	datac => \rndip~combout\(4),
	datad => \process0~15606_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15611_combout\);

\process0~15612\ : cyclone_lcell
-- Equation(s):
-- \process0~15612_combout\ = !\process0~332_combout\ & (\process0~628_combout\ & \process0~15611_combout\ # !\process0~628_combout\ & (\rndip~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3120",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~628_combout\,
	datab => \process0~332_combout\,
	datac => \process0~15611_combout\,
	datad => \rndip~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15612_combout\);

\process0~15614\ : cyclone_lcell
-- Equation(s):
-- \process0~15614_combout\ = \process0~15577_combout\ & (\process0~15578_combout\ & \rndip~combout\(22) # !\process0~15578_combout\ & (\rndip~combout\(23))) # !\process0~15577_combout\ & (\process0~15578_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15577_combout\,
	datab => \rndip~combout\(22),
	datac => \rndip~combout\(23),
	datad => \process0~15578_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15614_combout\);

\process0~15615\ : cyclone_lcell
-- Equation(s):
-- \process0~15615_combout\ = \process0~15577_combout\ & (\process0~15614_combout\) # !\process0~15577_combout\ & (\process0~15614_combout\ & \rndip~combout\(25) # !\process0~15614_combout\ & (\rndip~combout\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(25),
	datab => \rndip~combout\(24),
	datac => \process0~15577_combout\,
	datad => \process0~15614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15615_combout\);

\process0~15613\ : cyclone_lcell
-- Equation(s):
-- \process0~15613_combout\ = \process0~104_combout\ & (\process0~15575_combout\) # !\process0~104_combout\ & (\process0~15575_combout\ & (\rndip~combout\(20)) # !\process0~15575_combout\ & \rndip~combout\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(19),
	datab => \process0~104_combout\,
	datac => \rndip~combout\(20),
	datad => \process0~15575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15613_combout\);

\process0~15616\ : cyclone_lcell
-- Equation(s):
-- \process0~15616_combout\ = \process0~104_combout\ & (\process0~15613_combout\ & \process0~15615_combout\ # !\process0~15613_combout\ & (\rndip~combout\(21))) # !\process0~104_combout\ & (\process0~15613_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15615_combout\,
	datab => \process0~104_combout\,
	datac => \rndip~combout\(21),
	datad => \process0~15613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15616_combout\);

\process0~15617\ : cyclone_lcell
-- Equation(s):
-- \process0~15617_combout\ = \process0~216_combout\ & (\rndip~combout\(17) # \process0~15583_combout\) # !\process0~216_combout\ & (!\process0~15583_combout\ & \rndip~combout\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ada8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~216_combout\,
	datab => \rndip~combout\(17),
	datac => \process0~15583_combout\,
	datad => \rndip~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15617_combout\);

\process0~15618\ : cyclone_lcell
-- Equation(s):
-- \process0~15618_combout\ = \process0~15617_combout\ & (\rndip~combout\(18) # !\process0~15583_combout\) # !\process0~15617_combout\ & \process0~15583_combout\ & \rndip~combout\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15617_combout\,
	datab => \process0~15583_combout\,
	datac => \rndip~combout\(16),
	datad => \rndip~combout\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15618_combout\);

\process0~15619\ : cyclone_lcell
-- Equation(s):
-- \process0~15619_combout\ = \process0~15586_combout\ & (\process0~15582_combout\ # \process0~15618_combout\) # !\process0~15586_combout\ & !\process0~15582_combout\ & \rndip~combout\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15586_combout\,
	datab => \process0~15582_combout\,
	datac => \rndip~combout\(13),
	datad => \process0~15618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15619_combout\);

\process0~15620\ : cyclone_lcell
-- Equation(s):
-- \process0~15620_combout\ = \process0~15582_combout\ & (\process0~15619_combout\ & \rndip~combout\(14) # !\process0~15619_combout\ & (\process0~15616_combout\)) # !\process0~15582_combout\ & (\process0~15619_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(14),
	datab => \process0~15582_combout\,
	datac => \process0~15616_combout\,
	datad => \process0~15619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15620_combout\);

\process0~15621\ : cyclone_lcell
-- Equation(s):
-- \process0~15621_combout\ = \process0~15612_combout\ # \process0~332_combout\ & \process0~15620_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \process0~15612_combout\,
	datac => \process0~332_combout\,
	datad => \process0~15620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15621_combout\);

\rndopt[3]\ : cyclone_lcell
-- Equation(s):
-- rndopt(3) = DFFEAS(\process0~15621_combout\ $ (!(!\rndopt[1]~115\ & \rndopt[2]~116\) # (\rndopt[1]~115\ & \rndopt[2]~116COUT1\)), GLOBAL(\en~combout\), VCC, , , , , , )
-- \rndopt[3]~117\ = CARRY(\process0~15621_combout\ & (!\rndopt[2]~116\))
-- \rndopt[3]~117COUT1\ = CARRY(\process0~15621_combout\ & (!\rndopt[2]~116COUT1\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \en~combout\,
	dataa => \process0~15621_combout\,
	aclr => GND,
	cin => \rndopt[1]~115\,
	cin0 => \rndopt[2]~116\,
	cin1 => \rndopt[2]~116COUT1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rndopt(3),
	cout0 => \rndopt[3]~117\,
	cout1 => \rndopt[3]~117COUT1\);

\process0~15624\ : cyclone_lcell
-- Equation(s):
-- \process0~15624_combout\ = \process0~15569_combout\ & (\rndip~combout\(11) # \process0~390_combout\) # !\process0~15569_combout\ & \rndip~combout\(10) & (!\process0~390_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(10),
	datab => \rndip~combout\(11),
	datac => \process0~15569_combout\,
	datad => \process0~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15624_combout\);

\process0~15625\ : cyclone_lcell
-- Equation(s):
-- \process0~15625_combout\ = \process0~390_combout\ & (\process0~15624_combout\ & \rndip~combout\(13) # !\process0~15624_combout\ & (\rndip~combout\(12))) # !\process0~390_combout\ & (\process0~15624_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~390_combout\,
	datab => \rndip~combout\(13),
	datac => \rndip~combout\(12),
	datad => \process0~15624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15625_combout\);

\process0~15623\ : cyclone_lcell
-- Equation(s):
-- \process0~15623_combout\ = \process0~15567_combout\ & (\process0~478_combout\ # \rndip~combout\(8)) # !\process0~15567_combout\ & \rndip~combout\(7) & !\process0~478_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cec2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(7),
	datab => \process0~15567_combout\,
	datac => \process0~478_combout\,
	datad => \rndip~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15623_combout\);

\process0~15626\ : cyclone_lcell
-- Equation(s):
-- \process0~15626_combout\ = \process0~478_combout\ & (\process0~15623_combout\ & \process0~15625_combout\ # !\process0~15623_combout\ & (\rndip~combout\(9))) # !\process0~478_combout\ & (\process0~15623_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15625_combout\,
	datab => \process0~478_combout\,
	datac => \rndip~combout\(9),
	datad => \process0~15623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15626_combout\);

\process0~15622\ : cyclone_lcell
-- Equation(s):
-- \process0~15622_combout\ = \process0~15565_combout\ & (\rndip~combout\(5) # \process0~568_combout\) # !\process0~15565_combout\ & \rndip~combout\(4) & (!\process0~568_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(4),
	datab => \rndip~combout\(5),
	datac => \process0~15565_combout\,
	datad => \process0~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15622_combout\);

\process0~15627\ : cyclone_lcell
-- Equation(s):
-- \process0~15627_combout\ = \process0~568_combout\ & (\process0~15622_combout\ & \process0~15626_combout\ # !\process0~15622_combout\ & (\rndip~combout\(6))) # !\process0~568_combout\ & (\process0~15622_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dad0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~568_combout\,
	datab => \process0~15626_combout\,
	datac => \process0~15622_combout\,
	datad => \rndip~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15627_combout\);

\process0~15628\ : cyclone_lcell
-- Equation(s):
-- \process0~15628_combout\ = !\process0~332_combout\ & (\process0~628_combout\ & \process0~15627_combout\ # !\process0~628_combout\ & (\rndip~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5140",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~332_combout\,
	datab => \process0~628_combout\,
	datac => \process0~15627_combout\,
	datad => \rndip~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15628_combout\);

\process0~15629\ : cyclone_lcell
-- Equation(s):
-- \process0~15629_combout\ = \process0~216_combout\ & \process0~15583_combout\ # !\process0~216_combout\ & (\process0~15583_combout\ & (\rndip~combout\(17)) # !\process0~15583_combout\ & \rndip~combout\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~216_combout\,
	datab => \process0~15583_combout\,
	datac => \rndip~combout\(16),
	datad => \rndip~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15629_combout\);

\process0~15630\ : cyclone_lcell
-- Equation(s):
-- \process0~15630_combout\ = \process0~15629_combout\ & (\rndip~combout\(19) # !\process0~216_combout\) # !\process0~15629_combout\ & \rndip~combout\(18) & \process0~216_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec2c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(18),
	datab => \process0~15629_combout\,
	datac => \process0~216_combout\,
	datad => \rndip~combout\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15630_combout\);

\process0~15631\ : cyclone_lcell
-- Equation(s):
-- \process0~15631_combout\ = \process0~104_combout\ & (\rndip~combout\(22) # \process0~15575_combout\) # !\process0~104_combout\ & \rndip~combout\(20) & (!\process0~15575_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(20),
	datab => \rndip~combout\(22),
	datac => \process0~104_combout\,
	datad => \process0~15575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15631_combout\);

\process0~15632\ : cyclone_lcell
-- Equation(s):
-- \process0~15632_combout\ = \process0~15577_combout\ & (\rndip~combout\(24) & !\process0~15578_combout\) # !\process0~15577_combout\ & (\rndip~combout\(25) # \process0~15578_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(25),
	datab => \process0~15577_combout\,
	datac => \rndip~combout\(24),
	datad => \process0~15578_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15632_combout\);

\process0~15633\ : cyclone_lcell
-- Equation(s):
-- \process0~15633_combout\ = \process0~15578_combout\ & (\process0~15632_combout\ & (\rndip~combout\(26)) # !\process0~15632_combout\ & \rndip~combout\(23)) # !\process0~15578_combout\ & (\process0~15632_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(23),
	datab => \process0~15578_combout\,
	datac => \rndip~combout\(26),
	datad => \process0~15632_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15633_combout\);

\process0~15634\ : cyclone_lcell
-- Equation(s):
-- \process0~15634_combout\ = \process0~15631_combout\ & (\process0~15633_combout\ # !\process0~15575_combout\) # !\process0~15631_combout\ & \rndip~combout\(21) & \process0~15575_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec2c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(21),
	datab => \process0~15631_combout\,
	datac => \process0~15575_combout\,
	datad => \process0~15633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15634_combout\);

\process0~15635\ : cyclone_lcell
-- Equation(s):
-- \process0~15635_combout\ = \process0~15586_combout\ & \process0~15582_combout\ # !\process0~15586_combout\ & (\process0~15582_combout\ & (\process0~15634_combout\) # !\process0~15582_combout\ & \rndip~combout\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15586_combout\,
	datab => \process0~15582_combout\,
	datac => \rndip~combout\(14),
	datad => \process0~15634_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15635_combout\);

\process0~15636\ : cyclone_lcell
-- Equation(s):
-- \process0~15636_combout\ = \process0~15586_combout\ & (\process0~15635_combout\ & (\rndip~combout\(15)) # !\process0~15635_combout\ & \process0~15630_combout\) # !\process0~15586_combout\ & (\process0~15635_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15586_combout\,
	datab => \process0~15630_combout\,
	datac => \rndip~combout\(15),
	datad => \process0~15635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15636_combout\);

\process0~15637\ : cyclone_lcell
-- Equation(s):
-- \process0~15637_combout\ = \process0~15628_combout\ # \process0~332_combout\ & \process0~15636_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~332_combout\,
	datac => \process0~15628_combout\,
	datad => \process0~15636_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15637_combout\);

\rndopt[4]\ : cyclone_lcell
-- Equation(s):
-- rndopt(4) = DFFEAS(\process0~15637_combout\ $ ((!\rndopt[1]~115\ & \rndopt[3]~117\) # (\rndopt[1]~115\ & \rndopt[3]~117COUT1\)), GLOBAL(\en~combout\), VCC, , , , , , )
-- \rndopt[4]~118\ = CARRY(!\rndopt[3]~117\ # !\process0~15637_combout\)
-- \rndopt[4]~118COUT1\ = CARRY(!\rndopt[3]~117COUT1\ # !\process0~15637_combout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \en~combout\,
	dataa => \process0~15637_combout\,
	aclr => GND,
	cin => \rndopt[1]~115\,
	cin0 => \rndopt[3]~117\,
	cin1 => \rndopt[3]~117COUT1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rndopt(4),
	cout0 => \rndopt[4]~118\,
	cout1 => \rndopt[4]~118COUT1\);

\process0~15638\ : cyclone_lcell
-- Equation(s):
-- \process0~15638_combout\ = \process0~568_combout\ & (\rndip~combout\(7) # \process0~15565_combout\) # !\process0~568_combout\ & (\rndip~combout\(5) & !\process0~15565_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(7),
	datab => \process0~568_combout\,
	datac => \rndip~combout\(5),
	datad => \process0~15565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15638_combout\);

\process0~15640\ : cyclone_lcell
-- Equation(s):
-- \process0~15640_combout\ = \process0~15569_combout\ & (\process0~390_combout\) # !\process0~15569_combout\ & (\process0~390_combout\ & (\rndip~combout\(13)) # !\process0~390_combout\ & \rndip~combout\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(11),
	datab => \rndip~combout\(13),
	datac => \process0~15569_combout\,
	datad => \process0~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15640_combout\);

\process0~15641\ : cyclone_lcell
-- Equation(s):
-- \process0~15641_combout\ = \process0~15569_combout\ & (\process0~15640_combout\ & \rndip~combout\(14) # !\process0~15640_combout\ & (\rndip~combout\(12))) # !\process0~15569_combout\ & (\process0~15640_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15569_combout\,
	datab => \rndip~combout\(14),
	datac => \rndip~combout\(12),
	datad => \process0~15640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15641_combout\);

\process0~15639\ : cyclone_lcell
-- Equation(s):
-- \process0~15639_combout\ = \process0~15567_combout\ & (\process0~478_combout\) # !\process0~15567_combout\ & (\process0~478_combout\ & \rndip~combout\(10) # !\process0~478_combout\ & (\rndip~combout\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e3e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(10),
	datab => \process0~15567_combout\,
	datac => \process0~478_combout\,
	datad => \rndip~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15639_combout\);

\process0~15642\ : cyclone_lcell
-- Equation(s):
-- \process0~15642_combout\ = \process0~15639_combout\ & (\process0~15641_combout\ # !\process0~15567_combout\) # !\process0~15639_combout\ & (\rndip~combout\(9) & \process0~15567_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15641_combout\,
	datab => \rndip~combout\(9),
	datac => \process0~15639_combout\,
	datad => \process0~15567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15642_combout\);

\process0~15643\ : cyclone_lcell
-- Equation(s):
-- \process0~15643_combout\ = \process0~15565_combout\ & (\process0~15638_combout\ & (\process0~15642_combout\) # !\process0~15638_combout\ & \rndip~combout\(6)) # !\process0~15565_combout\ & (\process0~15638_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f838",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(6),
	datab => \process0~15565_combout\,
	datac => \process0~15638_combout\,
	datad => \process0~15642_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15643_combout\);

\process0~15644\ : cyclone_lcell
-- Equation(s):
-- \process0~15644_combout\ = !\process0~332_combout\ & (\process0~628_combout\ & (\process0~15643_combout\) # !\process0~628_combout\ & \rndip~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(4),
	datab => \process0~332_combout\,
	datac => \process0~628_combout\,
	datad => \process0~15643_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15644_combout\);

\process0~15649\ : cyclone_lcell
-- Equation(s):
-- \process0~15649_combout\ = \process0~15583_combout\ & (\process0~216_combout\) # !\process0~15583_combout\ & (\process0~216_combout\ & \rndip~combout\(19) # !\process0~216_combout\ & (\rndip~combout\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e3e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(19),
	datab => \process0~15583_combout\,
	datac => \process0~216_combout\,
	datad => \rndip~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15649_combout\);

\process0~15650\ : cyclone_lcell
-- Equation(s):
-- \process0~15650_combout\ = \process0~15583_combout\ & (\process0~15649_combout\ & (\rndip~combout\(20)) # !\process0~15649_combout\ & \rndip~combout\(18)) # !\process0~15583_combout\ & (\process0~15649_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(18),
	datab => \rndip~combout\(20),
	datac => \process0~15583_combout\,
	datad => \process0~15649_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15650_combout\);

\process0~15651\ : cyclone_lcell
-- Equation(s):
-- \process0~15651_combout\ = \process0~15586_combout\ & (\process0~15582_combout\ # \process0~15650_combout\) # !\process0~15586_combout\ & !\process0~15582_combout\ & \rndip~combout\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15586_combout\,
	datab => \process0~15582_combout\,
	datac => \rndip~combout\(15),
	datad => \process0~15650_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15651_combout\);

\process0~15646\ : cyclone_lcell
-- Equation(s):
-- \process0~15646_combout\ = \process0~15577_combout\ & (\process0~15578_combout\ & \rndip~combout\(24) # !\process0~15578_combout\ & (\rndip~combout\(25))) # !\process0~15577_combout\ & (\process0~15578_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dad0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15577_combout\,
	datab => \rndip~combout\(24),
	datac => \process0~15578_combout\,
	datad => \rndip~combout\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15646_combout\);

\process0~15647\ : cyclone_lcell
-- Equation(s):
-- \process0~15647_combout\ = \process0~15646_combout\ & (\rndip~combout\(27) # \process0~15577_combout\) # !\process0~15646_combout\ & (!\process0~15577_combout\ & \rndip~combout\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cbc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(27),
	datab => \process0~15646_combout\,
	datac => \process0~15577_combout\,
	datad => \rndip~combout\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15647_combout\);

\process0~15645\ : cyclone_lcell
-- Equation(s):
-- \process0~15645_combout\ = \process0~104_combout\ & (\process0~15575_combout\) # !\process0~104_combout\ & (\process0~15575_combout\ & \rndip~combout\(22) # !\process0~15575_combout\ & (\rndip~combout\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(22),
	datab => \rndip~combout\(21),
	datac => \process0~104_combout\,
	datad => \process0~15575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15645_combout\);

\process0~15648\ : cyclone_lcell
-- Equation(s):
-- \process0~15648_combout\ = \process0~104_combout\ & (\process0~15645_combout\ & \process0~15647_combout\ # !\process0~15645_combout\ & (\rndip~combout\(23))) # !\process0~104_combout\ & (\process0~15645_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15647_combout\,
	datab => \process0~104_combout\,
	datac => \rndip~combout\(23),
	datad => \process0~15645_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15648_combout\);

\process0~15652\ : cyclone_lcell
-- Equation(s):
-- \process0~15652_combout\ = \process0~15651_combout\ & (\rndip~combout\(16) # !\process0~15582_combout\) # !\process0~15651_combout\ & \process0~15648_combout\ & (\process0~15582_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15651_combout\,
	datab => \process0~15648_combout\,
	datac => \rndip~combout\(16),
	datad => \process0~15582_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15652_combout\);

\process0~15653\ : cyclone_lcell
-- Equation(s):
-- \process0~15653_combout\ = \process0~15644_combout\ # \process0~332_combout\ & \process0~15652_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \process0~15644_combout\,
	datac => \process0~332_combout\,
	datad => \process0~15652_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15653_combout\);

\rndopt[5]\ : cyclone_lcell
-- Equation(s):
-- rndopt(5) = DFFEAS(\process0~15653_combout\ $ !(!\rndopt[1]~115\ & \rndopt[4]~118\) # (\rndopt[1]~115\ & \rndopt[4]~118COUT1\), GLOBAL(\en~combout\), VCC, , , , , , )
-- \rndopt[5]~119\ = CARRY(\process0~15653_combout\ & !\rndopt[4]~118\)
-- \rndopt[5]~119COUT1\ = CARRY(\process0~15653_combout\ & !\rndopt[4]~118COUT1\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \en~combout\,
	datab => \process0~15653_combout\,
	aclr => GND,
	cin => \rndopt[1]~115\,
	cin0 => \rndopt[4]~118\,
	cin1 => \rndopt[4]~118COUT1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rndopt(5),
	cout0 => \rndopt[5]~119\,
	cout1 => \rndopt[5]~119COUT1\);

\process0~15661\ : cyclone_lcell
-- Equation(s):
-- \process0~15661_combout\ = \process0~216_combout\ & (\process0~15583_combout\) # !\process0~216_combout\ & (\process0~15583_combout\ & (\rndip~combout\(19)) # !\process0~15583_combout\ & \rndip~combout\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(18),
	datab => \rndip~combout\(19),
	datac => \process0~216_combout\,
	datad => \process0~15583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15661_combout\);

\process0~15662\ : cyclone_lcell
-- Equation(s):
-- \process0~15662_combout\ = \process0~216_combout\ & (\process0~15661_combout\ & \rndip~combout\(21) # !\process0~15661_combout\ & (\rndip~combout\(20))) # !\process0~216_combout\ & (\process0~15661_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~216_combout\,
	datab => \rndip~combout\(21),
	datac => \rndip~combout\(20),
	datad => \process0~15661_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15662_combout\);

\process0~15663\ : cyclone_lcell
-- Equation(s):
-- \process0~15663_combout\ = \process0~15575_combout\ & (\process0~104_combout\) # !\process0~15575_combout\ & (\process0~104_combout\ & \rndip~combout\(24) # !\process0~104_combout\ & (\rndip~combout\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(24),
	datab => \rndip~combout\(22),
	datac => \process0~15575_combout\,
	datad => \process0~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15663_combout\);

\process0~15664\ : cyclone_lcell
-- Equation(s):
-- \process0~15664_combout\ = \process0~15577_combout\ & \rndip~combout\(26) & (!\process0~15578_combout\) # !\process0~15577_combout\ & (\rndip~combout\(27) # \process0~15578_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(26),
	datab => \rndip~combout\(27),
	datac => \process0~15577_combout\,
	datad => \process0~15578_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15664_combout\);

\process0~15665\ : cyclone_lcell
-- Equation(s):
-- \process0~15665_combout\ = \process0~15578_combout\ & (\process0~15664_combout\ & \rndip~combout\(28) # !\process0~15664_combout\ & (\rndip~combout\(25))) # !\process0~15578_combout\ & (\process0~15664_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15578_combout\,
	datab => \rndip~combout\(28),
	datac => \rndip~combout\(25),
	datad => \process0~15664_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15665_combout\);

\process0~15666\ : cyclone_lcell
-- Equation(s):
-- \process0~15666_combout\ = \process0~15663_combout\ & (\process0~15665_combout\ # !\process0~15575_combout\) # !\process0~15663_combout\ & \process0~15575_combout\ & \rndip~combout\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15663_combout\,
	datab => \process0~15575_combout\,
	datac => \rndip~combout\(23),
	datad => \process0~15665_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15666_combout\);

\process0~15667\ : cyclone_lcell
-- Equation(s):
-- \process0~15667_combout\ = \process0~15582_combout\ & (\process0~15586_combout\ # \process0~15666_combout\) # !\process0~15582_combout\ & !\process0~15586_combout\ & \rndip~combout\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15582_combout\,
	datab => \process0~15586_combout\,
	datac => \rndip~combout\(16),
	datad => \process0~15666_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15667_combout\);

\process0~15668\ : cyclone_lcell
-- Equation(s):
-- \process0~15668_combout\ = \process0~15586_combout\ & (\process0~15667_combout\ & (\rndip~combout\(17)) # !\process0~15667_combout\ & \process0~15662_combout\) # !\process0~15586_combout\ & (\process0~15667_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15662_combout\,
	datab => \process0~15586_combout\,
	datac => \rndip~combout\(17),
	datad => \process0~15667_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15668_combout\);

\process0~15654\ : cyclone_lcell
-- Equation(s):
-- \process0~15654_combout\ = \process0~15565_combout\ & (\rndip~combout\(7) # \process0~568_combout\) # !\process0~15565_combout\ & (!\process0~568_combout\ & \rndip~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cbc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(7),
	datab => \process0~15565_combout\,
	datac => \process0~568_combout\,
	datad => \rndip~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15654_combout\);

\process0~15655\ : cyclone_lcell
-- Equation(s):
-- \process0~15655_combout\ = \process0~15567_combout\ & (\process0~478_combout\ # \rndip~combout\(10)) # !\process0~15567_combout\ & \rndip~combout\(9) & !\process0~478_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aea4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15567_combout\,
	datab => \rndip~combout\(9),
	datac => \process0~478_combout\,
	datad => \rndip~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15655_combout\);

\process0~15656\ : cyclone_lcell
-- Equation(s):
-- \process0~15656_combout\ = \process0~390_combout\ & (\process0~15569_combout\) # !\process0~390_combout\ & (\process0~15569_combout\ & \rndip~combout\(13) # !\process0~15569_combout\ & (\rndip~combout\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~390_combout\,
	datab => \rndip~combout\(13),
	datac => \rndip~combout\(12),
	datad => \process0~15569_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15656_combout\);

\process0~15657\ : cyclone_lcell
-- Equation(s):
-- \process0~15657_combout\ = \process0~390_combout\ & (\process0~15656_combout\ & \rndip~combout\(15) # !\process0~15656_combout\ & (\rndip~combout\(14))) # !\process0~390_combout\ & (\process0~15656_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~390_combout\,
	datab => \rndip~combout\(15),
	datac => \rndip~combout\(14),
	datad => \process0~15656_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15657_combout\);

\process0~15658\ : cyclone_lcell
-- Equation(s):
-- \process0~15658_combout\ = \process0~15655_combout\ & (\process0~15657_combout\ # !\process0~478_combout\) # !\process0~15655_combout\ & \rndip~combout\(11) & \process0~478_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec2c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(11),
	datab => \process0~15655_combout\,
	datac => \process0~478_combout\,
	datad => \process0~15657_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15658_combout\);

\process0~15659\ : cyclone_lcell
-- Equation(s):
-- \process0~15659_combout\ = \process0~568_combout\ & (\process0~15654_combout\ & (\process0~15658_combout\) # !\process0~15654_combout\ & \rndip~combout\(8)) # !\process0~568_combout\ & \process0~15654_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~568_combout\,
	datab => \process0~15654_combout\,
	datac => \rndip~combout\(8),
	datad => \process0~15658_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15659_combout\);

\process0~15660\ : cyclone_lcell
-- Equation(s):
-- \process0~15660_combout\ = !\process0~332_combout\ & (\process0~628_combout\ & (\process0~15659_combout\) # !\process0~628_combout\ & \rndip~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(5),
	datab => \process0~332_combout\,
	datac => \process0~628_combout\,
	datad => \process0~15659_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15660_combout\);

\process0~15669\ : cyclone_lcell
-- Equation(s):
-- \process0~15669_combout\ = \process0~15660_combout\ # \process0~15668_combout\ & \process0~332_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ecec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15668_combout\,
	datab => \process0~15660_combout\,
	datac => \process0~332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15669_combout\);

\rndopt[6]\ : cyclone_lcell
-- Equation(s):
-- rndopt(6) = DFFEAS(\process0~15669_combout\ $ ((!\rndopt[1]~115\ & \rndopt[5]~119\) # (\rndopt[1]~115\ & \rndopt[5]~119COUT1\)), GLOBAL(\en~combout\), VCC, , , , , , )
-- \rndopt[6]~120\ = CARRY(!\rndopt[5]~119COUT1\ # !\process0~15669_combout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \en~combout\,
	dataa => \process0~15669_combout\,
	aclr => GND,
	cin => \rndopt[1]~115\,
	cin0 => \rndopt[5]~119\,
	cin1 => \rndopt[5]~119COUT1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rndopt(6),
	cout => \rndopt[6]~120\);

\process0~15670\ : cyclone_lcell
-- Equation(s):
-- \process0~15670_combout\ = \process0~15565_combout\ & (\process0~568_combout\) # !\process0~15565_combout\ & (\process0~568_combout\ & (\rndip~combout\(9)) # !\process0~568_combout\ & \rndip~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2c2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(7),
	datab => \process0~15565_combout\,
	datac => \process0~568_combout\,
	datad => \rndip~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15670_combout\);

\process0~15672\ : cyclone_lcell
-- Equation(s):
-- \process0~15672_combout\ = \process0~15569_combout\ & (\process0~390_combout\) # !\process0~15569_combout\ & (\process0~390_combout\ & \rndip~combout\(15) # !\process0~390_combout\ & (\rndip~combout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e5e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15569_combout\,
	datab => \rndip~combout\(15),
	datac => \process0~390_combout\,
	datad => \rndip~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15672_combout\);

\process0~15673\ : cyclone_lcell
-- Equation(s):
-- \process0~15673_combout\ = \process0~15569_combout\ & (\process0~15672_combout\ & (\rndip~combout\(16)) # !\process0~15672_combout\ & \rndip~combout\(14)) # !\process0~15569_combout\ & \process0~15672_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15569_combout\,
	datab => \process0~15672_combout\,
	datac => \rndip~combout\(14),
	datad => \rndip~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15673_combout\);

\process0~15671\ : cyclone_lcell
-- Equation(s):
-- \process0~15671_combout\ = \process0~15567_combout\ & (\process0~478_combout\) # !\process0~15567_combout\ & (\process0~478_combout\ & (\rndip~combout\(12)) # !\process0~478_combout\ & \rndip~combout\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(10),
	datab => \process0~15567_combout\,
	datac => \rndip~combout\(12),
	datad => \process0~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15671_combout\);

\process0~15674\ : cyclone_lcell
-- Equation(s):
-- \process0~15674_combout\ = \process0~15567_combout\ & (\process0~15671_combout\ & \process0~15673_combout\ # !\process0~15671_combout\ & (\rndip~combout\(11))) # !\process0~15567_combout\ & (\process0~15671_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15673_combout\,
	datab => \process0~15567_combout\,
	datac => \rndip~combout\(11),
	datad => \process0~15671_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15674_combout\);

\process0~15675\ : cyclone_lcell
-- Equation(s):
-- \process0~15675_combout\ = \process0~15670_combout\ & (\process0~15674_combout\ # !\process0~15565_combout\) # !\process0~15670_combout\ & \process0~15565_combout\ & \rndip~combout\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15670_combout\,
	datab => \process0~15565_combout\,
	datac => \rndip~combout\(8),
	datad => \process0~15674_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15675_combout\);

\process0~15676\ : cyclone_lcell
-- Equation(s):
-- \process0~15676_combout\ = !\process0~332_combout\ & (\process0~628_combout\ & (\process0~15675_combout\) # !\process0~628_combout\ & \rndip~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(6),
	datab => \process0~628_combout\,
	datac => \process0~332_combout\,
	datad => \process0~15675_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15676_combout\);

\process0~15681\ : cyclone_lcell
-- Equation(s):
-- \process0~15681_combout\ = \process0~216_combout\ & (\process0~15583_combout\ # \rndip~combout\(21)) # !\process0~216_combout\ & \rndip~combout\(19) & !\process0~15583_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cec2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(19),
	datab => \process0~216_combout\,
	datac => \process0~15583_combout\,
	datad => \rndip~combout\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15681_combout\);

\process0~15682\ : cyclone_lcell
-- Equation(s):
-- \process0~15682_combout\ = \process0~15681_combout\ & (\rndip~combout\(22) # !\process0~15583_combout\) # !\process0~15681_combout\ & \rndip~combout\(20) & \process0~15583_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea4a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15681_combout\,
	datab => \rndip~combout\(20),
	datac => \process0~15583_combout\,
	datad => \rndip~combout\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15682_combout\);

\process0~15683\ : cyclone_lcell
-- Equation(s):
-- \process0~15683_combout\ = \process0~15582_combout\ & (\process0~15586_combout\) # !\process0~15582_combout\ & (\process0~15586_combout\ & (\process0~15682_combout\) # !\process0~15586_combout\ & \rndip~combout\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(17),
	datab => \process0~15682_combout\,
	datac => \process0~15582_combout\,
	datad => \process0~15586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15683_combout\);

\process0~15677\ : cyclone_lcell
-- Equation(s):
-- \process0~15677_combout\ = \process0~104_combout\ & (\process0~15575_combout\) # !\process0~104_combout\ & (\process0~15575_combout\ & (\rndip~combout\(24)) # !\process0~15575_combout\ & \rndip~combout\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2c2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(23),
	datab => \process0~104_combout\,
	datac => \process0~15575_combout\,
	datad => \rndip~combout\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15677_combout\);

\process0~15678\ : cyclone_lcell
-- Equation(s):
-- \process0~15678_combout\ = \process0~15577_combout\ & (\process0~15578_combout\ & (\rndip~combout\(26)) # !\process0~15578_combout\ & \rndip~combout\(27)) # !\process0~15577_combout\ & (\process0~15578_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15577_combout\,
	datab => \rndip~combout\(27),
	datac => \rndip~combout\(26),
	datad => \process0~15578_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15678_combout\);

\process0~15679\ : cyclone_lcell
-- Equation(s):
-- \process0~15679_combout\ = \process0~15577_combout\ & (\process0~15678_combout\) # !\process0~15577_combout\ & (\process0~15678_combout\ & \rndip~combout\(29) # !\process0~15678_combout\ & (\rndip~combout\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15577_combout\,
	datab => \rndip~combout\(29),
	datac => \rndip~combout\(28),
	datad => \process0~15678_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15679_combout\);

\process0~15680\ : cyclone_lcell
-- Equation(s):
-- \process0~15680_combout\ = \process0~15677_combout\ & (\process0~15679_combout\ # !\process0~104_combout\) # !\process0~15677_combout\ & \process0~104_combout\ & \rndip~combout\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15677_combout\,
	datab => \process0~104_combout\,
	datac => \rndip~combout\(25),
	datad => \process0~15679_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15680_combout\);

\process0~15684\ : cyclone_lcell
-- Equation(s):
-- \process0~15684_combout\ = \process0~15683_combout\ & (\rndip~combout\(18) # !\process0~15582_combout\) # !\process0~15683_combout\ & (\process0~15582_combout\ & \process0~15680_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bc8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(18),
	datab => \process0~15683_combout\,
	datac => \process0~15582_combout\,
	datad => \process0~15680_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15684_combout\);

\process0~15685\ : cyclone_lcell
-- Equation(s):
-- \process0~15685_combout\ = \process0~15676_combout\ # \process0~15684_combout\ & \process0~332_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15676_combout\,
	datab => \process0~15684_combout\,
	datac => \process0~332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15685_combout\);

\rndopt[7]\ : cyclone_lcell
-- Equation(s):
-- rndopt(7) = DFFEAS(\process0~15685_combout\ $ (!\rndopt[6]~120\), GLOBAL(\en~combout\), VCC, , , , , , )
-- \rndopt[7]~121\ = CARRY(\process0~15685_combout\ & (!\rndopt[6]~120\))
-- \rndopt[7]~121COUT1\ = CARRY(\process0~15685_combout\ & (!\rndopt[6]~120\))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \en~combout\,
	dataa => \process0~15685_combout\,
	aclr => GND,
	cin => \rndopt[6]~120\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rndopt(7),
	cout0 => \rndopt[7]~121\,
	cout1 => \rndopt[7]~121COUT1\);

\process0~15686\ : cyclone_lcell
-- Equation(s):
-- \process0~15686_combout\ = \process0~15565_combout\ & (\rndip~combout\(9) # \process0~568_combout\) # !\process0~15565_combout\ & (\rndip~combout\(8) & !\process0~568_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15565_combout\,
	datab => \rndip~combout\(9),
	datac => \rndip~combout\(8),
	datad => \process0~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15686_combout\);

\process0~15688\ : cyclone_lcell
-- Equation(s):
-- \process0~15688_combout\ = \process0~15569_combout\ & (\rndip~combout\(15) # \process0~390_combout\) # !\process0~15569_combout\ & \rndip~combout\(14) & (!\process0~390_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15569_combout\,
	datab => \rndip~combout\(14),
	datac => \rndip~combout\(15),
	datad => \process0~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15688_combout\);

\process0~15689\ : cyclone_lcell
-- Equation(s):
-- \process0~15689_combout\ = \process0~390_combout\ & (\process0~15688_combout\ & \rndip~combout\(17) # !\process0~15688_combout\ & (\rndip~combout\(16))) # !\process0~390_combout\ & (\process0~15688_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dad0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~390_combout\,
	datab => \rndip~combout\(17),
	datac => \process0~15688_combout\,
	datad => \rndip~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15689_combout\);

\process0~15687\ : cyclone_lcell
-- Equation(s):
-- \process0~15687_combout\ = \process0~15567_combout\ & (\rndip~combout\(12) # \process0~478_combout\) # !\process0~15567_combout\ & \rndip~combout\(11) & (!\process0~478_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(11),
	datab => \process0~15567_combout\,
	datac => \rndip~combout\(12),
	datad => \process0~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15687_combout\);

\process0~15690\ : cyclone_lcell
-- Equation(s):
-- \process0~15690_combout\ = \process0~478_combout\ & (\process0~15687_combout\ & \process0~15689_combout\ # !\process0~15687_combout\ & (\rndip~combout\(13))) # !\process0~478_combout\ & (\process0~15687_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15689_combout\,
	datab => \process0~478_combout\,
	datac => \rndip~combout\(13),
	datad => \process0~15687_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15690_combout\);

\process0~15691\ : cyclone_lcell
-- Equation(s):
-- \process0~15691_combout\ = \process0~15686_combout\ & (\process0~15690_combout\ # !\process0~568_combout\) # !\process0~15686_combout\ & \process0~568_combout\ & (\rndip~combout\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15686_combout\,
	datab => \process0~568_combout\,
	datac => \process0~15690_combout\,
	datad => \rndip~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15691_combout\);

\process0~15692\ : cyclone_lcell
-- Equation(s):
-- \process0~15692_combout\ = !\process0~332_combout\ & (\process0~628_combout\ & (\process0~15691_combout\) # !\process0~628_combout\ & \rndip~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(7),
	datab => \process0~15691_combout\,
	datac => \process0~628_combout\,
	datad => \process0~332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15692_combout\);

\process0~15693\ : cyclone_lcell
-- Equation(s):
-- \process0~15693_combout\ = \process0~216_combout\ & (\process0~15583_combout\) # !\process0~216_combout\ & (\process0~15583_combout\ & \rndip~combout\(21) # !\process0~15583_combout\ & (\rndip~combout\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(21),
	datab => \rndip~combout\(20),
	datac => \process0~216_combout\,
	datad => \process0~15583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15693_combout\);

\process0~15694\ : cyclone_lcell
-- Equation(s):
-- \process0~15694_combout\ = \process0~216_combout\ & (\process0~15693_combout\ & \rndip~combout\(23) # !\process0~15693_combout\ & (\rndip~combout\(22))) # !\process0~216_combout\ & (\process0~15693_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(23),
	datab => \rndip~combout\(22),
	datac => \process0~216_combout\,
	datad => \process0~15693_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15694_combout\);

\process0~15695\ : cyclone_lcell
-- Equation(s):
-- \process0~15695_combout\ = \process0~15575_combout\ & \process0~104_combout\ # !\process0~15575_combout\ & (\process0~104_combout\ & \rndip~combout\(26) # !\process0~104_combout\ & (\rndip~combout\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15575_combout\,
	datab => \process0~104_combout\,
	datac => \rndip~combout\(26),
	datad => \rndip~combout\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15695_combout\);

\process0~15696\ : cyclone_lcell
-- Equation(s):
-- \process0~15696_combout\ = \process0~15577_combout\ & (\rndip~combout\(28) & !\process0~15578_combout\) # !\process0~15577_combout\ & (\rndip~combout\(29) # \process0~15578_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15577_combout\,
	datab => \rndip~combout\(29),
	datac => \rndip~combout\(28),
	datad => \process0~15578_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15696_combout\);

\process0~15697\ : cyclone_lcell
-- Equation(s):
-- \process0~15697_combout\ = \process0~15696_combout\ & (\rndip~combout\(30) # !\process0~15578_combout\) # !\process0~15696_combout\ & (\rndip~combout\(27) & \process0~15578_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(30),
	datab => \rndip~combout\(27),
	datac => \process0~15696_combout\,
	datad => \process0~15578_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15697_combout\);

\process0~15698\ : cyclone_lcell
-- Equation(s):
-- \process0~15698_combout\ = \process0~15575_combout\ & (\process0~15695_combout\ & (\process0~15697_combout\) # !\process0~15695_combout\ & \rndip~combout\(25)) # !\process0~15575_combout\ & (\process0~15695_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f858",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15575_combout\,
	datab => \rndip~combout\(25),
	datac => \process0~15695_combout\,
	datad => \process0~15697_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15698_combout\);

\process0~15699\ : cyclone_lcell
-- Equation(s):
-- \process0~15699_combout\ = \process0~15586_combout\ & (\process0~15582_combout\) # !\process0~15586_combout\ & (\process0~15582_combout\ & (\process0~15698_combout\) # !\process0~15582_combout\ & \rndip~combout\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2c2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(18),
	datab => \process0~15586_combout\,
	datac => \process0~15582_combout\,
	datad => \process0~15698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15699_combout\);

\process0~15700\ : cyclone_lcell
-- Equation(s):
-- \process0~15700_combout\ = \process0~15586_combout\ & (\process0~15699_combout\ & \rndip~combout\(19) # !\process0~15699_combout\ & (\process0~15694_combout\)) # !\process0~15586_combout\ & (\process0~15699_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(19),
	datab => \process0~15694_combout\,
	datac => \process0~15586_combout\,
	datad => \process0~15699_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15700_combout\);

\process0~15701\ : cyclone_lcell
-- Equation(s):
-- \process0~15701_combout\ = \process0~15692_combout\ # \process0~332_combout\ & (\process0~15700_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eecc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~332_combout\,
	datab => \process0~15692_combout\,
	datad => \process0~15700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15701_combout\);

\rndopt[8]\ : cyclone_lcell
-- Equation(s):
-- rndopt(8) = DFFEAS(\process0~15701_combout\ $ ((!\rndopt[6]~120\ & \rndopt[7]~121\) # (\rndopt[6]~120\ & \rndopt[7]~121COUT1\)), GLOBAL(\en~combout\), VCC, , , , , , )
-- \rndopt[8]~122\ = CARRY(!\rndopt[7]~121\ # !\process0~15701_combout\)
-- \rndopt[8]~122COUT1\ = CARRY(!\rndopt[7]~121COUT1\ # !\process0~15701_combout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \en~combout\,
	dataa => \process0~15701_combout\,
	aclr => GND,
	cin => \rndopt[6]~120\,
	cin0 => \rndopt[7]~121\,
	cin1 => \rndopt[7]~121COUT1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rndopt(8),
	cout0 => \rndopt[8]~122\,
	cout1 => \rndopt[8]~122COUT1\);

\process0~15709\ : cyclone_lcell
-- Equation(s):
-- \process0~15709_combout\ = \process0~15575_combout\ & (\rndip~combout\(26) # \process0~104_combout\) # !\process0~15575_combout\ & (\rndip~combout\(25) & !\process0~104_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(26),
	datab => \rndip~combout\(25),
	datac => \process0~15575_combout\,
	datad => \process0~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15709_combout\);

\process0~15710\ : cyclone_lcell
-- Equation(s):
-- \process0~15710_combout\ = \process0~15577_combout\ & (\process0~15578_combout\ & (\rndip~combout\(28)) # !\process0~15578_combout\ & \rndip~combout\(29)) # !\process0~15577_combout\ & (\process0~15578_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f858",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15577_combout\,
	datab => \rndip~combout\(29),
	datac => \process0~15578_combout\,
	datad => \rndip~combout\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15710_combout\);

\process0~15711\ : cyclone_lcell
-- Equation(s):
-- \process0~15711_combout\ = \process0~15577_combout\ & (\process0~15710_combout\) # !\process0~15577_combout\ & (\process0~15710_combout\ & (\rndip~combout\(31)) # !\process0~15710_combout\ & \rndip~combout\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(30),
	datab => \rndip~combout\(31),
	datac => \process0~15577_combout\,
	datad => \process0~15710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15711_combout\);

\process0~15712\ : cyclone_lcell
-- Equation(s):
-- \process0~15712_combout\ = \process0~15709_combout\ & (\process0~15711_combout\ # !\process0~104_combout\) # !\process0~15709_combout\ & \process0~104_combout\ & \rndip~combout\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15709_combout\,
	datab => \process0~104_combout\,
	datac => \rndip~combout\(27),
	datad => \process0~15711_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15712_combout\);

\process0~15713\ : cyclone_lcell
-- Equation(s):
-- \process0~15713_combout\ = \process0~216_combout\ & (\rndip~combout\(23) # \process0~15583_combout\) # !\process0~216_combout\ & (\rndip~combout\(21) & !\process0~15583_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(23),
	datab => \process0~216_combout\,
	datac => \rndip~combout\(21),
	datad => \process0~15583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15713_combout\);

\process0~15714\ : cyclone_lcell
-- Equation(s):
-- \process0~15714_combout\ = \process0~15713_combout\ & (\rndip~combout\(24) # !\process0~15583_combout\) # !\process0~15713_combout\ & \rndip~combout\(22) & (\process0~15583_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15713_combout\,
	datab => \rndip~combout\(22),
	datac => \rndip~combout\(24),
	datad => \process0~15583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15714_combout\);

\process0~15715\ : cyclone_lcell
-- Equation(s):
-- \process0~15715_combout\ = \process0~15586_combout\ & (\process0~15582_combout\ # \process0~15714_combout\) # !\process0~15586_combout\ & \rndip~combout\(19) & !\process0~15582_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aea4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15586_combout\,
	datab => \rndip~combout\(19),
	datac => \process0~15582_combout\,
	datad => \process0~15714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15715_combout\);

\process0~15716\ : cyclone_lcell
-- Equation(s):
-- \process0~15716_combout\ = \process0~15582_combout\ & (\process0~15715_combout\ & (\rndip~combout\(20)) # !\process0~15715_combout\ & \process0~15712_combout\) # !\process0~15582_combout\ & (\process0~15715_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15582_combout\,
	datab => \process0~15712_combout\,
	datac => \rndip~combout\(20),
	datad => \process0~15715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15716_combout\);

\process0~15702\ : cyclone_lcell
-- Equation(s):
-- \process0~15702_combout\ = \process0~15565_combout\ & (\process0~568_combout\) # !\process0~15565_combout\ & (\process0~568_combout\ & (\rndip~combout\(11)) # !\process0~568_combout\ & \rndip~combout\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2c2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(9),
	datab => \process0~15565_combout\,
	datac => \process0~568_combout\,
	datad => \rndip~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15702_combout\);

\process0~15704\ : cyclone_lcell
-- Equation(s):
-- \process0~15704_combout\ = \process0~15569_combout\ & (\process0~390_combout\) # !\process0~15569_combout\ & (\process0~390_combout\ & (\rndip~combout\(17)) # !\process0~390_combout\ & \rndip~combout\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15569_combout\,
	datab => \rndip~combout\(15),
	datac => \process0~390_combout\,
	datad => \rndip~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15704_combout\);

\process0~15705\ : cyclone_lcell
-- Equation(s):
-- \process0~15705_combout\ = \process0~15569_combout\ & (\process0~15704_combout\ & \rndip~combout\(18) # !\process0~15704_combout\ & (\rndip~combout\(16))) # !\process0~15569_combout\ & \process0~15704_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15569_combout\,
	datab => \process0~15704_combout\,
	datac => \rndip~combout\(18),
	datad => \rndip~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15705_combout\);

\process0~15703\ : cyclone_lcell
-- Equation(s):
-- \process0~15703_combout\ = \process0~15567_combout\ & (\process0~478_combout\) # !\process0~15567_combout\ & (\process0~478_combout\ & \rndip~combout\(14) # !\process0~478_combout\ & (\rndip~combout\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(14),
	datab => \process0~15567_combout\,
	datac => \rndip~combout\(12),
	datad => \process0~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15703_combout\);

\process0~15706\ : cyclone_lcell
-- Equation(s):
-- \process0~15706_combout\ = \process0~15567_combout\ & (\process0~15703_combout\ & \process0~15705_combout\ # !\process0~15703_combout\ & (\rndip~combout\(13))) # !\process0~15567_combout\ & (\process0~15703_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15705_combout\,
	datab => \process0~15567_combout\,
	datac => \rndip~combout\(13),
	datad => \process0~15703_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15706_combout\);

\process0~15707\ : cyclone_lcell
-- Equation(s):
-- \process0~15707_combout\ = \process0~15702_combout\ & (\process0~15706_combout\ # !\process0~15565_combout\) # !\process0~15702_combout\ & \process0~15565_combout\ & \rndip~combout\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15702_combout\,
	datab => \process0~15565_combout\,
	datac => \rndip~combout\(10),
	datad => \process0~15706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15707_combout\);

\process0~15708\ : cyclone_lcell
-- Equation(s):
-- \process0~15708_combout\ = !\process0~332_combout\ & (\process0~628_combout\ & (\process0~15707_combout\) # !\process0~628_combout\ & \rndip~combout\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5410",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~332_combout\,
	datab => \process0~628_combout\,
	datac => \rndip~combout\(8),
	datad => \process0~15707_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15708_combout\);

\process0~15717\ : cyclone_lcell
-- Equation(s):
-- \process0~15717_combout\ = \process0~15708_combout\ # \process0~15716_combout\ & \process0~332_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15716_combout\,
	datac => \process0~332_combout\,
	datad => \process0~15708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15717_combout\);

\rndopt[9]\ : cyclone_lcell
-- Equation(s):
-- rndopt(9) = DFFEAS(\process0~15717_combout\ $ !(!\rndopt[6]~120\ & \rndopt[8]~122\) # (\rndopt[6]~120\ & \rndopt[8]~122COUT1\), GLOBAL(\en~combout\), VCC, , , , , , )
-- \rndopt[9]~123\ = CARRY(\process0~15717_combout\ & !\rndopt[8]~122\)
-- \rndopt[9]~123COUT1\ = CARRY(\process0~15717_combout\ & !\rndopt[8]~122COUT1\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \en~combout\,
	datab => \process0~15717_combout\,
	aclr => GND,
	cin => \rndopt[6]~120\,
	cin0 => \rndopt[8]~122\,
	cin1 => \rndopt[8]~122COUT1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rndopt(9),
	cout0 => \rndopt[9]~123\,
	cout1 => \rndopt[9]~123COUT1\);

\process0~15725\ : cyclone_lcell
-- Equation(s):
-- \process0~15725_combout\ = \process0~216_combout\ & (\process0~15583_combout\) # !\process0~216_combout\ & (\process0~15583_combout\ & (\rndip~combout\(23)) # !\process0~15583_combout\ & \rndip~combout\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(22),
	datab => \process0~216_combout\,
	datac => \rndip~combout\(23),
	datad => \process0~15583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15725_combout\);

\process0~15726\ : cyclone_lcell
-- Equation(s):
-- \process0~15726_combout\ = \process0~216_combout\ & (\process0~15725_combout\ & \rndip~combout\(25) # !\process0~15725_combout\ & (\rndip~combout\(24))) # !\process0~216_combout\ & (\process0~15725_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(25),
	datab => \rndip~combout\(24),
	datac => \process0~216_combout\,
	datad => \process0~15725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15726_combout\);

\process0~15728\ : cyclone_lcell
-- Equation(s):
-- \process0~15728_combout\ = \process0~15577_combout\ & \rndip~combout\(30) & (!\process0~15578_combout\) # !\process0~15577_combout\ & (\rndip~combout\(31) # \process0~15578_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(30),
	datab => \process0~15577_combout\,
	datac => \rndip~combout\(31),
	datad => \process0~15578_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15728_combout\);

\process0~15729\ : cyclone_lcell
-- Equation(s):
-- \process0~15729_combout\ = \process0~15728_combout\ & (\rndip~combout\(32) # !\process0~15578_combout\) # !\process0~15728_combout\ & \rndip~combout\(29) & (\process0~15578_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(29),
	datab => \process0~15728_combout\,
	datac => \rndip~combout\(32),
	datad => \process0~15578_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15729_combout\);

\process0~15727\ : cyclone_lcell
-- Equation(s):
-- \process0~15727_combout\ = \process0~104_combout\ & (\rndip~combout\(28) # \process0~15575_combout\) # !\process0~104_combout\ & \rndip~combout\(26) & (!\process0~15575_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(26),
	datab => \rndip~combout\(28),
	datac => \process0~104_combout\,
	datad => \process0~15575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15727_combout\);

\process0~15730\ : cyclone_lcell
-- Equation(s):
-- \process0~15730_combout\ = \process0~15575_combout\ & (\process0~15727_combout\ & (\process0~15729_combout\) # !\process0~15727_combout\ & \rndip~combout\(27)) # !\process0~15575_combout\ & (\process0~15727_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(27),
	datab => \process0~15575_combout\,
	datac => \process0~15729_combout\,
	datad => \process0~15727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15730_combout\);

\process0~15731\ : cyclone_lcell
-- Equation(s):
-- \process0~15731_combout\ = \process0~15586_combout\ & \process0~15582_combout\ # !\process0~15586_combout\ & (\process0~15582_combout\ & (\process0~15730_combout\) # !\process0~15582_combout\ & \rndip~combout\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15586_combout\,
	datab => \process0~15582_combout\,
	datac => \rndip~combout\(20),
	datad => \process0~15730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15731_combout\);

\process0~15732\ : cyclone_lcell
-- Equation(s):
-- \process0~15732_combout\ = \process0~15586_combout\ & (\process0~15731_combout\ & (\rndip~combout\(21)) # !\process0~15731_combout\ & \process0~15726_combout\) # !\process0~15586_combout\ & (\process0~15731_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15726_combout\,
	datab => \rndip~combout\(21),
	datac => \process0~15586_combout\,
	datad => \process0~15731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15732_combout\);

\process0~15719\ : cyclone_lcell
-- Equation(s):
-- \process0~15719_combout\ = \process0~15567_combout\ & (\rndip~combout\(14) # \process0~478_combout\) # !\process0~15567_combout\ & (\rndip~combout\(13) & !\process0~478_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(14),
	datab => \process0~15567_combout\,
	datac => \rndip~combout\(13),
	datad => \process0~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15719_combout\);

\process0~15720\ : cyclone_lcell
-- Equation(s):
-- \process0~15720_combout\ = \process0~390_combout\ & (\process0~15569_combout\) # !\process0~390_combout\ & (\process0~15569_combout\ & \rndip~combout\(17) # !\process0~15569_combout\ & (\rndip~combout\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e3e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(17),
	datab => \process0~390_combout\,
	datac => \process0~15569_combout\,
	datad => \rndip~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15720_combout\);

\process0~15721\ : cyclone_lcell
-- Equation(s):
-- \process0~15721_combout\ = \process0~390_combout\ & (\process0~15720_combout\ & (\rndip~combout\(19)) # !\process0~15720_combout\ & \rndip~combout\(18)) # !\process0~390_combout\ & (\process0~15720_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(18),
	datab => \rndip~combout\(19),
	datac => \process0~390_combout\,
	datad => \process0~15720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15721_combout\);

\process0~15722\ : cyclone_lcell
-- Equation(s):
-- \process0~15722_combout\ = \process0~478_combout\ & (\process0~15719_combout\ & (\process0~15721_combout\) # !\process0~15719_combout\ & \rndip~combout\(15)) # !\process0~478_combout\ & (\process0~15719_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f858",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~478_combout\,
	datab => \rndip~combout\(15),
	datac => \process0~15719_combout\,
	datad => \process0~15721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15722_combout\);

\process0~15718\ : cyclone_lcell
-- Equation(s):
-- \process0~15718_combout\ = \process0~15565_combout\ & (\rndip~combout\(11) # \process0~568_combout\) # !\process0~15565_combout\ & \rndip~combout\(10) & (!\process0~568_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15565_combout\,
	datab => \rndip~combout\(10),
	datac => \rndip~combout\(11),
	datad => \process0~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15718_combout\);

\process0~15723\ : cyclone_lcell
-- Equation(s):
-- \process0~15723_combout\ = \process0~15718_combout\ & (\process0~15722_combout\ # !\process0~568_combout\) # !\process0~15718_combout\ & (\rndip~combout\(12) & \process0~568_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15722_combout\,
	datab => \rndip~combout\(12),
	datac => \process0~15718_combout\,
	datad => \process0~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15723_combout\);

\process0~15724\ : cyclone_lcell
-- Equation(s):
-- \process0~15724_combout\ = !\process0~332_combout\ & (\process0~628_combout\ & (\process0~15723_combout\) # !\process0~628_combout\ & \rndip~combout\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~332_combout\,
	datab => \rndip~combout\(9),
	datac => \process0~628_combout\,
	datad => \process0~15723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15724_combout\);

\process0~15733\ : cyclone_lcell
-- Equation(s):
-- \process0~15733_combout\ = \process0~15724_combout\ # \process0~332_combout\ & \process0~15732_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~332_combout\,
	datac => \process0~15732_combout\,
	datad => \process0~15724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15733_combout\);

\rndopt[10]\ : cyclone_lcell
-- Equation(s):
-- rndopt(10) = DFFEAS(\process0~15733_combout\ $ (!\rndopt[6]~120\ & \rndopt[9]~123\) # (\rndopt[6]~120\ & \rndopt[9]~123COUT1\), GLOBAL(\en~combout\), VCC, , , , , , )
-- \rndopt[10]~124\ = CARRY(!\rndopt[9]~123\ # !\process0~15733_combout\)
-- \rndopt[10]~124COUT1\ = CARRY(!\rndopt[9]~123COUT1\ # !\process0~15733_combout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \en~combout\,
	datab => \process0~15733_combout\,
	aclr => GND,
	cin => \rndopt[6]~120\,
	cin0 => \rndopt[9]~123\,
	cin1 => \rndopt[9]~123COUT1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rndopt(10),
	cout0 => \rndopt[10]~124\,
	cout1 => \rndopt[10]~124COUT1\);

\process0~15742\ : cyclone_lcell
-- Equation(s):
-- \process0~15742_combout\ = \process0~15577_combout\ & (\process0~15578_combout\ & \rndip~combout\(30) # !\process0~15578_combout\ & (\rndip~combout\(31))) # !\process0~15577_combout\ & (\process0~15578_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(30),
	datab => \process0~15577_combout\,
	datac => \rndip~combout\(31),
	datad => \process0~15578_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15742_combout\);

\process0~15743\ : cyclone_lcell
-- Equation(s):
-- \process0~15743_combout\ = \process0~15742_combout\ & (\rndip~combout\(33) # \process0~15577_combout\) # !\process0~15742_combout\ & \rndip~combout\(32) & (!\process0~15577_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15742_combout\,
	datab => \rndip~combout\(32),
	datac => \rndip~combout\(33),
	datad => \process0~15577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15743_combout\);

\process0~15741\ : cyclone_lcell
-- Equation(s):
-- \process0~15741_combout\ = \process0~104_combout\ & (\process0~15575_combout\) # !\process0~104_combout\ & (\process0~15575_combout\ & \rndip~combout\(28) # !\process0~15575_combout\ & (\rndip~combout\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~104_combout\,
	datab => \rndip~combout\(28),
	datac => \rndip~combout\(27),
	datad => \process0~15575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15741_combout\);

\process0~15744\ : cyclone_lcell
-- Equation(s):
-- \process0~15744_combout\ = \process0~104_combout\ & (\process0~15741_combout\ & (\process0~15743_combout\) # !\process0~15741_combout\ & \rndip~combout\(29)) # !\process0~104_combout\ & (\process0~15741_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~104_combout\,
	datab => \rndip~combout\(29),
	datac => \process0~15743_combout\,
	datad => \process0~15741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15744_combout\);

\process0~15745\ : cyclone_lcell
-- Equation(s):
-- \process0~15745_combout\ = \process0~15583_combout\ & (\process0~216_combout\) # !\process0~15583_combout\ & (\process0~216_combout\ & (\rndip~combout\(25)) # !\process0~216_combout\ & \rndip~combout\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2c2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(23),
	datab => \process0~15583_combout\,
	datac => \process0~216_combout\,
	datad => \rndip~combout\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15745_combout\);

\process0~15746\ : cyclone_lcell
-- Equation(s):
-- \process0~15746_combout\ = \process0~15745_combout\ & (\rndip~combout\(26) # !\process0~15583_combout\) # !\process0~15745_combout\ & (\rndip~combout\(24) & \process0~15583_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15745_combout\,
	datab => \rndip~combout\(26),
	datac => \rndip~combout\(24),
	datad => \process0~15583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15746_combout\);

\process0~15747\ : cyclone_lcell
-- Equation(s):
-- \process0~15747_combout\ = \process0~15582_combout\ & \process0~15586_combout\ # !\process0~15582_combout\ & (\process0~15586_combout\ & (\process0~15746_combout\) # !\process0~15586_combout\ & \rndip~combout\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15582_combout\,
	datab => \process0~15586_combout\,
	datac => \rndip~combout\(21),
	datad => \process0~15746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15747_combout\);

\process0~15748\ : cyclone_lcell
-- Equation(s):
-- \process0~15748_combout\ = \process0~15582_combout\ & (\process0~15747_combout\ & (\rndip~combout\(22)) # !\process0~15747_combout\ & \process0~15744_combout\) # !\process0~15582_combout\ & (\process0~15747_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15744_combout\,
	datab => \rndip~combout\(22),
	datac => \process0~15582_combout\,
	datad => \process0~15747_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15748_combout\);

\process0~15734\ : cyclone_lcell
-- Equation(s):
-- \process0~15734_combout\ = \process0~15565_combout\ & (\process0~568_combout\) # !\process0~15565_combout\ & (\process0~568_combout\ & (\rndip~combout\(13)) # !\process0~568_combout\ & \rndip~combout\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(11),
	datab => \process0~15565_combout\,
	datac => \rndip~combout\(13),
	datad => \process0~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15734_combout\);

\process0~15736\ : cyclone_lcell
-- Equation(s):
-- \process0~15736_combout\ = \process0~15569_combout\ & (\process0~390_combout\) # !\process0~15569_combout\ & (\process0~390_combout\ & \rndip~combout\(19) # !\process0~390_combout\ & (\rndip~combout\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e5e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15569_combout\,
	datab => \rndip~combout\(19),
	datac => \process0~390_combout\,
	datad => \rndip~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15736_combout\);

\process0~15737\ : cyclone_lcell
-- Equation(s):
-- \process0~15737_combout\ = \process0~15569_combout\ & (\process0~15736_combout\ & (\rndip~combout\(20)) # !\process0~15736_combout\ & \rndip~combout\(18)) # !\process0~15569_combout\ & (\process0~15736_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(18),
	datab => \rndip~combout\(20),
	datac => \process0~15569_combout\,
	datad => \process0~15736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15737_combout\);

\process0~15735\ : cyclone_lcell
-- Equation(s):
-- \process0~15735_combout\ = \process0~15567_combout\ & (\process0~478_combout\) # !\process0~15567_combout\ & (\process0~478_combout\ & (\rndip~combout\(16)) # !\process0~478_combout\ & \rndip~combout\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2c2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(14),
	datab => \process0~15567_combout\,
	datac => \process0~478_combout\,
	datad => \rndip~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15735_combout\);

\process0~15738\ : cyclone_lcell
-- Equation(s):
-- \process0~15738_combout\ = \process0~15567_combout\ & (\process0~15735_combout\ & \process0~15737_combout\ # !\process0~15735_combout\ & (\rndip~combout\(15))) # !\process0~15567_combout\ & (\process0~15735_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15737_combout\,
	datab => \process0~15567_combout\,
	datac => \rndip~combout\(15),
	datad => \process0~15735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15738_combout\);

\process0~15739\ : cyclone_lcell
-- Equation(s):
-- \process0~15739_combout\ = \process0~15734_combout\ & (\process0~15738_combout\ # !\process0~15565_combout\) # !\process0~15734_combout\ & \process0~15565_combout\ & \rndip~combout\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15734_combout\,
	datab => \process0~15565_combout\,
	datac => \rndip~combout\(12),
	datad => \process0~15738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15739_combout\);

\process0~15740\ : cyclone_lcell
-- Equation(s):
-- \process0~15740_combout\ = !\process0~332_combout\ & (\process0~628_combout\ & (\process0~15739_combout\) # !\process0~628_combout\ & \rndip~combout\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~332_combout\,
	datab => \rndip~combout\(10),
	datac => \process0~628_combout\,
	datad => \process0~15739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15740_combout\);

\process0~15749\ : cyclone_lcell
-- Equation(s):
-- \process0~15749_combout\ = \process0~15740_combout\ # \process0~332_combout\ & \process0~15748_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~332_combout\,
	datac => \process0~15748_combout\,
	datad => \process0~15740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15749_combout\);

\rndopt[11]\ : cyclone_lcell
-- Equation(s):
-- rndopt(11) = DFFEAS(\process0~15749_combout\ $ (!(!\rndopt[6]~120\ & \rndopt[10]~124\) # (\rndopt[6]~120\ & \rndopt[10]~124COUT1\)), GLOBAL(\en~combout\), VCC, , , , , , )
-- \rndopt[11]~125\ = CARRY(\process0~15749_combout\ & (!\rndopt[10]~124COUT1\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \en~combout\,
	dataa => \process0~15749_combout\,
	aclr => GND,
	cin => \rndopt[6]~120\,
	cin0 => \rndopt[10]~124\,
	cin1 => \rndopt[10]~124COUT1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rndopt(11),
	cout => \rndopt[11]~125\);

\process0~15752\ : cyclone_lcell
-- Equation(s):
-- \process0~15752_combout\ = \process0~15569_combout\ & (\process0~390_combout\ # \rndip~combout\(19)) # !\process0~15569_combout\ & !\process0~390_combout\ & \rndip~combout\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15569_combout\,
	datab => \process0~390_combout\,
	datac => \rndip~combout\(18),
	datad => \rndip~combout\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15752_combout\);

\process0~15753\ : cyclone_lcell
-- Equation(s):
-- \process0~15753_combout\ = \process0~390_combout\ & (\process0~15752_combout\ & \rndip~combout\(21) # !\process0~15752_combout\ & (\rndip~combout\(20))) # !\process0~390_combout\ & (\process0~15752_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(21),
	datab => \rndip~combout\(20),
	datac => \process0~390_combout\,
	datad => \process0~15752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15753_combout\);

\process0~15751\ : cyclone_lcell
-- Equation(s):
-- \process0~15751_combout\ = \process0~478_combout\ & (\process0~15567_combout\) # !\process0~478_combout\ & (\process0~15567_combout\ & (\rndip~combout\(16)) # !\process0~15567_combout\ & \rndip~combout\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~478_combout\,
	datab => \rndip~combout\(15),
	datac => \process0~15567_combout\,
	datad => \rndip~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15751_combout\);

\process0~15754\ : cyclone_lcell
-- Equation(s):
-- \process0~15754_combout\ = \process0~478_combout\ & (\process0~15751_combout\ & (\process0~15753_combout\) # !\process0~15751_combout\ & \rndip~combout\(17)) # !\process0~478_combout\ & (\process0~15751_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(17),
	datab => \process0~15753_combout\,
	datac => \process0~478_combout\,
	datad => \process0~15751_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15754_combout\);

\process0~15750\ : cyclone_lcell
-- Equation(s):
-- \process0~15750_combout\ = \process0~15565_combout\ & (\rndip~combout\(13) # \process0~568_combout\) # !\process0~15565_combout\ & (\rndip~combout\(12) & !\process0~568_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(13),
	datab => \rndip~combout\(12),
	datac => \process0~15565_combout\,
	datad => \process0~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15750_combout\);

\process0~15755\ : cyclone_lcell
-- Equation(s):
-- \process0~15755_combout\ = \process0~568_combout\ & (\process0~15750_combout\ & \process0~15754_combout\ # !\process0~15750_combout\ & (\rndip~combout\(14))) # !\process0~568_combout\ & (\process0~15750_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~568_combout\,
	datab => \process0~15754_combout\,
	datac => \rndip~combout\(14),
	datad => \process0~15750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15755_combout\);

\process0~15756\ : cyclone_lcell
-- Equation(s):
-- \process0~15756_combout\ = !\process0~332_combout\ & (\process0~628_combout\ & (\process0~15755_combout\) # !\process0~628_combout\ & \rndip~combout\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3210",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~628_combout\,
	datab => \process0~332_combout\,
	datac => \rndip~combout\(11),
	datad => \process0~15755_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15756_combout\);

\process0~15759\ : cyclone_lcell
-- Equation(s):
-- \process0~15759_combout\ = \process0~104_combout\ & (\rndip~combout\(30) # \process0~15575_combout\) # !\process0~104_combout\ & (!\process0~15575_combout\ & \rndip~combout\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ada8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~104_combout\,
	datab => \rndip~combout\(30),
	datac => \process0~15575_combout\,
	datad => \rndip~combout\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15759_combout\);

\process0~15760\ : cyclone_lcell
-- Equation(s):
-- \process0~15760_combout\ = \process0~15578_combout\ & (!\process0~15577_combout\) # !\process0~15578_combout\ & (\process0~15577_combout\ & \rndip~combout\(32) # !\process0~15577_combout\ & (\rndip~combout\(33)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "44fa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15578_combout\,
	datab => \rndip~combout\(32),
	datac => \rndip~combout\(33),
	datad => \process0~15577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15760_combout\);

\process0~15761\ : cyclone_lcell
-- Equation(s):
-- \process0~15761_combout\ = \process0~15578_combout\ & (\process0~15760_combout\ & \rndip~combout\(34) # !\process0~15760_combout\ & (\rndip~combout\(31))) # !\process0~15578_combout\ & (\process0~15760_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15578_combout\,
	datab => \rndip~combout\(34),
	datac => \rndip~combout\(31),
	datad => \process0~15760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15761_combout\);

\process0~15762\ : cyclone_lcell
-- Equation(s):
-- \process0~15762_combout\ = \process0~15575_combout\ & (\process0~15759_combout\ & (\process0~15761_combout\) # !\process0~15759_combout\ & \rndip~combout\(29)) # !\process0~15575_combout\ & (\process0~15759_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f838",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(29),
	datab => \process0~15575_combout\,
	datac => \process0~15759_combout\,
	datad => \process0~15761_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15762_combout\);

\process0~15763\ : cyclone_lcell
-- Equation(s):
-- \process0~15763_combout\ = \process0~15586_combout\ & \process0~15582_combout\ # !\process0~15586_combout\ & (\process0~15582_combout\ & (\process0~15762_combout\) # !\process0~15582_combout\ & \rndip~combout\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15586_combout\,
	datab => \process0~15582_combout\,
	datac => \rndip~combout\(22),
	datad => \process0~15762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15763_combout\);

\process0~15757\ : cyclone_lcell
-- Equation(s):
-- \process0~15757_combout\ = \process0~15583_combout\ & (\process0~216_combout\ # \rndip~combout\(25)) # !\process0~15583_combout\ & \rndip~combout\(24) & !\process0~216_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cec2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(24),
	datab => \process0~15583_combout\,
	datac => \process0~216_combout\,
	datad => \rndip~combout\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15757_combout\);

\process0~15758\ : cyclone_lcell
-- Equation(s):
-- \process0~15758_combout\ = \process0~216_combout\ & (\process0~15757_combout\ & (\rndip~combout\(27)) # !\process0~15757_combout\ & \rndip~combout\(26)) # !\process0~216_combout\ & (\process0~15757_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(26),
	datab => \process0~216_combout\,
	datac => \rndip~combout\(27),
	datad => \process0~15757_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15758_combout\);

\process0~15764\ : cyclone_lcell
-- Equation(s):
-- \process0~15764_combout\ = \process0~15763_combout\ & (\rndip~combout\(23) # !\process0~15586_combout\) # !\process0~15763_combout\ & (\process0~15586_combout\ & \process0~15758_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "da8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15763_combout\,
	datab => \rndip~combout\(23),
	datac => \process0~15586_combout\,
	datad => \process0~15758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15764_combout\);

\process0~15765\ : cyclone_lcell
-- Equation(s):
-- \process0~15765_combout\ = \process0~15756_combout\ # \process0~332_combout\ & \process0~15764_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \process0~332_combout\,
	datac => \process0~15756_combout\,
	datad => \process0~15764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15765_combout\);

\rndopt[12]\ : cyclone_lcell
-- Equation(s):
-- rndopt(12) = DFFEAS(\process0~15765_combout\ $ (\rndopt[11]~125\), GLOBAL(\en~combout\), VCC, , , , , , )
-- \rndopt[12]~126\ = CARRY(!\rndopt[11]~125\ # !\process0~15765_combout\)
-- \rndopt[12]~126COUT1\ = CARRY(!\rndopt[11]~125\ # !\process0~15765_combout\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \en~combout\,
	dataa => \process0~15765_combout\,
	aclr => GND,
	cin => \rndopt[11]~125\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rndopt(12),
	cout0 => \rndopt[12]~126\,
	cout1 => \rndopt[12]~126COUT1\);

\process0~15774\ : cyclone_lcell
-- Equation(s):
-- \process0~15774_combout\ = \process0~15578_combout\ & (\rndip~combout\(32) # !\process0~15577_combout\) # !\process0~15578_combout\ & (\rndip~combout\(33) & \process0~15577_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15578_combout\,
	datab => \rndip~combout\(32),
	datac => \rndip~combout\(33),
	datad => \process0~15577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15774_combout\);

\process0~15775\ : cyclone_lcell
-- Equation(s):
-- \process0~15775_combout\ = \process0~15774_combout\ & (\rndip~combout\(35) # \process0~15577_combout\) # !\process0~15774_combout\ & (\rndip~combout\(34) & !\process0~15577_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(35),
	datab => \rndip~combout\(34),
	datac => \process0~15774_combout\,
	datad => \process0~15577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15775_combout\);

\process0~15773\ : cyclone_lcell
-- Equation(s):
-- \process0~15773_combout\ = \process0~15575_combout\ & (\rndip~combout\(30) # \process0~104_combout\) # !\process0~15575_combout\ & (\rndip~combout\(29) & !\process0~104_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15575_combout\,
	datab => \rndip~combout\(30),
	datac => \rndip~combout\(29),
	datad => \process0~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15773_combout\);

\process0~15776\ : cyclone_lcell
-- Equation(s):
-- \process0~15776_combout\ = \process0~15773_combout\ & (\process0~15775_combout\ # !\process0~104_combout\) # !\process0~15773_combout\ & \rndip~combout\(31) & (\process0~104_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(31),
	datab => \process0~15775_combout\,
	datac => \process0~15773_combout\,
	datad => \process0~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15776_combout\);

\process0~15777\ : cyclone_lcell
-- Equation(s):
-- \process0~15777_combout\ = \process0~216_combout\ & (\rndip~combout\(27) # \process0~15583_combout\) # !\process0~216_combout\ & (\rndip~combout\(25) & !\process0~15583_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(27),
	datab => \rndip~combout\(25),
	datac => \process0~216_combout\,
	datad => \process0~15583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15777_combout\);

\process0~15778\ : cyclone_lcell
-- Equation(s):
-- \process0~15778_combout\ = \process0~15583_combout\ & (\process0~15777_combout\ & \rndip~combout\(28) # !\process0~15777_combout\ & (\rndip~combout\(26))) # !\process0~15583_combout\ & (\process0~15777_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15583_combout\,
	datab => \rndip~combout\(28),
	datac => \rndip~combout\(26),
	datad => \process0~15777_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15778_combout\);

\process0~15779\ : cyclone_lcell
-- Equation(s):
-- \process0~15779_combout\ = \process0~15586_combout\ & (\process0~15582_combout\ # \process0~15778_combout\) # !\process0~15586_combout\ & \rndip~combout\(23) & !\process0~15582_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aea4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15586_combout\,
	datab => \rndip~combout\(23),
	datac => \process0~15582_combout\,
	datad => \process0~15778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15779_combout\);

\process0~15780\ : cyclone_lcell
-- Equation(s):
-- \process0~15780_combout\ = \process0~15582_combout\ & (\process0~15779_combout\ & (\rndip~combout\(24)) # !\process0~15779_combout\ & \process0~15776_combout\) # !\process0~15582_combout\ & (\process0~15779_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15582_combout\,
	datab => \process0~15776_combout\,
	datac => \rndip~combout\(24),
	datad => \process0~15779_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15780_combout\);

\process0~15766\ : cyclone_lcell
-- Equation(s):
-- \process0~15766_combout\ = \process0~15565_combout\ & (\process0~568_combout\) # !\process0~15565_combout\ & (\process0~568_combout\ & \rndip~combout\(15) # !\process0~568_combout\ & (\rndip~combout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(15),
	datab => \rndip~combout\(13),
	datac => \process0~15565_combout\,
	datad => \process0~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15766_combout\);

\process0~15767\ : cyclone_lcell
-- Equation(s):
-- \process0~15767_combout\ = \process0~478_combout\ & (\process0~15567_combout\ # \rndip~combout\(18)) # !\process0~478_combout\ & !\process0~15567_combout\ & (\rndip~combout\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~478_combout\,
	datab => \process0~15567_combout\,
	datac => \rndip~combout\(18),
	datad => \rndip~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15767_combout\);

\process0~15768\ : cyclone_lcell
-- Equation(s):
-- \process0~15768_combout\ = \process0~15569_combout\ & (\process0~390_combout\) # !\process0~15569_combout\ & (\process0~390_combout\ & \rndip~combout\(21) # !\process0~390_combout\ & (\rndip~combout\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e3e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(21),
	datab => \process0~15569_combout\,
	datac => \process0~390_combout\,
	datad => \rndip~combout\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15768_combout\);

\process0~15769\ : cyclone_lcell
-- Equation(s):
-- \process0~15769_combout\ = \process0~15768_combout\ & (\rndip~combout\(22) # !\process0~15569_combout\) # !\process0~15768_combout\ & \rndip~combout\(20) & \process0~15569_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec2c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(20),
	datab => \process0~15768_combout\,
	datac => \process0~15569_combout\,
	datad => \rndip~combout\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15769_combout\);

\process0~15770\ : cyclone_lcell
-- Equation(s):
-- \process0~15770_combout\ = \process0~15767_combout\ & (\process0~15769_combout\ # !\process0~15567_combout\) # !\process0~15767_combout\ & \process0~15567_combout\ & \rndip~combout\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15767_combout\,
	datab => \process0~15567_combout\,
	datac => \rndip~combout\(17),
	datad => \process0~15769_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15770_combout\);

\process0~15771\ : cyclone_lcell
-- Equation(s):
-- \process0~15771_combout\ = \process0~15766_combout\ & (\process0~15770_combout\ # !\process0~15565_combout\) # !\process0~15766_combout\ & \process0~15565_combout\ & \rndip~combout\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15766_combout\,
	datab => \process0~15565_combout\,
	datac => \rndip~combout\(14),
	datad => \process0~15770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15771_combout\);

\process0~15772\ : cyclone_lcell
-- Equation(s):
-- \process0~15772_combout\ = !\process0~332_combout\ & (\process0~628_combout\ & (\process0~15771_combout\) # !\process0~628_combout\ & \rndip~combout\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3210",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~628_combout\,
	datab => \process0~332_combout\,
	datac => \rndip~combout\(12),
	datad => \process0~15771_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15772_combout\);

\process0~15781\ : cyclone_lcell
-- Equation(s):
-- \process0~15781_combout\ = \process0~15772_combout\ # \process0~15780_combout\ & \process0~332_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ecec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15780_combout\,
	datab => \process0~15772_combout\,
	datac => \process0~332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15781_combout\);

\rndopt[13]\ : cyclone_lcell
-- Equation(s):
-- rndopt(13) = DFFEAS(\process0~15781_combout\ $ (!(!\rndopt[11]~125\ & \rndopt[12]~126\) # (\rndopt[11]~125\ & \rndopt[12]~126COUT1\)), GLOBAL(\en~combout\), VCC, , , , , , )
-- \rndopt[13]~127\ = CARRY(\process0~15781_combout\ & (!\rndopt[12]~126\))
-- \rndopt[13]~127COUT1\ = CARRY(\process0~15781_combout\ & (!\rndopt[12]~126COUT1\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \en~combout\,
	dataa => \process0~15781_combout\,
	aclr => GND,
	cin => \rndopt[11]~125\,
	cin0 => \rndopt[12]~126\,
	cin1 => \rndopt[12]~126COUT1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rndopt(13),
	cout0 => \rndopt[13]~127\,
	cout1 => \rndopt[13]~127COUT1\);

\process0~15784\ : cyclone_lcell
-- Equation(s):
-- \process0~15784_combout\ = \process0~15569_combout\ & (\rndip~combout\(21) # \process0~390_combout\) # !\process0~15569_combout\ & (\rndip~combout\(20) & !\process0~390_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15569_combout\,
	datab => \rndip~combout\(21),
	datac => \rndip~combout\(20),
	datad => \process0~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15784_combout\);

\process0~15785\ : cyclone_lcell
-- Equation(s):
-- \process0~15785_combout\ = \process0~15784_combout\ & (\rndip~combout\(23) # !\process0~390_combout\) # !\process0~15784_combout\ & \rndip~combout\(22) & (\process0~390_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15784_combout\,
	datab => \rndip~combout\(22),
	datac => \rndip~combout\(23),
	datad => \process0~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15785_combout\);

\process0~15783\ : cyclone_lcell
-- Equation(s):
-- \process0~15783_combout\ = \process0~15567_combout\ & (\rndip~combout\(18) # \process0~478_combout\) # !\process0~15567_combout\ & (\rndip~combout\(17) & !\process0~478_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(18),
	datab => \process0~15567_combout\,
	datac => \rndip~combout\(17),
	datad => \process0~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15783_combout\);

\process0~15786\ : cyclone_lcell
-- Equation(s):
-- \process0~15786_combout\ = \process0~478_combout\ & (\process0~15783_combout\ & \process0~15785_combout\ # !\process0~15783_combout\ & (\rndip~combout\(19))) # !\process0~478_combout\ & (\process0~15783_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~478_combout\,
	datab => \process0~15785_combout\,
	datac => \rndip~combout\(19),
	datad => \process0~15783_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15786_combout\);

\process0~15782\ : cyclone_lcell
-- Equation(s):
-- \process0~15782_combout\ = \process0~15565_combout\ & (\rndip~combout\(15) # \process0~568_combout\) # !\process0~15565_combout\ & \rndip~combout\(14) & (!\process0~568_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(14),
	datab => \process0~15565_combout\,
	datac => \rndip~combout\(15),
	datad => \process0~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15782_combout\);

\process0~15787\ : cyclone_lcell
-- Equation(s):
-- \process0~15787_combout\ = \process0~568_combout\ & (\process0~15782_combout\ & \process0~15786_combout\ # !\process0~15782_combout\ & (\rndip~combout\(16))) # !\process0~568_combout\ & (\process0~15782_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dad0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~568_combout\,
	datab => \process0~15786_combout\,
	datac => \process0~15782_combout\,
	datad => \rndip~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15787_combout\);

\process0~15788\ : cyclone_lcell
-- Equation(s):
-- \process0~15788_combout\ = !\process0~332_combout\ & (\process0~628_combout\ & (\process0~15787_combout\) # !\process0~628_combout\ & \rndip~combout\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~628_combout\,
	datab => \rndip~combout\(13),
	datac => \process0~15787_combout\,
	datad => \process0~332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15788_combout\);

\process0~15789\ : cyclone_lcell
-- Equation(s):
-- \process0~15789_combout\ = \process0~15583_combout\ & (\rndip~combout\(27) # \process0~216_combout\) # !\process0~15583_combout\ & (\rndip~combout\(26) & !\process0~216_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(27),
	datab => \process0~15583_combout\,
	datac => \rndip~combout\(26),
	datad => \process0~216_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15789_combout\);

\process0~15790\ : cyclone_lcell
-- Equation(s):
-- \process0~15790_combout\ = \process0~15789_combout\ & (\rndip~combout\(29) # !\process0~216_combout\) # !\process0~15789_combout\ & (\rndip~combout\(28) & \process0~216_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(29),
	datab => \rndip~combout\(28),
	datac => \process0~15789_combout\,
	datad => \process0~216_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15790_combout\);

\process0~15792\ : cyclone_lcell
-- Equation(s):
-- \process0~15792_combout\ = \process0~15577_combout\ & \rndip~combout\(34) & (!\process0~15578_combout\) # !\process0~15577_combout\ & (\rndip~combout\(35) # \process0~15578_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(34),
	datab => \process0~15577_combout\,
	datac => \rndip~combout\(35),
	datad => \process0~15578_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15792_combout\);

\process0~15793\ : cyclone_lcell
-- Equation(s):
-- \process0~15793_combout\ = \process0~15792_combout\ & (\rndip~combout\(36) # !\process0~15578_combout\) # !\process0~15792_combout\ & \rndip~combout\(33) & (\process0~15578_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(33),
	datab => \rndip~combout\(36),
	datac => \process0~15792_combout\,
	datad => \process0~15578_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15793_combout\);

\process0~15791\ : cyclone_lcell
-- Equation(s):
-- \process0~15791_combout\ = \process0~15575_combout\ & (\process0~104_combout\) # !\process0~15575_combout\ & (\process0~104_combout\ & (\rndip~combout\(32)) # !\process0~104_combout\ & \rndip~combout\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(30),
	datab => \process0~15575_combout\,
	datac => \rndip~combout\(32),
	datad => \process0~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15791_combout\);

\process0~15794\ : cyclone_lcell
-- Equation(s):
-- \process0~15794_combout\ = \process0~15575_combout\ & (\process0~15791_combout\ & \process0~15793_combout\ # !\process0~15791_combout\ & (\rndip~combout\(31))) # !\process0~15575_combout\ & (\process0~15791_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15793_combout\,
	datab => \rndip~combout\(31),
	datac => \process0~15575_combout\,
	datad => \process0~15791_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15794_combout\);

\process0~15795\ : cyclone_lcell
-- Equation(s):
-- \process0~15795_combout\ = \process0~15586_combout\ & (\process0~15582_combout\) # !\process0~15586_combout\ & (\process0~15582_combout\ & (\process0~15794_combout\) # !\process0~15582_combout\ & \rndip~combout\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2c2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(24),
	datab => \process0~15586_combout\,
	datac => \process0~15582_combout\,
	datad => \process0~15794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15795_combout\);

\process0~15796\ : cyclone_lcell
-- Equation(s):
-- \process0~15796_combout\ = \process0~15586_combout\ & (\process0~15795_combout\ & (\rndip~combout\(25)) # !\process0~15795_combout\ & \process0~15790_combout\) # !\process0~15586_combout\ & (\process0~15795_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15790_combout\,
	datab => \process0~15586_combout\,
	datac => \rndip~combout\(25),
	datad => \process0~15795_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15796_combout\);

\process0~15797\ : cyclone_lcell
-- Equation(s):
-- \process0~15797_combout\ = \process0~15788_combout\ # \process0~332_combout\ & \process0~15796_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \process0~332_combout\,
	datac => \process0~15788_combout\,
	datad => \process0~15796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15797_combout\);

\rndopt[14]\ : cyclone_lcell
-- Equation(s):
-- rndopt(14) = DFFEAS(\process0~15797_combout\ $ (!\rndopt[11]~125\ & \rndopt[13]~127\) # (\rndopt[11]~125\ & \rndopt[13]~127COUT1\), GLOBAL(\en~combout\), VCC, , , , , , )
-- \rndopt[14]~128\ = CARRY(!\rndopt[13]~127\ # !\process0~15797_combout\)
-- \rndopt[14]~128COUT1\ = CARRY(!\rndopt[13]~127COUT1\ # !\process0~15797_combout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \en~combout\,
	datab => \process0~15797_combout\,
	aclr => GND,
	cin => \rndopt[11]~125\,
	cin0 => \rndopt[13]~127\,
	cin1 => \rndopt[13]~127COUT1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rndopt(14),
	cout0 => \rndopt[14]~128\,
	cout1 => \rndopt[14]~128COUT1\);

\process0~15805\ : cyclone_lcell
-- Equation(s):
-- \process0~15805_combout\ = \process0~15575_combout\ & (\rndip~combout\(32) # \process0~104_combout\) # !\process0~15575_combout\ & (\rndip~combout\(31) & !\process0~104_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(32),
	datab => \rndip~combout\(31),
	datac => \process0~15575_combout\,
	datad => \process0~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15805_combout\);

\process0~15806\ : cyclone_lcell
-- Equation(s):
-- \process0~15806_combout\ = \process0~15578_combout\ & (\rndip~combout\(34) # !\process0~15577_combout\) # !\process0~15578_combout\ & (\rndip~combout\(35) & \process0~15577_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(34),
	datab => \rndip~combout\(35),
	datac => \process0~15578_combout\,
	datad => \process0~15577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15806_combout\);

\process0~15807\ : cyclone_lcell
-- Equation(s):
-- \process0~15807_combout\ = \process0~15806_combout\ & (\rndip~combout\(37) # \process0~15577_combout\) # !\process0~15806_combout\ & (\rndip~combout\(36) & !\process0~15577_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(37),
	datab => \process0~15806_combout\,
	datac => \rndip~combout\(36),
	datad => \process0~15577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15807_combout\);

\process0~15808\ : cyclone_lcell
-- Equation(s):
-- \process0~15808_combout\ = \process0~15805_combout\ & (\process0~15807_combout\ # !\process0~104_combout\) # !\process0~15805_combout\ & \rndip~combout\(33) & (\process0~104_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15805_combout\,
	datab => \rndip~combout\(33),
	datac => \process0~15807_combout\,
	datad => \process0~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15808_combout\);

\process0~15809\ : cyclone_lcell
-- Equation(s):
-- \process0~15809_combout\ = \process0~216_combout\ & (\rndip~combout\(29) # \process0~15583_combout\) # !\process0~216_combout\ & \rndip~combout\(27) & (!\process0~15583_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(27),
	datab => \rndip~combout\(29),
	datac => \process0~216_combout\,
	datad => \process0~15583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15809_combout\);

\process0~15810\ : cyclone_lcell
-- Equation(s):
-- \process0~15810_combout\ = \process0~15583_combout\ & (\process0~15809_combout\ & \rndip~combout\(30) # !\process0~15809_combout\ & (\rndip~combout\(28))) # !\process0~15583_combout\ & (\process0~15809_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dad0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15583_combout\,
	datab => \rndip~combout\(30),
	datac => \process0~15809_combout\,
	datad => \rndip~combout\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15810_combout\);

\process0~15811\ : cyclone_lcell
-- Equation(s):
-- \process0~15811_combout\ = \process0~15582_combout\ & (\process0~15586_combout\) # !\process0~15582_combout\ & (\process0~15586_combout\ & (\process0~15810_combout\) # !\process0~15586_combout\ & \rndip~combout\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15582_combout\,
	datab => \rndip~combout\(25),
	datac => \process0~15586_combout\,
	datad => \process0~15810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15811_combout\);

\process0~15812\ : cyclone_lcell
-- Equation(s):
-- \process0~15812_combout\ = \process0~15582_combout\ & (\process0~15811_combout\ & \rndip~combout\(26) # !\process0~15811_combout\ & (\process0~15808_combout\)) # !\process0~15582_combout\ & (\process0~15811_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(26),
	datab => \process0~15808_combout\,
	datac => \process0~15582_combout\,
	datad => \process0~15811_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15812_combout\);

\process0~15799\ : cyclone_lcell
-- Equation(s):
-- \process0~15799_combout\ = \process0~15567_combout\ & (\process0~478_combout\) # !\process0~15567_combout\ & (\process0~478_combout\ & (\rndip~combout\(20)) # !\process0~478_combout\ & \rndip~combout\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(18),
	datab => \process0~15567_combout\,
	datac => \rndip~combout\(20),
	datad => \process0~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15799_combout\);

\process0~15800\ : cyclone_lcell
-- Equation(s):
-- \process0~15800_combout\ = \process0~390_combout\ & (\rndip~combout\(23) # \process0~15569_combout\) # !\process0~390_combout\ & \rndip~combout\(21) & (!\process0~15569_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(21),
	datab => \process0~390_combout\,
	datac => \rndip~combout\(23),
	datad => \process0~15569_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15800_combout\);

\process0~15801\ : cyclone_lcell
-- Equation(s):
-- \process0~15801_combout\ = \process0~15569_combout\ & (\process0~15800_combout\ & \rndip~combout\(24) # !\process0~15800_combout\ & (\rndip~combout\(22))) # !\process0~15569_combout\ & (\process0~15800_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15569_combout\,
	datab => \rndip~combout\(24),
	datac => \rndip~combout\(22),
	datad => \process0~15800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15801_combout\);

\process0~15802\ : cyclone_lcell
-- Equation(s):
-- \process0~15802_combout\ = \process0~15567_combout\ & (\process0~15799_combout\ & (\process0~15801_combout\) # !\process0~15799_combout\ & \rndip~combout\(19)) # !\process0~15567_combout\ & (\process0~15799_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f858",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15567_combout\,
	datab => \rndip~combout\(19),
	datac => \process0~15799_combout\,
	datad => \process0~15801_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15802_combout\);

\process0~15798\ : cyclone_lcell
-- Equation(s):
-- \process0~15798_combout\ = \process0~15565_combout\ & (\process0~568_combout\) # !\process0~15565_combout\ & (\process0~568_combout\ & \rndip~combout\(17) # !\process0~568_combout\ & (\rndip~combout\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(17),
	datab => \process0~15565_combout\,
	datac => \rndip~combout\(15),
	datad => \process0~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15798_combout\);

\process0~15803\ : cyclone_lcell
-- Equation(s):
-- \process0~15803_combout\ = \process0~15565_combout\ & (\process0~15798_combout\ & (\process0~15802_combout\) # !\process0~15798_combout\ & \rndip~combout\(16)) # !\process0~15565_combout\ & (\process0~15798_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(16),
	datab => \process0~15565_combout\,
	datac => \process0~15802_combout\,
	datad => \process0~15798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15803_combout\);

\process0~15804\ : cyclone_lcell
-- Equation(s):
-- \process0~15804_combout\ = !\process0~332_combout\ & (\process0~628_combout\ & (\process0~15803_combout\) # !\process0~628_combout\ & \rndip~combout\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(14),
	datab => \process0~628_combout\,
	datac => \process0~15803_combout\,
	datad => \process0~332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15804_combout\);

\process0~15813\ : cyclone_lcell
-- Equation(s):
-- \process0~15813_combout\ = \process0~15804_combout\ # \process0~15812_combout\ & \process0~332_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \process0~15812_combout\,
	datac => \process0~15804_combout\,
	datad => \process0~332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15813_combout\);

\rndopt[15]\ : cyclone_lcell
-- Equation(s):
-- rndopt(15) = DFFEAS(\process0~15813_combout\ $ !(!\rndopt[11]~125\ & \rndopt[14]~128\) # (\rndopt[11]~125\ & \rndopt[14]~128COUT1\), GLOBAL(\en~combout\), VCC, , , , , , )
-- \rndopt[15]~129\ = CARRY(\process0~15813_combout\ & !\rndopt[14]~128\)
-- \rndopt[15]~129COUT1\ = CARRY(\process0~15813_combout\ & !\rndopt[14]~128COUT1\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \en~combout\,
	datab => \process0~15813_combout\,
	aclr => GND,
	cin => \rndopt[11]~125\,
	cin0 => \rndopt[14]~128\,
	cin1 => \rndopt[14]~128COUT1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rndopt(15),
	cout0 => \rndopt[15]~129\,
	cout1 => \rndopt[15]~129COUT1\);

\process0~15821\ : cyclone_lcell
-- Equation(s):
-- \process0~15821_combout\ = \process0~15583_combout\ & (\rndip~combout\(29) # \process0~216_combout\) # !\process0~15583_combout\ & (\rndip~combout\(28) & !\process0~216_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(29),
	datab => \rndip~combout\(28),
	datac => \process0~15583_combout\,
	datad => \process0~216_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15821_combout\);

\process0~15822\ : cyclone_lcell
-- Equation(s):
-- \process0~15822_combout\ = \process0~15821_combout\ & (\rndip~combout\(31) # !\process0~216_combout\) # !\process0~15821_combout\ & \rndip~combout\(30) & (\process0~216_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(30),
	datab => \rndip~combout\(31),
	datac => \process0~15821_combout\,
	datad => \process0~216_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15822_combout\);

\process0~15824\ : cyclone_lcell
-- Equation(s):
-- \process0~15824_combout\ = \process0~15578_combout\ & (!\process0~15577_combout\) # !\process0~15578_combout\ & (\process0~15577_combout\ & (\rndip~combout\(36)) # !\process0~15577_combout\ & \rndip~combout\(37))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0cfa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(37),
	datab => \rndip~combout\(36),
	datac => \process0~15578_combout\,
	datad => \process0~15577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15824_combout\);

\process0~15825\ : cyclone_lcell
-- Equation(s):
-- \process0~15825_combout\ = \process0~15578_combout\ & (\process0~15824_combout\ & \rndip~combout\(38) # !\process0~15824_combout\ & (\rndip~combout\(35))) # !\process0~15578_combout\ & (\process0~15824_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(38),
	datab => \rndip~combout\(35),
	datac => \process0~15578_combout\,
	datad => \process0~15824_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15825_combout\);

\process0~15823\ : cyclone_lcell
-- Equation(s):
-- \process0~15823_combout\ = \process0~15575_combout\ & (\process0~104_combout\) # !\process0~15575_combout\ & (\process0~104_combout\ & (\rndip~combout\(34)) # !\process0~104_combout\ & \rndip~combout\(32))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(32),
	datab => \rndip~combout\(34),
	datac => \process0~15575_combout\,
	datad => \process0~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15823_combout\);

\process0~15826\ : cyclone_lcell
-- Equation(s):
-- \process0~15826_combout\ = \process0~15575_combout\ & (\process0~15823_combout\ & \process0~15825_combout\ # !\process0~15823_combout\ & (\rndip~combout\(33))) # !\process0~15575_combout\ & (\process0~15823_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15825_combout\,
	datab => \rndip~combout\(33),
	datac => \process0~15575_combout\,
	datad => \process0~15823_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15826_combout\);

\process0~15827\ : cyclone_lcell
-- Equation(s):
-- \process0~15827_combout\ = \process0~15586_combout\ & (\process0~15582_combout\) # !\process0~15586_combout\ & (\process0~15582_combout\ & (\process0~15826_combout\) # !\process0~15582_combout\ & \rndip~combout\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15586_combout\,
	datab => \rndip~combout\(26),
	datac => \process0~15826_combout\,
	datad => \process0~15582_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15827_combout\);

\process0~15828\ : cyclone_lcell
-- Equation(s):
-- \process0~15828_combout\ = \process0~15586_combout\ & (\process0~15827_combout\ & \rndip~combout\(27) # !\process0~15827_combout\ & (\process0~15822_combout\)) # !\process0~15586_combout\ & (\process0~15827_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15586_combout\,
	datab => \rndip~combout\(27),
	datac => \process0~15822_combout\,
	datad => \process0~15827_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15828_combout\);

\process0~15816\ : cyclone_lcell
-- Equation(s):
-- \process0~15816_combout\ = \process0~15569_combout\ & (\rndip~combout\(23) # \process0~390_combout\) # !\process0~15569_combout\ & \rndip~combout\(22) & (!\process0~390_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15569_combout\,
	datab => \rndip~combout\(22),
	datac => \rndip~combout\(23),
	datad => \process0~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15816_combout\);

\process0~15817\ : cyclone_lcell
-- Equation(s):
-- \process0~15817_combout\ = \process0~15816_combout\ & (\rndip~combout\(25) # !\process0~390_combout\) # !\process0~15816_combout\ & \rndip~combout\(24) & (\process0~390_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(24),
	datab => \rndip~combout\(25),
	datac => \process0~15816_combout\,
	datad => \process0~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15817_combout\);

\process0~15815\ : cyclone_lcell
-- Equation(s):
-- \process0~15815_combout\ = \process0~478_combout\ & (\process0~15567_combout\) # !\process0~478_combout\ & (\process0~15567_combout\ & (\rndip~combout\(20)) # !\process0~15567_combout\ & \rndip~combout\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~478_combout\,
	datab => \rndip~combout\(19),
	datac => \rndip~combout\(20),
	datad => \process0~15567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15815_combout\);

\process0~15818\ : cyclone_lcell
-- Equation(s):
-- \process0~15818_combout\ = \process0~478_combout\ & (\process0~15815_combout\ & \process0~15817_combout\ # !\process0~15815_combout\ & (\rndip~combout\(21))) # !\process0~478_combout\ & (\process0~15815_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dad0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~478_combout\,
	datab => \process0~15817_combout\,
	datac => \process0~15815_combout\,
	datad => \rndip~combout\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15818_combout\);

\process0~15814\ : cyclone_lcell
-- Equation(s):
-- \process0~15814_combout\ = \process0~568_combout\ & \process0~15565_combout\ # !\process0~568_combout\ & (\process0~15565_combout\ & \rndip~combout\(17) # !\process0~15565_combout\ & (\rndip~combout\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~568_combout\,
	datab => \process0~15565_combout\,
	datac => \rndip~combout\(17),
	datad => \rndip~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15814_combout\);

\process0~15819\ : cyclone_lcell
-- Equation(s):
-- \process0~15819_combout\ = \process0~568_combout\ & (\process0~15814_combout\ & \process0~15818_combout\ # !\process0~15814_combout\ & (\rndip~combout\(18))) # !\process0~568_combout\ & (\process0~15814_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dad0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~568_combout\,
	datab => \process0~15818_combout\,
	datac => \process0~15814_combout\,
	datad => \rndip~combout\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15819_combout\);

\process0~15820\ : cyclone_lcell
-- Equation(s):
-- \process0~15820_combout\ = !\process0~332_combout\ & (\process0~628_combout\ & (\process0~15819_combout\) # !\process0~628_combout\ & \rndip~combout\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(15),
	datab => \process0~628_combout\,
	datac => \process0~15819_combout\,
	datad => \process0~332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15820_combout\);

\process0~15829\ : cyclone_lcell
-- Equation(s):
-- \process0~15829_combout\ = \process0~15820_combout\ # \process0~332_combout\ & \process0~15828_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~332_combout\,
	datab => \process0~15828_combout\,
	datad => \process0~15820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15829_combout\);

\rndopt[16]\ : cyclone_lcell
-- Equation(s):
-- rndopt(16) = DFFEAS(\process0~15829_combout\ $ (!\rndopt[11]~125\ & \rndopt[15]~129\) # (\rndopt[11]~125\ & \rndopt[15]~129COUT1\), GLOBAL(\en~combout\), VCC, , , , , , )
-- \rndopt[16]~130\ = CARRY(!\rndopt[15]~129COUT1\ # !\process0~15829_combout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \en~combout\,
	datab => \process0~15829_combout\,
	aclr => GND,
	cin => \rndopt[11]~125\,
	cin0 => \rndopt[15]~129\,
	cin1 => \rndopt[15]~129COUT1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rndopt(16),
	cout => \rndopt[16]~130\);

\process0~15830\ : cyclone_lcell
-- Equation(s):
-- \process0~15830_combout\ = \process0~15565_combout\ & (\process0~568_combout\) # !\process0~15565_combout\ & (\process0~568_combout\ & (\rndip~combout\(19)) # !\process0~568_combout\ & \rndip~combout\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15565_combout\,
	datab => \rndip~combout\(17),
	datac => \process0~568_combout\,
	datad => \rndip~combout\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15830_combout\);

\process0~15832\ : cyclone_lcell
-- Equation(s):
-- \process0~15832_combout\ = \process0~15569_combout\ & (\process0~390_combout\) # !\process0~15569_combout\ & (\process0~390_combout\ & (\rndip~combout\(25)) # !\process0~390_combout\ & \rndip~combout\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15569_combout\,
	datab => \rndip~combout\(23),
	datac => \rndip~combout\(25),
	datad => \process0~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15832_combout\);

\process0~15833\ : cyclone_lcell
-- Equation(s):
-- \process0~15833_combout\ = \process0~15832_combout\ & (\rndip~combout\(26) # !\process0~15569_combout\) # !\process0~15832_combout\ & \rndip~combout\(24) & (\process0~15569_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(24),
	datab => \rndip~combout\(26),
	datac => \process0~15832_combout\,
	datad => \process0~15569_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15833_combout\);

\process0~15831\ : cyclone_lcell
-- Equation(s):
-- \process0~15831_combout\ = \process0~15567_combout\ & (\process0~478_combout\) # !\process0~15567_combout\ & (\process0~478_combout\ & (\rndip~combout\(22)) # !\process0~478_combout\ & \rndip~combout\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(20),
	datab => \process0~15567_combout\,
	datac => \rndip~combout\(22),
	datad => \process0~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15831_combout\);

\process0~15834\ : cyclone_lcell
-- Equation(s):
-- \process0~15834_combout\ = \process0~15567_combout\ & (\process0~15831_combout\ & (\process0~15833_combout\) # !\process0~15831_combout\ & \rndip~combout\(21)) # !\process0~15567_combout\ & (\process0~15831_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(21),
	datab => \process0~15567_combout\,
	datac => \process0~15833_combout\,
	datad => \process0~15831_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15834_combout\);

\process0~15835\ : cyclone_lcell
-- Equation(s):
-- \process0~15835_combout\ = \process0~15565_combout\ & (\process0~15830_combout\ & (\process0~15834_combout\) # !\process0~15830_combout\ & \rndip~combout\(18)) # !\process0~15565_combout\ & (\process0~15830_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f858",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15565_combout\,
	datab => \rndip~combout\(18),
	datac => \process0~15830_combout\,
	datad => \process0~15834_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15835_combout\);

\process0~15836\ : cyclone_lcell
-- Equation(s):
-- \process0~15836_combout\ = !\process0~332_combout\ & (\process0~628_combout\ & (\process0~15835_combout\) # !\process0~628_combout\ & \rndip~combout\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(16),
	datab => \process0~332_combout\,
	datac => \process0~628_combout\,
	datad => \process0~15835_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15836_combout\);

\process0~15838\ : cyclone_lcell
-- Equation(s):
-- \process0~15838_combout\ = \process0~15578_combout\ & (\rndip~combout\(36) # !\process0~15577_combout\) # !\process0~15578_combout\ & \rndip~combout\(37) & (\process0~15577_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(37),
	datab => \rndip~combout\(36),
	datac => \process0~15578_combout\,
	datad => \process0~15577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15838_combout\);

\process0~15839\ : cyclone_lcell
-- Equation(s):
-- \process0~15839_combout\ = \process0~15838_combout\ & (\rndip~combout\(39) # \process0~15577_combout\) # !\process0~15838_combout\ & \rndip~combout\(38) & (!\process0~15577_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(38),
	datab => \process0~15838_combout\,
	datac => \rndip~combout\(39),
	datad => \process0~15577_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15839_combout\);

\process0~15837\ : cyclone_lcell
-- Equation(s):
-- \process0~15837_combout\ = \process0~15575_combout\ & (\rndip~combout\(34) # \process0~104_combout\) # !\process0~15575_combout\ & (!\process0~104_combout\ & \rndip~combout\(33))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cbc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(34),
	datab => \process0~15575_combout\,
	datac => \process0~104_combout\,
	datad => \rndip~combout\(33),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15837_combout\);

\process0~15840\ : cyclone_lcell
-- Equation(s):
-- \process0~15840_combout\ = \process0~104_combout\ & (\process0~15837_combout\ & \process0~15839_combout\ # !\process0~15837_combout\ & (\rndip~combout\(35))) # !\process0~104_combout\ & (\process0~15837_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15839_combout\,
	datab => \rndip~combout\(35),
	datac => \process0~104_combout\,
	datad => \process0~15837_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15840_combout\);

\process0~15841\ : cyclone_lcell
-- Equation(s):
-- \process0~15841_combout\ = \process0~216_combout\ & (\rndip~combout\(31) # \process0~15583_combout\) # !\process0~216_combout\ & (\rndip~combout\(29) & !\process0~15583_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(31),
	datab => \rndip~combout\(29),
	datac => \process0~216_combout\,
	datad => \process0~15583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15841_combout\);

\process0~15842\ : cyclone_lcell
-- Equation(s):
-- \process0~15842_combout\ = \process0~15841_combout\ & (\rndip~combout\(32) # !\process0~15583_combout\) # !\process0~15841_combout\ & \rndip~combout\(30) & (\process0~15583_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(30),
	datab => \process0~15841_combout\,
	datac => \rndip~combout\(32),
	datad => \process0~15583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15842_combout\);

\process0~15843\ : cyclone_lcell
-- Equation(s):
-- \process0~15843_combout\ = \process0~15586_combout\ & (\process0~15582_combout\ # \process0~15842_combout\) # !\process0~15586_combout\ & \rndip~combout\(27) & !\process0~15582_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cec2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(27),
	datab => \process0~15586_combout\,
	datac => \process0~15582_combout\,
	datad => \process0~15842_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15843_combout\);

\process0~15844\ : cyclone_lcell
-- Equation(s):
-- \process0~15844_combout\ = \process0~15582_combout\ & (\process0~15843_combout\ & \rndip~combout\(28) # !\process0~15843_combout\ & (\process0~15840_combout\)) # !\process0~15582_combout\ & (\process0~15843_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15582_combout\,
	datab => \rndip~combout\(28),
	datac => \process0~15840_combout\,
	datad => \process0~15843_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15844_combout\);

\process0~15845\ : cyclone_lcell
-- Equation(s):
-- \process0~15845_combout\ = \process0~15836_combout\ # \process0~332_combout\ & \process0~15844_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \process0~15836_combout\,
	datac => \process0~332_combout\,
	datad => \process0~15844_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15845_combout\);

\rndopt[17]\ : cyclone_lcell
-- Equation(s):
-- rndopt(17) = DFFEAS(\process0~15845_combout\ $ !\rndopt[16]~130\, GLOBAL(\en~combout\), VCC, , , , , , )
-- \rndopt[17]~131\ = CARRY(\process0~15845_combout\ & !\rndopt[16]~130\)
-- \rndopt[17]~131COUT1\ = CARRY(\process0~15845_combout\ & !\rndopt[16]~130\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \en~combout\,
	datab => \process0~15845_combout\,
	aclr => GND,
	cin => \rndopt[16]~130\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rndopt(17),
	cout0 => \rndopt[17]~131\,
	cout1 => \rndopt[17]~131COUT1\);

\process0~15847\ : cyclone_lcell
-- Equation(s):
-- \process0~15847_combout\ = \process0~15567_combout\ & (\process0~478_combout\ # \rndip~combout\(22)) # !\process0~15567_combout\ & \rndip~combout\(21) & !\process0~478_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cec2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(21),
	datab => \process0~15567_combout\,
	datac => \process0~478_combout\,
	datad => \rndip~combout\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15847_combout\);

\process0~15848\ : cyclone_lcell
-- Equation(s):
-- \process0~15848_combout\ = \process0~15569_combout\ & (\rndip~combout\(25) # \process0~390_combout\) # !\process0~15569_combout\ & (\rndip~combout\(24) & !\process0~390_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15569_combout\,
	datab => \rndip~combout\(25),
	datac => \rndip~combout\(24),
	datad => \process0~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15848_combout\);

\process0~15849\ : cyclone_lcell
-- Equation(s):
-- \process0~15849_combout\ = \process0~15848_combout\ & (\rndip~combout\(27) # !\process0~390_combout\) # !\process0~15848_combout\ & \rndip~combout\(26) & (\process0~390_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(26),
	datab => \rndip~combout\(27),
	datac => \process0~15848_combout\,
	datad => \process0~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15849_combout\);

\process0~15850\ : cyclone_lcell
-- Equation(s):
-- \process0~15850_combout\ = \process0~15847_combout\ & (\process0~15849_combout\ # !\process0~478_combout\) # !\process0~15847_combout\ & \rndip~combout\(23) & \process0~478_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec2c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(23),
	datab => \process0~15847_combout\,
	datac => \process0~478_combout\,
	datad => \process0~15849_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15850_combout\);

\process0~15846\ : cyclone_lcell
-- Equation(s):
-- \process0~15846_combout\ = \process0~15565_combout\ & (\rndip~combout\(19) # \process0~568_combout\) # !\process0~15565_combout\ & \rndip~combout\(18) & (!\process0~568_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15565_combout\,
	datab => \rndip~combout\(18),
	datac => \rndip~combout\(19),
	datad => \process0~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15846_combout\);

\process0~15851\ : cyclone_lcell
-- Equation(s):
-- \process0~15851_combout\ = \process0~568_combout\ & (\process0~15846_combout\ & (\process0~15850_combout\) # !\process0~15846_combout\ & \rndip~combout\(20)) # !\process0~568_combout\ & (\process0~15846_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~568_combout\,
	datab => \rndip~combout\(20),
	datac => \process0~15850_combout\,
	datad => \process0~15846_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15851_combout\);

\process0~15852\ : cyclone_lcell
-- Equation(s):
-- \process0~15852_combout\ = !\process0~332_combout\ & (\process0~628_combout\ & (\process0~15851_combout\) # !\process0~628_combout\ & \rndip~combout\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(17),
	datab => \process0~332_combout\,
	datac => \process0~628_combout\,
	datad => \process0~15851_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15852_combout\);

\process0~15853\ : cyclone_lcell
-- Equation(s):
-- \process0~15853_combout\ = \process0~216_combout\ & (\process0~15583_combout\) # !\process0~216_combout\ & (\process0~15583_combout\ & (\rndip~combout\(31)) # !\process0~15583_combout\ & \rndip~combout\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2c2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(30),
	datab => \process0~216_combout\,
	datac => \process0~15583_combout\,
	datad => \rndip~combout\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15853_combout\);

\process0~15854\ : cyclone_lcell
-- Equation(s):
-- \process0~15854_combout\ = \process0~216_combout\ & (\process0~15853_combout\ & (\rndip~combout\(33)) # !\process0~15853_combout\ & \rndip~combout\(32)) # !\process0~216_combout\ & (\process0~15853_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(32),
	datab => \process0~216_combout\,
	datac => \rndip~combout\(33),
	datad => \process0~15853_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15854_combout\);

\process0~15855\ : cyclone_lcell
-- Equation(s):
-- \process0~15855_combout\ = \process0~104_combout\ & (\rndip~combout\(36) # \process0~15575_combout\) # !\process0~104_combout\ & (!\process0~15575_combout\ & \rndip~combout\(34))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ada8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~104_combout\,
	datab => \rndip~combout\(36),
	datac => \process0~15575_combout\,
	datad => \rndip~combout\(34),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15855_combout\);

\process0~15856\ : cyclone_lcell
-- Equation(s):
-- \process0~15856_combout\ = \process0~15577_combout\ & \rndip~combout\(38) & (!\process0~15578_combout\) # !\process0~15577_combout\ & (\rndip~combout\(39) # \process0~15578_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(38),
	datab => \rndip~combout\(39),
	datac => \process0~15577_combout\,
	datad => \process0~15578_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15856_combout\);

\process0~15857\ : cyclone_lcell
-- Equation(s):
-- \process0~15857_combout\ = \process0~15578_combout\ & (\process0~15856_combout\ & (\rndip~combout\(40)) # !\process0~15856_combout\ & \rndip~combout\(37)) # !\process0~15578_combout\ & (\process0~15856_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(37),
	datab => \process0~15578_combout\,
	datac => \rndip~combout\(40),
	datad => \process0~15856_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15857_combout\);

\process0~15858\ : cyclone_lcell
-- Equation(s):
-- \process0~15858_combout\ = \process0~15575_combout\ & (\process0~15855_combout\ & (\process0~15857_combout\) # !\process0~15855_combout\ & \rndip~combout\(35)) # !\process0~15575_combout\ & \process0~15855_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15575_combout\,
	datab => \process0~15855_combout\,
	datac => \rndip~combout\(35),
	datad => \process0~15857_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15858_combout\);

\process0~15859\ : cyclone_lcell
-- Equation(s):
-- \process0~15859_combout\ = \process0~15586_combout\ & (\process0~15582_combout\) # !\process0~15586_combout\ & (\process0~15582_combout\ & \process0~15858_combout\ # !\process0~15582_combout\ & (\rndip~combout\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15858_combout\,
	datab => \rndip~combout\(28),
	datac => \process0~15586_combout\,
	datad => \process0~15582_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15859_combout\);

\process0~15860\ : cyclone_lcell
-- Equation(s):
-- \process0~15860_combout\ = \process0~15586_combout\ & (\process0~15859_combout\ & (\rndip~combout\(29)) # !\process0~15859_combout\ & \process0~15854_combout\) # !\process0~15586_combout\ & (\process0~15859_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15854_combout\,
	datab => \rndip~combout\(29),
	datac => \process0~15586_combout\,
	datad => \process0~15859_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15860_combout\);

\process0~15861\ : cyclone_lcell
-- Equation(s):
-- \process0~15861_combout\ = \process0~15852_combout\ # \process0~332_combout\ & \process0~15860_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \process0~15852_combout\,
	datac => \process0~332_combout\,
	datad => \process0~15860_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15861_combout\);

\rndopt[18]\ : cyclone_lcell
-- Equation(s):
-- rndopt(18) = DFFEAS(\process0~15861_combout\ $ ((!\rndopt[16]~130\ & \rndopt[17]~131\) # (\rndopt[16]~130\ & \rndopt[17]~131COUT1\)), GLOBAL(\en~combout\), VCC, , , , , , )
-- \rndopt[18]~132\ = CARRY(!\rndopt[17]~131\ # !\process0~15861_combout\)
-- \rndopt[18]~132COUT1\ = CARRY(!\rndopt[17]~131COUT1\ # !\process0~15861_combout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \en~combout\,
	dataa => \process0~15861_combout\,
	aclr => GND,
	cin => \rndopt[16]~130\,
	cin0 => \rndopt[17]~131\,
	cin1 => \rndopt[17]~131COUT1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rndopt(18),
	cout0 => \rndopt[18]~132\,
	cout1 => \rndopt[18]~132COUT1\);

\process0~15864\ : cyclone_lcell
-- Equation(s):
-- \process0~15864_combout\ = \process0~15569_combout\ & (\process0~390_combout\) # !\process0~15569_combout\ & (\process0~390_combout\ & (\rndip~combout\(27)) # !\process0~390_combout\ & \rndip~combout\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15569_combout\,
	datab => \rndip~combout\(25),
	datac => \rndip~combout\(27),
	datad => \process0~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15864_combout\);

\process0~15865\ : cyclone_lcell
-- Equation(s):
-- \process0~15865_combout\ = \process0~15569_combout\ & (\process0~15864_combout\ & \rndip~combout\(28) # !\process0~15864_combout\ & (\rndip~combout\(26))) # !\process0~15569_combout\ & (\process0~15864_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15569_combout\,
	datab => \rndip~combout\(28),
	datac => \rndip~combout\(26),
	datad => \process0~15864_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15865_combout\);

\process0~15863\ : cyclone_lcell
-- Equation(s):
-- \process0~15863_combout\ = \process0~478_combout\ & (\process0~15567_combout\ # \rndip~combout\(24)) # !\process0~478_combout\ & \rndip~combout\(22) & !\process0~15567_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aea4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~478_combout\,
	datab => \rndip~combout\(22),
	datac => \process0~15567_combout\,
	datad => \rndip~combout\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15863_combout\);

\process0~15866\ : cyclone_lcell
-- Equation(s):
-- \process0~15866_combout\ = \process0~15567_combout\ & (\process0~15863_combout\ & (\process0~15865_combout\) # !\process0~15863_combout\ & \rndip~combout\(23)) # !\process0~15567_combout\ & (\process0~15863_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(23),
	datab => \process0~15567_combout\,
	datac => \process0~15865_combout\,
	datad => \process0~15863_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15866_combout\);

\process0~15862\ : cyclone_lcell
-- Equation(s):
-- \process0~15862_combout\ = \process0~15565_combout\ & (\process0~568_combout\) # !\process0~15565_combout\ & (\process0~568_combout\ & \rndip~combout\(21) # !\process0~568_combout\ & (\rndip~combout\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15565_combout\,
	datab => \rndip~combout\(21),
	datac => \rndip~combout\(19),
	datad => \process0~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15862_combout\);

\process0~15867\ : cyclone_lcell
-- Equation(s):
-- \process0~15867_combout\ = \process0~15565_combout\ & (\process0~15862_combout\ & \process0~15866_combout\ # !\process0~15862_combout\ & (\rndip~combout\(20))) # !\process0~15565_combout\ & (\process0~15862_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15565_combout\,
	datab => \process0~15866_combout\,
	datac => \rndip~combout\(20),
	datad => \process0~15862_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15867_combout\);

\process0~15868\ : cyclone_lcell
-- Equation(s):
-- \process0~15868_combout\ = !\process0~332_combout\ & (\process0~628_combout\ & (\process0~15867_combout\) # !\process0~628_combout\ & \rndip~combout\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5410",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~332_combout\,
	datab => \process0~628_combout\,
	datac => \rndip~combout\(18),
	datad => \process0~15867_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15868_combout\);

\process0~15873\ : cyclone_lcell
-- Equation(s):
-- \process0~15873_combout\ = \process0~216_combout\ & (\rndip~combout\(33) # \process0~15583_combout\) # !\process0~216_combout\ & (\rndip~combout\(31) & !\process0~15583_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(33),
	datab => \rndip~combout\(31),
	datac => \process0~216_combout\,
	datad => \process0~15583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15873_combout\);

\process0~15874\ : cyclone_lcell
-- Equation(s):
-- \process0~15874_combout\ = \process0~15873_combout\ & (\rndip~combout\(34) # !\process0~15583_combout\) # !\process0~15873_combout\ & (\rndip~combout\(32) & \process0~15583_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(34),
	datab => \rndip~combout\(32),
	datac => \process0~15873_combout\,
	datad => \process0~15583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15874_combout\);

\process0~15875\ : cyclone_lcell
-- Equation(s):
-- \process0~15875_combout\ = \process0~15582_combout\ & (\process0~15586_combout\) # !\process0~15582_combout\ & (\process0~15586_combout\ & (\process0~15874_combout\) # !\process0~15586_combout\ & \rndip~combout\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15582_combout\,
	datab => \rndip~combout\(29),
	datac => \process0~15586_combout\,
	datad => \process0~15874_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15875_combout\);

\process0~15869\ : cyclone_lcell
-- Equation(s):
-- \process0~15869_combout\ = \process0~15575_combout\ & (\rndip~combout\(36) # \process0~104_combout\) # !\process0~15575_combout\ & \rndip~combout\(35) & (!\process0~104_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(35),
	datab => \rndip~combout\(36),
	datac => \process0~15575_combout\,
	datad => \process0~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15869_combout\);

\process0~15870\ : cyclone_lcell
-- Equation(s):
-- \process0~15870_combout\ = \process0~15577_combout\ & (\process0~15578_combout\ & \rndip~combout\(38) # !\process0~15578_combout\ & (\rndip~combout\(39))) # !\process0~15577_combout\ & (\process0~15578_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(38),
	datab => \rndip~combout\(39),
	datac => \process0~15577_combout\,
	datad => \process0~15578_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15870_combout\);

\process0~15871\ : cyclone_lcell
-- Equation(s):
-- \process0~15871_combout\ = \process0~15577_combout\ & (\process0~15870_combout\) # !\process0~15577_combout\ & (\process0~15870_combout\ & \rndip~combout\(41) # !\process0~15870_combout\ & (\rndip~combout\(40)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(41),
	datab => \process0~15577_combout\,
	datac => \rndip~combout\(40),
	datad => \process0~15870_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15871_combout\);

\process0~15872\ : cyclone_lcell
-- Equation(s):
-- \process0~15872_combout\ = \process0~15869_combout\ & (\process0~15871_combout\ # !\process0~104_combout\) # !\process0~15869_combout\ & \rndip~combout\(37) & (\process0~104_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(37),
	datab => \process0~15869_combout\,
	datac => \process0~15871_combout\,
	datad => \process0~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15872_combout\);

\process0~15876\ : cyclone_lcell
-- Equation(s):
-- \process0~15876_combout\ = \process0~15875_combout\ & (\rndip~combout\(30) # !\process0~15582_combout\) # !\process0~15875_combout\ & (\process0~15582_combout\ & \process0~15872_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bc8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(30),
	datab => \process0~15875_combout\,
	datac => \process0~15582_combout\,
	datad => \process0~15872_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15876_combout\);

\process0~15877\ : cyclone_lcell
-- Equation(s):
-- \process0~15877_combout\ = \process0~15868_combout\ # \process0~15876_combout\ & \process0~332_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \process0~15868_combout\,
	datac => \process0~15876_combout\,
	datad => \process0~332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15877_combout\);

\rndopt[19]\ : cyclone_lcell
-- Equation(s):
-- rndopt(19) = DFFEAS(\process0~15877_combout\ $ !(!\rndopt[16]~130\ & \rndopt[18]~132\) # (\rndopt[16]~130\ & \rndopt[18]~132COUT1\), GLOBAL(\en~combout\), VCC, , , , , , )
-- \rndopt[19]~133\ = CARRY(\process0~15877_combout\ & !\rndopt[18]~132\)
-- \rndopt[19]~133COUT1\ = CARRY(\process0~15877_combout\ & !\rndopt[18]~132COUT1\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \en~combout\,
	datab => \process0~15877_combout\,
	aclr => GND,
	cin => \rndopt[16]~130\,
	cin0 => \rndopt[18]~132\,
	cin1 => \rndopt[18]~132COUT1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rndopt(19),
	cout0 => \rndopt[19]~133\,
	cout1 => \rndopt[19]~133COUT1\);

\process0~15880\ : cyclone_lcell
-- Equation(s):
-- \process0~15880_combout\ = \process0~15569_combout\ & (\process0~390_combout\) # !\process0~15569_combout\ & (\process0~390_combout\ & \rndip~combout\(28) # !\process0~390_combout\ & (\rndip~combout\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15569_combout\,
	datab => \rndip~combout\(28),
	datac => \rndip~combout\(26),
	datad => \process0~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15880_combout\);

\process0~15881\ : cyclone_lcell
-- Equation(s):
-- \process0~15881_combout\ = \process0~15569_combout\ & (\process0~15880_combout\ & \rndip~combout\(29) # !\process0~15880_combout\ & (\rndip~combout\(27))) # !\process0~15569_combout\ & (\process0~15880_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15569_combout\,
	datab => \rndip~combout\(29),
	datac => \rndip~combout\(27),
	datad => \process0~15880_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15881_combout\);

\process0~15879\ : cyclone_lcell
-- Equation(s):
-- \process0~15879_combout\ = \process0~15567_combout\ & (\process0~478_combout\ # \rndip~combout\(24)) # !\process0~15567_combout\ & \rndip~combout\(23) & !\process0~478_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cec2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(23),
	datab => \process0~15567_combout\,
	datac => \process0~478_combout\,
	datad => \rndip~combout\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15879_combout\);

\process0~15882\ : cyclone_lcell
-- Equation(s):
-- \process0~15882_combout\ = \process0~478_combout\ & (\process0~15879_combout\ & (\process0~15881_combout\) # !\process0~15879_combout\ & \rndip~combout\(25)) # !\process0~478_combout\ & (\process0~15879_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(25),
	datab => \process0~15881_combout\,
	datac => \process0~478_combout\,
	datad => \process0~15879_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15882_combout\);

\process0~15878\ : cyclone_lcell
-- Equation(s):
-- \process0~15878_combout\ = \process0~15565_combout\ & (\process0~568_combout\) # !\process0~15565_combout\ & (\process0~568_combout\ & \rndip~combout\(22) # !\process0~568_combout\ & (\rndip~combout\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(22),
	datab => \rndip~combout\(20),
	datac => \process0~15565_combout\,
	datad => \process0~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15878_combout\);

\process0~15883\ : cyclone_lcell
-- Equation(s):
-- \process0~15883_combout\ = \process0~15565_combout\ & (\process0~15878_combout\ & \process0~15882_combout\ # !\process0~15878_combout\ & (\rndip~combout\(21))) # !\process0~15565_combout\ & (\process0~15878_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15882_combout\,
	datab => \process0~15565_combout\,
	datac => \rndip~combout\(21),
	datad => \process0~15878_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15883_combout\);

\process0~15884\ : cyclone_lcell
-- Equation(s):
-- \process0~15884_combout\ = !\process0~332_combout\ & (\process0~628_combout\ & (\process0~15883_combout\) # !\process0~628_combout\ & \rndip~combout\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5044",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~332_combout\,
	datab => \rndip~combout\(19),
	datac => \process0~15883_combout\,
	datad => \process0~628_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15884_combout\);

\process0~15885\ : cyclone_lcell
-- Equation(s):
-- \process0~15885_combout\ = \process0~15583_combout\ & (\process0~216_combout\) # !\process0~15583_combout\ & (\process0~216_combout\ & (\rndip~combout\(34)) # !\process0~216_combout\ & \rndip~combout\(32))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(32),
	datab => \process0~15583_combout\,
	datac => \rndip~combout\(34),
	datad => \process0~216_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15885_combout\);

\process0~15886\ : cyclone_lcell
-- Equation(s):
-- \process0~15886_combout\ = \process0~15583_combout\ & (\process0~15885_combout\ & \rndip~combout\(35) # !\process0~15885_combout\ & (\rndip~combout\(33))) # !\process0~15583_combout\ & (\process0~15885_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(35),
	datab => \process0~15583_combout\,
	datac => \rndip~combout\(33),
	datad => \process0~15885_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15886_combout\);

\process0~15887\ : cyclone_lcell
-- Equation(s):
-- \process0~15887_combout\ = \process0~104_combout\ & (\rndip~combout\(38) # \process0~15575_combout\) # !\process0~104_combout\ & (\rndip~combout\(36) & !\process0~15575_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(38),
	datab => \rndip~combout\(36),
	datac => \process0~104_combout\,
	datad => \process0~15575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15887_combout\);

\process0~15888\ : cyclone_lcell
-- Equation(s):
-- \process0~15888_combout\ = \process0~15577_combout\ & !\process0~15578_combout\ & \rndip~combout\(40) # !\process0~15577_combout\ & (\process0~15578_combout\ # \rndip~combout\(41))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7564",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15577_combout\,
	datab => \process0~15578_combout\,
	datac => \rndip~combout\(40),
	datad => \rndip~combout\(41),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15888_combout\);

\process0~15889\ : cyclone_lcell
-- Equation(s):
-- \process0~15889_combout\ = \process0~15888_combout\ & (\rndip~combout\(42) # !\process0~15578_combout\) # !\process0~15888_combout\ & \rndip~combout\(39) & (\process0~15578_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(39),
	datab => \process0~15888_combout\,
	datac => \rndip~combout\(42),
	datad => \process0~15578_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15889_combout\);

\process0~15890\ : cyclone_lcell
-- Equation(s):
-- \process0~15890_combout\ = \process0~15887_combout\ & (\process0~15889_combout\ # !\process0~15575_combout\) # !\process0~15887_combout\ & \process0~15575_combout\ & \rndip~combout\(37)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15887_combout\,
	datab => \process0~15575_combout\,
	datac => \rndip~combout\(37),
	datad => \process0~15889_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15890_combout\);

\process0~15891\ : cyclone_lcell
-- Equation(s):
-- \process0~15891_combout\ = \process0~15582_combout\ & (\process0~15890_combout\ # \process0~15586_combout\) # !\process0~15582_combout\ & \rndip~combout\(30) & (!\process0~15586_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(30),
	datab => \process0~15890_combout\,
	datac => \process0~15582_combout\,
	datad => \process0~15586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15891_combout\);

\process0~15892\ : cyclone_lcell
-- Equation(s):
-- \process0~15892_combout\ = \process0~15586_combout\ & (\process0~15891_combout\ & \rndip~combout\(31) # !\process0~15891_combout\ & (\process0~15886_combout\)) # !\process0~15586_combout\ & (\process0~15891_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15586_combout\,
	datab => \rndip~combout\(31),
	datac => \process0~15886_combout\,
	datad => \process0~15891_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15892_combout\);

\process0~15893\ : cyclone_lcell
-- Equation(s):
-- \process0~15893_combout\ = \process0~15884_combout\ # \process0~332_combout\ & \process0~15892_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~332_combout\,
	datac => \process0~15884_combout\,
	datad => \process0~15892_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15893_combout\);

\rndopt[20]\ : cyclone_lcell
-- Equation(s):
-- rndopt(20) = DFFEAS(\process0~15893_combout\ $ ((!\rndopt[16]~130\ & \rndopt[19]~133\) # (\rndopt[16]~130\ & \rndopt[19]~133COUT1\)), GLOBAL(\en~combout\), VCC, , , , , , )
-- \rndopt[20]~134\ = CARRY(!\rndopt[19]~133\ # !\process0~15893_combout\)
-- \rndopt[20]~134COUT1\ = CARRY(!\rndopt[19]~133COUT1\ # !\process0~15893_combout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \en~combout\,
	dataa => \process0~15893_combout\,
	aclr => GND,
	cin => \rndopt[16]~130\,
	cin0 => \rndopt[19]~133\,
	cin1 => \rndopt[19]~133COUT1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rndopt(20),
	cout0 => \rndopt[20]~134\,
	cout1 => \rndopt[20]~134COUT1\);

\process0~15902\ : cyclone_lcell
-- Equation(s):
-- \process0~15902_combout\ = \process0~15577_combout\ & \rndip~combout\(41) & (!\process0~15578_combout\) # !\process0~15577_combout\ & (\rndip~combout\(42) # \process0~15578_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(41),
	datab => \rndip~combout\(42),
	datac => \process0~15577_combout\,
	datad => \process0~15578_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15902_combout\);

\process0~15903\ : cyclone_lcell
-- Equation(s):
-- \process0~15903_combout\ = \process0~15578_combout\ & (\process0~15902_combout\ & (\rndip~combout\(43)) # !\process0~15902_combout\ & \rndip~combout\(40)) # !\process0~15578_combout\ & (\process0~15902_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f858",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15578_combout\,
	datab => \rndip~combout\(40),
	datac => \process0~15902_combout\,
	datad => \rndip~combout\(43),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15903_combout\);

\process0~15901\ : cyclone_lcell
-- Equation(s):
-- \process0~15901_combout\ = \process0~104_combout\ & (\rndip~combout\(39) # \process0~15575_combout\) # !\process0~104_combout\ & \rndip~combout\(37) & (!\process0~15575_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(37),
	datab => \process0~104_combout\,
	datac => \rndip~combout\(39),
	datad => \process0~15575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15901_combout\);

\process0~15904\ : cyclone_lcell
-- Equation(s):
-- \process0~15904_combout\ = \process0~15575_combout\ & (\process0~15901_combout\ & (\process0~15903_combout\) # !\process0~15901_combout\ & \rndip~combout\(38)) # !\process0~15575_combout\ & (\process0~15901_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(38),
	datab => \process0~15575_combout\,
	datac => \process0~15903_combout\,
	datad => \process0~15901_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15904_combout\);

\process0~15905\ : cyclone_lcell
-- Equation(s):
-- \process0~15905_combout\ = \process0~15583_combout\ & (\process0~216_combout\) # !\process0~15583_combout\ & (\process0~216_combout\ & (\rndip~combout\(35)) # !\process0~216_combout\ & \rndip~combout\(33))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(33),
	datab => \rndip~combout\(35),
	datac => \process0~15583_combout\,
	datad => \process0~216_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15905_combout\);

\process0~15906\ : cyclone_lcell
-- Equation(s):
-- \process0~15906_combout\ = \process0~15583_combout\ & (\process0~15905_combout\ & (\rndip~combout\(36)) # !\process0~15905_combout\ & \rndip~combout\(34)) # !\process0~15583_combout\ & (\process0~15905_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(34),
	datab => \rndip~combout\(36),
	datac => \process0~15583_combout\,
	datad => \process0~15905_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15906_combout\);

\process0~15907\ : cyclone_lcell
-- Equation(s):
-- \process0~15907_combout\ = \process0~15582_combout\ & (\process0~15586_combout\) # !\process0~15582_combout\ & (\process0~15586_combout\ & (\process0~15906_combout\) # !\process0~15586_combout\ & \rndip~combout\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15582_combout\,
	datab => \rndip~combout\(31),
	datac => \process0~15586_combout\,
	datad => \process0~15906_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15907_combout\);

\process0~15908\ : cyclone_lcell
-- Equation(s):
-- \process0~15908_combout\ = \process0~15582_combout\ & (\process0~15907_combout\ & (\rndip~combout\(32)) # !\process0~15907_combout\ & \process0~15904_combout\) # !\process0~15582_combout\ & (\process0~15907_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15904_combout\,
	datab => \rndip~combout\(32),
	datac => \process0~15582_combout\,
	datad => \process0~15907_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15908_combout\);

\process0~15896\ : cyclone_lcell
-- Equation(s):
-- \process0~15896_combout\ = \process0~15569_combout\ & (\process0~390_combout\) # !\process0~15569_combout\ & (\process0~390_combout\ & \rndip~combout\(29) # !\process0~390_combout\ & (\rndip~combout\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15569_combout\,
	datab => \rndip~combout\(29),
	datac => \rndip~combout\(27),
	datad => \process0~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15896_combout\);

\process0~15897\ : cyclone_lcell
-- Equation(s):
-- \process0~15897_combout\ = \process0~15896_combout\ & (\rndip~combout\(30) # !\process0~15569_combout\) # !\process0~15896_combout\ & (\process0~15569_combout\ & \rndip~combout\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "da8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15896_combout\,
	datab => \rndip~combout\(30),
	datac => \process0~15569_combout\,
	datad => \rndip~combout\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15897_combout\);

\process0~15895\ : cyclone_lcell
-- Equation(s):
-- \process0~15895_combout\ = \process0~15567_combout\ & (\process0~478_combout\) # !\process0~15567_combout\ & (\process0~478_combout\ & \rndip~combout\(26) # !\process0~478_combout\ & (\rndip~combout\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e3e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(26),
	datab => \process0~15567_combout\,
	datac => \process0~478_combout\,
	datad => \rndip~combout\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15895_combout\);

\process0~15898\ : cyclone_lcell
-- Equation(s):
-- \process0~15898_combout\ = \process0~15567_combout\ & (\process0~15895_combout\ & (\process0~15897_combout\) # !\process0~15895_combout\ & \rndip~combout\(25)) # !\process0~15567_combout\ & (\process0~15895_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(25),
	datab => \process0~15567_combout\,
	datac => \process0~15897_combout\,
	datad => \process0~15895_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15898_combout\);

\process0~15894\ : cyclone_lcell
-- Equation(s):
-- \process0~15894_combout\ = \process0~15565_combout\ & (\process0~568_combout\) # !\process0~15565_combout\ & (\process0~568_combout\ & (\rndip~combout\(23)) # !\process0~568_combout\ & \rndip~combout\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15565_combout\,
	datab => \rndip~combout\(21),
	datac => \rndip~combout\(23),
	datad => \process0~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15894_combout\);

\process0~15899\ : cyclone_lcell
-- Equation(s):
-- \process0~15899_combout\ = \process0~15565_combout\ & (\process0~15894_combout\ & \process0~15898_combout\ # !\process0~15894_combout\ & (\rndip~combout\(22))) # !\process0~15565_combout\ & (\process0~15894_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dad0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15565_combout\,
	datab => \process0~15898_combout\,
	datac => \process0~15894_combout\,
	datad => \rndip~combout\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15899_combout\);

\process0~15900\ : cyclone_lcell
-- Equation(s):
-- \process0~15900_combout\ = !\process0~332_combout\ & (\process0~628_combout\ & (\process0~15899_combout\) # !\process0~628_combout\ & \rndip~combout\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(20),
	datab => \process0~628_combout\,
	datac => \process0~15899_combout\,
	datad => \process0~332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15900_combout\);

\process0~15909\ : cyclone_lcell
-- Equation(s):
-- \process0~15909_combout\ = \process0~15900_combout\ # \process0~332_combout\ & \process0~15908_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~332_combout\,
	datac => \process0~15908_combout\,
	datad => \process0~15900_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15909_combout\);

\rndopt[21]\ : cyclone_lcell
-- Equation(s):
-- rndopt(21) = DFFEAS(\process0~15909_combout\ $ (!(!\rndopt[16]~130\ & \rndopt[20]~134\) # (\rndopt[16]~130\ & \rndopt[20]~134COUT1\)), GLOBAL(\en~combout\), VCC, , , , , , )
-- \rndopt[21]~135\ = CARRY(\process0~15909_combout\ & (!\rndopt[20]~134COUT1\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \en~combout\,
	dataa => \process0~15909_combout\,
	aclr => GND,
	cin => \rndopt[16]~130\,
	cin0 => \rndopt[20]~134\,
	cin1 => \rndopt[20]~134COUT1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rndopt(21),
	cout => \rndopt[21]~135\);

\process0~15918\ : cyclone_lcell
-- Equation(s):
-- \process0~15918_combout\ = \process0~538_combout\ # \rndip~combout\(25) & (\rndip~combout\(24)) # !\rndip~combout\(25) & \rndip~combout\(22) & !\rndip~combout\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(22),
	datab => \rndip~combout\(25),
	datac => \rndip~combout\(24),
	datad => \process0~538_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15918_combout\);

\process0~15919\ : cyclone_lcell
-- Equation(s):
-- \process0~15919_combout\ = \process0~448_combout\ # \rndip~combout\(28) & (\rndip~combout\(27)) # !\rndip~combout\(28) & \rndip~combout\(25) & !\rndip~combout\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(25),
	datab => \rndip~combout\(28),
	datac => \rndip~combout\(27),
	datad => \process0~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15919_combout\);

\process0~15920\ : cyclone_lcell
-- Equation(s):
-- \process0~15920_combout\ = \process0~361_combout\ # \rndip~combout\(30) & (\rndip~combout\(31)) # !\rndip~combout\(30) & \rndip~combout\(28) & !\rndip~combout\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffa4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(30),
	datab => \rndip~combout\(28),
	datac => \rndip~combout\(31),
	datad => \process0~361_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15920_combout\);

\process0~15921\ : cyclone_lcell
-- Equation(s):
-- \process0~15921_combout\ = \process0~15569_combout\ & (\process0~15920_combout\ & \rndip~combout\(31) # !\process0~15920_combout\ & (\rndip~combout\(29))) # !\process0~15569_combout\ & (\process0~15920_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15569_combout\,
	datab => \rndip~combout\(31),
	datac => \rndip~combout\(29),
	datad => \process0~15920_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15921_combout\);

\process0~15922\ : cyclone_lcell
-- Equation(s):
-- \process0~15922_combout\ = \process0~15567_combout\ & (\process0~15919_combout\ & \process0~15921_combout\ # !\process0~15919_combout\ & (\rndip~combout\(26))) # !\process0~15567_combout\ & \process0~15919_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15567_combout\,
	datab => \process0~15919_combout\,
	datac => \process0~15921_combout\,
	datad => \rndip~combout\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15922_combout\);

\process0~15923\ : cyclone_lcell
-- Equation(s):
-- \process0~15923_combout\ = \process0~15565_combout\ & (\process0~15918_combout\ & (\process0~15922_combout\) # !\process0~15918_combout\ & \rndip~combout\(23)) # !\process0~15565_combout\ & \process0~15918_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15565_combout\,
	datab => \process0~15918_combout\,
	datac => \rndip~combout\(23),
	datad => \process0~15922_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15923_combout\);

\process0~15924\ : cyclone_lcell
-- Equation(s):
-- \process0~15924_combout\ = \process0~628_combout\ & \process0~15923_combout\ # !\process0~628_combout\ & (\rndip~combout\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15923_combout\,
	datab => \process0~628_combout\,
	datac => \rndip~combout\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15924_combout\);

\process0~15913\ : cyclone_lcell
-- Equation(s):
-- \process0~15913_combout\ = \rndip~combout\(45) # \rndip~combout\(43) & (\rndip~combout\(42) # \rndip~combout\(44))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(45),
	datab => \rndip~combout\(42),
	datac => \rndip~combout\(44),
	datad => \rndip~combout\(43),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15913_combout\);

\process0~15914\ : cyclone_lcell
-- Equation(s):
-- \process0~15914_combout\ = \process0~15578_combout\ & (\process0~15913_combout\ & (\rndip~combout\(44)) # !\process0~15913_combout\ & \rndip~combout\(41)) # !\process0~15578_combout\ & (\process0~15913_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(41),
	datab => \process0~15578_combout\,
	datac => \rndip~combout\(44),
	datad => \process0~15913_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15914_combout\);

\process0~15912\ : cyclone_lcell
-- Equation(s):
-- \process0~15912_combout\ = \rndip~combout\(41) & \rndip~combout\(40) # !\rndip~combout\(41) & !\rndip~combout\(40) & \rndip~combout\(38) # !\process0~15543_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "98ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(41),
	datab => \rndip~combout\(40),
	datac => \rndip~combout\(38),
	datad => \process0~15543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15912_combout\);

\process0~15915\ : cyclone_lcell
-- Equation(s):
-- \process0~15915_combout\ = \process0~15912_combout\ & (\process0~15914_combout\ # !\process0~15575_combout\) # !\process0~15912_combout\ & \rndip~combout\(39) & (\process0~15575_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(39),
	datab => \process0~15914_combout\,
	datac => \process0~15912_combout\,
	datad => \process0~15575_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15915_combout\);

\process0~15916\ : cyclone_lcell
-- Equation(s):
-- \process0~15916_combout\ = \process0~15586_combout\ & (\process0~15582_combout\) # !\process0~15586_combout\ & (\process0~15582_combout\ & (\process0~15915_combout\) # !\process0~15582_combout\ & \rndip~combout\(32))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15586_combout\,
	datab => \rndip~combout\(32),
	datac => \process0~15582_combout\,
	datad => \process0~15915_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15916_combout\);

\process0~188\ : cyclone_lcell
-- Equation(s):
-- \process0~188_combout\ = \rndip~combout\(38) # \process0~160_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rndip~combout\(38),
	datac => \process0~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~188_combout\);

\process0~15910\ : cyclone_lcell
-- Equation(s):
-- \process0~15910_combout\ = \process0~188_combout\ # \rndip~combout\(36) & (\rndip~combout\(37)) # !\rndip~combout\(36) & \rndip~combout\(34) & !\rndip~combout\(37)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcce",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(34),
	datab => \process0~188_combout\,
	datac => \rndip~combout\(36),
	datad => \rndip~combout\(37),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15910_combout\);

\process0~15911\ : cyclone_lcell
-- Equation(s):
-- \process0~15911_combout\ = \process0~15910_combout\ & (\rndip~combout\(37) # !\process0~15583_combout\) # !\process0~15910_combout\ & \rndip~combout\(35) & \process0~15583_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec2c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(35),
	datab => \process0~15910_combout\,
	datac => \process0~15583_combout\,
	datad => \rndip~combout\(37),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15911_combout\);

\process0~15917\ : cyclone_lcell
-- Equation(s):
-- \process0~15917_combout\ = \process0~15916_combout\ & (\rndip~combout\(33) # !\process0~15586_combout\) # !\process0~15916_combout\ & \process0~15911_combout\ & (\process0~15586_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15916_combout\,
	datab => \process0~15911_combout\,
	datac => \rndip~combout\(33),
	datad => \process0~15586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15917_combout\);

\process0~15925\ : cyclone_lcell
-- Equation(s):
-- \process0~15925_combout\ = \process0~332_combout\ & (\process0~15917_combout\) # !\process0~332_combout\ & \process0~15924_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \process0~15924_combout\,
	datac => \process0~332_combout\,
	datad => \process0~15917_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15925_combout\);

\rndopt[22]\ : cyclone_lcell
-- Equation(s):
-- rndopt(22) = DFFEAS(\process0~15925_combout\ $ (\rndopt[21]~135\), GLOBAL(\en~combout\), VCC, , , , , , )
-- \rndopt[22]~136\ = CARRY(!\rndopt[21]~135\ # !\process0~15925_combout\)
-- \rndopt[22]~136COUT1\ = CARRY(!\rndopt[21]~135\ # !\process0~15925_combout\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \en~combout\,
	dataa => \process0~15925_combout\,
	aclr => GND,
	cin => \rndopt[21]~135\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rndopt(22),
	cout0 => \rndopt[22]~136\,
	cout1 => \rndopt[22]~136COUT1\);

\process0~15928\ : cyclone_lcell
-- Equation(s):
-- \process0~15928_combout\ = !\rndip~combout\(28) & !\rndip~combout\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \rndip~combout\(28),
	datad => \rndip~combout\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15928_combout\);

\process0~15930\ : cyclone_lcell
-- Equation(s):
-- \process0~15930_combout\ = !\rndip~combout\(30) & !\rndip~combout\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0303",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rndip~combout\(30),
	datac => \rndip~combout\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15930_combout\);

\process0~15929\ : cyclone_lcell
-- Equation(s):
-- \process0~15929_combout\ = !\rndip~combout\(32) & !\rndip~combout\(33)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0303",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rndip~combout\(32),
	datac => \rndip~combout\(33),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15929_combout\);

\process0~15931\ : cyclone_lcell
-- Equation(s):
-- \process0~15931_combout\ = !\rndip~combout\(38) & (!\rndip~combout\(39))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(38),
	datac => \rndip~combout\(39),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15931_combout\);

\process0~15932\ : cyclone_lcell
-- Equation(s):
-- \process0~15932_combout\ = !\process0~15931_combout\ # !\process0~15929_combout\ # !\process0~15930_combout\ # !\process0~15928_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15928_combout\,
	datab => \process0~15930_combout\,
	datac => \process0~15929_combout\,
	datad => \process0~15931_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15932_combout\);

\process0~15933\ : cyclone_lcell
-- Equation(s):
-- \process0~15933_combout\ = !\rndip~combout\(40) & !\rndip~combout\(41)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \rndip~combout\(40),
	datad => \rndip~combout\(41),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15933_combout\);

\process0~15934\ : cyclone_lcell
-- Equation(s):
-- \process0~15934_combout\ = !\rndip~combout\(27) & !\rndip~combout\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \rndip~combout\(27),
	datad => \rndip~combout\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15934_combout\);

\process0~15935\ : cyclone_lcell
-- Equation(s):
-- \process0~15935_combout\ = \process0~15932_combout\ # !\process0~15934_combout\ # !\process0~15933_combout\ # !\process0~15543_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15932_combout\,
	datab => \process0~15543_combout\,
	datac => \process0~15933_combout\,
	datad => \process0~15934_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15935_combout\);

\process0~15926\ : cyclone_lcell
-- Equation(s):
-- \process0~15926_combout\ = !\rndip~combout\(25) & (!\rndip~combout\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rndip~combout\(25),
	datad => \rndip~combout\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15926_combout\);

\process0~15927\ : cyclone_lcell
-- Equation(s):
-- \process0~15927_combout\ = !\process0~538_combout\ & (\rndip~combout\(23) # \rndip~combout\(22) # !\process0~15926_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00fb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(23),
	datab => \process0~15926_combout\,
	datac => \rndip~combout\(22),
	datad => \process0~538_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15927_combout\);

\process0~15936\ : cyclone_lcell
-- Equation(s):
-- \process0~15936_combout\ = !\rndip~combout\(34) & (!\rndip~combout\(36) & !\rndip~combout\(35))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(34),
	datac => \rndip~combout\(36),
	datad => \rndip~combout\(35),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15936_combout\);

\process0~15937\ : cyclone_lcell
-- Equation(s):
-- \process0~15937_combout\ = \rndip~combout\(37) # \process0~15935_combout\ # \process0~15927_combout\ # !\process0~15936_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(37),
	datab => \process0~15935_combout\,
	datac => \process0~15927_combout\,
	datad => \process0~15936_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15937_combout\);

\rndopt[23]\ : cyclone_lcell
-- Equation(s):
-- rndopt(23) = DFFEAS((!\rndopt[21]~135\ & \rndopt[22]~136\) # (\rndopt[21]~135\ & \rndopt[22]~136COUT1\) $ !\process0~15937_combout\, GLOBAL(\en~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \en~combout\,
	datad => \process0~15937_combout\,
	aclr => GND,
	cin => \rndopt[21]~135\,
	cin0 => \rndopt[22]~136\,
	cin1 => \rndopt[22]~136COUT1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rndopt(23));

\process0~15938\ : cyclone_lcell
-- Equation(s):
-- \process0~15938_combout\ = \rndip~combout\(28) & !\rndip~combout\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rndip~combout\(28),
	datac => \rndip~combout\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15938_combout\);

\process0~15939\ : cyclone_lcell
-- Equation(s):
-- \process0~15939_combout\ = \rndip~combout\(32) # !\rndip~combout\(31) & (\rndip~combout\(30) # \process0~15938_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfce",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(30),
	datab => \rndip~combout\(32),
	datac => \rndip~combout\(31),
	datad => \process0~15938_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15939_combout\);

\process0~15940\ : cyclone_lcell
-- Equation(s):
-- \process0~15940_combout\ = !\rndip~combout\(35) & (\rndip~combout\(34) # !\rndip~combout\(33) & \process0~15939_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5150",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(35),
	datab => \rndip~combout\(33),
	datac => \rndip~combout\(34),
	datad => \process0~15939_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15940_combout\);

\process0~15941\ : cyclone_lcell
-- Equation(s):
-- \process0~15941_combout\ = \rndip~combout\(38) # !\rndip~combout\(37) & (\rndip~combout\(36) # \process0~15940_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dddc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(37),
	datab => \rndip~combout\(38),
	datac => \rndip~combout\(36),
	datad => \process0~15940_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15941_combout\);

\process0~15942\ : cyclone_lcell
-- Equation(s):
-- \process0~15942_combout\ = !\rndip~combout\(41) & (\rndip~combout\(40) # !\rndip~combout\(39) & \process0~15941_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0b0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(40),
	datab => \rndip~combout\(39),
	datac => \rndip~combout\(41),
	datad => \process0~15941_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15942_combout\);

\process0~15943\ : cyclone_lcell
-- Equation(s):
-- \process0~15943_combout\ = \rndip~combout\(44) # !\rndip~combout\(43) & (\rndip~combout\(42) # \process0~15942_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5f4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(43),
	datab => \rndip~combout\(42),
	datac => \rndip~combout\(44),
	datad => \process0~15942_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15943_combout\);

\process0~15944\ : cyclone_lcell
-- Equation(s):
-- \process0~15944_combout\ = \rndip~combout\(26) # !\rndip~combout\(25) & (\rndip~combout\(24) # !\rndip~combout\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aafb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(26),
	datab => \rndip~combout\(23),
	datac => \rndip~combout\(24),
	datad => \rndip~combout\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15944_combout\);

\aexpt[0]\ : cyclone_lcell
-- Equation(s):
-- aexpt(0) = DFFEAS(\rndip~combout\(45) & (!\process0~508_combout\ & \process0~15944_combout\) # !\rndip~combout\(45) & (\process0~15943_combout\ # !\process0~508_combout\ & \process0~15944_combout\), GLOBAL(\en~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4f44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \en~combout\,
	dataa => \rndip~combout\(45),
	datab => \process0~15943_combout\,
	datac => \process0~508_combout\,
	datad => \process0~15944_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => aexpt(0));

\process0~15949\ : cyclone_lcell
-- Equation(s):
-- \process0~15949_combout\ = !\rndip~combout\(42) & !\rndip~combout\(43)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \rndip~combout\(42),
	datad => \rndip~combout\(43),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15949_combout\);

\process0~15946\ : cyclone_lcell
-- Equation(s):
-- \process0~15946_combout\ = \process0~15928_combout\ & (\process0~15926_combout\ # !\process0~15934_combout\) # !\process0~15930_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd5d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15930_combout\,
	datab => \process0~15928_combout\,
	datac => \process0~15934_combout\,
	datad => \process0~15926_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15946_combout\);

\process0~15947\ : cyclone_lcell
-- Equation(s):
-- \process0~15947_combout\ = \rndip~combout\(35) # \rndip~combout\(34) # \process0~15929_combout\ & \process0~15946_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process0~15929_combout\,
	datab => \rndip~combout\(35),
	datac => \rndip~combout\(34),
	datad => \process0~15946_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15947_combout\);

\process0~15948\ : cyclone_lcell
-- Equation(s):
-- \process0~15948_combout\ = !\rndip~combout\(37) & \process0~15947_combout\ & !\rndip~combout\(36) # !\process0~15931_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "04ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(37),
	datab => \process0~15947_combout\,
	datac => \rndip~combout\(36),
	datad => \process0~15931_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15948_combout\);

\aexpt[1]\ : cyclone_lcell
-- Equation(s):
-- aexpt(1) = DFFEAS(\process0~15577_combout\ & (\process0~15933_combout\ & \process0~15948_combout\ # !\process0~15949_combout\), GLOBAL(\en~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a222",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \en~combout\,
	dataa => \process0~15577_combout\,
	datab => \process0~15949_combout\,
	datac => \process0~15933_combout\,
	datad => \process0~15948_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => aexpt(1));

\process0~15951\ : cyclone_lcell
-- Equation(s):
-- \process0~15951_combout\ = \rndip~combout\(34) & \process0~188_combout\ & (\process0~15543_combout\) # !\rndip~combout\(34) & (\process0~188_combout\ & \process0~15543_combout\ # !\process0~274_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cd05",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rndip~combout\(34),
	datab => \process0~188_combout\,
	datac => \process0~274_combout\,
	datad => \process0~15543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process0~15951_combout\);

\aexpt[2]\ : cyclone_lcell
-- Equation(s):
-- aexpt(2) = DFFEAS(\process0~419_combout\ & \process0~15951_combout\ # !\process0~538_combout\, GLOBAL(\en~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f333",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \en~combout\,
	datab => \process0~538_combout\,
	datac => \process0~419_combout\,
	datad => \process0~15951_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => aexpt(2));

\aexpt[3]\ : cyclone_lcell
-- Equation(s):
-- aexpt(3) = DFFEAS(!\process0~188_combout\ & (\rndip~combout\(31) # \rndip~combout\(30) # \process0~361_combout\), GLOBAL(\en~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00fe",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \en~combout\,
	dataa => \rndip~combout\(31),
	datab => \rndip~combout\(30),
	datac => \process0~361_combout\,
	datad => \process0~188_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => aexpt(3));

\aexpt[4]\ : cyclone_lcell
-- Equation(s):
-- aexpt(4) = DFFEAS(!\process0~419_combout\, GLOBAL(\en~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \en~combout\,
	datac => \process0~419_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => aexpt(4));

\rndop[0]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => rndopt(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rndop(0));

\rndop[1]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => rndopt(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rndop(1));

\rndop[2]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => rndopt(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rndop(2));

\rndop[3]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => rndopt(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rndop(3));

\rndop[4]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => rndopt(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rndop(4));

\rndop[5]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => rndopt(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rndop(5));

\rndop[6]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => rndopt(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rndop(6));

\rndop[7]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => rndopt(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rndop(7));

\rndop[8]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => rndopt(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rndop(8));

\rndop[9]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => rndopt(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rndop(9));

\rndop[10]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => rndopt(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rndop(10));

\rndop[11]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => rndopt(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rndop(11));

\rndop[12]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => rndopt(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rndop(12));

\rndop[13]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => rndopt(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rndop(13));

\rndop[14]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => rndopt(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rndop(14));

\rndop[15]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => rndopt(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rndop(15));

\rndop[16]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => rndopt(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rndop(16));

\rndop[17]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => rndopt(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rndop(17));

\rndop[18]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => rndopt(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rndop(18));

\rndop[19]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => rndopt(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rndop(19));

\rndop[20]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => rndopt(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rndop(20));

\rndop[21]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => rndopt(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rndop(21));

\rndop[22]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => rndopt(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rndop(22));

\addexp[0]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => aexpt(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_addexp(0));

\addexp[1]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => aexpt(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_addexp(1));

\addexp[2]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => aexpt(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_addexp(2));

\addexp[3]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => aexpt(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_addexp(3));

\addexp[4]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => aexpt(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_addexp(4));

\addexp[5]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_addexp(5));

\addexp[6]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_addexp(6));

\addexp[7]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_addexp(7));
END structure;


