-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/03/2021 11:18:26"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          decoder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY decoder_vhd_vec_tst IS
END decoder_vhd_vec_tst;
ARCHITECTURE decoder_arch OF decoder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL binInput : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL decOut_n : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL enable : STD_LOGIC;
COMPONENT decoder
	PORT (
	binInput : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	decOut_n : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	enable : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : decoder
	PORT MAP (
-- list connections between master ports and signals
	binInput => binInput,
	decOut_n => decOut_n,
	enable => enable
	);

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '0';
	WAIT FOR 20000 ps;
	enable <= '1';
	WAIT FOR 500000 ps;
	enable <= '0';
WAIT;
END PROCESS t_prcs_enable;
-- binInput[4]
t_prcs_binInput_4: PROCESS
BEGIN
	binInput(4) <= '0';
WAIT;
END PROCESS t_prcs_binInput_4;
-- binInput[3]
t_prcs_binInput_3: PROCESS
BEGIN
	binInput(3) <= '0';
WAIT;
END PROCESS t_prcs_binInput_3;
-- binInput[2]
t_prcs_binInput_2: PROCESS
BEGIN
	binInput(2) <= '0';
	WAIT FOR 120000 ps;
	binInput(2) <= '1';
	WAIT FOR 80000 ps;
	binInput(2) <= '0';
WAIT;
END PROCESS t_prcs_binInput_2;
-- binInput[1]
t_prcs_binInput_1: PROCESS
BEGIN
	binInput(1) <= '0';
	WAIT FOR 120000 ps;
	binInput(1) <= '1';
	WAIT FOR 80000 ps;
	binInput(1) <= '0';
WAIT;
END PROCESS t_prcs_binInput_1;
-- binInput[0]
t_prcs_binInput_0: PROCESS
BEGIN
	binInput(0) <= '0';
	WAIT FOR 20000 ps;
	binInput(0) <= '1';
	WAIT FOR 180000 ps;
	binInput(0) <= '0';
WAIT;
END PROCESS t_prcs_binInput_0;
END decoder_arch;
