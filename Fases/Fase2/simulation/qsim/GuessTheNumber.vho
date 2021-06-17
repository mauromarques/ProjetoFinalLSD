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

-- DATE "06/17/2021 09:24:46"

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
	c2hz : IN std_logic;
	c8hz : IN std_logic;
	rnd : IN std_logic_vector(17 DOWNTO 0);
	c4hz : IN std_logic;
	ledg : OUT std_logic_vector(2 DOWNTO 0);
	lo : OUT std_logic_vector(7 DOWNTO 0);
	hi : OUT std_logic_vector(7 DOWNTO 0)
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
SIGNAL ww_c2hz : std_logic;
SIGNAL ww_c8hz : std_logic;
SIGNAL ww_rnd : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_c4hz : std_logic;
SIGNAL ww_ledg : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_lo : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_hi : std_logic_vector(7 DOWNTO 0);
SIGNAL \c8hz~input_o\ : std_logic;
SIGNAL \c4hz~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \c1hz~input_o\ : std_logic;
SIGNAL \count|s_count[0]~3_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \s_resetCounter~q\ : std_logic;
SIGNAL \count|s_count~2_combout\ : std_logic;
SIGNAL \count|s_count[2]~1_combout\ : std_logic;
SIGNAL \count|s_count~0_combout\ : std_logic;
SIGNAL \count|Equal0~0_combout\ : std_logic;
SIGNAL \keys[3]~input_o\ : std_logic;
SIGNAL \count|s_move~q\ : std_logic;
SIGNAL \Selector107~4_combout\ : std_logic;
SIGNAL \keys[2]~input_o\ : std_logic;
SIGNAL \keys[1]~input_o\ : std_logic;
SIGNAL \Selector111~3_combout\ : std_logic;
SIGNAL \done2~input_o\ : std_logic;
SIGNAL \s_done2~0_combout\ : std_logic;
SIGNAL \s_done2~q\ : std_logic;
SIGNAL \done1~input_o\ : std_logic;
SIGNAL \s_done1~0_combout\ : std_logic;
SIGNAL \s_done1~q\ : std_logic;
SIGNAL \s_resposta~3_combout\ : std_logic;
SIGNAL \Selector50~0_combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \Selector50~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \s_resposta[11]~4_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Selector59~0_combout\ : std_logic;
SIGNAL \Selector59~1_combout\ : std_logic;
SIGNAL \s_resposta~2_combout\ : std_logic;
SIGNAL \Selector53~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Selector111~10_combout\ : std_logic;
SIGNAL \s_atCount~0_combout\ : std_logic;
SIGNAL \Selector35~4_combout\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \Add4~22_combout\ : std_logic;
SIGNAL \Add4~26_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~5_combout\ : std_logic;
SIGNAL \Add4~7_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \s_hi[6]~2_combout\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \s_mid[0]~7_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Selector35~2_combout\ : std_logic;
SIGNAL \s_hi[6]~3_combout\ : std_logic;
SIGNAL \Selector35~3_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \s_mid[0]~8\ : std_logic;
SIGNAL \s_mid[1]~9_combout\ : std_logic;
SIGNAL \Add4~6\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~11_combout\ : std_logic;
SIGNAL \Add4~13_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Selector34~1_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \s_mid[1]~10\ : std_logic;
SIGNAL \s_mid[2]~11_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \Selector33~1_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \s_mid[2]~12\ : std_logic;
SIGNAL \s_mid[3]~13_combout\ : std_logic;
SIGNAL \Add4~12\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~17_combout\ : std_logic;
SIGNAL \Add4~19_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \s_mid[3]~14\ : std_logic;
SIGNAL \s_mid[4]~15_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \s_mid[4]~16\ : std_logic;
SIGNAL \s_mid[5]~17_combout\ : std_logic;
SIGNAL \Add4~18\ : std_logic;
SIGNAL \Add4~21\ : std_logic;
SIGNAL \Add4~23_combout\ : std_logic;
SIGNAL \Add4~25_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \s_mid[5]~18\ : std_logic;
SIGNAL \s_mid[6]~19_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \Selector111~2_combout\ : std_logic;
SIGNAL \keys[0]~input_o\ : std_logic;
SIGNAL \Selector111~8_combout\ : std_logic;
SIGNAL \Selector109~2_combout\ : std_logic;
SIGNAL \Selector111~5_combout\ : std_logic;
SIGNAL \Selector111~6_combout\ : std_logic;
SIGNAL \Selector111~7_combout\ : std_logic;
SIGNAL \Selector109~3_combout\ : std_logic;
SIGNAL \Selector111~9_combout\ : std_logic;
SIGNAL \estado.waiting~q\ : std_logic;
SIGNAL \Selector111~4_combout\ : std_logic;
SIGNAL \Selector107~9_combout\ : std_logic;
SIGNAL \Selector112~0_combout\ : std_logic;
SIGNAL \estado.cheater~q\ : std_logic;
SIGNAL \Selector107~10_combout\ : std_logic;
SIGNAL \Selector107~6_combout\ : std_logic;
SIGNAL \Selector107~11_combout\ : std_logic;
SIGNAL \Selector107~12_combout\ : std_logic;
SIGNAL \Selector110~0_combout\ : std_logic;
SIGNAL \estado.conversao1~q\ : std_logic;
SIGNAL \Selector107~15_combout\ : std_logic;
SIGNAL \Selector108~0_combout\ : std_logic;
SIGNAL \estado.jogo~q\ : std_logic;
SIGNAL \Selector109~5_combout\ : std_logic;
SIGNAL \Selector109~4_combout\ : std_logic;
SIGNAL \estado.terminar~q\ : std_logic;
SIGNAL \Selector107~13_combout\ : std_logic;
SIGNAL \Selector107~14_combout\ : std_logic;
SIGNAL \estado.grupo_xx~q\ : std_logic;
SIGNAL \Selector107~2_combout\ : std_logic;
SIGNAL \Selector107~3_combout\ : std_logic;
SIGNAL \Selector107~5_combout\ : std_logic;
SIGNAL \Selector107~7_combout\ : std_logic;
SIGNAL \Selector107~8_combout\ : std_logic;
SIGNAL \Selector106~0_combout\ : std_logic;
SIGNAL \estado.guess_n1~q\ : std_logic;
SIGNAL \s_blink~0_combout\ : std_logic;
SIGNAL \s_blink~q\ : std_logic;
SIGNAL \count|s_ledr~0_combout\ : std_logic;
SIGNAL \rnd[0]~input_o\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \ledr[0]~reg0_q\ : std_logic;
SIGNAL \rnd[1]~input_o\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \ledr[1]~reg0_q\ : std_logic;
SIGNAL \rnd[2]~input_o\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \ledr[2]~reg0_q\ : std_logic;
SIGNAL \rnd[3]~input_o\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \ledr[3]~reg0_q\ : std_logic;
SIGNAL \rnd[4]~input_o\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \ledr[4]~reg0_q\ : std_logic;
SIGNAL \rnd[5]~input_o\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \ledr[5]~reg0_q\ : std_logic;
SIGNAL \rnd[6]~input_o\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \ledr[6]~reg0_q\ : std_logic;
SIGNAL \rnd[7]~input_o\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \ledr[7]~reg0_q\ : std_logic;
SIGNAL \rnd[8]~input_o\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \ledr[8]~reg0_q\ : std_logic;
SIGNAL \rnd[9]~input_o\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \ledr[9]~reg0_q\ : std_logic;
SIGNAL \rnd[10]~input_o\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \ledr[10]~reg0_q\ : std_logic;
SIGNAL \rnd[11]~input_o\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \ledr[11]~reg0_q\ : std_logic;
SIGNAL \rnd[12]~input_o\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \ledr[12]~reg0_q\ : std_logic;
SIGNAL \rnd[13]~input_o\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \ledr[13]~reg0_q\ : std_logic;
SIGNAL \rnd[14]~input_o\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \ledr[14]~reg0_q\ : std_logic;
SIGNAL \rnd[15]~input_o\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \ledr[15]~reg0_q\ : std_logic;
SIGNAL \rnd[16]~input_o\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \ledr[16]~reg0_q\ : std_logic;
SIGNAL \rnd[17]~input_o\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \ledr[17]~reg0_q\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \n_attempts[0]~reg0_q\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \n_attempts[1]~reg0_q\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \n_attempts[2]~reg0_q\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \n_attempts[3]~reg0_q\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \n_attempts[4]~reg0_q\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \n_attempts[5]~reg0_q\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \n_attempts[6]~reg0_q\ : std_logic;
SIGNAL \Selector113~0_combout\ : std_logic;
SIGNAL \activate~reg0_q\ : std_logic;
SIGNAL \attempt[0]~reg0_q\ : std_logic;
SIGNAL \attempt[1]~reg0_q\ : std_logic;
SIGNAL \attempt[2]~reg0_q\ : std_logic;
SIGNAL \attempt[3]~reg0_q\ : std_logic;
SIGNAL \attempt[4]~reg0_q\ : std_logic;
SIGNAL \attempt[5]~reg0_q\ : std_logic;
SIGNAL \attempt[6]~reg0_q\ : std_logic;
SIGNAL \Selector105~0_combout\ : std_logic;
SIGNAL \WideOr5~combout\ : std_logic;
SIGNAL \Selector105~1_combout\ : std_logic;
SIGNAL \selector~reg0_q\ : std_logic;
SIGNAL \c2hz~input_o\ : std_logic;
SIGNAL \s_blinkDisplay~1_combout\ : std_logic;
SIGNAL \s_blinkDisplay~0_combout\ : std_logic;
SIGNAL \s_blinkDisplay~2_combout\ : std_logic;
SIGNAL \s_blinkDisplay~q\ : std_logic;
SIGNAL \blinker|s_enable~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \blinker2|s_enable~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
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
SIGNAL \Selector104~0_combout\ : std_logic;
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
SIGNAL \Selector103~0_combout\ : std_logic;
SIGNAL \texto[1]~reg0_q\ : std_logic;
SIGNAL \rotator|s_shiftReg~37_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~32_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~27_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~22_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~17_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~12_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~7_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~2_combout\ : std_logic;
SIGNAL \Selector102~0_combout\ : std_logic;
SIGNAL \texto[2]~reg0_q\ : std_logic;
SIGNAL \rotator|s_shiftReg~38_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~33_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~28_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~23_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~18_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~13_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~8_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~3_combout\ : std_logic;
SIGNAL \Selector101~0_combout\ : std_logic;
SIGNAL \texto[3]~reg0_q\ : std_logic;
SIGNAL \rotator|s_shiftReg~39_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~34_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~29_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~24_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~19_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~14_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~9_combout\ : std_logic;
SIGNAL \rotator|s_shiftReg~4_combout\ : std_logic;
SIGNAL \Selector100~0_combout\ : std_logic;
SIGNAL \texto[4]~reg0_q\ : std_logic;
SIGNAL \Selector99~0_combout\ : std_logic;
SIGNAL \texto[5]~reg0_q\ : std_logic;
SIGNAL \Selector98~0_combout\ : std_logic;
SIGNAL \texto[6]~reg0_q\ : std_logic;
SIGNAL \Selector97~0_combout\ : std_logic;
SIGNAL \texto[7]~reg0_q\ : std_logic;
SIGNAL \Selector96~0_combout\ : std_logic;
SIGNAL \texto[8]~reg0_q\ : std_logic;
SIGNAL \Selector95~0_combout\ : std_logic;
SIGNAL \texto[9]~reg0_q\ : std_logic;
SIGNAL \Selector94~0_combout\ : std_logic;
SIGNAL \texto[10]~reg0_q\ : std_logic;
SIGNAL \Selector93~0_combout\ : std_logic;
SIGNAL \texto[11]~reg0_q\ : std_logic;
SIGNAL \Selector92~0_combout\ : std_logic;
SIGNAL \texto[12]~reg0_q\ : std_logic;
SIGNAL \Selector91~0_combout\ : std_logic;
SIGNAL \texto[13]~reg0_q\ : std_logic;
SIGNAL \Selector90~0_combout\ : std_logic;
SIGNAL \texto[14]~reg0_q\ : std_logic;
SIGNAL \Selector89~0_combout\ : std_logic;
SIGNAL \texto[15]~reg0_q\ : std_logic;
SIGNAL \Selector88~0_combout\ : std_logic;
SIGNAL \texto[16]~reg0_q\ : std_logic;
SIGNAL \Selector87~0_combout\ : std_logic;
SIGNAL \texto[17]~reg0_q\ : std_logic;
SIGNAL \Selector86~0_combout\ : std_logic;
SIGNAL \texto[18]~reg0_q\ : std_logic;
SIGNAL \Selector85~0_combout\ : std_logic;
SIGNAL \texto[19]~reg0_q\ : std_logic;
SIGNAL \Selector84~0_combout\ : std_logic;
SIGNAL \texto[20]~reg0_q\ : std_logic;
SIGNAL \Selector83~0_combout\ : std_logic;
SIGNAL \texto[21]~reg0_q\ : std_logic;
SIGNAL \Selector82~0_combout\ : std_logic;
SIGNAL \texto[22]~reg0_q\ : std_logic;
SIGNAL \Selector81~0_combout\ : std_logic;
SIGNAL \texto[23]~reg0_q\ : std_logic;
SIGNAL \Selector80~0_combout\ : std_logic;
SIGNAL \texto[24]~reg0_q\ : std_logic;
SIGNAL \Selector79~0_combout\ : std_logic;
SIGNAL \texto[25]~reg0_q\ : std_logic;
SIGNAL \Selector78~0_combout\ : std_logic;
SIGNAL \texto[26]~reg0_q\ : std_logic;
SIGNAL \Selector77~0_combout\ : std_logic;
SIGNAL \texto[27]~reg0_q\ : std_logic;
SIGNAL \Selector76~0_combout\ : std_logic;
SIGNAL \texto[28]~reg0_q\ : std_logic;
SIGNAL \Selector75~0_combout\ : std_logic;
SIGNAL \texto[29]~reg0_q\ : std_logic;
SIGNAL \Selector74~0_combout\ : std_logic;
SIGNAL \texto[30]~reg0_q\ : std_logic;
SIGNAL \Selector73~0_combout\ : std_logic;
SIGNAL \texto[31]~reg0_q\ : std_logic;
SIGNAL \Selector72~0_combout\ : std_logic;
SIGNAL \texto[32]~reg0_q\ : std_logic;
SIGNAL \Selector71~0_combout\ : std_logic;
SIGNAL \texto[33]~reg0_q\ : std_logic;
SIGNAL \Selector70~0_combout\ : std_logic;
SIGNAL \texto[34]~reg0_q\ : std_logic;
SIGNAL \Selector69~0_combout\ : std_logic;
SIGNAL \texto[35]~reg0_q\ : std_logic;
SIGNAL \Selector68~0_combout\ : std_logic;
SIGNAL \texto[36]~reg0_q\ : std_logic;
SIGNAL \Selector67~0_combout\ : std_logic;
SIGNAL \texto[37]~reg0_q\ : std_logic;
SIGNAL \Selector66~0_combout\ : std_logic;
SIGNAL \texto[38]~reg0_q\ : std_logic;
SIGNAL \Selector65~0_combout\ : std_logic;
SIGNAL \texto[39]~reg0_q\ : std_logic;
SIGNAL s_mid : std_logic_vector(7 DOWNTO 0);
SIGNAL s_lo : std_logic_vector(7 DOWNTO 0);
SIGNAL \blinker2|s_enable\ : std_logic_vector(2 DOWNTO 0);
SIGNAL s_hi : std_logic_vector(7 DOWNTO 0);
SIGNAL s_atCount : std_logic_vector(6 DOWNTO 0);
SIGNAL \count|s_ledr\ : std_logic_vector(17 DOWNTO 0);
SIGNAL s_resposta : std_logic_vector(19 DOWNTO 0);
SIGNAL \blinker|s_enable\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \rotator|s_shiftReg\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \count|s_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_s_resetCounter~q\ : std_logic;
SIGNAL \ALT_INV_estado.guess_n1~q\ : std_logic;

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
ww_c2hz <= c2hz;
ww_c8hz <= c8hz;
ww_rnd <= rnd;
ww_c4hz <= c4hz;
ledg <= ww_ledg;
lo <= ww_lo;
hi <= ww_hi;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_s_resetCounter~q\ <= NOT \s_resetCounter~q\;
\ALT_INV_estado.guess_n1~q\ <= NOT \estado.guess_n1~q\;

