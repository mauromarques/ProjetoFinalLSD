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
-- Generated on "06/14/2021 13:34:00"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SeqShiftUnit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SeqShiftUnit_vhd_vec_tst IS
END SeqShiftUnit_vhd_vec_tst;
ARCHITECTURE SeqShiftUnit_arch OF SeqShiftUnit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL dataIn : STD_LOGIC_VECTOR(39 DOWNTO 0);
SIGNAL dataOut : STD_LOGIC_VECTOR(39 DOWNTO 0);
SIGNAL loadEn : STD_LOGIC;
SIGNAL rotate : STD_LOGIC;
COMPONENT SeqShiftUnit
	PORT (
	clk : IN STD_LOGIC;
	dataIn : IN STD_LOGIC_VECTOR(39 DOWNTO 0);
	dataOut : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
	loadEn : IN STD_LOGIC;
	rotate : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : SeqShiftUnit
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	dataIn => dataIn,
	dataOut => dataOut,
	loadEn => loadEn,
	rotate => rotate
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		clk <= '0';
		WAIT FOR 60000 ps;
		clk <= '1';
		WAIT FOR 60000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;
-- dataIn[39]
t_prcs_dataIn_39: PROCESS
BEGIN
	dataIn(39) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_39;
-- dataIn[38]
t_prcs_dataIn_38: PROCESS
BEGIN
	dataIn(38) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_38;
-- dataIn[37]
t_prcs_dataIn_37: PROCESS
BEGIN
	dataIn(37) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_37;
-- dataIn[36]
t_prcs_dataIn_36: PROCESS
BEGIN
	dataIn(36) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_36;
-- dataIn[35]
t_prcs_dataIn_35: PROCESS
BEGIN
	dataIn(35) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_35;
-- dataIn[34]
t_prcs_dataIn_34: PROCESS
BEGIN
	dataIn(34) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_34;
-- dataIn[33]
t_prcs_dataIn_33: PROCESS
BEGIN
	dataIn(33) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_33;
-- dataIn[32]
t_prcs_dataIn_32: PROCESS
BEGIN
	dataIn(32) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_32;
-- dataIn[31]
t_prcs_dataIn_31: PROCESS
BEGIN
	dataIn(31) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_31;
-- dataIn[30]
t_prcs_dataIn_30: PROCESS
BEGIN
	dataIn(30) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_30;
-- dataIn[29]
t_prcs_dataIn_29: PROCESS
BEGIN
	dataIn(29) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_29;
-- dataIn[28]
t_prcs_dataIn_28: PROCESS
BEGIN
	dataIn(28) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_28;
-- dataIn[27]
t_prcs_dataIn_27: PROCESS
BEGIN
	dataIn(27) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_27;
-- dataIn[26]
t_prcs_dataIn_26: PROCESS
BEGIN
	dataIn(26) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_26;
-- dataIn[25]
t_prcs_dataIn_25: PROCESS
BEGIN
	dataIn(25) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_25;
-- dataIn[24]
t_prcs_dataIn_24: PROCESS
BEGIN
	dataIn(24) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_24;
-- dataIn[23]
t_prcs_dataIn_23: PROCESS
BEGIN
	dataIn(23) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_23;
-- dataIn[22]
t_prcs_dataIn_22: PROCESS
BEGIN
	dataIn(22) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_22;
-- dataIn[21]
t_prcs_dataIn_21: PROCESS
BEGIN
	dataIn(21) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_21;
-- dataIn[20]
t_prcs_dataIn_20: PROCESS
BEGIN
	dataIn(20) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_20;
-- dataIn[19]
t_prcs_dataIn_19: PROCESS
BEGIN
	dataIn(19) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_19;
-- dataIn[18]
t_prcs_dataIn_18: PROCESS
BEGIN
	dataIn(18) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_18;
-- dataIn[17]
t_prcs_dataIn_17: PROCESS
BEGIN
	dataIn(17) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_17;
-- dataIn[16]
t_prcs_dataIn_16: PROCESS
BEGIN
	dataIn(16) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_16;
-- dataIn[15]
t_prcs_dataIn_15: PROCESS
BEGIN
	dataIn(15) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_15;
-- dataIn[14]
t_prcs_dataIn_14: PROCESS
BEGIN
	dataIn(14) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_14;
-- dataIn[13]
t_prcs_dataIn_13: PROCESS
BEGIN
	dataIn(13) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_13;
-- dataIn[12]
t_prcs_dataIn_12: PROCESS
BEGIN
	dataIn(12) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_12;
-- dataIn[11]
t_prcs_dataIn_11: PROCESS
BEGIN
	dataIn(11) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_11;
-- dataIn[10]
t_prcs_dataIn_10: PROCESS
BEGIN
	dataIn(10) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_10;
-- dataIn[9]
t_prcs_dataIn_9: PROCESS
BEGIN
	dataIn(9) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_9;
-- dataIn[8]
t_prcs_dataIn_8: PROCESS
BEGIN
	dataIn(8) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_8;
-- dataIn[7]
t_prcs_dataIn_7: PROCESS
BEGIN
	dataIn(7) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_7;
-- dataIn[6]
t_prcs_dataIn_6: PROCESS
BEGIN
	dataIn(6) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_6;
-- dataIn[5]
t_prcs_dataIn_5: PROCESS
BEGIN
	dataIn(5) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_5;
-- dataIn[4]
t_prcs_dataIn_4: PROCESS
BEGIN
	dataIn(4) <= '1';
WAIT;
END PROCESS t_prcs_dataIn_4;
-- dataIn[3]
t_prcs_dataIn_3: PROCESS
BEGIN
	dataIn(3) <= '1';
WAIT;
END PROCESS t_prcs_dataIn_3;
-- dataIn[2]
t_prcs_dataIn_2: PROCESS
BEGIN
	dataIn(2) <= '1';
WAIT;
END PROCESS t_prcs_dataIn_2;
-- dataIn[1]
t_prcs_dataIn_1: PROCESS
BEGIN
	dataIn(1) <= '1';
WAIT;
END PROCESS t_prcs_dataIn_1;
-- dataIn[0]
t_prcs_dataIn_0: PROCESS
BEGIN
	dataIn(0) <= '1';
WAIT;
END PROCESS t_prcs_dataIn_0;

-- loadEn
t_prcs_loadEn: PROCESS
BEGIN
	loadEn <= '0';
	WAIT FOR 10000 ps;
	loadEn <= '1';
	WAIT FOR 60000 ps;
	loadEn <= '0';
WAIT;
END PROCESS t_prcs_loadEn;

-- rotate
t_prcs_rotate: PROCESS
BEGIN
	rotate <= '1';
WAIT;
END PROCESS t_prcs_rotate;
END SeqShiftUnit_arch;
