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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "06/15/2021 09:41:58"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	guess_number IS
    PORT (
	ledr : OUT std_logic_vector(17 DOWNTO 0);
	n_attempts : OUT std_logic_vector(6 DOWNTO 0);
	activate : OUT std_logic;
	attempt : OUT std_logic_vector(6 DOWNTO 0);
	selector : OUT std_logic;
	enable : OUT std_logic_vector(2 DOWNTO 0);
	texto : OUT std_logic_vector(39 DOWNTO 0);
	keys : IN std_logic_vector(3 DOWNTO 0);
	reset : IN std_logic;
	clk : IN std_logic;
	done1 : IN std_logic;
	done2 : IN std_logic;
	c1hz : IN std_logic;
	rnd : IN std_logic_vector(7 DOWNTO 0);
	c2hz : IN std_logic;
	c4hz : IN std_logic;
	c8hz : IN std_logic
	);
END guess_number;

ARCHITECTURE structure OF guess_number IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ledr : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_n_attempts : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_activate : std_logic;
SIGNAL ww_attempt : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_selector : std_logic;
SIGNAL ww_enable : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_texto : std_logic_vector(39 DOWNTO 0);
SIGNAL ww_keys : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_done1 : std_logic;
SIGNAL ww_done2 : std_logic;
SIGNAL ww_c1hz : std_logic;
SIGNAL ww_rnd : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_c2hz : std_logic;
SIGNAL ww_c4hz : std_logic;
SIGNAL ww_c8hz : std_logic;
SIGNAL \rnd[0]~input_o\ : std_logic;
SIGNAL \rnd[1]~input_o\ : std_logic;
SIGNAL \rnd[2]~input_o\ : std_logic;
SIGNAL \rnd[3]~input_o\ : std_logic;
SIGNAL \rnd[4]~input_o\ : std_logic;
SIGNAL \rnd[5]~input_o\ : std_logic;
SIGNAL \rnd[6]~input_o\ : std_logic;
SIGNAL \rnd[7]~input_o\ : std_logic;
SIGNAL \c2hz~input_o\ : std_logic;
SIGNAL \c4hz~input_o\ : std_logic;
SIGNAL \c8hz~input_o\ : std_logic;
SIGNAL \c1hz~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \s_resetCounter~q\ : std_logic;
SIGNAL \count|s_count[0]~3_combout\ : std_logic;
SIGNAL \count|s_count~2_combout\ : std_logic;
SIGNAL \count|s_count[2]~1_combout\ : std_logic;
SIGNAL \count|s_count~0_combout\ : std_logic;
SIGNAL \count|Equal0~0_combout\ : std_logic;
SIGNAL \count|s_move~0_combout\ : std_logic;
SIGNAL \count|s_move~q\ : std_logic;
SIGNAL \s_blink~0_combout\ : std_logic;
SIGNAL \Selector90~0_combout\ : std_logic;
SIGNAL \keys[2]~input_o\ : std_logic;
SIGNAL \keys[1]~input_o\ : std_logic;
SIGNAL \Selector37~1_combout\ : std_logic;
SIGNAL \Selector37~2_combout\ : std_logic;
SIGNAL \s_resposta[13]~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \s_resposta[11]~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Selector91~11_combout\ : std_logic;
SIGNAL \keys[0]~input_o\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Selector87~0_combout\ : std_logic;
SIGNAL \Selector87~1_combout\ : std_logic;
SIGNAL \Selector87~2_combout\ : std_logic;
SIGNAL \estado.grupo_xx~q\ : std_logic;
SIGNAL \s_atCount~7_combout\ : std_logic;
SIGNAL \Selector91~2_combout\ : std_logic;
SIGNAL \Selector91~3_combout\ : std_logic;
SIGNAL \Selector91~9_combout\ : std_logic;
SIGNAL \estado.terminar~0_combout\ : std_logic;
SIGNAL \estado.terminar~q\ : std_logic;
SIGNAL \keys[3]~input_o\ : std_logic;
SIGNAL \done2~input_o\ : std_logic;
SIGNAL \done1~input_o\ : std_logic;
SIGNAL \s_done2~2_combout\ : std_logic;
SIGNAL \s_done2~4_combout\ : std_logic;
SIGNAL \s_done2~q\ : std_logic;
SIGNAL \s_done2~3_combout\ : std_logic;
SIGNAL \s_done1~0_combout\ : std_logic;
SIGNAL \s_done1~q\ : std_logic;
SIGNAL \Selector91~5_combout\ : std_logic;
SIGNAL \Selector91~6_combout\ : std_logic;
SIGNAL \Selector91~7_combout\ : std_logic;
SIGNAL \Selector91~8_combout\ : std_logic;
SIGNAL \Selector91~10_combout\ : std_logic;
SIGNAL \estado.waiting~q\ : std_logic;
SIGNAL \Selector86~5_combout\ : std_logic;
SIGNAL \Selector90~1_combout\ : std_logic;
SIGNAL \estado.conversao1~q\ : std_logic;
SIGNAL \Selector86~0_combout\ : std_logic;
SIGNAL \estado.jogo~0_combout\ : std_logic;
SIGNAL \estado.jogo~q\ : std_logic;
SIGNAL \Selector91~4_combout\ : std_logic;
SIGNAL \Selector86~1_combout\ : std_logic;
SIGNAL \Selector86~2_combout\ : std_logic;
SIGNAL \Selector86~3_combout\ : std_logic;
SIGNAL \Selector86~4_combout\ : std_logic;
SIGNAL \Selector86~6_combout\ : std_logic;
SIGNAL \estado.guess_n1~q\ : std_logic;
SIGNAL \s_blink~q\ : std_logic;
SIGNAL \count|s_ledr[0]~0_combout\ : std_logic;
SIGNAL \s_atCount[0]~8_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \n_attempts[0]~reg0_q\ : std_logic;
SIGNAL \s_atCount[0]~9\ : std_logic;
SIGNAL \s_atCount[1]~10_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \n_attempts[1]~reg0_q\ : std_logic;
SIGNAL \s_atCount[1]~11\ : std_logic;
SIGNAL \s_atCount[2]~12_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \n_attempts[2]~reg0_q\ : std_logic;
SIGNAL \s_atCount[2]~13\ : std_logic;
SIGNAL \s_atCount[3]~14_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \n_attempts[3]~reg0_q\ : std_logic;
SIGNAL \s_atCount[3]~15\ : std_logic;
SIGNAL \s_atCount[4]~16_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \n_attempts[4]~reg0_q\ : std_logic;
SIGNAL \s_atCount[4]~17\ : std_logic;
SIGNAL \s_atCount[5]~18_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \n_attempts[5]~reg0_q\ : std_logic;
SIGNAL \s_atCount[5]~19\ : std_logic;
SIGNAL \s_atCount[6]~20_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \n_attempts[6]~reg0_q\ : std_logic;
SIGNAL \Selector92~0_combout\ : std_logic;
SIGNAL \activate~reg0_q\ : std_logic;
SIGNAL \Add4~2\ : std_logic;
SIGNAL \Add4~4\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~12\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~18\ : std_logic;
SIGNAL \Add4~21\ : std_logic;
SIGNAL \Add4~23_combout\ : std_logic;
SIGNAL \Add4~25_combout\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \s_hi[0]~0_combout\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Add4~1_combout\ : std_logic;
SIGNAL \Add4~7_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \s_mid[0]~8\ : std_logic;
SIGNAL \s_mid[1]~10\ : std_logic;
SIGNAL \s_mid[2]~12\ : std_logic;
SIGNAL \s_mid[3]~14\ : std_logic;
SIGNAL \s_mid[4]~16\ : std_logic;
SIGNAL \s_mid[5]~18\ : std_logic;
SIGNAL \s_mid[6]~19_combout\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \Add4~22_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \s_mid[5]~17_combout\ : std_logic;
SIGNAL \Add4~17_combout\ : std_logic;
SIGNAL \Add4~19_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \s_mid[4]~15_combout\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \s_mid[3]~13_combout\ : std_logic;
SIGNAL \Add4~11_combout\ : std_logic;
SIGNAL \Add4~13_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \s_mid[2]~11_combout\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \s_mid[1]~9_combout\ : std_logic;
SIGNAL \Add4~3_combout\ : std_logic;
SIGNAL \Add4~5_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \s_mid[0]~7_combout\ : std_logic;
SIGNAL \attempt[0]~reg0_q\ : std_logic;
SIGNAL \attempt[1]~reg0_q\ : std_logic;
SIGNAL \attempt[2]~reg0_q\ : std_logic;
SIGNAL \attempt[3]~reg0_q\ : std_logic;
SIGNAL \attempt[4]~reg0_q\ : std_logic;
SIGNAL \attempt[5]~reg0_q\ : std_logic;
SIGNAL \attempt[6]~reg0_q\ : std_logic;
SIGNAL \Selector84~0_combout\ : std_logic;
SIGNAL \Selector84~1_combout\ : std_logic;
SIGNAL \enable[1]~reg0_q\ : std_logic;
SIGNAL \texto~0_combout\ : std_logic;
SIGNAL \Selector85~0_combout\ : std_logic;
SIGNAL \enable[0]~reg0_q\ : std_logic;
SIGNAL \s_loadRotate~0_combout\ : std_logic;
SIGNAL \s_loadRotate~q\ : std_logic;
SIGNAL \rotator|s_shiftReg~35_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~30_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~25_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~20_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~15_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~10_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~5_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~0_combout\ : std_logic;
SIGNAL \Selector82~0_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \texto[0]~reg0_q\ : std_logic;
SIGNAL \rotator|s_shiftReg~36_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~31_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~26_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~21_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~16_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~11_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~6_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~1_combout\ : std_logic;
SIGNAL \Selector81~0_combout\ : std_logic;
SIGNAL \texto[1]~reg0_q\ : std_logic;
SIGNAL \rotator|s_shiftReg~37_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~32_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~27_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~22_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~17_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~12_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~7_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~2_combout\ : std_logic;
SIGNAL \Selector80~0_combout\ : std_logic;
SIGNAL \texto[2]~reg0_q\ : std_logic;
SIGNAL \rotator|s_shiftReg~38_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~33_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~28_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~23_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~18_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~13_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~8_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~3_combout\ : std_logic;
SIGNAL \Selector79~0_combout\ : std_logic;
SIGNAL \texto[3]~reg0_q\ : std_logic;
SIGNAL \rotator|s_shiftReg~39_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~34_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~29_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~24_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~19_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~14_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~9_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~4_combout\ : std_logic;
SIGNAL \Selector78~0_combout\ : std_logic;
SIGNAL \texto[4]~reg0_q\ : std_logic;
SIGNAL \Selector77~0_combout\ : std_logic;
SIGNAL \texto[5]~reg0_q\ : std_logic;
SIGNAL \Selector76~0_combout\ : std_logic;
SIGNAL \texto[6]~reg0_q\ : std_logic;
SIGNAL \Selector75~0_combout\ : std_logic;
SIGNAL \texto[7]~reg0_q\ : std_logic;
SIGNAL \Selector74~0_combout\ : std_logic;
SIGNAL \texto[8]~reg0_q\ : std_logic;
SIGNAL \Selector73~0_combout\ : std_logic;
SIGNAL \texto[9]~reg0_q\ : std_logic;
SIGNAL \Selector72~0_combout\ : std_logic;
SIGNAL \texto[10]~reg0_q\ : std_logic;
SIGNAL \Selector71~0_combout\ : std_logic;
SIGNAL \texto[11]~reg0_q\ : std_logic;
SIGNAL \Selector70~0_combout\ : std_logic;
SIGNAL \texto[12]~reg0_q\ : std_logic;
SIGNAL \Selector69~0_combout\ : std_logic;
SIGNAL \texto[13]~reg0_q\ : std_logic;
SIGNAL \Selector68~0_combout\ : std_logic;
SIGNAL \texto[14]~reg0_q\ : std_logic;
SIGNAL \Selector67~0_combout\ : std_logic;
SIGNAL \texto[15]~reg0_q\ : std_logic;
SIGNAL \Selector66~0_combout\ : std_logic;
SIGNAL \texto[16]~reg0_q\ : std_logic;
SIGNAL \Selector65~0_combout\ : std_logic;
SIGNAL \texto[17]~reg0_q\ : std_logic;
SIGNAL \Selector64~0_combout\ : std_logic;
SIGNAL \texto[18]~reg0_q\ : std_logic;
SIGNAL \Selector63~0_combout\ : std_logic;
SIGNAL \texto[19]~reg0_q\ : std_logic;
SIGNAL \Selector62~0_combout\ : std_logic;
SIGNAL \texto[20]~reg0_q\ : std_logic;
SIGNAL \Selector61~0_combout\ : std_logic;
SIGNAL \texto[21]~reg0_q\ : std_logic;
SIGNAL \Selector60~0_combout\ : std_logic;
SIGNAL \texto[22]~reg0_q\ : std_logic;
SIGNAL \Selector59~0_combout\ : std_logic;
SIGNAL \texto[23]~reg0_q\ : std_logic;
SIGNAL \Selector58~0_combout\ : std_logic;
SIGNAL \texto[24]~reg0_q\ : std_logic;
SIGNAL \Selector57~0_combout\ : std_logic;
SIGNAL \texto[25]~reg0_q\ : std_logic;
SIGNAL \Selector56~0_combout\ : std_logic;
SIGNAL \texto[26]~reg0_q\ : std_logic;
SIGNAL \Selector55~0_combout\ : std_logic;
SIGNAL \texto[27]~reg0_q\ : std_logic;
SIGNAL \Selector54~0_combout\ : std_logic;
SIGNAL \texto[28]~reg0_q\ : std_logic;
SIGNAL \Selector53~0_combout\ : std_logic;
SIGNAL \texto[29]~reg0_q\ : std_logic;
SIGNAL \Selector52~0_combout\ : std_logic;
SIGNAL \texto[30]~reg0_q\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \texto[31]~reg0_q\ : std_logic;
SIGNAL \Selector50~0_combout\ : std_logic;
SIGNAL \texto[32]~reg0_q\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \texto[33]~reg0_q\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \texto[34]~reg0_q\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \texto[35]~reg0_q\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \texto[36]~reg0_q\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \texto[37]~reg0_q\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \texto[38]~reg0_q\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \texto[39]~reg0_q\ : std_logic;
SIGNAL \count|s_ledr\ : std_logic_vector(17 DOWNTO 0);
SIGNAL s_atCount : std_logic_vector(6 DOWNTO 0);
SIGNAL s_mid : std_logic_vector(7 DOWNTO 0);
SIGNAL \count|s_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rotator|s_shiftReg\ : std_logic_vector(39 DOWNTO 0);
SIGNAL s_resposta : std_logic_vector(19 DOWNTO 0);
SIGNAL s_lo : std_logic_vector(7 DOWNTO 0);
SIGNAL s_hi : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_estado.guess_n1~q\ : std_logic;
SIGNAL \ALT_INV_estado.jogo~q\ : std_logic;
SIGNAL \ALT_INV_s_resetCounter~q\ : std_logic;