\ledr[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledr[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ledr(0));

\ledr[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledr[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ledr(1));

\ledr[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledr[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ledr(2));

\ledr[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledr[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ledr(3));

\ledr[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledr[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ledr(4));

\ledr[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledr[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ledr(5));

\ledr[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledr[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ledr(6));

\ledr[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledr[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ledr(7));

\ledr[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledr[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ledr(8));

\ledr[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledr[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ledr(9));

\ledr[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledr[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ledr(10));

\ledr[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledr[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ledr(11));

\ledr[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledr[12]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ledr(12));

\ledr[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledr[13]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ledr(13));

\ledr[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledr[14]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ledr(14));

\ledr[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledr[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ledr(15));

\ledr[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledr[16]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ledr(16));

\ledr[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledr[17]~reg0_q\,
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
	i => \selector~reg0_q\,
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
	i => GND,
	devoe => ww_devoe,
	o => ww_enable(1));

\enable[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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

\ledg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blinker2|s_enable\(0),
	devoe => ww_devoe,
	o => ww_ledg(0));

\ledg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledg(1));

\ledg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledg(2));

\lo[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_lo(0),
	devoe => ww_devoe,
	o => ww_lo(0));

\lo[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_lo(1),
	devoe => ww_devoe,
	o => ww_lo(1));

\lo[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_lo(2),
	devoe => ww_devoe,
	o => ww_lo(2));

\lo[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_lo(3),
	devoe => ww_devoe,
	o => ww_lo(3));

\lo[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_lo(4),
	devoe => ww_devoe,
	o => ww_lo(4));

\lo[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_lo(5),
	devoe => ww_devoe,
	o => ww_lo(5));

\lo[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_lo(6),
	devoe => ww_devoe,
	o => ww_lo(6));

\lo[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_lo(7),
	devoe => ww_devoe,
	o => ww_lo(7));

\hi[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_hi(0),
	devoe => ww_devoe,
	o => ww_hi(0));

\hi[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_hi(1),
	devoe => ww_devoe,
	o => ww_hi(1));

\hi[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_hi(2),
	devoe => ww_devoe,
	o => ww_hi(2));

\hi[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_hi(3),
	devoe => ww_devoe,
	o => ww_hi(3));

\hi[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_hi(4),
	devoe => ww_devoe,
	o => ww_hi(4));

\hi[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_hi(5),
	devoe => ww_devoe,
	o => ww_hi(5));

\hi[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_hi(6),
	devoe => ww_devoe,
	o => ww_hi(6));

\hi[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_hi(7),
	devoe => ww_devoe,
	o => ww_hi(7));

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\c1hz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c1hz,
	o => \c1hz~input_o\);

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

\keys[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(3),
	o => \keys[3]~input_o\);

\count|s_move\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \count|Equal0~0_combout\,
	ena => \ALT_INV_s_resetCounter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|s_move~q\);

\Selector107~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector107~4_combout\ = (\estado.guess_n1~q\ & (\keys[3]~input_o\)) # (!\estado.guess_n1~q\ & ((\count|s_move~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keys[3]~input_o\,
	datab => \count|s_move~q\,
	datad => \estado.guess_n1~q\,
	combout => \Selector107~4_combout\);

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

\Selector111~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector111~3_combout\ = (!\estado.jogo~q\ & !\estado.grupo_xx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado.jogo~q\,
	datad => \estado.grupo_xx~q\,
	combout => \Selector111~3_combout\);

\done2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_done2,
	o => \done2~input_o\);

\s_done2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_done2~0_combout\ = (\Selector111~3_combout\ & ((\s_done2~q\) # ((\done2~input_o\ & !\reset~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector111~3_combout\,
	datab => \s_done2~q\,
	datac => \done2~input_o\,
	datad => \reset~input_o\,
	combout => \s_done2~0_combout\);

s_done2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_done2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_done2~q\);

\done1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_done1,
	o => \done1~input_o\);

\s_done1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_done1~0_combout\ = (\Selector111~3_combout\ & ((\s_done1~q\) # ((\done1~input_o\ & !\reset~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector111~3_combout\,
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

\s_resposta~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_resposta~3_combout\ = ((\Equal0~0_combout\ & \s_resposta~2_combout\)) # (!\keys[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s_resposta~2_combout\,
	datad => \keys[1]~input_o\,
	combout => \s_resposta~3_combout\);

\Selector50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~0_combout\ = (\estado.jogo~q\ & ((\s_resposta~3_combout\ & (s_resposta(14))) # (!\s_resposta~3_combout\ & ((!\s_resposta~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => s_resposta(14),
	datac => \s_resposta~3_combout\,
	datad => \s_resposta~2_combout\,
	combout => \Selector50~0_combout\);

\WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (\estado.jogo~q\) # ((\estado.grupo_xx~q\) # (!\estado.guess_n1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \estado.grupo_xx~q\,
	datad => \estado.guess_n1~q\,
	combout => \WideOr2~0_combout\);

\Selector50~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~1_combout\ = (\Selector50~0_combout\) # ((s_resposta(14) & !\WideOr2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector50~0_combout\,
	datab => s_resposta(14),
	datad => \WideOr2~0_combout\,
	combout => \Selector50~1_combout\);

\s_resposta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector50~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_resposta(14));

\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (s_resposta(5)) # ((s_resposta(14)) # ((!s_resposta(11)) # (!s_resposta(13))))

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
	combout => \Equal1~0_combout\);

\Selector51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = (\Equal1~0_combout\) # (!\estado.jogo~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datad => \estado.jogo~q\,
	combout => \Selector51~0_combout\);

\s_resposta[11]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_resposta[11]~4_combout\ = (\estado.jogo~q\ & (((!\s_resposta~3_combout\)))) # (!\estado.jogo~q\ & ((\estado.grupo_xx~q\) # ((!\estado.guess_n1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \estado.grupo_xx~q\,
	datac => \estado.guess_n1~q\,
	datad => \s_resposta~3_combout\,
	combout => \s_resposta[11]~4_combout\);

\s_resposta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector51~0_combout\,
	ena => \s_resposta[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_resposta(13));

\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (s_resposta(14) & (!s_resposta(5) & (!s_resposta(13) & !s_resposta(11))))

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
	combout => \Equal2~0_combout\);

\Selector59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector59~0_combout\ = (\estado.jogo~q\ & ((\s_resposta~3_combout\ & (s_resposta(5))) # (!\s_resposta~3_combout\ & ((\Equal2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => s_resposta(5),
	datac => \Equal2~0_combout\,
	datad => \s_resposta~3_combout\,
	combout => \Selector59~0_combout\);

\Selector59~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector59~1_combout\ = (\Selector59~0_combout\) # ((s_resposta(5) & !\WideOr2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector59~0_combout\,
	datab => s_resposta(5),
	datad => \WideOr2~0_combout\,
	combout => \Selector59~1_combout\);

\s_resposta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector59~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_resposta(5));

