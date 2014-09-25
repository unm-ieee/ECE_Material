----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    
-- Design Name: 
-- Module Name:    counter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity shiftAdder is
	port (
		serialIn	: in std_logic_vector(3 downto 0);
		clk			: in std_logic;
		reset		: in std_logic;
		
		carryOut : out std_logic;
		sumOut : out std_logic_vector(3 downto 0)
	);
end shiftAdder;

Architecture Behavioral of shiftAdder is

signal registerToFullAdder : std_logic;
signal adderCarryToFlipFlop : std_logic;
signal adderSumToAccumulator : std_logic;
signal flipFlopToCarryIn : std_logic;
signal accumulatorToFullAdder : std_logic;

component fullAdder is
	port(
		carryIn	: in std_logic;
		inputAdd1	: in std_logic;
		carryOut	: out std_logic;
		sumOut		: out std_logic
	);
end fullAdder;

component addendRegister is
	port(
		addend_in	:in std_logic_vector (3 downto 0);
		clk			:in std_logic;
		reset		:in std_logic;
		
		output		:out std_logic
	);
end addendRegister;

component accumulator is
	port(
		serialIn	: in std_logic_vector(3 downto 0);
		clk			: in std_logic;
		reset		: in std_logic;
		sumIn		: in std_logic;
		Xi			: out std_logic;
		resultOut	: out std_logic_vector(3 downto 0)
	);
end accumulator;

component dFlipFlop is
	port(
		clk			: in std_logic;
		dataIn		: in std_logic;
		reset		: in std_logic;
		Qout			: out std_logic;
	);
end dFlipFlop;

begin

	fullAdder1 : fullAdder
	port map(
		carryIn => flipFlopToCarryIn;
		inputAdd1 => accumulatorToFullAdder;
		inputAdd2 => registerToFullAdder;
		carryOut => adderCarryToFlipFlop;
		sumOut => adderSumToAccumulator
	);
	
	addendRegister1 : addendRegister
	port map (
		addend_in => serialIn;
		clk => clk;
		reset => reset;
		output => registerToFullAdder
	);
	
	accumulator1 : accumulator
	port map (
		serialIn => serialIn;
		clk => clk;
		reset => reset;
		sumIn => adderSumToAccumulator;
		Xi => accumulatorToFullAdder;
		resultOut => sumOut
	);
	
	dFlipFlop1 : dFlipFlop
	port map (
		clk => clk;
		dataIn => adderCarryToFlipFlop;
		reset => reset;
		Qout => carryOut;
		Qout => flipFlopToCarryIn
	);
end Behavioral;