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
-- Generated on "06/15/2021 18:07:10"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          display_selector
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY display_selector_vhd_vec_tst IS
END display_selector_vhd_vec_tst;
ARCHITECTURE display_selector_arch OF display_selector_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL bin0 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL bin1 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL bin2 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL bin3 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL bin4 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL bin5 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL bin6 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL bin7 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL d4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL d5 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL d6 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL d7 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL enable : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL enable0 : STD_LOGIC;
SIGNAL enable1 : STD_LOGIC;
SIGNAL enable2 : STD_LOGIC;
SIGNAL enable3 : STD_LOGIC;
SIGNAL enable4 : STD_LOGIC;
SIGNAL enable5 : STD_LOGIC;
SIGNAL enable6 : STD_LOGIC;
SIGNAL enable7 : STD_LOGIC;
SIGNAL selector : STD_LOGIC;
SIGNAL txt : STD_LOGIC_VECTOR(39 DOWNTO 0);
COMPONENT display_selector
	PORT (
	bin0 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	bin1 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	bin2 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	bin3 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	bin4 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	bin5 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	bin6 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	bin7 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	clk : IN STD_LOGIC;
	d4 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	d5 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	d6 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	d7 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	enable : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	enable0 : OUT STD_LOGIC;
	enable1 : OUT STD_LOGIC;
	enable2 : OUT STD_LOGIC;
	enable3 : OUT STD_LOGIC;
	enable4 : OUT STD_LOGIC;
	enable5 : OUT STD_LOGIC;
	enable6 : OUT STD_LOGIC;
	enable7 : OUT STD_LOGIC;
	selector : IN STD_LOGIC;
	txt : IN STD_LOGIC_VECTOR(39 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : display_selector
	PORT MAP (
-- list connections between master ports and signals
	bin0 => bin0,
	bin1 => bin1,
	bin2 => bin2,
	bin3 => bin3,
	bin4 => bin4,
	bin5 => bin5,
	bin6 => bin6,
	bin7 => bin7,
	clk => clk,
	d4 => d4,
	d5 => d5,
	d6 => d6,
	d7 => d7,
	enable => enable,
	enable0 => enable0,
	enable1 => enable1,
	enable2 => enable2,
	enable3 => enable3,
	enable4 => enable4,
	enable5 => enable5,
	enable6 => enable6,
	enable7 => enable7,
	selector => selector,
	txt => txt
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 20000 ps;
	clk <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- d4[3]
t_prcs_d4_3: PROCESS
BEGIN
	d4(3) <= '0';
WAIT;
END PROCESS t_prcs_d4_3;
-- d4[2]
t_prcs_d4_2: PROCESS
BEGIN
	d4(2) <= '0';
WAIT;
END PROCESS t_prcs_d4_2;
-- d4[1]
t_prcs_d4_1: PROCESS
BEGIN
	d4(1) <= '0';
WAIT;
END PROCESS t_prcs_d4_1;
-- d4[0]
t_prcs_d4_0: PROCESS
BEGIN
	d4(0) <= '0';
WAIT;
END PROCESS t_prcs_d4_0;
-- d5[3]
t_prcs_d5_3: PROCESS
BEGIN
	d5(3) <= '0';
WAIT;
END PROCESS t_prcs_d5_3;
-- d5[2]
t_prcs_d5_2: PROCESS
BEGIN
	d5(2) <= '0';
WAIT;
END PROCESS t_prcs_d5_2;
-- d5[1]
t_prcs_d5_1: PROCESS
BEGIN
	d5(1) <= '0';
WAIT;
END PROCESS t_prcs_d5_1;
-- d5[0]
t_prcs_d5_0: PROCESS
BEGIN
	d5(0) <= '0';
WAIT;
END PROCESS t_prcs_d5_0;
-- d6[3]
t_prcs_d6_3: PROCESS
BEGIN
	d6(3) <= '0';
WAIT;
END PROCESS t_prcs_d6_3;
-- d6[2]
t_prcs_d6_2: PROCESS
BEGIN
	d6(2) <= '0';
WAIT;
END PROCESS t_prcs_d6_2;
-- d6[1]
t_prcs_d6_1: PROCESS
BEGIN
	d6(1) <= '0';
WAIT;
END PROCESS t_prcs_d6_1;
-- d6[0]
t_prcs_d6_0: PROCESS
BEGIN
	d6(0) <= '0';
WAIT;
END PROCESS t_prcs_d6_0;
-- d7[3]
t_prcs_d7_3: PROCESS
BEGIN
	d7(3) <= '0';
WAIT;
END PROCESS t_prcs_d7_3;
-- d7[2]
t_prcs_d7_2: PROCESS
BEGIN
	d7(2) <= '0';
WAIT;
END PROCESS t_prcs_d7_2;
-- d7[1]
t_prcs_d7_1: PROCESS
BEGIN
	d7(1) <= '0';
WAIT;
END PROCESS t_prcs_d7_1;
-- d7[0]
t_prcs_d7_0: PROCESS
BEGIN
	d7(0) <= '0';
WAIT;
END PROCESS t_prcs_d7_0;
-- enable[2]
t_prcs_enable_2: PROCESS
BEGIN
	enable(2) <= '0';
WAIT;
END PROCESS t_prcs_enable_2;
-- enable[1]
t_prcs_enable_1: PROCESS
BEGIN
	enable(1) <= '0';
WAIT;
END PROCESS t_prcs_enable_1;
-- enable[0]
t_prcs_enable_0: PROCESS
BEGIN
	enable(0) <= '0';
	WAIT FOR 230000 ps;
	enable(0) <= '1';
	WAIT FOR 230000 ps;
	enable(0) <= '0';
WAIT;
END PROCESS t_prcs_enable_0;

-- selector
t_prcs_selector: PROCESS
BEGIN
	selector <= '0';
WAIT;
END PROCESS t_prcs_selector;
-- txt[39]
t_prcs_txt_39: PROCESS
BEGIN
	txt(39) <= '0';
WAIT;
END PROCESS t_prcs_txt_39;
-- txt[38]
t_prcs_txt_38: PROCESS
BEGIN
	txt(38) <= '0';
WAIT;
END PROCESS t_prcs_txt_38;
-- txt[37]
t_prcs_txt_37: PROCESS
BEGIN
	txt(37) <= '0';
WAIT;
END PROCESS t_prcs_txt_37;
-- txt[36]
t_prcs_txt_36: PROCESS
BEGIN
	txt(36) <= '0';
WAIT;
END PROCESS t_prcs_txt_36;
-- txt[35]
t_prcs_txt_35: PROCESS
BEGIN
	txt(35) <= '0';
WAIT;
END PROCESS t_prcs_txt_35;
-- txt[34]
t_prcs_txt_34: PROCESS
BEGIN
	txt(34) <= '0';
WAIT;
END PROCESS t_prcs_txt_34;
-- txt[33]
t_prcs_txt_33: PROCESS
BEGIN
	txt(33) <= '0';
WAIT;
END PROCESS t_prcs_txt_33;
-- txt[32]
t_prcs_txt_32: PROCESS
BEGIN
	txt(32) <= '0';
WAIT;
END PROCESS t_prcs_txt_32;
-- txt[31]
t_prcs_txt_31: PROCESS
BEGIN
	txt(31) <= '0';
WAIT;
END PROCESS t_prcs_txt_31;
-- txt[30]
t_prcs_txt_30: PROCESS
BEGIN
	txt(30) <= '0';
WAIT;
END PROCESS t_prcs_txt_30;
-- txt[29]
t_prcs_txt_29: PROCESS
BEGIN
	txt(29) <= '0';
WAIT;
END PROCESS t_prcs_txt_29;
-- txt[28]
t_prcs_txt_28: PROCESS
BEGIN
	txt(28) <= '0';
WAIT;
END PROCESS t_prcs_txt_28;
-- txt[27]
t_prcs_txt_27: PROCESS
BEGIN
	txt(27) <= '0';
WAIT;
END PROCESS t_prcs_txt_27;
-- txt[26]
t_prcs_txt_26: PROCESS
BEGIN
	txt(26) <= '0';
WAIT;
END PROCESS t_prcs_txt_26;
-- txt[25]
t_prcs_txt_25: PROCESS
BEGIN
	txt(25) <= '0';
WAIT;
END PROCESS t_prcs_txt_25;
-- txt[24]
t_prcs_txt_24: PROCESS
BEGIN
	txt(24) <= '0';
WAIT;
END PROCESS t_prcs_txt_24;
-- txt[23]
t_prcs_txt_23: PROCESS
BEGIN
	txt(23) <= '0';
WAIT;
END PROCESS t_prcs_txt_23;
-- txt[22]
t_prcs_txt_22: PROCESS
BEGIN
	txt(22) <= '0';
WAIT;
END PROCESS t_prcs_txt_22;
-- txt[21]
t_prcs_txt_21: PROCESS
BEGIN
	txt(21) <= '0';
WAIT;
END PROCESS t_prcs_txt_21;
-- txt[20]
t_prcs_txt_20: PROCESS
BEGIN
	txt(20) <= '0';
WAIT;
END PROCESS t_prcs_txt_20;
-- txt[19]
t_prcs_txt_19: PROCESS
BEGIN
	txt(19) <= '0';
WAIT;
END PROCESS t_prcs_txt_19;
-- txt[18]
t_prcs_txt_18: PROCESS
BEGIN
	txt(18) <= '0';
WAIT;
END PROCESS t_prcs_txt_18;
-- txt[17]
t_prcs_txt_17: PROCESS
BEGIN
	txt(17) <= '0';
WAIT;
END PROCESS t_prcs_txt_17;
-- txt[16]
t_prcs_txt_16: PROCESS
BEGIN
	txt(16) <= '0';
WAIT;
END PROCESS t_prcs_txt_16;
-- txt[15]
t_prcs_txt_15: PROCESS
BEGIN
	txt(15) <= '0';
WAIT;
END PROCESS t_prcs_txt_15;
-- txt[14]
t_prcs_txt_14: PROCESS
BEGIN
	txt(14) <= '0';
WAIT;
END PROCESS t_prcs_txt_14;
-- txt[13]
t_prcs_txt_13: PROCESS
BEGIN
	txt(13) <= '0';
WAIT;
END PROCESS t_prcs_txt_13;
-- txt[12]
t_prcs_txt_12: PROCESS
BEGIN
	txt(12) <= '0';
WAIT;
END PROCESS t_prcs_txt_12;
-- txt[11]
t_prcs_txt_11: PROCESS
BEGIN
	txt(11) <= '0';
WAIT;
END PROCESS t_prcs_txt_11;
-- txt[10]
t_prcs_txt_10: PROCESS
BEGIN
	txt(10) <= '0';
WAIT;
END PROCESS t_prcs_txt_10;
-- txt[9]
t_prcs_txt_9: PROCESS
BEGIN
	txt(9) <= '0';
WAIT;
END PROCESS t_prcs_txt_9;
-- txt[8]
t_prcs_txt_8: PROCESS
BEGIN
	txt(8) <= '0';
WAIT;
END PROCESS t_prcs_txt_8;
-- txt[7]
t_prcs_txt_7: PROCESS
BEGIN
	txt(7) <= '0';
WAIT;
END PROCESS t_prcs_txt_7;
-- txt[6]
t_prcs_txt_6: PROCESS
BEGIN
	txt(6) <= '0';
WAIT;
END PROCESS t_prcs_txt_6;
-- txt[5]
t_prcs_txt_5: PROCESS
BEGIN
	txt(5) <= '0';
WAIT;
END PROCESS t_prcs_txt_5;
-- txt[4]
t_prcs_txt_4: PROCESS
BEGIN
	txt(4) <= '0';
WAIT;
END PROCESS t_prcs_txt_4;
-- txt[3]
t_prcs_txt_3: PROCESS
BEGIN
	txt(3) <= '0';
WAIT;
END PROCESS t_prcs_txt_3;
-- txt[2]
t_prcs_txt_2: PROCESS
BEGIN
	txt(2) <= '0';
WAIT;
END PROCESS t_prcs_txt_2;
-- txt[1]
t_prcs_txt_1: PROCESS
BEGIN
	txt(1) <= '0';
WAIT;
END PROCESS t_prcs_txt_1;
-- txt[0]
t_prcs_txt_0: PROCESS
BEGIN
	txt(0) <= '0';
WAIT;
END PROCESS t_prcs_txt_0;
END display_selector_arch;