BEGIN

ledr <= ww_ledr;
n_attempts <= ww_n_attempts;
activate <= ww_activate;
attempt <= ww_attempt;
selector <= ww_selector;
enable <= ww_enable;
texto <= ww_texto;
ww_keys <= keys;
ww_reset <= reset;
ww_clk <= clk;
ww_done1 <= done1;
ww_done2 <= done2;
ww_c1hz <= c1hz;
ww_rnd <= rnd;
ww_c2hz <= c2hz;
ww_c4hz <= c4hz;
ww_c8hz <= c8hz;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_estado.guess_n1~q\ <= NOT \estado.guess_n1~q\;
\ALT_INV_estado.jogo~q\ <= NOT \estado.jogo~q\;
\ALT_INV_s_resetCounter~q\ <= NOT \s_resetCounter~q\;

\ledr[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count|s_ledr\(0),
	devoe => ww_devoe,
	o => ww_ledr(0));

\ledr[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count|s_ledr\(0),
	devoe => ww_devoe,
	o => ww_ledr(1));

\ledr[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count|s_ledr\(0),
	devoe => ww_devoe,
	o => ww_ledr(2));

\ledr[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count|s_ledr\(0),
	devoe => ww_devoe,
	o => ww_ledr(3));

\ledr[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count|s_ledr\(0),
	devoe => ww_devoe,
	o => ww_ledr(4));

\ledr[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count|s_ledr\(0),
	devoe => ww_devoe,
	o => ww_ledr(5));

\ledr[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count|s_ledr\(0),
	devoe => ww_devoe,
	o => ww_ledr(6));

\ledr[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count|s_ledr\(0),
	devoe => ww_devoe,
	o => ww_ledr(7));

\ledr[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count|s_ledr\(0),
	devoe => ww_devoe,
	o => ww_ledr(8));

\ledr[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count|s_ledr\(0),
	devoe => ww_devoe,
	o => ww_ledr(9));

\ledr[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count|s_ledr\(0),
	devoe => ww_devoe,
	o => ww_ledr(10));

\ledr[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count|s_ledr\(0),
	devoe => ww_devoe,
	o => ww_ledr(11));

\ledr[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count|s_ledr\(0),
	devoe => ww_devoe,
	o => ww_ledr(12));

\ledr[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count|s_ledr\(0),
	devoe => ww_devoe,
	o => ww_ledr(13));

\ledr[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count|s_ledr\(0),
	devoe => ww_devoe,
	o => ww_ledr(14));

\ledr[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count|s_ledr\(0),
	devoe => ww_devoe,
	o => ww_ledr(15));

\ledr[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count|s_ledr\(0),
	devoe => ww_devoe,
	o => ww_ledr(16));

\ledr[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count|s_ledr\(0),
	devoe => ww_devoe,
	o => ww_ledr(17));

