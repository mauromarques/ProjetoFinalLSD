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
-- Generated on "06/03/2021 20:27:58"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          bin_to_bcd_fsm
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY bin_to_bcd_fsm_vhd_vec_tst IS
END bin_to_bcd_fsm_vhd_vec_tst;
ARCHITECTURE bin_to_bcd_fsm_arch OF bin_to_bcd_fsm_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL activate : STD_LOGIC;
SIGNAL bin_input : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL digit0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL digit1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL done : STD_LOGIC;
COMPONENT bin_to_bcd_fsm
	PORT (
	activate : IN STD_LOGIC;
	bin_input : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
	clk : IN STD_LOGIC;
	digit0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	digit1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	done : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : bin_to_bcd_fsm
	PORT MAP (
-- list connections between master ports and signals
	activate => activate,
	bin_input => bin_input,
	clk => clk,
	digit0 => digit0,
	digit1 => digit1,
	done => done
	);

-- activate
t_prcs_activate: PROCESS
BEGIN
	activate <= '0';
	WAIT FOR 20000 ps;
	activate <= '1';
	WAIT FOR 300000 ps;
	activate <= '0';
WAIT;
END PROCESS t_prcs_activate;
-- bin_input[6]
t_prcs_bin_input_6: PROCESS
BEGIN
	bin_input(6) <= '0';
	WAIT FOR 60000 ps;
	bin_input(6) <= '1';
	WAIT FOR 180000 ps;
	bin_input(6) <= '0';
WAIT;
END PROCESS t_prcs_bin_input_6;
-- bin_input[5]
t_prcs_bin_input_5: PROCESS
BEGIN
	bin_input(5) <= '0';
WAIT;
END PROCESS t_prcs_bin_input_5;
-- bin_input[4]
t_prcs_bin_input_4: PROCESS
BEGIN
	bin_input(4) <= '0';
WAIT;
END PROCESS t_prcs_bin_input_4;
-- bin_input[3]
t_prcs_bin_input_3: PROCESS
BEGIN
	bin_input(3) <= '0';
WAIT;
END PROCESS t_prcs_bin_input_3;
-- bin_input[2]
t_prcs_bin_input_2: PROCESS
BEGIN
	bin_input(2) <= '0';
WAIT;
END PROCESS t_prcs_bin_input_2;
-- bin_input[1]
t_prcs_bin_input_1: PROCESS
BEGIN
	bin_input(1) <= '0';
WAIT;
END PROCESS t_prcs_bin_input_1;
-- bin_input[0]
t_prcs_bin_input_0: PROCESS
BEGIN
	bin_input(0) <= '0';
WAIT;
END PROCESS t_prcs_bin_input_0;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 25000 ps;
	clk <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
END bin_to_bcd_fsm_arch;