\s_resposta~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_resposta~2_combout\ = (s_resposta(5)) # ((s_resposta(14) & ((s_resposta(13)) # (s_resposta(11)))) # (!s_resposta(14) & ((!s_resposta(11)) # (!s_resposta(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_resposta(5),
	datab => s_resposta(14),
	datac => s_resposta(13),
	datad => s_resposta(11),
	combout => \s_resposta~2_combout\);

\Selector53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector53~0_combout\ = (\s_resposta~2_combout\) # (!\estado.jogo~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datad => \s_resposta~2_combout\,
	combout => \Selector53~0_combout\);

\s_resposta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector53~0_combout\,
	ena => \s_resposta[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_resposta(11));

\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (s_resposta(11)) # (((!s_resposta(14)) # (!s_resposta(13))) # (!s_resposta(5)))

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
	combout => \Equal0~0_combout\);

\Selector111~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector111~10_combout\ = (\keys[2]~input_o\ & (!\keys[1]~input_o\ & (\estado.jogo~q\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keys[2]~input_o\,
	datab => \keys[1]~input_o\,
	datac => \estado.jogo~q\,
	datad => \Equal0~0_combout\,
	combout => \Selector111~10_combout\);

\s_atCount~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_atCount~0_combout\ = (\keys[2]~input_o\ & !\keys[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keys[2]~input_o\,
	datad => \keys[1]~input_o\,
	combout => \s_atCount~0_combout\);

\Selector35~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector35~4_combout\ = (\keys[2]~input_o\ & (!\keys[1]~input_o\ & (\estado.jogo~q\ & !\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keys[2]~input_o\,
	datab => \keys[1]~input_o\,
	datac => \estado.jogo~q\,
	datad => \Equal1~0_combout\,
	combout => \Selector35~4_combout\);

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

\Add4~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~22_combout\ = (\estado.jogo~q\ & (\s_atCount~0_combout\ & (\Equal2~0_combout\ & \Add4~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \s_atCount~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \Add4~20_combout\,
	combout => \Add4~22_combout\);

\Add4~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~26_combout\ = (\estado.jogo~q\ & (((\keys[1]~input_o\) # (!\Equal2~0_combout\)) # (!\keys[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keys[2]~input_o\,
	datab => \keys[1]~input_o\,
	datac => \estado.jogo~q\,
	datad => \Equal2~0_combout\,
	combout => \Add4~26_combout\);

\Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\Add4~22_combout\) # ((s_lo(6) & ((\Add4~26_combout\) # (!\WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~22_combout\,
	datab => s_lo(6),
	datac => \Add4~26_combout\,
	datad => \WideOr2~0_combout\,
	combout => \Selector23~0_combout\);

\s_lo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_lo(6));

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

\Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = (\estado.jogo~q\ & (\s_atCount~0_combout\ & (\Equal2~0_combout\ & \Add4~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \s_atCount~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \Add4~14_combout\,
	combout => \Add4~16_combout\);

\Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\Add4~16_combout\) # ((s_lo(4) & ((\Add4~26_combout\) # (!\WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~16_combout\,
	datab => s_lo(4),
	datac => \Add4~26_combout\,
	datad => \WideOr2~0_combout\,
	combout => \Selector25~0_combout\);

\s_lo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_lo(4));

\Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (s_mid(2) & (\Add4~6\ $ (GND))) # (!s_mid(2) & (!\Add4~6\ & VCC))
-- \Add4~9\ = CARRY((s_mid(2) & !\Add4~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_mid(2),
	datad => VCC,
	cin => \Add4~6\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

\Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (\estado.jogo~q\ & (\s_atCount~0_combout\ & (\Equal2~0_combout\ & \Add4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \s_atCount~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \Add4~8_combout\,
	combout => \Add4~10_combout\);

\Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\Add4~10_combout\) # ((s_lo(2) & ((\Add4~26_combout\) # (!\WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~10_combout\,
	datab => s_lo(2),
	datac => \Add4~26_combout\,
	datad => \WideOr2~0_combout\,
	combout => \Selector27~0_combout\);

\s_lo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_lo(2));

\Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = s_mid(0) $ (VCC)
-- \Add4~3\ = CARRY(s_mid(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_mid(0),
	datad => VCC,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

\Add4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~5_combout\ = (s_mid(1) & (!\Add4~3\)) # (!s_mid(1) & ((\Add4~3\) # (GND)))
-- \Add4~6\ = CARRY((!\Add4~3\) # (!s_mid(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_mid(1),
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~5_combout\,
	cout => \Add4~6\);

\Add4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~7_combout\ = (\estado.jogo~q\ & (\s_atCount~0_combout\ & (\Equal2~0_combout\ & \Add4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \s_atCount~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \Add4~5_combout\,
	combout => \Add4~7_combout\);

\Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (\Add4~7_combout\) # ((s_lo(1) & ((\Add4~26_combout\) # (!\WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~7_combout\,
	datab => s_lo(1),
	datac => \Add4~26_combout\,
	datad => \WideOr2~0_combout\,
	combout => \Selector28~0_combout\);

\s_lo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_lo(1));

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

\Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (\Add3~2_combout\) # (!\estado.jogo~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datad => \estado.jogo~q\,
	combout => \Selector36~0_combout\);

\s_hi[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_hi[6]~2_combout\ = (\WideOr2~0_combout\ & (((!\Equal1~0_combout\ & \s_atCount~0_combout\)) # (!\estado.jogo~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \Equal1~0_combout\,
	datac => \s_atCount~0_combout\,
	datad => \WideOr2~0_combout\,
	combout => \s_hi[6]~2_combout\);

\s_hi[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector36~0_combout\,
	ena => \s_hi[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_hi(1));

\Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (\estado.jogo~q\ & (\Add4~2_combout\ & (\s_atCount~0_combout\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \Add4~2_combout\,
	datac => \s_atCount~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \Add4~4_combout\);

\Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\Add4~4_combout\) # ((s_lo(0) & ((\Add4~26_combout\) # (!\WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~4_combout\,
	datab => s_lo(0),
	datac => \Add4~26_combout\,
	datad => \WideOr2~0_combout\,
	combout => \Selector29~0_combout\);

\s_lo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_lo(0));

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

\Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (\Add3~0_combout\) # (!\estado.jogo~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datad => \estado.jogo~q\,
	combout => \Selector37~0_combout\);

\s_hi[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector37~0_combout\,
	ena => \s_hi[6]~2_combout\,
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

\Selector35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector35~2_combout\ = (\estado.jogo~q\ & (\s_atCount~0_combout\ & (\Add3~4_combout\ & !\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \s_atCount~0_combout\,
	datac => \Add3~4_combout\,
	datad => \Equal1~0_combout\,
	combout => \Selector35~2_combout\);

\s_hi[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_hi[6]~3_combout\ = (\estado.jogo~q\ & (((\keys[1]~input_o\) # (\Equal1~0_combout\)) # (!\keys[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keys[2]~input_o\,
	datab => \keys[1]~input_o\,
	datac => \estado.jogo~q\,
	datad => \Equal1~0_combout\,
	combout => \s_hi[6]~3_combout\);

\Selector35~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector35~3_combout\ = (\Selector35~2_combout\) # ((s_hi(2) & ((\s_hi[6]~3_combout\) # (!\WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~2_combout\,
	datab => s_hi(2),
	datac => \s_hi[6]~3_combout\,
	datad => \WideOr2~0_combout\,
	combout => \Selector35~3_combout\);

\s_hi[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector35~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_hi(2));

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

\Add4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~13_combout\ = (\estado.jogo~q\ & (\s_atCount~0_combout\ & (\Equal2~0_combout\ & \Add4~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \s_atCount~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \Add4~11_combout\,
	combout => \Add4~13_combout\);

\Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\Add4~13_combout\) # ((s_lo(3) & ((\Add4~26_combout\) # (!\WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~13_combout\,
	datab => s_lo(3),
	datac => \Add4~26_combout\,
	datad => \WideOr2~0_combout\,
	combout => \Selector26~0_combout\);

\s_lo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_lo(3));

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

\Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (\estado.jogo~q\ & (\s_atCount~0_combout\ & (\Add3~6_combout\ & !\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \s_atCount~0_combout\,
	datac => \Add3~6_combout\,
	datad => \Equal1~0_combout\,
	combout => \Selector34~0_combout\);

\Selector34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector34~1_combout\ = (\Selector34~0_combout\) # ((s_hi(3) & ((\s_hi[6]~3_combout\) # (!\WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~0_combout\,
	datab => s_hi(3),
	datac => \s_hi[6]~3_combout\,
	datad => \WideOr2~0_combout\,
	combout => \Selector34~1_combout\);

\s_hi[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector34~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_hi(3));

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

\Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (\estado.jogo~q\ & (\s_atCount~0_combout\ & (\Add3~8_combout\ & !\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \s_atCount~0_combout\,
	datac => \Add3~8_combout\,
	datad => \Equal1~0_combout\,
	combout => \Selector33~0_combout\);

\Selector33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~1_combout\ = (\Selector33~0_combout\) # ((s_hi(4) & ((\s_hi[6]~3_combout\) # (!\WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector33~0_combout\,
	datab => s_hi(4),
	datac => \s_hi[6]~3_combout\,
	datad => \WideOr2~0_combout\,
	combout => \Selector33~1_combout\);

\s_hi[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector33~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_hi(4));

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

\Add4~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~19_combout\ = (\estado.jogo~q\ & (\s_atCount~0_combout\ & (\Equal2~0_combout\ & \Add4~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \s_atCount~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \Add4~17_combout\,
	combout => \Add4~19_combout\);

\Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\Add4~19_combout\) # ((s_lo(5) & ((\Add4~26_combout\) # (!\WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~19_combout\,
	datab => s_lo(5),
	datac => \Add4~26_combout\,
	datad => \WideOr2~0_combout\,
	combout => \Selector24~0_combout\);

\s_lo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_lo(5));

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

\Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (\Add3~10_combout\) # (!\estado.jogo~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datad => \estado.jogo~q\,
	combout => \Selector32~0_combout\);

\s_hi[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector32~0_combout\,
	ena => \s_hi[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_hi(5));

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

\Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (\Add3~12_combout\) # (!\estado.jogo~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~12_combout\,
	datad => \estado.jogo~q\,
	combout => \Selector31~0_combout\);

\s_hi[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector31~0_combout\,
	ena => \s_hi[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_hi(6));

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
-- \Add4~25_combout\ = (\estado.jogo~q\ & (\s_atCount~0_combout\ & (\Equal2~0_combout\ & \Add4~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \s_atCount~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \Add4~23_combout\,
	combout => \Add4~25_combout\);

\Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\Add4~25_combout\) # ((s_lo(7) & ((\Add4~26_combout\) # (!\WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~25_combout\,
	datab => s_lo(7),
	datac => \Add4~26_combout\,
	datad => \WideOr2~0_combout\,
	combout => \Selector22~0_combout\);

\s_lo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_lo(7));

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

\Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (s_hi(7) & (((\Selector35~4_combout\ & \Add3~14_combout\)) # (!\s_hi[6]~2_combout\))) # (!s_hi(7) & (\Selector35~4_combout\ & (\Add3~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_hi(7),
	datab => \Selector35~4_combout\,
	datac => \Add3~14_combout\,
	datad => \s_hi[6]~2_combout\,
	combout => \Selector30~0_combout\);

\s_hi[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_hi(7));

\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!s_hi(0) & s_lo(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_hi(0),
	datab => s_lo(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((s_hi(1) & ((!\LessThan0~1_cout\) # (!s_lo(1)))) # (!s_hi(1) & (!s_lo(1) & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_hi(1),
	datab => s_lo(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((s_hi(2) & (s_lo(2) & !\LessThan0~3_cout\)) # (!s_hi(2) & ((s_lo(2)) # (!\LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_hi(2),
	datab => s_lo(2),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((s_hi(3) & ((!\LessThan0~5_cout\) # (!s_lo(3)))) # (!s_hi(3) & (!s_lo(3) & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_hi(3),
	datab => s_lo(3),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((s_hi(4) & (s_lo(4) & !\LessThan0~7_cout\)) # (!s_hi(4) & ((s_lo(4)) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_hi(4),
	datab => s_lo(4),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

\LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((s_hi(5) & ((!\LessThan0~9_cout\) # (!s_lo(5)))) # (!s_hi(5) & (!s_lo(5) & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_hi(5),
	datab => s_lo(5),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

\LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((s_hi(6) & (s_lo(6) & !\LessThan0~11_cout\)) # (!s_hi(6) & ((s_lo(6)) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_hi(6),
	datab => s_lo(6),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

\LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = (s_hi(7) & (s_lo(7) & \LessThan0~13_cout\)) # (!s_hi(7) & ((s_lo(7)) # (\LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_hi(7),
	datab => s_lo(7),
	cin => \LessThan0~13_cout\,
	combout => \LessThan0~14_combout\);

\Selector111~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector111~2_combout\ = (\estado.jogo~q\ & (!\s_atCount~0_combout\ & ((!\LessThan0~14_combout\) # (!\estado.conversao1~q\)))) # (!\estado.jogo~q\ & (((!\LessThan0~14_combout\) # (!\estado.conversao1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \s_atCount~0_combout\,
	datac => \estado.conversao1~q\,
	datad => \LessThan0~14_combout\,
	combout => \Selector111~2_combout\);

\keys[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(0),
	o => \keys[0]~input_o\);

\Selector111~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector111~8_combout\ = (\Selector111~10_combout\) # ((\estado.grupo_xx~q\ & (\Selector111~2_combout\ & \keys[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector111~10_combout\,
	datab => \estado.grupo_xx~q\,
	datac => \Selector111~2_combout\,
	datad => \keys[0]~input_o\,
	combout => \Selector111~8_combout\);

\Selector109~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector109~2_combout\ = (!\reset~input_o\ & ((!\keys[0]~input_o\) # (!\estado.grupo_xx~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.grupo_xx~q\,
	datac => \keys[0]~input_o\,
	datad => \reset~input_o\,
	combout => \Selector109~2_combout\);

\Selector111~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector111~5_combout\ = (\s_done2~q\ & \s_done1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_done2~q\,
	datab => \s_done1~q\,
	combout => \Selector111~5_combout\);

\Selector111~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector111~6_combout\ = (\estado.conversao1~q\ & (((\Selector111~5_combout\)))) # (!\estado.conversao1~q\ & (\keys[3]~input_o\ & (!\estado.waiting~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keys[3]~input_o\,
	datab => \estado.waiting~q\,
	datac => \estado.conversao1~q\,
	datad => \Selector111~5_combout\,
	combout => \Selector111~6_combout\);

\Selector111~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector111~7_combout\ = (\estado.guess_n1~q\ & (((\Selector111~4_combout\) # (\Selector111~6_combout\)))) # (!\estado.guess_n1~q\ & (\count|s_move~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.guess_n1~q\,
	datab => \count|s_move~q\,
	datac => \Selector111~4_combout\,
	datad => \Selector111~6_combout\,
	combout => \Selector111~7_combout\);

\Selector109~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector109~3_combout\ = (\Selector111~2_combout\ & (\Selector109~2_combout\ & ((!\Selector111~7_combout\) # (!\Selector111~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector111~2_combout\,
	datab => \Selector109~2_combout\,
	datac => \Selector111~3_combout\,
	datad => \Selector111~7_combout\,
	combout => \Selector109~3_combout\);

\Selector111~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector111~9_combout\ = (\Selector111~8_combout\) # ((\estado.waiting~q\ & \Selector109~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector111~8_combout\,
	datab => \estado.waiting~q\,
	datac => \Selector109~3_combout\,
	combout => \Selector111~9_combout\);

\estado.waiting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector111~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.waiting~q\);

\Selector111~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector111~4_combout\ = (\estado.waiting~q\ & ((\s_done2~q\) # (\s_done1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.waiting~q\,
	datab => \s_done2~q\,
	datac => \s_done1~q\,
	combout => \Selector111~4_combout\);

\Selector107~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector107~9_combout\ = (\reset~input_o\) # ((\estado.conversao1~q\ & ((\Selector111~5_combout\) # (\LessThan0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \estado.conversao1~q\,
	datac => \Selector111~5_combout\,
	datad => \LessThan0~14_combout\,
	combout => \Selector107~9_combout\);

\Selector112~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector112~0_combout\ = (\estado.conversao1~q\ & ((\LessThan0~14_combout\) # ((\estado.cheater~q\ & !\Selector107~12_combout\)))) # (!\estado.conversao1~q\ & (((\estado.cheater~q\ & !\Selector107~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.conversao1~q\,
	datab => \LessThan0~14_combout\,
	datac => \estado.cheater~q\,
	datad => \Selector107~12_combout\,
	combout => \Selector112~0_combout\);

\estado.cheater\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector112~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.cheater~q\);

\Selector107~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector107~10_combout\ = (!\Selector107~4_combout\ & ((\estado.terminar~q\) # ((\estado.cheater~q\) # (!\estado.guess_n1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.terminar~q\,
	datab => \estado.cheater~q\,
	datac => \estado.guess_n1~q\,
	datad => \Selector107~4_combout\,
	combout => \Selector107~10_combout\);

\Selector107~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector107~6_combout\ = (\estado.jogo~q\ & ((\keys[1]~input_o\) # (!\keys[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \keys[1]~input_o\,
	datad => \keys[2]~input_o\,
	combout => \Selector107~6_combout\);

\Selector107~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector107~11_combout\ = (\Selector107~6_combout\) # ((\estado.conversao1~q\ & (!\Selector111~5_combout\ & !\LessThan0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector107~6_combout\,
	datab => \estado.conversao1~q\,
	datac => \Selector111~5_combout\,
	datad => \LessThan0~14_combout\,
	combout => \Selector107~11_combout\);

\Selector107~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector107~12_combout\ = (\Selector107~9_combout\) # ((!\Selector107~10_combout\ & (!\Selector107~11_combout\ & !\Selector107~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector107~9_combout\,
	datab => \Selector107~10_combout\,
	datac => \Selector107~11_combout\,
	datad => \Selector107~3_combout\,
	combout => \Selector107~12_combout\);

\Selector110~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector110~0_combout\ = (\Selector107~12_combout\ & (((\Selector111~4_combout\ & !\Selector107~15_combout\)))) # (!\Selector107~12_combout\ & (\estado.conversao1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.conversao1~q\,
	datab => \Selector111~4_combout\,
	datac => \Selector107~12_combout\,
	datad => \Selector107~15_combout\,
	combout => \Selector110~0_combout\);

\estado.conversao1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector110~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.conversao1~q\);

\Selector107~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector107~15_combout\ = (\estado.conversao1~q\ & ((\LessThan0~14_combout\) # ((\s_done2~q\ & \s_done1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_done2~q\,
	datab => \s_done1~q\,
	datac => \estado.conversao1~q\,
	datad => \LessThan0~14_combout\,
	combout => \Selector107~15_combout\);

\Selector108~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector108~0_combout\ = (\estado.jogo~q\ & (((\Selector107~15_combout\ & !\LessThan0~14_combout\)) # (!\Selector107~12_combout\))) # (!\estado.jogo~q\ & (\Selector107~15_combout\ & ((!\LessThan0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \Selector107~15_combout\,
	datac => \Selector107~12_combout\,
	datad => \LessThan0~14_combout\,
	combout => \Selector108~0_combout\);

\estado.jogo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector108~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.jogo~q\);

\Selector109~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector109~5_combout\ = (\keys[2]~input_o\ & (!\keys[1]~input_o\ & (\estado.jogo~q\ & !\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keys[2]~input_o\,
	datab => \keys[1]~input_o\,
	datac => \estado.jogo~q\,
	datad => \Equal0~0_combout\,
	combout => \Selector109~5_combout\);

\Selector109~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector109~4_combout\ = (\Selector109~5_combout\) # ((\estado.terminar~q\ & \Selector109~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector109~5_combout\,
	datab => \estado.terminar~q\,
	datac => \Selector109~3_combout\,
	combout => \Selector109~4_combout\);

\estado.terminar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector109~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.terminar~q\);

\Selector107~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector107~13_combout\ = (\Selector107~4_combout\ & ((\estado.terminar~q\) # ((\estado.cheater~q\) # (!\estado.guess_n1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector107~4_combout\,
	datab => \estado.terminar~q\,
	datac => \estado.cheater~q\,
	datad => \estado.guess_n1~q\,
	combout => \Selector107~13_combout\);

\Selector107~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector107~14_combout\ = (\Selector107~12_combout\ & (((\Selector107~13_combout\ & !\Selector107~15_combout\)))) # (!\Selector107~12_combout\ & (\estado.grupo_xx~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.grupo_xx~q\,
	datab => \Selector107~13_combout\,
	datac => \Selector107~12_combout\,
	datad => \Selector107~15_combout\,
	combout => \Selector107~14_combout\);

\estado.grupo_xx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector107~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.grupo_xx~q\);

\Selector107~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector107~2_combout\ = (\estado.grupo_xx~q\ & !\keys[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.grupo_xx~q\,
	datad => \keys[0]~input_o\,
	combout => \Selector107~2_combout\);

\Selector107~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector107~3_combout\ = (\Selector107~2_combout\) # ((\estado.waiting~q\ & (!\s_done2~q\ & !\s_done1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector107~2_combout\,
	datab => \estado.waiting~q\,
	datac => \s_done2~q\,
	datad => \s_done1~q\,
	combout => \Selector107~3_combout\);

\Selector107~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector107~5_combout\ = (\estado.terminar~q\) # ((\estado.cheater~q\) # (!\estado.guess_n1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.terminar~q\,
	datab => \estado.cheater~q\,
	datac => \estado.guess_n1~q\,
	combout => \Selector107~5_combout\);

\Selector107~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector107~7_combout\ = (\Selector107~6_combout\) # ((\estado.conversao1~q\ & (!\Selector111~5_combout\ & !\LessThan0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.conversao1~q\,
	datab => \Selector111~5_combout\,
	datac => \Selector107~6_combout\,
	datad => \LessThan0~14_combout\,
	combout => \Selector107~7_combout\);

\Selector107~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector107~8_combout\ = (\Selector107~3_combout\) # ((\Selector107~7_combout\) # ((!\Selector107~4_combout\ & \Selector107~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector107~3_combout\,
	datab => \Selector107~4_combout\,
	datac => \Selector107~5_combout\,
	datad => \Selector107~7_combout\,
	combout => \Selector107~8_combout\);

\Selector106~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector106~0_combout\ = ((\Selector107~9_combout\ & ((\Selector107~15_combout\))) # (!\Selector107~9_combout\ & (\estado.guess_n1~q\))) # (!\Selector107~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector107~8_combout\,
	datab => \Selector107~9_combout\,
	datac => \estado.guess_n1~q\,
	datad => \Selector107~15_combout\,
	combout => \Selector106~0_combout\);

\estado.guess_n1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector106~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.guess_n1~q\);

\s_blink~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_blink~0_combout\ = (\estado.guess_n1~q\ & (\s_blink~q\)) # (!\estado.guess_n1~q\ & ((!\count|s_move~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_blink~q\,
	datab => \estado.guess_n1~q\,
	datad => \count|s_move~q\,
	combout => \s_blink~0_combout\);

s_blink : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_blink~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_blink~q\);

\count|s_ledr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_ledr~0_combout\ = (!\count|s_ledr\(0) & (!\count|Equal0~0_combout\ & \s_blink~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_ledr\(0),
	datab => \count|Equal0~0_combout\,
	datad => \s_blink~q\,
	combout => \count|s_ledr~0_combout\);

\count|s_ledr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \count|s_ledr~0_combout\,
	ena => \ALT_INV_s_resetCounter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|s_ledr\(0));

\rnd[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rnd(0),
	o => \rnd[0]~input_o\);

\Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\estado.terminar~q\ & (((\rnd[0]~input_o\ & !\keys[3]~input_o\)))) # (!\estado.terminar~q\ & (\count|s_ledr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_ledr\(0),
	datab => \rnd[0]~input_o\,
	datac => \estado.terminar~q\,
	datad => \keys[3]~input_o\,
	combout => \Selector21~0_combout\);

\WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\estado.terminar~q\) # (!\estado.guess_n1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.terminar~q\,
	datad => \estado.guess_n1~q\,
	combout => \WideOr1~0_combout\);

\ledr[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector21~0_combout\,
	ena => \WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledr[0]~reg0_q\);

\rnd[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rnd(1),
	o => \rnd[1]~input_o\);

\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\estado.terminar~q\ & (((\rnd[1]~input_o\ & !\keys[3]~input_o\)))) # (!\estado.terminar~q\ & (\count|s_ledr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_ledr\(0),
	datab => \rnd[1]~input_o\,
	datac => \estado.terminar~q\,
	datad => \keys[3]~input_o\,
	combout => \Selector20~0_combout\);

\ledr[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector20~0_combout\,
	ena => \WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledr[1]~reg0_q\);

\rnd[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rnd(2),
	o => \rnd[2]~input_o\);

\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\estado.terminar~q\ & (((\rnd[2]~input_o\ & !\keys[3]~input_o\)))) # (!\estado.terminar~q\ & (\count|s_ledr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_ledr\(0),
	datab => \rnd[2]~input_o\,
	datac => \estado.terminar~q\,
	datad => \keys[3]~input_o\,
	combout => \Selector19~0_combout\);

\ledr[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector19~0_combout\,
	ena => \WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledr[2]~reg0_q\);

\rnd[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rnd(3),
	o => \rnd[3]~input_o\);

\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\estado.terminar~q\ & (((\rnd[3]~input_o\ & !\keys[3]~input_o\)))) # (!\estado.terminar~q\ & (\count|s_ledr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_ledr\(0),
	datab => \rnd[3]~input_o\,
	datac => \estado.terminar~q\,
	datad => \keys[3]~input_o\,
	combout => \Selector18~0_combout\);

\ledr[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector18~0_combout\,
	ena => \WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledr[3]~reg0_q\);

\rnd[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rnd(4),
	o => \rnd[4]~input_o\);

\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\estado.terminar~q\ & (((\rnd[4]~input_o\ & !\keys[3]~input_o\)))) # (!\estado.terminar~q\ & (\count|s_ledr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_ledr\(0),
	datab => \rnd[4]~input_o\,
	datac => \estado.terminar~q\,
	datad => \keys[3]~input_o\,
	combout => \Selector17~0_combout\);

\ledr[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector17~0_combout\,
	ena => \WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledr[4]~reg0_q\);

\rnd[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rnd(5),
	o => \rnd[5]~input_o\);

\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\estado.terminar~q\ & (((\rnd[5]~input_o\ & !\keys[3]~input_o\)))) # (!\estado.terminar~q\ & (\count|s_ledr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_ledr\(0),
	datab => \rnd[5]~input_o\,
	datac => \estado.terminar~q\,
	datad => \keys[3]~input_o\,
	combout => \Selector16~0_combout\);

\ledr[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector16~0_combout\,
	ena => \WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledr[5]~reg0_q\);

\rnd[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rnd(6),
	o => \rnd[6]~input_o\);

\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\estado.terminar~q\ & (((\rnd[6]~input_o\ & !\keys[3]~input_o\)))) # (!\estado.terminar~q\ & (\count|s_ledr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_ledr\(0),
	datab => \rnd[6]~input_o\,
	datac => \estado.terminar~q\,
	datad => \keys[3]~input_o\,
	combout => \Selector15~0_combout\);

\ledr[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector15~0_combout\,
	ena => \WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledr[6]~reg0_q\);

\rnd[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rnd(7),
	o => \rnd[7]~input_o\);

\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\estado.terminar~q\ & (((\rnd[7]~input_o\ & !\keys[3]~input_o\)))) # (!\estado.terminar~q\ & (\count|s_ledr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_ledr\(0),
	datab => \rnd[7]~input_o\,
	datac => \estado.terminar~q\,
	datad => \keys[3]~input_o\,
	combout => \Selector14~0_combout\);

\ledr[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector14~0_combout\,
	ena => \WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledr[7]~reg0_q\);

\rnd[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rnd(8),
	o => \rnd[8]~input_o\);

\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\estado.terminar~q\ & (((\rnd[8]~input_o\ & !\keys[3]~input_o\)))) # (!\estado.terminar~q\ & (\count|s_ledr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_ledr\(0),
	datab => \rnd[8]~input_o\,
	datac => \estado.terminar~q\,
	datad => \keys[3]~input_o\,
	combout => \Selector13~0_combout\);

\ledr[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector13~0_combout\,
	ena => \WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledr[8]~reg0_q\);

\rnd[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rnd(9),
	o => \rnd[9]~input_o\);

\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\estado.terminar~q\ & (((\rnd[9]~input_o\ & !\keys[3]~input_o\)))) # (!\estado.terminar~q\ & (\count|s_ledr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_ledr\(0),
	datab => \rnd[9]~input_o\,
	datac => \estado.terminar~q\,
	datad => \keys[3]~input_o\,
	combout => \Selector12~0_combout\);