\n_attempts[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n_attempts[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_n_attempts(0));

\n_attempts[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n_attempts[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_n_attempts(1));

\n_attempts[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n_attempts[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_n_attempts(2));

\n_attempts[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n_attempts[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_n_attempts(3));

\n_attempts[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n_attempts[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_n_attempts(4));

\n_attempts[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n_attempts[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_n_attempts(5));

\n_attempts[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n_attempts[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_n_attempts(6));

\activate~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \activate~reg0_q\,
	devoe => ww_devoe,
	o => ww_activate);

\attempt[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \attempt[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_attempt(0));

\attempt[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \attempt[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_attempt(1));

\attempt[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \attempt[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_attempt(2));

\attempt[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \attempt[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_attempt(3));

\attempt[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \attempt[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_attempt(4));

\attempt[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \attempt[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_attempt(5));

\attempt[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \attempt[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_attempt(6));

\selector~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \enable[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_selector);

\enable[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \enable[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_enable(0));

\enable[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \enable[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_enable(1));

\enable[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_enable(2));

\texto[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(0));

\texto[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(1));

\texto[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(2));

\texto[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(3));

\texto[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(4));

\texto[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(5));

\texto[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(6));

\texto[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(7));

\texto[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(8));

\texto[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(9));

\texto[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(10));

\texto[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(11));

\texto[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[12]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(12));

\texto[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[13]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(13));

\texto[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[14]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(14));

\texto[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(15));

\texto[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[16]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(16));

\texto[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[17]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(17));

\texto[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[18]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(18));

\texto[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[19]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(19));

\texto[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[20]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(20));

\texto[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[21]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(21));

\texto[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[22]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(22));

\texto[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[23]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(23));

\texto[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[24]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(24));

\texto[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[25]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(25));

\texto[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[26]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(26));

\texto[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[27]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(27));

\texto[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[28]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(28));

\texto[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[29]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(29));

\texto[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[30]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(30));

\texto[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[31]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(31));

\texto[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[32]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(32));

\texto[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[33]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(33));

\texto[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[34]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(34));

\texto[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[35]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(35));

\texto[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[36]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(36));

\texto[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[37]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(37));

\texto[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[38]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(38));

\texto[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \texto[39]~reg0_q\,
	devoe => ww_devoe,
	o => ww_texto(39));

\c1hz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c1hz,
	o => \c1hz~input_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

s_resetCounter : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_resetCounter~q\);

\count|s_count[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count[0]~3_combout\ = !\count|s_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(0),
	combout => \count|s_count[0]~3_combout\);

\count|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \count|s_count[0]~3_combout\,
	clrn => \ALT_INV_s_resetCounter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|s_count\(0));

\count|s_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count~2_combout\ = (\count|s_count\(1) & (((!\count|s_count\(0))))) # (!\count|s_count\(1) & (\count|s_count\(0) & ((\count|s_count\(2)) # (!\count|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(2),
	datab => \count|s_count\(3),
	datac => \count|s_count\(1),
	datad => \count|s_count\(0),
	combout => \count|s_count~2_combout\);

\count|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \count|s_count~2_combout\,
	clrn => \ALT_INV_s_resetCounter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|s_count\(1));

\count|s_count[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count[2]~1_combout\ = \count|s_count\(2) $ (((\count|s_count\(1) & \count|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|s_count\(2),
	datac => \count|s_count\(1),
	datad => \count|s_count\(0),
	combout => \count|s_count[2]~1_combout\);

\count|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \count|s_count[2]~1_combout\,
	clrn => \ALT_INV_s_resetCounter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|s_count\(2));

\count|s_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count~0_combout\ = (\count|s_count\(3) & ((\count|s_count\(2) $ (\count|s_count\(1))) # (!\count|s_count\(0)))) # (!\count|s_count\(3) & (\count|s_count\(2) & (\count|s_count\(1) & \count|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(3),
	datab => \count|s_count\(2),
	datac => \count|s_count\(1),
	datad => \count|s_count\(0),
	combout => \count|s_count~0_combout\);

\count|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \count|s_count~0_combout\,
	clrn => \ALT_INV_s_resetCounter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|s_count\(3));

\count|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Equal0~0_combout\ = (\count|s_count\(3) & (\count|s_count\(0) & (!\count|s_count\(2) & !\count|s_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(3),
	datab => \count|s_count\(0),
	datac => \count|s_count\(2),
	datad => \count|s_count\(1),
	combout => \count|Equal0~0_combout\);

\count|s_move~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_move~0_combout\ = (\s_resetCounter~q\ & (\count|s_move~q\)) # (!\s_resetCounter~q\ & ((\count|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_move~q\,
	datab => \count|Equal0~0_combout\,
	datad => \s_resetCounter~q\,
	combout => \count|s_move~0_combout\);

\count|s_move\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \count|s_move~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|s_move~q\);

\s_blink~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_blink~0_combout\ = !\count|s_move~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_move~q\,
	combout => \s_blink~0_combout\);

\Selector90~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector90~0_combout\ = (\Selector86~4_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector86~4_combout\,
	datad => \reset~input_o\,
	combout => \Selector90~0_combout\);

\keys[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(2),
	o => \keys[2]~input_o\);

\keys[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(1),
	o => \keys[1]~input_o\);

\Selector37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~1_combout\ = (\estado.jogo~q\ & (\Equal2~0_combout\ & (\Equal0~0_combout\ & !\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \Equal2~0_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal1~0_combout\,
	combout => \Selector37~1_combout\);

\Selector37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~2_combout\ = (!\Selector37~1_combout\ & ((\estado.jogo~q\ & ((\keys[1]~input_o\))) # (!\estado.jogo~q\ & (!\estado.guess_n1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector37~1_combout\,
	datab => \estado.guess_n1~q\,
	datac => \estado.jogo~q\,
	datad => \keys[1]~input_o\,
	combout => \Selector37~2_combout\);

\s_resposta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector31~0_combout\,
	ena => \Selector37~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_resposta(14));

\s_resposta[13]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_resposta[13]~0_combout\ = (\Selector37~2_combout\ & (((\Equal0~0_combout\) # (!\estado.jogo~q\)))) # (!\Selector37~2_combout\ & (s_resposta(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_resposta(13),
	datab => \Equal0~0_combout\,
	datac => \estado.jogo~q\,
	datad => \Selector37~2_combout\,
	combout => \s_resposta[13]~0_combout\);

\s_resposta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_resposta[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_resposta(13));

\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (s_resposta(14) & (!s_resposta(5) & (!s_resposta(13) & !s_resposta(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_resposta(14),
	datab => s_resposta(5),
	datac => s_resposta(13),
	datad => s_resposta(11),
	combout => \Equal1~0_combout\);

\Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (\estado.jogo~q\ & \Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \Equal1~0_combout\,
	combout => \Selector37~0_combout\);

\s_resposta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector37~0_combout\,
	ena => \Selector37~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_resposta(5));

\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (s_resposta(5)) # ((s_resposta(14)) # ((!s_resposta(11)) # (!s_resposta(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_resposta(5),
	datab => s_resposta(14),
	datac => s_resposta(13),
	datad => s_resposta(11),
	combout => \Equal0~0_combout\);

\Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (\estado.jogo~q\ & ((\Equal1~0_combout\) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => \Equal1~0_combout\,
	datad => \estado.jogo~q\,
	combout => \Selector31~0_combout\);

\s_resposta[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_resposta[11]~1_combout\ = (\Selector37~2_combout\ & ((!\Selector31~0_combout\))) # (!\Selector37~2_combout\ & (s_resposta(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_resposta(11),
	datab => \Selector31~0_combout\,
	datad => \Selector37~2_combout\,
	combout => \s_resposta[11]~1_combout\);

\s_resposta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_resposta[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_resposta(11));

\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (s_resposta(11)) # (((!s_resposta(14)) # (!s_resposta(13))) # (!s_resposta(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_resposta(11),
	datab => s_resposta(5),
	datac => s_resposta(13),
	datad => s_resposta(14),
	combout => \Equal2~0_combout\);

\Selector91~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector91~11_combout\ = (\keys[2]~input_o\ & (!\keys[1]~input_o\ & (\estado.jogo~q\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keys[2]~input_o\,
	datab => \keys[1]~input_o\,
	datac => \estado.jogo~q\,
	datad => \Equal2~0_combout\,
	combout => \Selector91~11_combout\);

\keys[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(0),
	o => \keys[0]~input_o\);

\Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (\estado.jogo~q\ & (\keys[2]~input_o\ & !\keys[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \keys[2]~input_o\,
	datad => \keys[1]~input_o\,
	combout => \Add4~0_combout\);

\Selector87~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector87~0_combout\ = (\Selector86~5_combout\) # ((\Selector86~0_combout\) # (\Add4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector86~5_combout\,
	datab => \Selector86~0_combout\,
	datac => \Add4~0_combout\,
	combout => \Selector87~0_combout\);

\Selector87~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector87~1_combout\ = (\Selector87~0_combout\) # ((\estado.grupo_xx~q\ & (\keys[0]~input_o\ & !\estado.jogo~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.grupo_xx~q\,
	datab => \keys[0]~input_o\,
	datac => \estado.jogo~q\,
	datad => \Selector87~0_combout\,
	combout => \Selector87~1_combout\);

\Selector87~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector87~2_combout\ = (\Selector86~4_combout\ & (!\reset~input_o\ & (\estado.grupo_xx~q\))) # (!\Selector86~4_combout\ & (((!\Selector87~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Selector86~4_combout\,
	datac => \estado.grupo_xx~q\,
	datad => \Selector87~1_combout\,
	combout => \Selector87~2_combout\);

\estado.grupo_xx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector87~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.grupo_xx~q\);

\s_atCount~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_atCount~7_combout\ = (\keys[2]~input_o\ & !\keys[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keys[2]~input_o\,
	datad => \keys[1]~input_o\,
	combout => \s_atCount~7_combout\);

\Selector91~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector91~2_combout\ = (\estado.grupo_xx~q\ & (\keys[0]~input_o\ & ((!\s_atCount~7_combout\) # (!\estado.jogo~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.grupo_xx~q\,
	datab => \keys[0]~input_o\,
	datac => \estado.jogo~q\,
	datad => \s_atCount~7_combout\,
	combout => \Selector91~2_combout\);

\Selector91~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector91~3_combout\ = (\estado.grupo_xx~q\ & (((!\estado.guess_n1~q\ & !\count|s_move~q\)) # (!\keys[0]~input_o\))) # (!\estado.grupo_xx~q\ & (!\estado.guess_n1~q\ & (!\count|s_move~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.grupo_xx~q\,
	datab => \estado.guess_n1~q\,
	datac => \count|s_move~q\,
	datad => \keys[0]~input_o\,
	combout => \Selector91~3_combout\);

\Selector91~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector91~9_combout\ = (!\reset~input_o\ & (!\Add4~0_combout\ & ((\Selector91~3_combout\) # (\Selector91~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector91~3_combout\,
	datab => \Selector91~7_combout\,
	datac => \reset~input_o\,
	datad => \Add4~0_combout\,
	combout => \Selector91~9_combout\);

\estado.terminar~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \estado.terminar~0_combout\ = (\estado.terminar~q\ & ((\Selector91~9_combout\) # ((\Add4~0_combout\ & !\Equal2~0_combout\)))) # (!\estado.terminar~q\ & (((\Add4~0_combout\ & !\Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.terminar~q\,
	datab => \Selector91~9_combout\,
	datac => \Add4~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \estado.terminar~0_combout\);

\estado.terminar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \estado.terminar~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.terminar~q\);

\keys[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(3),
	o => \keys[3]~input_o\);

\done2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_done2,
	o => \done2~input_o\);

\done1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_done1,
	o => \done1~input_o\);

\s_done2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_done2~2_combout\ = (\s_done2~q\) # ((\done2~input_o\ & (!\reset~input_o\ & !\done1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_done2~q\,
	datab => \done2~input_o\,
	datac => \reset~input_o\,
	datad => \done1~input_o\,
	combout => \s_done2~2_combout\);

\s_done2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_done2~4_combout\ = (!\estado.jogo~q\ & (!\estado.grupo_xx~q\ & \s_done2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \estado.grupo_xx~q\,
	datac => \s_done2~2_combout\,
	combout => \s_done2~4_combout\);

s_done2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_done2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_done2~q\);

\s_done2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_done2~3_combout\ = (!\estado.jogo~q\ & !\estado.grupo_xx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado.jogo~q\,
	datad => \estado.grupo_xx~q\,
	combout => \s_done2~3_combout\);

\s_done1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_done1~0_combout\ = (\s_done2~3_combout\ & ((\s_done1~q\) # ((\done1~input_o\ & !\reset~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_done2~3_combout\,
	datab => \s_done1~q\,
	datac => \done1~input_o\,
	datad => \reset~input_o\,
	combout => \s_done1~0_combout\);

s_done1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_done1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_done1~q\);

\Selector91~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector91~5_combout\ = (\estado.waiting~q\ & ((\s_done2~q\) # ((\s_done1~q\)))) # (!\estado.waiting~q\ & (\estado.conversao1~q\ & ((!\s_done1~q\) # (!\s_done2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_done2~q\,
	datab => \s_done1~q\,
	datac => \estado.waiting~q\,
	datad => \estado.conversao1~q\,
	combout => \Selector91~5_combout\);

\Selector91~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector91~6_combout\ = (\estado.waiting~q\ & (((!\Selector91~5_combout\)))) # (!\estado.waiting~q\ & ((\estado.terminar~q\ & (!\keys[3]~input_o\)) # (!\estado.terminar~q\ & ((\Selector91~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.terminar~q\,
	datab => \keys[3]~input_o\,
	datac => \estado.waiting~q\,
	datad => \Selector91~5_combout\,
	combout => \Selector91~6_combout\);

\Selector91~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector91~7_combout\ = (\Selector91~4_combout\) # ((\estado.guess_n1~q\ & \Selector91~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.guess_n1~q\,
	datab => \Selector91~4_combout\,
	datac => \Selector91~6_combout\,
	combout => \Selector91~7_combout\);

\Selector91~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector91~8_combout\ = (\Selector91~2_combout\ & ((\reset~input_o\) # ((!\Selector91~3_combout\ & !\Selector91~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector91~2_combout\,
	datab => \reset~input_o\,
	datac => \Selector91~3_combout\,
	datad => \Selector91~7_combout\,
	combout => \Selector91~8_combout\);

\Selector91~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector91~10_combout\ = (\Selector91~11_combout\) # ((\Selector91~8_combout\) # ((\estado.waiting~q\ & \Selector91~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector91~11_combout\,
	datab => \Selector91~8_combout\,
	datac => \estado.waiting~q\,
	datad => \Selector91~9_combout\,
	combout => \Selector91~10_combout\);

\estado.waiting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector91~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.waiting~q\);

\Selector86~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector86~5_combout\ = (\estado.waiting~q\ & ((\s_done2~q\) # (\s_done1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.waiting~q\,
	datab => \s_done2~q\,
	datac => \s_done1~q\,
	combout => \Selector86~5_combout\);

\Selector90~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector90~1_combout\ = (\Selector90~0_combout\ & (\estado.conversao1~q\)) # (!\Selector90~0_combout\ & (((\Selector86~5_combout\ & !\Selector86~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.conversao1~q\,
	datab => \Selector90~0_combout\,
	datac => \Selector86~5_combout\,
	datad => \Selector86~0_combout\,
	combout => \Selector90~1_combout\);

\estado.conversao1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector90~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.conversao1~q\);

\Selector86~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector86~0_combout\ = (\estado.conversao1~q\ & (\s_done2~q\ & \s_done1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.conversao1~q\,
	datab => \s_done2~q\,
	datac => \s_done1~q\,
	combout => \Selector86~0_combout\);

\estado.jogo~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \estado.jogo~0_combout\ = (\Selector86~4_combout\ & ((\reset~input_o\ & (\Selector86~0_combout\)) # (!\reset~input_o\ & ((\estado.jogo~q\))))) # (!\Selector86~4_combout\ & (\Selector86~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector86~0_combout\,
	datab => \estado.jogo~q\,
	datac => \Selector86~4_combout\,
	datad => \reset~input_o\,
	combout => \estado.jogo~0_combout\);

\estado.jogo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \estado.jogo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.jogo~q\);

\Selector91~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector91~4_combout\ = (\estado.jogo~q\ & ((\keys[1]~input_o\) # (!\keys[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \keys[1]~input_o\,
	datad => \keys[2]~input_o\,
	combout => \Selector91~4_combout\);

\Selector86~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector86~1_combout\ = (\estado.grupo_xx~q\ & ((\estado.jogo~q\ & ((!\s_atCount~7_combout\))) # (!\estado.jogo~q\ & (!\keys[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.grupo_xx~q\,
	datab => \estado.jogo~q\,
	datac => \keys[0]~input_o\,
	datad => \s_atCount~7_combout\,
	combout => \Selector86~1_combout\);

\Selector86~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector86~2_combout\ = (\estado.conversao1~q\ & (((!\s_done1~q\) # (!\s_done2~q\)))) # (!\estado.conversao1~q\ & (\estado.waiting~q\ & (!\s_done2~q\ & !\s_done1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.conversao1~q\,
	datab => \estado.waiting~q\,
	datac => \s_done2~q\,
	datad => \s_done1~q\,
	combout => \Selector86~2_combout\);

\Selector86~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector86~3_combout\ = (\estado.terminar~q\ & (((!\keys[3]~input_o\)))) # (!\estado.terminar~q\ & (!\estado.guess_n1~q\ & (!\count|s_move~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.terminar~q\,
	datab => \estado.guess_n1~q\,
	datac => \count|s_move~q\,
	datad => \keys[3]~input_o\,
	combout => \Selector86~3_combout\);

\Selector86~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector86~4_combout\ = (\Selector91~4_combout\) # ((\Selector86~1_combout\) # ((\Selector86~2_combout\) # (\Selector86~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector91~4_combout\,
	datab => \Selector86~1_combout\,
	datac => \Selector86~2_combout\,
	datad => \Selector86~3_combout\,
	combout => \Selector86~4_combout\);

\Selector86~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector86~6_combout\ = ((\reset~input_o\ & ((\Selector86~0_combout\))) # (!\reset~input_o\ & (\estado.guess_n1~q\))) # (!\Selector86~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector86~4_combout\,
	datab => \reset~input_o\,
	datac => \estado.guess_n1~q\,
	datad => \Selector86~0_combout\,
	combout => \Selector86~6_combout\);

\estado.guess_n1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector86~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.guess_n1~q\);

s_blink : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_blink~0_combout\,
	ena => \ALT_INV_estado.guess_n1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_blink~q\);

\count|s_ledr[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_ledr[0]~0_combout\ = (\count|s_ledr\(0) & ((\s_resetCounter~q\) # ((\count|Equal0~0_combout\)))) # (!\count|s_ledr\(0) & (!\s_resetCounter~q\ & (!\count|Equal0~0_combout\ & \s_blink~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_ledr\(0),
	datab => \s_resetCounter~q\,
	datac => \count|Equal0~0_combout\,
	datad => \s_blink~q\,
	combout => \count|s_ledr[0]~0_combout\);

\count|s_ledr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \count|s_ledr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|s_ledr\(0));

\s_atCount[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_atCount[0]~8_combout\ = (s_atCount(0) & (\s_atCount~7_combout\ $ (VCC))) # (!s_atCount(0) & (\s_atCount~7_combout\ & VCC))
-- \s_atCount[0]~9\ = CARRY((s_atCount(0) & \s_atCount~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_atCount(0),
	datab => \s_atCount~7_combout\,
	datad => VCC,
	combout => \s_atCount[0]~8_combout\,
	cout => \s_atCount[0]~9\);

\Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (s_atCount(0) & \estado.guess_n1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_atCount(0),
	datab => \estado.guess_n1~q\,
	combout => \Selector22~0_combout\);

\s_atCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_atCount[0]~8_combout\,
	asdata => \Selector22~0_combout\,
	sload => \ALT_INV_estado.jogo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_atCount(0));

\n_attempts[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => s_atCount(0),
	ena => \estado.waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \n_attempts[0]~reg0_q\);

\s_atCount[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_atCount[1]~10_combout\ = (s_atCount(1) & (!\s_atCount[0]~9\)) # (!s_atCount(1) & ((\s_atCount[0]~9\) # (GND)))
-- \s_atCount[1]~11\ = CARRY((!\s_atCount[0]~9\) # (!s_atCount(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_atCount(1),
	datad => VCC,
	cin => \s_atCount[0]~9\,
	combout => \s_atCount[1]~10_combout\,
	cout => \s_atCount[1]~11\);

\Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (s_atCount(1) & \estado.guess_n1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_atCount(1),
	datab => \estado.guess_n1~q\,
	combout => \Selector21~0_combout\);

\s_atCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_atCount[1]~10_combout\,
	asdata => \Selector21~0_combout\,
	sload => \ALT_INV_estado.jogo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_atCount(1));

\n_attempts[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => s_atCount(1),
	ena => \estado.waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \n_attempts[1]~reg0_q\);

\s_atCount[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_atCount[2]~12_combout\ = (s_atCount(2) & (\s_atCount[1]~11\ $ (GND))) # (!s_atCount(2) & (!\s_atCount[1]~11\ & VCC))
-- \s_atCount[2]~13\ = CARRY((s_atCount(2) & !\s_atCount[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_atCount(2),
	datad => VCC,
	cin => \s_atCount[1]~11\,
	combout => \s_atCount[2]~12_combout\,
	cout => \s_atCount[2]~13\);

\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (s_atCount(2) & \estado.guess_n1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_atCount(2),
	datab => \estado.guess_n1~q\,
	combout => \Selector20~0_combout\);

\s_atCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_atCount[2]~12_combout\,
	asdata => \Selector20~0_combout\,
	sload => \ALT_INV_estado.jogo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_atCount(2));

\n_attempts[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => s_atCount(2),
	ena => \estado.waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \n_attempts[2]~reg0_q\);

\s_atCount[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_atCount[3]~14_combout\ = (s_atCount(3) & (!\s_atCount[2]~13\)) # (!s_atCount(3) & ((\s_atCount[2]~13\) # (GND)))
-- \s_atCount[3]~15\ = CARRY((!\s_atCount[2]~13\) # (!s_atCount(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_atCount(3),
	datad => VCC,
	cin => \s_atCount[2]~13\,
	combout => \s_atCount[3]~14_combout\,
	cout => \s_atCount[3]~15\);

\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (s_atCount(3) & \estado.guess_n1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_atCount(3),
	datab => \estado.guess_n1~q\,
	combout => \Selector19~0_combout\);

\s_atCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_atCount[3]~14_combout\,
	asdata => \Selector19~0_combout\,
	sload => \ALT_INV_estado.jogo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_atCount(3));

\n_attempts[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => s_atCount(3),
	ena => \estado.waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \n_attempts[3]~reg0_q\);

\s_atCount[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_atCount[4]~16_combout\ = (s_atCount(4) & (\s_atCount[3]~15\ $ (GND))) # (!s_atCount(4) & (!\s_atCount[3]~15\ & VCC))
-- \s_atCount[4]~17\ = CARRY((s_atCount(4) & !\s_atCount[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_atCount(4),
	datad => VCC,
	cin => \s_atCount[3]~15\,
	combout => \s_atCount[4]~16_combout\,
	cout => \s_atCount[4]~17\);

\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (s_atCount(4) & \estado.guess_n1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_atCount(4),
	datab => \estado.guess_n1~q\,
	combout => \Selector18~0_combout\);

\s_atCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_atCount[4]~16_combout\,
	asdata => \Selector18~0_combout\,
	sload => \ALT_INV_estado.jogo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_atCount(4));

\n_attempts[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => s_atCount(4),
	ena => \estado.waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \n_attempts[4]~reg0_q\);

\s_atCount[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_atCount[5]~18_combout\ = (s_atCount(5) & (!\s_atCount[4]~17\)) # (!s_atCount(5) & ((\s_atCount[4]~17\) # (GND)))
-- \s_atCount[5]~19\ = CARRY((!\s_atCount[4]~17\) # (!s_atCount(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_atCount(5),
	datad => VCC,
	cin => \s_atCount[4]~17\,
	combout => \s_atCount[5]~18_combout\,
	cout => \s_atCount[5]~19\);

\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (s_atCount(5) & \estado.guess_n1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_atCount(5),
	datab => \estado.guess_n1~q\,
	combout => \Selector17~0_combout\);

\s_atCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_atCount[5]~18_combout\,
	asdata => \Selector17~0_combout\,
	sload => \ALT_INV_estado.jogo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_atCount(5));

\n_attempts[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => s_atCount(5),
	ena => \estado.waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \n_attempts[5]~reg0_q\);

\s_atCount[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_atCount[6]~20_combout\ = s_atCount(6) $ (!\s_atCount[5]~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_atCount(6),
	cin => \s_atCount[5]~19\,
	combout => \s_atCount[6]~20_combout\);

\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (s_atCount(6) & \estado.guess_n1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_atCount(6),
	datab => \estado.guess_n1~q\,
	combout => \Selector16~0_combout\);

\s_atCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_atCount[6]~20_combout\,
	asdata => \Selector16~0_combout\,
	sload => \ALT_INV_estado.jogo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_atCount(6));

\n_attempts[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => s_atCount(6),
	ena => \estado.waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \n_attempts[6]~reg0_q\);

\Selector92~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector92~0_combout\ = (\estado.waiting~q\) # ((\activate~reg0_q\ & !\estado.jogo~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.waiting~q\,
	datab => \activate~reg0_q\,
	datad => \estado.jogo~q\,
	combout => \Selector92~0_combout\);

\activate~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector92~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \activate~reg0_q\);

\Add4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~1_combout\ = s_mid(0) $ (VCC)
-- \Add4~2\ = CARRY(s_mid(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_mid(0),
	datad => VCC,
	combout => \Add4~1_combout\,
	cout => \Add4~2\);

\Add4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~3_combout\ = (s_mid(1) & (!\Add4~2\)) # (!s_mid(1) & ((\Add4~2\) # (GND)))
-- \Add4~4\ = CARRY((!\Add4~2\) # (!s_mid(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_mid(1),
	datad => VCC,
	cin => \Add4~2\,
	combout => \Add4~3_combout\,
	cout => \Add4~4\);

\Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (s_mid(2) & (\Add4~4\ $ (GND))) # (!s_mid(2) & (!\Add4~4\ & VCC))
-- \Add4~9\ = CARRY((s_mid(2) & !\Add4~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_mid(2),
	datad => VCC,
	cin => \Add4~4\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

\Add4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~11_combout\ = (s_mid(3) & (!\Add4~9\)) # (!s_mid(3) & ((\Add4~9\) # (GND)))
-- \Add4~12\ = CARRY((!\Add4~9\) # (!s_mid(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_mid(3),
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~11_combout\,
	cout => \Add4~12\);

\Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (s_mid(4) & (\Add4~12\ $ (GND))) # (!s_mid(4) & (!\Add4~12\ & VCC))
-- \Add4~15\ = CARRY((s_mid(4) & !\Add4~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_mid(4),
	datad => VCC,
	cin => \Add4~12\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

\Add4~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~17_combout\ = (s_mid(5) & (!\Add4~15\)) # (!s_mid(5) & ((\Add4~15\) # (GND)))
-- \Add4~18\ = CARRY((!\Add4~15\) # (!s_mid(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_mid(5),
	datad => VCC,
	cin => \Add4~15\,
	combout => \Add4~17_combout\,
	cout => \Add4~18\);

\Add4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~20_combout\ = (s_mid(6) & (\Add4~18\ $ (GND))) # (!s_mid(6) & (!\Add4~18\ & VCC))
-- \Add4~21\ = CARRY((s_mid(6) & !\Add4~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_mid(6),
	datad => VCC,
	cin => \Add4~18\,
	combout => \Add4~20_combout\,
	cout => \Add4~21\);

\Add4~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~23_combout\ = \Add4~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add4~21\,
	combout => \Add4~23_combout\);

\Add4~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~25_combout\ = (\estado.jogo~q\ & \Add4~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \Add4~23_combout\,
	combout => \Add4~25_combout\);

\Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (\estado.jogo~q\ & (\s_atCount~7_combout\ & (\Equal1~0_combout\))) # (!\estado.jogo~q\ & (((!\estado.guess_n1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_atCount~7_combout\,
	datab => \Equal1~0_combout\,
	datac => \estado.jogo~q\,
	datad => \estado.guess_n1~q\,
	combout => \Add4~6_combout\);

\s_lo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add4~25_combout\,
	ena => \Add4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_lo(7));

\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = s_mid(0) $ (VCC)
-- \Add3~1\ = CARRY(s_mid(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_mid(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (s_mid(1) & (\Add3~1\ & VCC)) # (!s_mid(1) & (!\Add3~1\))
-- \Add3~3\ = CARRY((!s_mid(1) & !\Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_mid(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (s_mid(2) & ((GND) # (!\Add3~3\))) # (!s_mid(2) & (\Add3~3\ $ (GND)))
-- \Add3~5\ = CARRY((s_mid(2)) # (!\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_mid(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (s_mid(3) & (\Add3~5\ & VCC)) # (!s_mid(3) & (!\Add3~5\))
-- \Add3~7\ = CARRY((!s_mid(3) & !\Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_mid(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (s_mid(4) & ((GND) # (!\Add3~7\))) # (!s_mid(4) & (\Add3~7\ $ (GND)))
-- \Add3~9\ = CARRY((s_mid(4)) # (!\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_mid(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

\Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (s_mid(5) & (\Add3~9\ & VCC)) # (!s_mid(5) & (!\Add3~9\))
-- \Add3~11\ = CARRY((!s_mid(5) & !\Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_mid(5),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

\Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (s_mid(6) & ((GND) # (!\Add3~11\))) # (!s_mid(6) & (\Add3~11\ $ (GND)))
-- \Add3~13\ = CARRY((s_mid(6)) # (!\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_mid(6),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

\Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = !\Add3~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add3~13\,
	combout => \Add3~14_combout\);

\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\estado.jogo~q\ & \Add3~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \Add3~14_combout\,
	combout => \Selector8~0_combout\);

\Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = (\estado.jogo~q\ & (\s_atCount~7_combout\ & ((!\Equal0~0_combout\)))) # (!\estado.jogo~q\ & (((!\estado.guess_n1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_atCount~7_combout\,
	datab => \estado.jogo~q\,
	datac => \estado.guess_n1~q\,
	datad => \Equal0~0_combout\,
	combout => \Selector13~1_combout\);

\s_hi[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector8~0_combout\,
	ena => \Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_hi(7));

\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\Add3~12_combout\) # (!\estado.jogo~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~12_combout\,
	datad => \estado.jogo~q\,
	combout => \Selector9~0_combout\);

\s_hi[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_hi[0]~0_combout\ = (\estado.jogo~q\ & (!\Equal0~0_combout\ & ((\s_atCount~7_combout\)))) # (!\estado.jogo~q\ & (((!\estado.guess_n1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \estado.guess_n1~q\,
	datac => \estado.jogo~q\,
	datad => \s_atCount~7_combout\,
	combout => \s_hi[0]~0_combout\);

\s_hi[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector9~0_combout\,
	ena => \s_hi[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_hi(6));

\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\Add3~10_combout\) # (!\estado.jogo~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datad => \estado.jogo~q\,
	combout => \Selector10~0_combout\);

\s_hi[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector10~0_combout\,
	ena => \s_hi[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_hi(5));

\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\estado.jogo~q\ & \Add3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \Add3~8_combout\,
	combout => \Selector11~0_combout\);

\s_hi[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector11~0_combout\,
	ena => \Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_hi(4));

\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\estado.jogo~q\ & \Add3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \Add3~6_combout\,
	combout => \Selector12~0_combout\);

\s_hi[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector12~0_combout\,
	ena => \Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_hi(3));

\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\estado.jogo~q\ & \Add3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \Add3~4_combout\,
	combout => \Selector13~0_combout\);

\s_hi[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector13~0_combout\,
	ena => \Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_hi(2));

\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\Add3~2_combout\) # (!\estado.jogo~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datad => \estado.jogo~q\,
	combout => \Selector14~0_combout\);

\s_hi[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector14~0_combout\,
	ena => \s_hi[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_hi(1));

\Add4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~7_combout\ = (\estado.jogo~q\ & \Add4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \Add4~1_combout\,
	combout => \Add4~7_combout\);

\s_lo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add4~7_combout\,
	ena => \Add4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_lo(0));

\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\Add3~0_combout\) # (!\estado.jogo~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datad => \estado.jogo~q\,
	combout => \Selector15~0_combout\);

\s_hi[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector15~0_combout\,
	ena => \s_hi[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_hi(0));

\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (s_lo(0) & (s_hi(0) $ (VCC))) # (!s_lo(0) & (s_hi(0) & VCC))
-- \Add0~1\ = CARRY((s_lo(0) & s_hi(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_lo(0),
	datab => s_hi(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (s_lo(1) & ((s_hi(1) & (\Add0~1\ & VCC)) # (!s_hi(1) & (!\Add0~1\)))) # (!s_lo(1) & ((s_hi(1) & (!\Add0~1\)) # (!s_hi(1) & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((s_lo(1) & (!s_hi(1) & !\Add0~1\)) # (!s_lo(1) & ((!\Add0~1\) # (!s_hi(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_lo(1),
	datab => s_hi(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((s_lo(2) $ (s_hi(2) $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((s_lo(2) & ((s_hi(2)) # (!\Add0~3\))) # (!s_lo(2) & (s_hi(2) & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_lo(2),
	datab => s_hi(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (s_lo(3) & ((s_hi(3) & (\Add0~5\ & VCC)) # (!s_hi(3) & (!\Add0~5\)))) # (!s_lo(3) & ((s_hi(3) & (!\Add0~5\)) # (!s_hi(3) & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((s_lo(3) & (!s_hi(3) & !\Add0~5\)) # (!s_lo(3) & ((!\Add0~5\) # (!s_hi(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_lo(3),
	datab => s_hi(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((s_lo(4) $ (s_hi(4) $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((s_lo(4) & ((s_hi(4)) # (!\Add0~7\))) # (!s_lo(4) & (s_hi(4) & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_lo(4),
	datab => s_hi(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (s_lo(5) & ((s_hi(5) & (\Add0~9\ & VCC)) # (!s_hi(5) & (!\Add0~9\)))) # (!s_lo(5) & ((s_hi(5) & (!\Add0~9\)) # (!s_hi(5) & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((s_lo(5) & (!s_hi(5) & !\Add0~9\)) # (!s_lo(5) & ((!\Add0~9\) # (!s_hi(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_lo(5),
	datab => s_hi(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((s_lo(6) $ (s_hi(6) $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((s_lo(6) & ((s_hi(6)) # (!\Add0~11\))) # (!s_lo(6) & (s_hi(6) & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_lo(6),
	datab => s_hi(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = s_lo(7) $ (s_hi(7) $ (\Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_lo(7),
	datab => s_hi(7),
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

\s_mid[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_mid[0]~7_combout\ = (\Add0~2_combout\ & (\Add0~0_combout\ $ (VCC))) # (!\Add0~2_combout\ & (\Add0~0_combout\ & VCC))
-- \s_mid[0]~8\ = CARRY((\Add0~2_combout\ & \Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add0~0_combout\,
	datad => VCC,
	combout => \s_mid[0]~7_combout\,
	cout => \s_mid[0]~8\);

\s_mid[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_mid[1]~9_combout\ = (\Add0~4_combout\ & (!\s_mid[0]~8\)) # (!\Add0~4_combout\ & ((\s_mid[0]~8\) # (GND)))
-- \s_mid[1]~10\ = CARRY((!\s_mid[0]~8\) # (!\Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datad => VCC,
	cin => \s_mid[0]~8\,
	combout => \s_mid[1]~9_combout\,
	cout => \s_mid[1]~10\);

\s_mid[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_mid[2]~11_combout\ = (\Add0~6_combout\ & (\s_mid[1]~10\ $ (GND))) # (!\Add0~6_combout\ & (!\s_mid[1]~10\ & VCC))
-- \s_mid[2]~12\ = CARRY((\Add0~6_combout\ & !\s_mid[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datad => VCC,
	cin => \s_mid[1]~10\,
	combout => \s_mid[2]~11_combout\,
	cout => \s_mid[2]~12\);

\s_mid[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_mid[3]~13_combout\ = (\Add0~8_combout\ & (!\s_mid[2]~12\)) # (!\Add0~8_combout\ & ((\s_mid[2]~12\) # (GND)))
-- \s_mid[3]~14\ = CARRY((!\s_mid[2]~12\) # (!\Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datad => VCC,
	cin => \s_mid[2]~12\,
	combout => \s_mid[3]~13_combout\,
	cout => \s_mid[3]~14\);

\s_mid[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_mid[4]~15_combout\ = (\Add0~10_combout\ & (\s_mid[3]~14\ $ (GND))) # (!\Add0~10_combout\ & (!\s_mid[3]~14\ & VCC))
-- \s_mid[4]~16\ = CARRY((\Add0~10_combout\ & !\s_mid[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datad => VCC,
	cin => \s_mid[3]~14\,
	combout => \s_mid[4]~15_combout\,
	cout => \s_mid[4]~16\);

\s_mid[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_mid[5]~17_combout\ = (\Add0~12_combout\ & (!\s_mid[4]~16\)) # (!\Add0~12_combout\ & ((\s_mid[4]~16\) # (GND)))
-- \s_mid[5]~18\ = CARRY((!\s_mid[4]~16\) # (!\Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datad => VCC,
	cin => \s_mid[4]~16\,
	combout => \s_mid[5]~17_combout\,
	cout => \s_mid[5]~18\);

\s_mid[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_mid[6]~19_combout\ = \Add0~14_combout\ $ (!\s_mid[5]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	cin => \s_mid[5]~18\,
	combout => \s_mid[6]~19_combout\);

\s_mid[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_mid[6]~19_combout\,
	ena => \estado.waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_mid(6));

\Add4~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~22_combout\ = (\estado.jogo~q\ & \Add4~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \Add4~20_combout\,
	combout => \Add4~22_combout\);

\s_lo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add4~22_combout\,
	ena => \Add4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_lo(6));

\s_mid[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_mid[5]~17_combout\,
	ena => \estado.waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_mid(5));

\Add4~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~19_combout\ = (\estado.jogo~q\ & \Add4~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \Add4~17_combout\,
	combout => \Add4~19_combout\);

\s_lo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add4~19_combout\,
	ena => \Add4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_lo(5));

\s_mid[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_mid[4]~15_combout\,
	ena => \estado.waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_mid(4));

\Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = (\estado.jogo~q\ & \Add4~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \Add4~14_combout\,
	combout => \Add4~16_combout\);

\s_lo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add4~16_combout\,
	ena => \Add4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_lo(4));

\s_mid[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_mid[3]~13_combout\,
	ena => \estado.waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_mid(3));

\Add4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~13_combout\ = (\estado.jogo~q\ & \Add4~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \Add4~11_combout\,
	combout => \Add4~13_combout\);

\s_lo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add4~13_combout\,
	ena => \Add4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_lo(3));

\s_mid[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_mid[2]~11_combout\,
	ena => \estado.waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_mid(2));

\Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (\estado.jogo~q\ & \Add4~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \Add4~8_combout\,
	combout => \Add4~10_combout\);

\s_lo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add4~10_combout\,
	ena => \Add4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_lo(2));

\s_mid[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_mid[1]~9_combout\,
	ena => \estado.waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_mid(1));

\Add4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~5_combout\ = (\estado.jogo~q\ & \Add4~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \Add4~3_combout\,
	combout => \Add4~5_combout\);

\s_lo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add4~5_combout\,
	ena => \Add4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_lo(1));

\s_mid[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_mid[0]~7_combout\,
	ena => \estado.waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_mid(0));

\attempt[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => s_mid(0),
	ena => \estado.waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \attempt[0]~reg0_q\);

\attempt[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => s_mid(1),
	ena => \estado.waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \attempt[1]~reg0_q\);

\attempt[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => s_mid(2),
	ena => \estado.waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \attempt[2]~reg0_q\);

\attempt[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => s_mid(3),
	ena => \estado.waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \attempt[3]~reg0_q\);

\attempt[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => s_mid(4),
	ena => \estado.waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \attempt[4]~reg0_q\);

\attempt[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => s_mid(5),
	ena => \estado.waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \attempt[5]~reg0_q\);

\attempt[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => s_mid(6),
	ena => \estado.waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \attempt[6]~reg0_q\);

\Selector84~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector84~0_combout\ = (\enable[1]~reg0_q\ & ((\estado.waiting~q\) # ((\estado.terminar~q\) # (\estado.conversao1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable[1]~reg0_q\,
	datab => \estado.waiting~q\,
	datac => \estado.terminar~q\,
	datad => \estado.conversao1~q\,
	combout => \Selector84~0_combout\);

\Selector84~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector84~1_combout\ = (\Selector84~0_combout\) # ((\estado.grupo_xx~q\) # (!\estado.guess_n1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector84~0_combout\,
	datab => \estado.grupo_xx~q\,
	datad => \estado.guess_n1~q\,
	combout => \Selector84~1_combout\);

\enable[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector84~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable[1]~reg0_q\);

\texto~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \texto~0_combout\ = (!\estado.waiting~q\ & !\estado.conversao1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado.waiting~q\,
	datad => \estado.conversao1~q\,
	combout => \texto~0_combout\);

\Selector85~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector85~0_combout\ = ((\enable[0]~reg0_q\ & ((\estado.terminar~q\) # (!\texto~0_combout\)))) # (!\estado.guess_n1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable[0]~reg0_q\,
	datab => \estado.terminar~q\,
	datac => \texto~0_combout\,
	datad => \estado.guess_n1~q\,
	combout => \Selector85~0_combout\);

\enable[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector85~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable[0]~reg0_q\);

\s_loadRotate~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_loadRotate~0_combout\ = !\estado.grupo_xx~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.grupo_xx~q\,
	combout => \s_loadRotate~0_combout\);

s_loadRotate : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_loadRotate~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_loadRotate~q\);

\rotator|s_shiftReg~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~35_combout\ = (\rotator|s_shiftReg\(0)) # (\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(0),
	datab => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~35_combout\);

\rotator|s_shiftReg[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(35));

\rotator|s_shiftReg~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~30_combout\ = (\rotator|s_shiftReg\(35) & !\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(35),
	datad => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~30_combout\);

\rotator|s_shiftReg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(30));

\rotator|s_shiftReg~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~25_combout\ = (\rotator|s_shiftReg\(30)) # (\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(30),
	datab => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~25_combout\);

\rotator|s_shiftReg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(25));

\rotator|s_shiftReg~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~20_combout\ = (\rotator|s_shiftReg\(25)) # (\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(25),
	datab => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~20_combout\);

\rotator|s_shiftReg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(20));

\rotator|s_shiftReg~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~15_combout\ = (\rotator|s_shiftReg\(20) & !\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(20),
	datad => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~15_combout\);

\rotator|s_shiftReg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(15));

\rotator|s_shiftReg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~10_combout\ = (\rotator|s_shiftReg\(15) & !\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(15),
	datad => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~10_combout\);

\rotator|s_shiftReg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(10));

\rotator|s_shiftReg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~5_combout\ = (\rotator|s_shiftReg\(10) & !\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(10),
	datad => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~5_combout\);

\rotator|s_shiftReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(5));

\rotator|s_shiftReg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~0_combout\ = (\rotator|s_shiftReg\(5)) # (\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(5),
	datab => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~0_combout\);

\rotator|s_shiftReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(0));

\Selector82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector82~0_combout\ = (\rotator|s_shiftReg\(0)) # (!\estado.grupo_xx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(0),
	datad => \estado.grupo_xx~q\,
	combout => \Selector82~0_combout\);

\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

\texto[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector82~0_combout\,
	asdata => \~GND~combout\,
	sclr => \estado.terminar~q\,
	sload => \estado.jogo~q\,
	ena => \texto~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[0]~reg0_q\);

\rotator|s_shiftReg~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~36_combout\ = (\rotator|s_shiftReg\(1) & !\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(1),
	datad => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~36_combout\);

\rotator|s_shiftReg[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(36));

\rotator|s_shiftReg~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~31_combout\ = (\rotator|s_shiftReg\(36) & !\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(36),
	datad => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~31_combout\);

\rotator|s_shiftReg[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(31));

\rotator|s_shiftReg~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~26_combout\ = (\rotator|s_shiftReg\(31)) # (\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(31),
	datab => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~26_combout\);

\rotator|s_shiftReg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(26));

\rotator|s_shiftReg~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~21_combout\ = (\rotator|s_shiftReg\(26)) # (\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(26),
	datab => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~21_combout\);

\rotator|s_shiftReg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(21));

\rotator|s_shiftReg~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~16_combout\ = (\rotator|s_shiftReg\(21) & !\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(21),
	datad => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~16_combout\);

\rotator|s_shiftReg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(16));

\rotator|s_shiftReg~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~11_combout\ = (\rotator|s_shiftReg\(16) & !\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(16),
	datad => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~11_combout\);

\rotator|s_shiftReg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(11));

\rotator|s_shiftReg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~6_combout\ = (\rotator|s_shiftReg\(11) & !\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(11),
	datad => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~6_combout\);

\rotator|s_shiftReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(6));

\rotator|s_shiftReg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~1_combout\ = (\rotator|s_shiftReg\(6) & !\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(6),
	datad => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~1_combout\);

\rotator|s_shiftReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(1));

\Selector81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector81~0_combout\ = (\estado.grupo_xx~q\ & \rotator|s_shiftReg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.grupo_xx~q\,
	datab => \rotator|s_shiftReg\(1),
	combout => \Selector81~0_combout\);

\texto[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector81~0_combout\,
	ena => \texto~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[1]~reg0_q\);

\rotator|s_shiftReg~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~37_combout\ = (\rotator|s_shiftReg\(2)) # (\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(2),
	datab => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~37_combout\);

\rotator|s_shiftReg[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(37));

\rotator|s_shiftReg~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~32_combout\ = (\rotator|s_shiftReg\(37)) # (\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(37),
	datab => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~32_combout\);

\rotator|s_shiftReg[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(32));

\rotator|s_shiftReg~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~27_combout\ = (\rotator|s_shiftReg\(32)) # (\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(32),
	datab => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~27_combout\);

\rotator|s_shiftReg[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(27));

\rotator|s_shiftReg~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~22_combout\ = (\rotator|s_shiftReg\(27) & !\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(27),
	datad => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~22_combout\);

\rotator|s_shiftReg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(22));

\rotator|s_shiftReg~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~17_combout\ = (\rotator|s_shiftReg\(22) & !\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(22),
	datad => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~17_combout\);

\rotator|s_shiftReg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(17));

\rotator|s_shiftReg~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~12_combout\ = (\rotator|s_shiftReg\(17) & !\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(17),
	datad => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~12_combout\);

\rotator|s_shiftReg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(12));

\rotator|s_shiftReg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~7_combout\ = (\rotator|s_shiftReg\(12) & !\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(12),
	datad => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~7_combout\);

\rotator|s_shiftReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(7));

\rotator|s_shiftReg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~2_combout\ = (\rotator|s_shiftReg\(7)) # (\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(7),
	datab => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~2_combout\);

\rotator|s_shiftReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(2));

\Selector80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector80~0_combout\ = (\estado.grupo_xx~q\ & \rotator|s_shiftReg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.grupo_xx~q\,
	datab => \rotator|s_shiftReg\(2),
	combout => \Selector80~0_combout\);

\texto[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector80~0_combout\,
	ena => \texto~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[2]~reg0_q\);

\rotator|s_shiftReg~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~38_combout\ = (\rotator|s_shiftReg\(3)) # (\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(3),
	datab => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~38_combout\);

\rotator|s_shiftReg[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(38));

\rotator|s_shiftReg~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~33_combout\ = (\rotator|s_shiftReg\(38) & !\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(38),
	datad => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~33_combout\);

\rotator|s_shiftReg[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(33));

\rotator|s_shiftReg~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~28_combout\ = (\rotator|s_shiftReg\(33) & !\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(33),
	datad => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~28_combout\);

\rotator|s_shiftReg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(28));

\rotator|s_shiftReg~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~23_combout\ = (\rotator|s_shiftReg\(28) & !\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(28),
	datad => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~23_combout\);

\rotator|s_shiftReg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(23));

\rotator|s_shiftReg~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~18_combout\ = (\rotator|s_shiftReg\(23) & !\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(23),
	datad => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~18_combout\);

\rotator|s_shiftReg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(18));

\rotator|s_shiftReg~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~13_combout\ = (\rotator|s_shiftReg\(18)) # (\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(18),
	datab => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~13_combout\);

\rotator|s_shiftReg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(13));

\rotator|s_shiftReg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~8_combout\ = (\rotator|s_shiftReg\(13) & !\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(13),
	datad => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~8_combout\);

\rotator|s_shiftReg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(8));

\rotator|s_shiftReg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~3_combout\ = (\rotator|s_shiftReg\(8) & !\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(8),
	datad => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~3_combout\);

\rotator|s_shiftReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(3));

\Selector79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~0_combout\ = (\estado.jogo~q\) # ((\estado.grupo_xx~q\ & \rotator|s_shiftReg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \estado.grupo_xx~q\,
	datac => \rotator|s_shiftReg\(3),
	combout => \Selector79~0_combout\);

\texto[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector79~0_combout\,
	ena => \texto~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[3]~reg0_q\);

\rotator|s_shiftReg~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~39_combout\ = (\rotator|s_shiftReg\(4) & !\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(4),
	datad => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~39_combout\);

\rotator|s_shiftReg[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(39));

\rotator|s_shiftReg~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~34_combout\ = (\rotator|s_shiftReg\(39)) # (\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(39),
	datab => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~34_combout\);

\rotator|s_shiftReg[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(34));

\rotator|s_shiftReg~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~29_combout\ = (\rotator|s_shiftReg\(34)) # (\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(34),
	datab => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~29_combout\);

\rotator|s_shiftReg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(29));

\rotator|s_shiftReg~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~24_combout\ = (\rotator|s_shiftReg\(29)) # (\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(29),
	datab => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~24_combout\);

\rotator|s_shiftReg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(24));

\rotator|s_shiftReg~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~19_combout\ = (\rotator|s_shiftReg\(24) & !\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(24),
	datad => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~19_combout\);

\rotator|s_shiftReg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(19));

\rotator|s_shiftReg~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~14_combout\ = (\rotator|s_shiftReg\(19)) # (\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(19),
	datab => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~14_combout\);

\rotator|s_shiftReg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(14));

\rotator|s_shiftReg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~9_combout\ = (\rotator|s_shiftReg\(14) & !\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(14),
	datad => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~9_combout\);

\rotator|s_shiftReg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(9));

\rotator|s_shiftReg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rotator|s_shiftReg~4_combout\ = (\rotator|s_shiftReg\(9) & !\s_loadRotate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(9),
	datad => \s_loadRotate~q\,
	combout => \rotator|s_shiftReg~4_combout\);

\rotator|s_shiftReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \rotator|s_shiftReg~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotator|s_shiftReg\(4));

\Selector78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector78~0_combout\ = (\estado.jogo~q\) # ((\estado.grupo_xx~q\ & \rotator|s_shiftReg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \estado.grupo_xx~q\,
	datac => \rotator|s_shiftReg\(4),
	combout => \Selector78~0_combout\);

\texto[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector78~0_combout\,
	ena => \texto~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[4]~reg0_q\);

\Selector77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector77~0_combout\ = (\estado.jogo~q\ & ((s_resposta(5)) # ((\estado.grupo_xx~q\ & \rotator|s_shiftReg\(5))))) # (!\estado.jogo~q\ & (\estado.grupo_xx~q\ & (\rotator|s_shiftReg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \estado.grupo_xx~q\,
	datac => \rotator|s_shiftReg\(5),
	datad => s_resposta(5),
	combout => \Selector77~0_combout\);

\texto[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector77~0_combout\,
	ena => \texto~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[5]~reg0_q\);

\Selector76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector76~0_combout\ = (\rotator|s_shiftReg\(6)) # (!\estado.grupo_xx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(6),
	datad => \estado.grupo_xx~q\,
	combout => \Selector76~0_combout\);

\texto[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector76~0_combout\,
	asdata => \~GND~combout\,
	sclr => \estado.terminar~q\,
	sload => \estado.jogo~q\,
	ena => \texto~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[6]~reg0_q\);

\Selector75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector75~0_combout\ = (\estado.grupo_xx~q\ & \rotator|s_shiftReg\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.grupo_xx~q\,
	datab => \rotator|s_shiftReg\(7),
	combout => \Selector75~0_combout\);

\texto[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector75~0_combout\,
	ena => \texto~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[7]~reg0_q\);

\Selector74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector74~0_combout\ = (\estado.jogo~q\ & ((s_resposta(5)) # ((\estado.grupo_xx~q\ & \rotator|s_shiftReg\(8))))) # (!\estado.jogo~q\ & (\estado.grupo_xx~q\ & (\rotator|s_shiftReg\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \estado.grupo_xx~q\,
	datac => \rotator|s_shiftReg\(8),
	datad => s_resposta(5),
	combout => \Selector74~0_combout\);

\texto[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector74~0_combout\,
	ena => \texto~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[8]~reg0_q\);

\Selector73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector73~0_combout\ = (\rotator|s_shiftReg\(9)) # (!\estado.grupo_xx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(9),
	datad => \estado.grupo_xx~q\,
	combout => \Selector73~0_combout\);

\texto[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector73~0_combout\,
	asdata => s_resposta(13),
	sclr => \estado.terminar~q\,
	sload => \estado.jogo~q\,
	ena => \texto~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[9]~reg0_q\);

\Selector72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector72~0_combout\ = (\estado.jogo~q\) # ((\estado.grupo_xx~q\ & \rotator|s_shiftReg\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \estado.grupo_xx~q\,
	datac => \rotator|s_shiftReg\(10),
	combout => \Selector72~0_combout\);

\texto[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector72~0_combout\,
	ena => \texto~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[10]~reg0_q\);

\Selector71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector71~0_combout\ = (\estado.jogo~q\ & ((s_resposta(11)) # ((\estado.grupo_xx~q\ & \rotator|s_shiftReg\(11))))) # (!\estado.jogo~q\ & (\estado.grupo_xx~q\ & (\rotator|s_shiftReg\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \estado.grupo_xx~q\,
	datac => \rotator|s_shiftReg\(11),
	datad => s_resposta(11),
	combout => \Selector71~0_combout\);

\texto[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector71~0_combout\,
	ena => \texto~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[11]~reg0_q\);

\Selector70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector70~0_combout\ = (\estado.jogo~q\ & ((s_resposta(11)) # ((\estado.grupo_xx~q\ & \rotator|s_shiftReg\(12))))) # (!\estado.jogo~q\ & (\estado.grupo_xx~q\ & (\rotator|s_shiftReg\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \estado.grupo_xx~q\,
	datac => \rotator|s_shiftReg\(12),
	datad => s_resposta(11),
	combout => \Selector70~0_combout\);

\texto[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector70~0_combout\,
	ena => \texto~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[12]~reg0_q\);

\Selector69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector69~0_combout\ = (\rotator|s_shiftReg\(13)) # (!\estado.grupo_xx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(13),
	datad => \estado.grupo_xx~q\,
	combout => \Selector69~0_combout\);

\texto[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector69~0_combout\,
	asdata => s_resposta(13),
	sclr => \estado.terminar~q\,
	sload => \estado.jogo~q\,
	ena => \texto~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[13]~reg0_q\);

\Selector68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector68~0_combout\ = (\rotator|s_shiftReg\(14)) # (!\estado.grupo_xx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(14),
	datad => \estado.grupo_xx~q\,
	combout => \Selector68~0_combout\);

\texto[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector68~0_combout\,
	asdata => s_resposta(14),
	sclr => \estado.terminar~q\,
	sload => \estado.jogo~q\,
	ena => \texto~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[14]~reg0_q\);

\Selector67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector67~0_combout\ = (\rotator|s_shiftReg\(15)) # (!\estado.grupo_xx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(15),
	datad => \estado.grupo_xx~q\,
	combout => \Selector67~0_combout\);

\texto[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector67~0_combout\,
	asdata => \~GND~combout\,
	sclr => \estado.terminar~q\,
	sload => \estado.jogo~q\,
	ena => \texto~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[15]~reg0_q\);

\Selector66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector66~0_combout\ = (\estado.grupo_xx~q\ & \rotator|s_shiftReg\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.grupo_xx~q\,
	datab => \rotator|s_shiftReg\(16),
	combout => \Selector66~0_combout\);

\texto[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector66~0_combout\,
	ena => \texto~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[16]~reg0_q\);

\Selector65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector65~0_combout\ = (\rotator|s_shiftReg\(17)) # (!\estado.grupo_xx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(17),
	datad => \estado.grupo_xx~q\,
	combout => \Selector65~0_combout\);

\texto[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector65~0_combout\,
	asdata => \~GND~combout\,
	sclr => \estado.terminar~q\,
	sload => \estado.jogo~q\,
	ena => \texto~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[17]~reg0_q\);

\Selector64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector64~0_combout\ = (\estado.jogo~q\) # ((\estado.grupo_xx~q\ & \rotator|s_shiftReg\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \estado.grupo_xx~q\,
	datac => \rotator|s_shiftReg\(18),
	combout => \Selector64~0_combout\);

\texto[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector64~0_combout\,
	ena => \texto~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[18]~reg0_q\);

\Selector63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector63~0_combout\ = (\rotator|s_shiftReg\(19)) # (!\estado.grupo_xx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(19),
	datad => \estado.grupo_xx~q\,
	combout => \Selector63~0_combout\);

\texto[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector63~0_combout\,
	asdata => VCC,
	sclr => \estado.terminar~q\,
	sload => \estado.jogo~q\,
	ena => \texto~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[19]~reg0_q\);

\Selector62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector62~0_combout\ = (!\estado.jogo~q\ & (!\estado.terminar~q\ & ((\rotator|s_shiftReg\(20)) # (!\estado.grupo_xx~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(20),
	datab => \estado.grupo_xx~q\,
	datac => \estado.jogo~q\,
	datad => \estado.terminar~q\,
	combout => \Selector62~0_combout\);

\texto[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector62~0_combout\,
	ena => \texto~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[20]~reg0_q\);

\Selector61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector61~0_combout\ = (\estado.grupo_xx~q\ & ((\rotator|s_shiftReg\(21)) # ((\texto[21]~reg0_q\ & !\texto~0_combout\)))) # (!\estado.grupo_xx~q\ & (((\texto[21]~reg0_q\ & !\texto~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.grupo_xx~q\,
	datab => \rotator|s_shiftReg\(21),
	datac => \texto[21]~reg0_q\,
	datad => \texto~0_combout\,
	combout => \Selector61~0_combout\);

\texto[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector61~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[21]~reg0_q\);

\Selector60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector60~0_combout\ = (!\estado.jogo~q\ & (!\estado.terminar~q\ & ((\rotator|s_shiftReg\(22)) # (!\estado.grupo_xx~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(22),
	datab => \estado.grupo_xx~q\,
	datac => \estado.jogo~q\,
	datad => \estado.terminar~q\,
	combout => \Selector60~0_combout\);

\texto[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector60~0_combout\,
	ena => \texto~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[22]~reg0_q\);

\Selector59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector59~0_combout\ = (\estado.grupo_xx~q\ & ((\rotator|s_shiftReg\(23)) # ((\texto[23]~reg0_q\ & !\texto~0_combout\)))) # (!\estado.grupo_xx~q\ & (((\texto[23]~reg0_q\ & !\texto~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.grupo_xx~q\,
	datab => \rotator|s_shiftReg\(23),
	datac => \texto[23]~reg0_q\,
	datad => \texto~0_combout\,
	combout => \Selector59~0_combout\);

\texto[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector59~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[23]~reg0_q\);

\Selector58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector58~0_combout\ = (!\estado.jogo~q\ & (!\estado.terminar~q\ & ((\rotator|s_shiftReg\(24)) # (!\estado.grupo_xx~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(24),
	datab => \estado.grupo_xx~q\,
	datac => \estado.jogo~q\,
	datad => \estado.terminar~q\,
	combout => \Selector58~0_combout\);

\texto[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector58~0_combout\,
	ena => \texto~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[24]~reg0_q\);

\Selector57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector57~0_combout\ = (\estado.grupo_xx~q\ & ((\rotator|s_shiftReg\(25)) # ((\texto[25]~reg0_q\ & !\texto~0_combout\)))) # (!\estado.grupo_xx~q\ & (((\texto[25]~reg0_q\ & !\texto~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.grupo_xx~q\,
	datab => \rotator|s_shiftReg\(25),
	datac => \texto[25]~reg0_q\,
	datad => \texto~0_combout\,
	combout => \Selector57~0_combout\);

\texto[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[25]~reg0_q\);

\Selector56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector56~0_combout\ = (\estado.grupo_xx~q\ & ((\rotator|s_shiftReg\(26)) # ((\texto[26]~reg0_q\ & !\texto~0_combout\)))) # (!\estado.grupo_xx~q\ & (((\texto[26]~reg0_q\ & !\texto~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.grupo_xx~q\,
	datab => \rotator|s_shiftReg\(26),
	datac => \texto[26]~reg0_q\,
	datad => \texto~0_combout\,
	combout => \Selector56~0_combout\);

\texto[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector56~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[26]~reg0_q\);

\Selector55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector55~0_combout\ = (!\estado.jogo~q\ & (!\estado.terminar~q\ & ((\rotator|s_shiftReg\(27)) # (!\estado.grupo_xx~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(27),
	datab => \estado.grupo_xx~q\,
	datac => \estado.jogo~q\,
	datad => \estado.terminar~q\,
	combout => \Selector55~0_combout\);

\texto[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector55~0_combout\,
	ena => \texto~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[27]~reg0_q\);

\Selector54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector54~0_combout\ = (!\estado.jogo~q\ & (!\estado.terminar~q\ & ((\rotator|s_shiftReg\(28)) # (!\estado.grupo_xx~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(28),
	datab => \estado.grupo_xx~q\,
	datac => \estado.jogo~q\,
	datad => \estado.terminar~q\,
	combout => \Selector54~0_combout\);

\texto[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector54~0_combout\,
	ena => \texto~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[28]~reg0_q\);

\Selector53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector53~0_combout\ = (\estado.grupo_xx~q\ & ((\rotator|s_shiftReg\(29)) # ((\texto[29]~reg0_q\ & !\texto~0_combout\)))) # (!\estado.grupo_xx~q\ & (((\texto[29]~reg0_q\ & !\texto~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.grupo_xx~q\,
	datab => \rotator|s_shiftReg\(29),
	datac => \texto[29]~reg0_q\,
	datad => \texto~0_combout\,
	combout => \Selector53~0_combout\);

\texto[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector53~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[29]~reg0_q\);

\Selector52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector52~0_combout\ = (!\estado.jogo~q\ & (!\estado.terminar~q\ & ((\rotator|s_shiftReg\(30)) # (!\estado.grupo_xx~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(30),
	datab => \estado.grupo_xx~q\,
	datac => \estado.jogo~q\,
	datad => \estado.terminar~q\,
	combout => \Selector52~0_combout\);

\texto[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector52~0_combout\,
	ena => \texto~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[30]~reg0_q\);

\Selector51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = (!\estado.jogo~q\ & (!\estado.terminar~q\ & ((\rotator|s_shiftReg\(31)) # (!\estado.grupo_xx~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(31),
	datab => \estado.grupo_xx~q\,
	datac => \estado.jogo~q\,
	datad => \estado.terminar~q\,
	combout => \Selector51~0_combout\);

\texto[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector51~0_combout\,
	ena => \texto~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[31]~reg0_q\);

\Selector50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~0_combout\ = (!\estado.jogo~q\ & (!\estado.terminar~q\ & ((\rotator|s_shiftReg\(32)) # (!\estado.grupo_xx~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(32),
	datab => \estado.grupo_xx~q\,
	datac => \estado.jogo~q\,
	datad => \estado.terminar~q\,
	combout => \Selector50~0_combout\);

\texto[32]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector50~0_combout\,
	ena => \texto~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[32]~reg0_q\);

\Selector49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = (\estado.grupo_xx~q\ & ((\rotator|s_shiftReg\(33)) # ((\texto[33]~reg0_q\ & !\texto~0_combout\)))) # (!\estado.grupo_xx~q\ & (((\texto[33]~reg0_q\ & !\texto~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.grupo_xx~q\,
	datab => \rotator|s_shiftReg\(33),
	datac => \texto[33]~reg0_q\,
	datad => \texto~0_combout\,
	combout => \Selector49~0_combout\);

\texto[33]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector49~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[33]~reg0_q\);

\Selector48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = (!\estado.jogo~q\ & (!\estado.terminar~q\ & ((\rotator|s_shiftReg\(34)) # (!\estado.grupo_xx~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(34),
	datab => \estado.grupo_xx~q\,
	datac => \estado.jogo~q\,
	datad => \estado.terminar~q\,
	combout => \Selector48~0_combout\);

\texto[34]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector48~0_combout\,
	ena => \texto~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[34]~reg0_q\);

\Selector47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (!\estado.jogo~q\ & (!\estado.terminar~q\ & ((\rotator|s_shiftReg\(35)) # (!\estado.grupo_xx~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(35),
	datab => \estado.grupo_xx~q\,
	datac => \estado.jogo~q\,
	datad => \estado.terminar~q\,
	combout => \Selector47~0_combout\);

\texto[35]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector47~0_combout\,
	ena => \texto~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[35]~reg0_q\);

\Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = (\estado.grupo_xx~q\ & ((\rotator|s_shiftReg\(36)) # ((\texto[36]~reg0_q\ & !\texto~0_combout\)))) # (!\estado.grupo_xx~q\ & (((\texto[36]~reg0_q\ & !\texto~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.grupo_xx~q\,
	datab => \rotator|s_shiftReg\(36),
	datac => \texto[36]~reg0_q\,
	datad => \texto~0_combout\,
	combout => \Selector46~0_combout\);

\texto[36]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector46~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[36]~reg0_q\);

\Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = (!\estado.jogo~q\ & (!\estado.terminar~q\ & ((\rotator|s_shiftReg\(37)) # (!\estado.grupo_xx~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(37),
	datab => \estado.grupo_xx~q\,
	datac => \estado.jogo~q\,
	datad => \estado.terminar~q\,
	combout => \Selector45~0_combout\);

\texto[37]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector45~0_combout\,
	ena => \texto~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[37]~reg0_q\);

\Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (!\estado.jogo~q\ & (!\estado.terminar~q\ & ((\rotator|s_shiftReg\(38)) # (!\estado.grupo_xx~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(38),
	datab => \estado.grupo_xx~q\,
	datac => \estado.jogo~q\,
	datad => \estado.terminar~q\,
	combout => \Selector44~0_combout\);

\texto[38]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector44~0_combout\,
	ena => \texto~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[38]~reg0_q\);

\Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\estado.grupo_xx~q\ & ((\rotator|s_shiftReg\(39)) # ((\texto[39]~reg0_q\ & !\texto~0_combout\)))) # (!\estado.grupo_xx~q\ & (((\texto[39]~reg0_q\ & !\texto~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.grupo_xx~q\,
	datab => \rotator|s_shiftReg\(39),
	datac => \texto[39]~reg0_q\,
	datad => \texto~0_combout\,
	combout => \Selector43~0_combout\);

\texto[39]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[39]~reg0_q\);

\rnd[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rnd(0),
	o => \rnd[0]~input_o\);

\rnd[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rnd(1),
	o => \rnd[1]~input_o\);

\rnd[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rnd(2),
	o => \rnd[2]~input_o\);

\rnd[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rnd(3),
	o => \rnd[3]~input_o\);

\rnd[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rnd(4),
	o => \rnd[4]~input_o\);

\rnd[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rnd(5),
	o => \rnd[5]~input_o\);

\rnd[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rnd(6),
	o => \rnd[6]~input_o\);

\rnd[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rnd(7),
	o => \rnd[7]~input_o\);

\c2hz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c2hz,
	o => \c2hz~input_o\);

\c4hz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c4hz,
	o => \c4hz~input_o\);

\c8hz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c8hz,
	o => \c8hz~input_o\);
END structure;


