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
-- Generated on "06/12/2021 10:51:34"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          guess_number
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY guess_number_vhd_vec_tst IS
END guess_number_vhd_vec_tst;
ARCHITECTURE guess_number_arch OF guess_number_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL activate : STD_LOGIC;
SIGNAL attempt : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL c1hz : STD_LOGIC;
SIGNAL c2hz : STD_LOGIC;
SIGNAL c4hz : STD_LOGIC;
SIGNAL c8hz : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL done1 : STD_LOGIC;
SIGNAL done2 : STD_LOGIC;
SIGNAL enable : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL keys : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ledr : STD_LOGIC_VECTOR(17 DOWNTO 0);
SIGNAL momove : STD_LOGIC;
SIGNAL n_attempts : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL rnd : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL selector : STD_LOGIC;
SIGNAL texto : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT guess_number
	PORT (
	activate : OUT STD_LOGIC;
	attempt : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	c1hz : IN STD_LOGIC;
	c2hz : IN STD_LOGIC;
	c4hz : IN STD_LOGIC;
	c8hz : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	done1 : IN STD_LOGIC;
	done2 : IN STD_LOGIC;
	enable : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	keys : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	ledr : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
	momove : OUT STD_LOGIC;
	n_attempts : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	reset : IN STD_LOGIC;
	rnd : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	selector : OUT STD_LOGIC;
	texto : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : guess_number
	PORT MAP (
-- list connections between master ports and signals
	activate => activate,
	attempt => attempt,
	c1hz => c1hz,
	c2hz => c2hz,
	c4hz => c4hz,
	c8hz => c8hz,
	clk => clk,
	done1 => done1,
	done2 => done2,
	enable => enable,
	keys => keys,
	ledr => ledr,
	momove => momove,
	n_attempts => n_attempts,
	reset => reset,
	rnd => rnd,
	selector => selector,
	texto => texto
	);

-- c1hz
t_prcs_c1hz: PROCESS
BEGIN
LOOP
	c1hz <= '0';
	WAIT FOR 25000 ps;
	c1hz <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_c1hz;

-- c2hz
t_prcs_c2hz: PROCESS
BEGIN
	c2hz <= '0';
WAIT;
END PROCESS t_prcs_c2hz;

-- c4hz
t_prcs_c4hz: PROCESS
BEGIN
	c4hz <= '0';
WAIT;
END PROCESS t_prcs_c4hz;

-- c8hz
t_prcs_c8hz: PROCESS
BEGIN
	c8hz <= '0';
WAIT;
END PROCESS t_prcs_c8hz;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- done1
t_prcs_done1: PROCESS
BEGIN
	done1 <= '0';
WAIT;
END PROCESS t_prcs_done1;

-- done2
t_prcs_done2: PROCESS
BEGIN
	done2 <= '0';
WAIT;
END PROCESS t_prcs_done2;
-- keys[3]
t_prcs_keys_3: PROCESS
BEGIN
	keys(3) <= '0';
WAIT;
END PROCESS t_prcs_keys_3;
-- keys[2]
t_prcs_keys_2: PROCESS
BEGIN
	keys(2) <= '0';
WAIT;
END PROCESS t_prcs_keys_2;
-- keys[1]
t_prcs_keys_1: PROCESS
BEGIN
	keys(1) <= '0';
WAIT;
END PROCESS t_prcs_keys_1;
-- keys[0]
t_prcs_keys_0: PROCESS
BEGIN
	keys(0) <= '0';
	WAIT FOR 780000 ps;
	keys(0) <= '1';
	WAIT FOR 60000 ps;
	keys(0) <= '0';
WAIT;
END PROCESS t_prcs_keys_0;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 80000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
-- rnd[7]
t_prcs_rnd_7: PROCESS
BEGIN
	rnd(7) <= '0';
WAIT;
END PROCESS t_prcs_rnd_7;
-- rnd[6]
t_prcs_rnd_6: PROCESS
BEGIN
	rnd(6) <= '0';
WAIT;
END PROCESS t_prcs_rnd_6;
-- rnd[5]
t_prcs_rnd_5: PROCESS
BEGIN
	rnd(5) <= '0';
WAIT;
END PROCESS t_prcs_rnd_5;
-- rnd[4]
t_prcs_rnd_4: PROCESS
BEGIN
	rnd(4) <= '0';
WAIT;
END PROCESS t_prcs_rnd_4;
-- rnd[3]
t_prcs_rnd_3: PROCESS
BEGIN
	rnd(3) <= '0';
WAIT;
END PROCESS t_prcs_rnd_3;
-- rnd[2]
t_prcs_rnd_2: PROCESS
BEGIN
	rnd(2) <= '0';
WAIT;
END PROCESS t_prcs_rnd_2;
-- rnd[1]
t_prcs_rnd_1: PROCESS
BEGIN
	rnd(1) <= '0';
WAIT;
END PROCESS t_prcs_rnd_1;
-- rnd[0]
t_prcs_rnd_0: PROCESS
BEGIN
	rnd(0) <= '0';
WAIT;
END PROCESS t_prcs_rnd_0;
END guess_number_arch;