\ledr[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector12~0_combout\,
	ena => \WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledr[9]~reg0_q\);

\rnd[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rnd(10),
	o => \rnd[10]~input_o\);

\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\estado.terminar~q\ & (((\rnd[10]~input_o\ & !\keys[3]~input_o\)))) # (!\estado.terminar~q\ & (\count|s_ledr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_ledr\(0),
	datab => \rnd[10]~input_o\,
	datac => \estado.terminar~q\,
	datad => \keys[3]~input_o\,
	combout => \Selector11~0_combout\);

\ledr[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector11~0_combout\,
	ena => \WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledr[10]~reg0_q\);

\rnd[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rnd(11),
	o => \rnd[11]~input_o\);

\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\estado.terminar~q\ & (((\rnd[11]~input_o\ & !\keys[3]~input_o\)))) # (!\estado.terminar~q\ & (\count|s_ledr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_ledr\(0),
	datab => \rnd[11]~input_o\,
	datac => \estado.terminar~q\,
	datad => \keys[3]~input_o\,
	combout => \Selector10~0_combout\);

\ledr[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector10~0_combout\,
	ena => \WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledr[11]~reg0_q\);

\rnd[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rnd(12),
	o => \rnd[12]~input_o\);

\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\estado.terminar~q\ & (((\rnd[12]~input_o\ & !\keys[3]~input_o\)))) # (!\estado.terminar~q\ & (\count|s_ledr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_ledr\(0),
	datab => \rnd[12]~input_o\,
	datac => \estado.terminar~q\,
	datad => \keys[3]~input_o\,
	combout => \Selector9~0_combout\);

\ledr[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector9~0_combout\,
	ena => \WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledr[12]~reg0_q\);

\rnd[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rnd(13),
	o => \rnd[13]~input_o\);

\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\estado.terminar~q\ & (((\rnd[13]~input_o\ & !\keys[3]~input_o\)))) # (!\estado.terminar~q\ & (\count|s_ledr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_ledr\(0),
	datab => \rnd[13]~input_o\,
	datac => \estado.terminar~q\,
	datad => \keys[3]~input_o\,
	combout => \Selector8~0_combout\);

\ledr[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector8~0_combout\,
	ena => \WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledr[13]~reg0_q\);

\rnd[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rnd(14),
	o => \rnd[14]~input_o\);

\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\estado.terminar~q\ & (((\rnd[14]~input_o\ & !\keys[3]~input_o\)))) # (!\estado.terminar~q\ & (\count|s_ledr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_ledr\(0),
	datab => \rnd[14]~input_o\,
	datac => \estado.terminar~q\,
	datad => \keys[3]~input_o\,
	combout => \Selector7~0_combout\);

\ledr[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector7~0_combout\,
	ena => \WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledr[14]~reg0_q\);

\rnd[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rnd(15),
	o => \rnd[15]~input_o\);

\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\estado.terminar~q\ & (((\rnd[15]~input_o\ & !\keys[3]~input_o\)))) # (!\estado.terminar~q\ & (\count|s_ledr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_ledr\(0),
	datab => \rnd[15]~input_o\,
	datac => \estado.terminar~q\,
	datad => \keys[3]~input_o\,
	combout => \Selector6~0_combout\);

\ledr[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector6~0_combout\,
	ena => \WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledr[15]~reg0_q\);

\rnd[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rnd(16),
	o => \rnd[16]~input_o\);

\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\estado.terminar~q\ & (((\rnd[16]~input_o\ & !\keys[3]~input_o\)))) # (!\estado.terminar~q\ & (\count|s_ledr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_ledr\(0),
	datab => \rnd[16]~input_o\,
	datac => \estado.terminar~q\,
	datad => \keys[3]~input_o\,
	combout => \Selector5~0_combout\);

\ledr[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector5~0_combout\,
	ena => \WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledr[16]~reg0_q\);

\rnd[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rnd(17),
	o => \rnd[17]~input_o\);

\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\estado.terminar~q\ & (((\rnd[17]~input_o\ & !\keys[3]~input_o\)))) # (!\estado.terminar~q\ & (\count|s_ledr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_ledr\(0),
	datab => \rnd[17]~input_o\,
	datac => \estado.terminar~q\,
	datad => \keys[3]~input_o\,
	combout => \Selector4~0_combout\);

\ledr[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector4~0_combout\,
	ena => \WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledr[17]~reg0_q\);

\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (s_atCount(0) & (\s_atCount~0_combout\ $ (VCC))) # (!s_atCount(0) & (\s_atCount~0_combout\ & VCC))
-- \Add2~1\ = CARRY((s_atCount(0) & \s_atCount~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_atCount(0),
	datab => \s_atCount~0_combout\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

\Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\estado.jogo~q\ & ((\Add2~0_combout\) # ((s_atCount(0) & !\WideOr2~0_combout\)))) # (!\estado.jogo~q\ & (((s_atCount(0) & !\WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \Add2~0_combout\,
	datac => s_atCount(0),
	datad => \WideOr2~0_combout\,
	combout => \Selector44~0_combout\);

\s_atCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector44~0_combout\,
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

\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (s_atCount(1) & (!\Add2~1\)) # (!s_atCount(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!s_atCount(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_atCount(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

\Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\estado.jogo~q\ & ((\Add2~2_combout\) # ((s_atCount(1) & !\WideOr2~0_combout\)))) # (!\estado.jogo~q\ & (((s_atCount(1) & !\WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \Add2~2_combout\,
	datac => s_atCount(1),
	datad => \WideOr2~0_combout\,
	combout => \Selector43~0_combout\);

\s_atCount[1]\ : dffeas
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

\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (s_atCount(2) & (\Add2~3\ $ (GND))) # (!s_atCount(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((s_atCount(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_atCount(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

\Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (\estado.jogo~q\ & ((\Add2~4_combout\) # ((s_atCount(2) & !\WideOr2~0_combout\)))) # (!\estado.jogo~q\ & (((s_atCount(2) & !\WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \Add2~4_combout\,
	datac => s_atCount(2),
	datad => \WideOr2~0_combout\,
	combout => \Selector42~0_combout\);

\s_atCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector42~0_combout\,
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

\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (s_atCount(3) & (!\Add2~5\)) # (!s_atCount(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!s_atCount(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_atCount(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

\Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = (\estado.jogo~q\ & ((\Add2~6_combout\) # ((s_atCount(3) & !\WideOr2~0_combout\)))) # (!\estado.jogo~q\ & (((s_atCount(3) & !\WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \Add2~6_combout\,
	datac => s_atCount(3),
	datad => \WideOr2~0_combout\,
	combout => \Selector41~0_combout\);

\s_atCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector41~0_combout\,
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

\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (s_atCount(4) & (\Add2~7\ $ (GND))) # (!s_atCount(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((s_atCount(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_atCount(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

\Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (\estado.jogo~q\ & ((\Add2~8_combout\) # ((s_atCount(4) & !\WideOr2~0_combout\)))) # (!\estado.jogo~q\ & (((s_atCount(4) & !\WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \Add2~8_combout\,
	datac => s_atCount(4),
	datad => \WideOr2~0_combout\,
	combout => \Selector40~0_combout\);

\s_atCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector40~0_combout\,
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

\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (s_atCount(5) & (!\Add2~9\)) # (!s_atCount(5) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!s_atCount(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_atCount(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

\Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (\estado.jogo~q\ & ((\Add2~10_combout\) # ((s_atCount(5) & !\WideOr2~0_combout\)))) # (!\estado.jogo~q\ & (((s_atCount(5) & !\WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \Add2~10_combout\,
	datac => s_atCount(5),
	datad => \WideOr2~0_combout\,
	combout => \Selector39~0_combout\);

\s_atCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector39~0_combout\,
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

\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = s_atCount(6) $ (!\Add2~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_atCount(6),
	cin => \Add2~11\,
	combout => \Add2~12_combout\);

\Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (\estado.jogo~q\ & ((\Add2~12_combout\) # ((s_atCount(6) & !\WideOr2~0_combout\)))) # (!\estado.jogo~q\ & (((s_atCount(6) & !\WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \Add2~12_combout\,
	datac => s_atCount(6),
	datad => \WideOr2~0_combout\,
	combout => \Selector38~0_combout\);

\s_atCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector38~0_combout\,
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

\Selector113~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector113~0_combout\ = (\estado.waiting~q\) # ((\activate~reg0_q\ & !\estado.jogo~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.waiting~q\,
	datab => \activate~reg0_q\,
	datad => \estado.jogo~q\,
	combout => \Selector113~0_combout\);

\activate~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector113~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \activate~reg0_q\);

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

\Selector105~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector105~0_combout\ = (\estado.grupo_xx~q\) # ((\estado.cheater~q\) # (!\estado.guess_n1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.grupo_xx~q\,
	datab => \estado.cheater~q\,
	datad => \estado.guess_n1~q\,
	combout => \Selector105~0_combout\);

WideOr5 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr5~combout\ = (!\estado.terminar~q\ & (!\estado.waiting~q\ & !\estado.conversao1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.terminar~q\,
	datab => \estado.waiting~q\,
	datac => \estado.conversao1~q\,
	combout => \WideOr5~combout\);

\Selector105~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector105~1_combout\ = (\Selector105~0_combout\) # ((\selector~reg0_q\ & !\WideOr5~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector105~0_combout\,
	datab => \selector~reg0_q\,
	datac => \WideOr5~combout\,
	combout => \Selector105~1_combout\);

\selector~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector105~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \selector~reg0_q\);

\c2hz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c2hz,
	o => \c2hz~input_o\);

\s_blinkDisplay~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_blinkDisplay~1_combout\ = (\s_blinkDisplay~q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_blinkDisplay~q\,
	datad => \reset~input_o\,
	combout => \s_blinkDisplay~1_combout\);

\s_blinkDisplay~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_blinkDisplay~0_combout\ = (\estado.terminar~q\ & ((!\keys[3]~input_o\))) # (!\estado.terminar~q\ & (\s_blinkDisplay~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_blinkDisplay~1_combout\,
	datab => \keys[3]~input_o\,
	datad => \estado.terminar~q\,
	combout => \s_blinkDisplay~0_combout\);

\s_blinkDisplay~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_blinkDisplay~2_combout\ = (!\count|s_move~q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_move~q\,
	datab => \reset~input_o\,
	combout => \s_blinkDisplay~2_combout\);

s_blinkDisplay : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_blinkDisplay~0_combout\,
	asdata => \s_blinkDisplay~2_combout\,
	sload => \ALT_INV_estado.guess_n1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_blinkDisplay~q\);

\blinker|s_enable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinker|s_enable~0_combout\ = (!\blinker|s_enable\(0) & \s_blinkDisplay~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinker|s_enable\(0),
	datad => \s_blinkDisplay~q\,
	combout => \blinker|s_enable~0_combout\);

\blinker|s_enable[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c2hz~input_o\,
	d => \blinker|s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinker|s_enable\(0));

\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\enable[0]~reg0_q\ & ((\estado.cheater~q\) # ((\estado.terminar~q\ & \blinker|s_enable\(0))))) # (!\enable[0]~reg0_q\ & (\estado.terminar~q\ & (\blinker|s_enable\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable[0]~reg0_q\,
	datab => \estado.terminar~q\,
	datac => \blinker|s_enable\(0),
	datad => \estado.cheater~q\,
	combout => \Selector3~0_combout\);

\blinker2|s_enable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinker2|s_enable~0_combout\ = (!\blinker2|s_enable\(0) & \s_blinkDisplay~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinker2|s_enable\(0),
	datad => \s_blinkDisplay~q\,
	combout => \blinker2|s_enable~0_combout\);

\blinker2|s_enable[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c1hz~input_o\,
	d => \blinker2|s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinker2|s_enable\(0));

\Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector3~0_combout\) # ((\blinker2|s_enable\(0) & !\estado.guess_n1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \blinker2|s_enable\(0),
	datad => \estado.guess_n1~q\,
	combout => \Selector3~1_combout\);

\enable[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector3~1_combout\,
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

\Selector104~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector104~0_combout\ = (\rotator|s_shiftReg\(0)) # (!\estado.grupo_xx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(0),
	datad => \estado.grupo_xx~q\,
	combout => \Selector104~0_combout\);

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
	d => \Selector104~0_combout\,
	asdata => \~GND~combout\,
	sclr => \estado.cheater~q\,
	sload => \estado.jogo~q\,
	ena => \WideOr5~combout\,
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

\Selector103~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector103~0_combout\ = (\estado.grupo_xx~q\ & \rotator|s_shiftReg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.grupo_xx~q\,
	datab => \rotator|s_shiftReg\(1),
	combout => \Selector103~0_combout\);

\texto[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector103~0_combout\,
	sclr => \estado.jogo~q\,
	ena => \WideOr5~combout\,
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

\Selector102~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector102~0_combout\ = (\estado.grupo_xx~q\ & \rotator|s_shiftReg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.grupo_xx~q\,
	datab => \rotator|s_shiftReg\(2),
	combout => \Selector102~0_combout\);

\texto[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector102~0_combout\,
	asdata => VCC,
	sload => \estado.cheater~q\,
	ena => \WideOr5~combout\,
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

\Selector101~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector101~0_combout\ = (\estado.grupo_xx~q\ & \rotator|s_shiftReg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.grupo_xx~q\,
	datab => \rotator|s_shiftReg\(3),
	combout => \Selector101~0_combout\);

\texto[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector101~0_combout\,
	asdata => VCC,
	sload => \estado.jogo~q\,
	ena => \WideOr5~combout\,
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

\Selector100~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector100~0_combout\ = (\estado.jogo~q\) # ((\estado.grupo_xx~q\ & \rotator|s_shiftReg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \estado.grupo_xx~q\,
	datac => \rotator|s_shiftReg\(4),
	combout => \Selector100~0_combout\);

\texto[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector100~0_combout\,
	asdata => VCC,
	sload => \estado.cheater~q\,
	ena => \WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[4]~reg0_q\);

\Selector99~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector99~0_combout\ = (\estado.grupo_xx~q\ & \rotator|s_shiftReg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.grupo_xx~q\,
	datab => \rotator|s_shiftReg\(5),
	combout => \Selector99~0_combout\);

\texto[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector99~0_combout\,
	asdata => s_resposta(5),
	sload => \estado.jogo~q\,
	ena => \WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[5]~reg0_q\);

\Selector98~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector98~0_combout\ = (\rotator|s_shiftReg\(6)) # (!\estado.grupo_xx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(6),
	datad => \estado.grupo_xx~q\,
	combout => \Selector98~0_combout\);

\texto[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector98~0_combout\,
	asdata => \~GND~combout\,
	sclr => \estado.cheater~q\,
	sload => \estado.jogo~q\,
	ena => \WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[6]~reg0_q\);

\Selector97~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector97~0_combout\ = (\estado.grupo_xx~q\ & \rotator|s_shiftReg\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.grupo_xx~q\,
	datab => \rotator|s_shiftReg\(7),
	combout => \Selector97~0_combout\);

\texto[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector97~0_combout\,
	asdata => VCC,
	sload => \estado.cheater~q\,
	ena => \WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[7]~reg0_q\);

\Selector96~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector96~0_combout\ = (\estado.jogo~q\ & (s_resposta(5))) # (!\estado.jogo~q\ & (((\estado.grupo_xx~q\ & \rotator|s_shiftReg\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_resposta(5),
	datab => \estado.grupo_xx~q\,
	datac => \rotator|s_shiftReg\(8),
	datad => \estado.jogo~q\,
	combout => \Selector96~0_combout\);

\texto[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector96~0_combout\,
	asdata => VCC,
	sload => \estado.cheater~q\,
	ena => \WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[8]~reg0_q\);

\Selector95~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector95~0_combout\ = (\rotator|s_shiftReg\(9)) # (!\estado.grupo_xx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(9),
	datad => \estado.grupo_xx~q\,
	combout => \Selector95~0_combout\);

\texto[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector95~0_combout\,
	asdata => s_resposta(13),
	sclr => \estado.cheater~q\,
	sload => \estado.jogo~q\,
	ena => \WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[9]~reg0_q\);

\Selector94~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector94~0_combout\ = (\estado.grupo_xx~q\ & \rotator|s_shiftReg\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.grupo_xx~q\,
	datab => \rotator|s_shiftReg\(10),
	combout => \Selector94~0_combout\);

\texto[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector94~0_combout\,
	asdata => VCC,
	sload => \estado.jogo~q\,
	ena => \WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[10]~reg0_q\);

\Selector93~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector93~0_combout\ = (\estado.jogo~q\ & (s_resposta(11))) # (!\estado.jogo~q\ & (((\estado.grupo_xx~q\ & \rotator|s_shiftReg\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_resposta(11),
	datab => \estado.grupo_xx~q\,
	datac => \rotator|s_shiftReg\(11),
	datad => \estado.jogo~q\,
	combout => \Selector93~0_combout\);

\texto[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector93~0_combout\,
	asdata => VCC,
	sload => \estado.cheater~q\,
	ena => \WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[11]~reg0_q\);

\Selector92~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector92~0_combout\ = (\estado.jogo~q\ & (s_resposta(11))) # (!\estado.jogo~q\ & (((\estado.grupo_xx~q\ & \rotator|s_shiftReg\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_resposta(11),
	datab => \estado.grupo_xx~q\,
	datac => \rotator|s_shiftReg\(12),
	datad => \estado.jogo~q\,
	combout => \Selector92~0_combout\);

\texto[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector92~0_combout\,
	asdata => VCC,
	sload => \estado.cheater~q\,
	ena => \WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[12]~reg0_q\);

\Selector91~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector91~0_combout\ = (\rotator|s_shiftReg\(13)) # (!\estado.grupo_xx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(13),
	datad => \estado.grupo_xx~q\,
	combout => \Selector91~0_combout\);

\texto[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector91~0_combout\,
	asdata => s_resposta(13),
	sclr => \estado.cheater~q\,
	sload => \estado.jogo~q\,
	ena => \WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[13]~reg0_q\);

\Selector90~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector90~0_combout\ = (\rotator|s_shiftReg\(14)) # (!\estado.grupo_xx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(14),
	datad => \estado.grupo_xx~q\,
	combout => \Selector90~0_combout\);

\texto[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector90~0_combout\,
	asdata => s_resposta(14),
	sload => \estado.jogo~q\,
	ena => \WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[14]~reg0_q\);

\Selector89~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector89~0_combout\ = (\rotator|s_shiftReg\(15)) # (!\estado.grupo_xx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(15),
	datad => \estado.grupo_xx~q\,
	combout => \Selector89~0_combout\);

\texto[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector89~0_combout\,
	asdata => \~GND~combout\,
	sclr => \estado.cheater~q\,
	sload => \estado.jogo~q\,
	ena => \WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[15]~reg0_q\);

\Selector88~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector88~0_combout\ = (\estado.grupo_xx~q\ & \rotator|s_shiftReg\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.grupo_xx~q\,
	datab => \rotator|s_shiftReg\(16),
	combout => \Selector88~0_combout\);

\texto[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector88~0_combout\,
	asdata => VCC,
	sload => \estado.cheater~q\,
	ena => \WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[16]~reg0_q\);

\Selector87~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector87~0_combout\ = (\rotator|s_shiftReg\(17)) # (!\estado.grupo_xx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(17),
	datad => \estado.grupo_xx~q\,
	combout => \Selector87~0_combout\);

\texto[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector87~0_combout\,
	asdata => \~GND~combout\,
	sclr => \estado.cheater~q\,
	sload => \estado.jogo~q\,
	ena => \WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[17]~reg0_q\);

\Selector86~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector86~0_combout\ = (\estado.jogo~q\) # ((\estado.grupo_xx~q\ & \rotator|s_shiftReg\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.jogo~q\,
	datab => \estado.grupo_xx~q\,
	datac => \rotator|s_shiftReg\(18),
	combout => \Selector86~0_combout\);

\texto[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector86~0_combout\,
	asdata => VCC,
	sload => \estado.cheater~q\,
	ena => \WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[18]~reg0_q\);

\Selector85~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector85~0_combout\ = (\rotator|s_shiftReg\(19)) # (!\estado.grupo_xx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(19),
	datad => \estado.grupo_xx~q\,
	combout => \Selector85~0_combout\);

\texto[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector85~0_combout\,
	asdata => VCC,
	sclr => \estado.cheater~q\,
	sload => \estado.jogo~q\,
	ena => \WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[19]~reg0_q\);

\Selector84~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector84~0_combout\ = (!\estado.jogo~q\ & (!\estado.cheater~q\ & ((\rotator|s_shiftReg\(20)) # (!\estado.grupo_xx~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(20),
	datab => \estado.grupo_xx~q\,
	datac => \estado.jogo~q\,
	datad => \estado.cheater~q\,
	combout => \Selector84~0_combout\);

\texto[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector84~0_combout\,
	ena => \WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[20]~reg0_q\);

\Selector83~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector83~0_combout\ = (\texto[21]~reg0_q\ & (((\estado.grupo_xx~q\ & \rotator|s_shiftReg\(21))) # (!\WideOr5~combout\))) # (!\texto[21]~reg0_q\ & (\estado.grupo_xx~q\ & (\rotator|s_shiftReg\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \texto[21]~reg0_q\,
	datab => \estado.grupo_xx~q\,
	datac => \rotator|s_shiftReg\(21),
	datad => \WideOr5~combout\,
	combout => \Selector83~0_combout\);

\texto[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector83~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[21]~reg0_q\);

\Selector82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector82~0_combout\ = (\estado.grupo_xx~q\ & (\rotator|s_shiftReg\(22))) # (!\estado.grupo_xx~q\ & ((!\estado.jogo~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(22),
	datab => \estado.grupo_xx~q\,
	datad => \estado.jogo~q\,
	combout => \Selector82~0_combout\);

\texto[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector82~0_combout\,
	ena => \WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[22]~reg0_q\);

\Selector81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector81~0_combout\ = (\estado.grupo_xx~q\ & (\rotator|s_shiftReg\(23))) # (!\estado.grupo_xx~q\ & ((\estado.cheater~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(23),
	datab => \estado.cheater~q\,
	datad => \estado.grupo_xx~q\,
	combout => \Selector81~0_combout\);

\texto[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector81~0_combout\,
	ena => \WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[23]~reg0_q\);

\Selector80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector80~0_combout\ = (!\estado.jogo~q\ & (!\estado.cheater~q\ & ((\rotator|s_shiftReg\(24)) # (!\estado.grupo_xx~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(24),
	datab => \estado.grupo_xx~q\,
	datac => \estado.jogo~q\,
	datad => \estado.cheater~q\,
	combout => \Selector80~0_combout\);

\texto[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector80~0_combout\,
	ena => \WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[24]~reg0_q\);

\Selector79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~0_combout\ = (\estado.grupo_xx~q\ & (\rotator|s_shiftReg\(25))) # (!\estado.grupo_xx~q\ & ((\estado.cheater~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(25),
	datab => \estado.cheater~q\,
	datad => \estado.grupo_xx~q\,
	combout => \Selector79~0_combout\);

\texto[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector79~0_combout\,
	ena => \WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[25]~reg0_q\);

\Selector78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector78~0_combout\ = (\estado.grupo_xx~q\ & (\rotator|s_shiftReg\(26))) # (!\estado.grupo_xx~q\ & ((\estado.cheater~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(26),
	datab => \estado.cheater~q\,
	datad => \estado.grupo_xx~q\,
	combout => \Selector78~0_combout\);

\texto[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector78~0_combout\,
	ena => \WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[26]~reg0_q\);

\Selector77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector77~0_combout\ = (\estado.grupo_xx~q\ & (\rotator|s_shiftReg\(27))) # (!\estado.grupo_xx~q\ & ((!\estado.jogo~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(27),
	datab => \estado.grupo_xx~q\,
	datad => \estado.jogo~q\,
	combout => \Selector77~0_combout\);

\texto[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector77~0_combout\,
	ena => \WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[27]~reg0_q\);

\Selector76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector76~0_combout\ = (\estado.grupo_xx~q\ & (\rotator|s_shiftReg\(28))) # (!\estado.grupo_xx~q\ & ((!\estado.jogo~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(28),
	datab => \estado.grupo_xx~q\,
	datad => \estado.jogo~q\,
	combout => \Selector76~0_combout\);

\texto[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector76~0_combout\,
	ena => \WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[28]~reg0_q\);

\Selector75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector75~0_combout\ = (\texto[29]~reg0_q\ & (((\estado.grupo_xx~q\ & \rotator|s_shiftReg\(29))) # (!\WideOr5~combout\))) # (!\texto[29]~reg0_q\ & (\estado.grupo_xx~q\ & (\rotator|s_shiftReg\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \texto[29]~reg0_q\,
	datab => \estado.grupo_xx~q\,
	datac => \rotator|s_shiftReg\(29),
	datad => \WideOr5~combout\,
	combout => \Selector75~0_combout\);

\texto[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[29]~reg0_q\);

\Selector74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector74~0_combout\ = (\estado.grupo_xx~q\ & (\rotator|s_shiftReg\(30))) # (!\estado.grupo_xx~q\ & ((!\estado.jogo~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(30),
	datab => \estado.grupo_xx~q\,
	datad => \estado.jogo~q\,
	combout => \Selector74~0_combout\);

\texto[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector74~0_combout\,
	ena => \WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[30]~reg0_q\);

\Selector73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector73~0_combout\ = (\estado.grupo_xx~q\ & (\rotator|s_shiftReg\(31))) # (!\estado.grupo_xx~q\ & ((!\estado.jogo~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(31),
	datab => \estado.grupo_xx~q\,
	datad => \estado.jogo~q\,
	combout => \Selector73~0_combout\);

\texto[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector73~0_combout\,
	ena => \WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[31]~reg0_q\);

\Selector72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector72~0_combout\ = (!\estado.jogo~q\ & (!\estado.cheater~q\ & ((\rotator|s_shiftReg\(32)) # (!\estado.grupo_xx~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(32),
	datab => \estado.grupo_xx~q\,
	datac => \estado.jogo~q\,
	datad => \estado.cheater~q\,
	combout => \Selector72~0_combout\);

\texto[32]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector72~0_combout\,
	ena => \WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[32]~reg0_q\);

\Selector71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector71~0_combout\ = (\estado.grupo_xx~q\ & (\rotator|s_shiftReg\(33))) # (!\estado.grupo_xx~q\ & ((\estado.cheater~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(33),
	datab => \estado.cheater~q\,
	datad => \estado.grupo_xx~q\,
	combout => \Selector71~0_combout\);

\texto[33]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector71~0_combout\,
	ena => \WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[33]~reg0_q\);

\Selector70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector70~0_combout\ = (!\estado.jogo~q\ & (!\estado.cheater~q\ & ((\rotator|s_shiftReg\(34)) # (!\estado.grupo_xx~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(34),
	datab => \estado.grupo_xx~q\,
	datac => \estado.jogo~q\,
	datad => \estado.cheater~q\,
	combout => \Selector70~0_combout\);

\texto[34]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector70~0_combout\,
	ena => \WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[34]~reg0_q\);

\Selector69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector69~0_combout\ = (!\estado.jogo~q\ & (!\estado.cheater~q\ & ((\rotator|s_shiftReg\(35)) # (!\estado.grupo_xx~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(35),
	datab => \estado.grupo_xx~q\,
	datac => \estado.jogo~q\,
	datad => \estado.cheater~q\,
	combout => \Selector69~0_combout\);

\texto[35]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector69~0_combout\,
	ena => \WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[35]~reg0_q\);

\Selector68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector68~0_combout\ = (\texto[36]~reg0_q\ & (((\estado.grupo_xx~q\ & \rotator|s_shiftReg\(36))) # (!\WideOr5~combout\))) # (!\texto[36]~reg0_q\ & (\estado.grupo_xx~q\ & (\rotator|s_shiftReg\(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \texto[36]~reg0_q\,
	datab => \estado.grupo_xx~q\,
	datac => \rotator|s_shiftReg\(36),
	datad => \WideOr5~combout\,
	combout => \Selector68~0_combout\);

\texto[36]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector68~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[36]~reg0_q\);

\Selector67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector67~0_combout\ = (!\estado.jogo~q\ & (!\estado.cheater~q\ & ((\rotator|s_shiftReg\(37)) # (!\estado.grupo_xx~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(37),
	datab => \estado.grupo_xx~q\,
	datac => \estado.jogo~q\,
	datad => \estado.cheater~q\,
	combout => \Selector67~0_combout\);

\texto[37]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector67~0_combout\,
	ena => \WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[37]~reg0_q\);

\Selector66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector66~0_combout\ = (\estado.grupo_xx~q\ & (\rotator|s_shiftReg\(38))) # (!\estado.grupo_xx~q\ & ((!\estado.jogo~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(38),
	datab => \estado.grupo_xx~q\,
	datad => \estado.jogo~q\,
	combout => \Selector66~0_combout\);

\texto[38]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector66~0_combout\,
	ena => \WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[38]~reg0_q\);

\Selector65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector65~0_combout\ = (\estado.grupo_xx~q\ & (\rotator|s_shiftReg\(39))) # (!\estado.grupo_xx~q\ & ((\estado.cheater~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotator|s_shiftReg\(39),
	datab => \estado.cheater~q\,
	datad => \estado.grupo_xx~q\,
	combout => \Selector65~0_combout\);

\texto[39]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector65~0_combout\,
	ena => \WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \texto[39]~reg0_q\);

\c8hz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c8hz,
	o => \c8hz~input_o\);

\c4hz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c4hz,
	o => \c4hz~input_o\);
END structure;


