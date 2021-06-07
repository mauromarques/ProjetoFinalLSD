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

-- DATE "06/07/2021 16:02:33"

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

ENTITY 	random_tl IS
    PORT (
	CLOCK_50 : IN std_logic;
	LEDG : OUT std_logic_vector(7 DOWNTO 0)
	);
END random_tl;

ARCHITECTURE structure OF random_tl IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \rnd_08_gen|state_00[24]~5_combout\ : std_logic;
SIGNAL \rnd_08_gen|state_00[0]~8_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add0~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add0~1\ : std_logic;
SIGNAL \rnd_08_gen|Add0~2_combout\ : std_logic;
SIGNAL \rnd_08_gen|state_00[2]~6_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add0~3\ : std_logic;
SIGNAL \rnd_08_gen|Add0~4_combout\ : std_logic;
SIGNAL \rnd_08_gen|Equal0~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add0~5\ : std_logic;
SIGNAL \rnd_08_gen|Add0~6_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add0~7\ : std_logic;
SIGNAL \rnd_08_gen|Add0~8_combout\ : std_logic;
SIGNAL \rnd_08_gen|state_00[5]~7_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add0~9\ : std_logic;
SIGNAL \rnd_08_gen|Add0~10_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add0~11\ : std_logic;
SIGNAL \rnd_08_gen|Add0~12_combout\ : std_logic;
SIGNAL \rnd_08_gen|Equal0~1_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add0~13\ : std_logic;
SIGNAL \rnd_08_gen|Add0~14_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add0~15\ : std_logic;
SIGNAL \rnd_08_gen|Add0~16_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add0~17\ : std_logic;
SIGNAL \rnd_08_gen|Add0~18_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add0~19\ : std_logic;
SIGNAL \rnd_08_gen|Add0~20_combout\ : std_logic;
SIGNAL \rnd_08_gen|Equal0~2_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add0~21\ : std_logic;
SIGNAL \rnd_08_gen|Add0~22_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add0~23\ : std_logic;
SIGNAL \rnd_08_gen|Add0~24_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add0~25\ : std_logic;
SIGNAL \rnd_08_gen|Add0~26_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add0~27\ : std_logic;
SIGNAL \rnd_08_gen|Add0~28_combout\ : std_logic;
SIGNAL \rnd_08_gen|Equal0~3_combout\ : std_logic;
SIGNAL \rnd_08_gen|Equal0~4_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add0~29\ : std_logic;
SIGNAL \rnd_08_gen|Add0~30_combout\ : std_logic;
SIGNAL \rnd_08_gen|state_00[16]~1_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add0~31\ : std_logic;
SIGNAL \rnd_08_gen|Add0~32_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add0~33\ : std_logic;
SIGNAL \rnd_08_gen|Add0~34_combout\ : std_logic;
SIGNAL \rnd_08_gen|state_00[18]~2_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add0~35\ : std_logic;
SIGNAL \rnd_08_gen|Add0~36_combout\ : std_logic;
SIGNAL \rnd_08_gen|Equal0~5_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add0~37\ : std_logic;
SIGNAL \rnd_08_gen|Add0~38_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add0~39\ : std_logic;
SIGNAL \rnd_08_gen|Add0~40_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add0~41\ : std_logic;
SIGNAL \rnd_08_gen|Add0~42_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add0~43\ : std_logic;
SIGNAL \rnd_08_gen|Add0~44_combout\ : std_logic;
SIGNAL \rnd_08_gen|Equal0~6_combout\ : std_logic;
SIGNAL \rnd_08_gen|Equal0~7_combout\ : std_logic;
SIGNAL \rnd_08_gen|carry~q\ : std_logic;
SIGNAL \rnd_08_gen|Add1~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add1~1\ : std_logic;
SIGNAL \rnd_08_gen|Add1~2_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add1~3\ : std_logic;
SIGNAL \rnd_08_gen|Add1~4_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add1~5\ : std_logic;
SIGNAL \rnd_08_gen|Add1~6_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add1~7\ : std_logic;
SIGNAL \rnd_08_gen|Add1~8_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add1~9\ : std_logic;
SIGNAL \rnd_08_gen|Add1~10_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add1~11\ : std_logic;
SIGNAL \rnd_08_gen|Add1~12_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add1~13\ : std_logic;
SIGNAL \rnd_08_gen|Add1~14_combout\ : std_logic;
SIGNAL \rnd_08_gen|state_00[32]~4_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add1~15\ : std_logic;
SIGNAL \rnd_08_gen|Add1~16_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add1~17\ : std_logic;
SIGNAL \rnd_08_gen|Add1~18_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add1~19\ : std_logic;
SIGNAL \rnd_08_gen|Add1~20_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add1~21\ : std_logic;
SIGNAL \rnd_08_gen|Add1~22_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add1~23\ : std_logic;
SIGNAL \rnd_08_gen|Add1~24_combout\ : std_logic;
SIGNAL \rnd_08_gen|state_00[37]~3_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add1~25\ : std_logic;
SIGNAL \rnd_08_gen|Add1~26_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add1~27\ : std_logic;
SIGNAL \rnd_08_gen|Add1~28_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux41~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add1~29\ : std_logic;
SIGNAL \rnd_08_gen|Add1~30_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add1~31\ : std_logic;
SIGNAL \rnd_08_gen|Add1~32_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add1~33\ : std_logic;
SIGNAL \rnd_08_gen|Add1~34_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add1~35\ : std_logic;
SIGNAL \rnd_08_gen|Add1~36_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add1~37\ : std_logic;
SIGNAL \rnd_08_gen|Add1~38_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add1~39\ : std_logic;
SIGNAL \rnd_08_gen|Add1~40_combout\ : std_logic;
SIGNAL \rnd_08_gen|state_00[45]~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux20~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux26~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux11~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux91~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux3~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux23~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux9~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add1~41\ : std_logic;
SIGNAL \rnd_08_gen|Add1~42_combout\ : std_logic;
SIGNAL \rnd_08_gen|Add1~43\ : std_logic;
SIGNAL \rnd_08_gen|Add1~44_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux35~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux92~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux40~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux17~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux38~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux7~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux87~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux84~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux103~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux47~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux14~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux15~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux46~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux79~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux21~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux5~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux36~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux45~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux61~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux39~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux19~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux44~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux1~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux80~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux18~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux0~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux8~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux4~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux52~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux132~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux42~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux30~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux24~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux2~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux68~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux83~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux22~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux43~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux13~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux27~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux64~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux10~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux32~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux31~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux12~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux73~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux106~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux71~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux25~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux16~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux28~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux6~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux51~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux90~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux53~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux139~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux159~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux105~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux70~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux55~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux67~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux72~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux130~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux50~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux74~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux65~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux54~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux143~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux142~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux146~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux102~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux78~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux60~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux66~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux69~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux99~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux82~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux86~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux49~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux75~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux117~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux128~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux163~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux136~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux119~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux100~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux85~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux88~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux77~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux29~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux37~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux33~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux34~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux57~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux126~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux165~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux233~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux160~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux89~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux93~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux81~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux62~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux113~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux76~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux95~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux94~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux58~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux122~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux135~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux96~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux154~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux164~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux63~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux48~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux59~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux56~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux109~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux134~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux112~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux97~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux169~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux204~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux168~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux123~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux115~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux131~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux124~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux175~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux101~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux111~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux140~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux129~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux185~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux137~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux138~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux125~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux120~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux188~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux221~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux223~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux252~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux162~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux170~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux158~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux110~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux114~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux104~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux121~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux182~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux216~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux145~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux156~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux166~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux153~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux213~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux220~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux147~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux152~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux107~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux98~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux118~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux133~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux148~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux167~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux236~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux287~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux217~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux173~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux150~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux144~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux171~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux196~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux180~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux191~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux151~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux149~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux194~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux157~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux141~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux108~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux116~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux127~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux178~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux186~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux177~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux229~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux278~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux214~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux192~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux189~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux174~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux172~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux181~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux209~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux161~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux187~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux184~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux179~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux227~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux283~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux332~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux195~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux238~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux198~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux218~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux272~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux226~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux212~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux210~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux235~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux271~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux276~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux234~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux237~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux193~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux176~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux183~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux190~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux155~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux200~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux258~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux319~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux199~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux222~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux203~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux225~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux243~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux241~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux253~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux231~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux208~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux215~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux239~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux248~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux304~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux219~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux205~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux206~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux197~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux245~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux257~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux232~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux211~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux230~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux224~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux267~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux249~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux296~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux343~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux317~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux207~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux201~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux228~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux202~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux260~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux255~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux285~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux274~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux313~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux335~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux242~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux268~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux264~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux280~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux292~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux358~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux262~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux244~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux254~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux266~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux301~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux334~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux312~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux295~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux348~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux318~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux286~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux270~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux277~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux261~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux328~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux333~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux282~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux275~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux269~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux281~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux308~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux345~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux367~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux349~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux240~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux246~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux256~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux247~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux325~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux324~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux305~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux330~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux353~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux284~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux265~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux250~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux273~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux288~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux331~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux311~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux307~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux356~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux357~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux362~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux361~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux355~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux299~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux315~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux259~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux263~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux251~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux279~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux322~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux293~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux347~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux359~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux326~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux327~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux321~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux302~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux340~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux364~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux368~0_combout\ : std_logic;
SIGNAL \LEDG[0]~reg0_q\ : std_logic;
SIGNAL \rnd_08_gen|Mux369~0_combout\ : std_logic;
SIGNAL \LEDG[1]~reg0_q\ : std_logic;
SIGNAL \rnd_08_gen|Mux370~0_combout\ : std_logic;
SIGNAL \LEDG[2]~0_combout\ : std_logic;
SIGNAL \LEDG[2]~reg0_q\ : std_logic;
SIGNAL \rnd_08_gen|Mux371~0_combout\ : std_logic;
SIGNAL \LEDG[3]~reg0_q\ : std_logic;
SIGNAL \rnd_08_gen|Mux365~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux294~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux320~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux291~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux303~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux341~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux298~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux329~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux306~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux314~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux338~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux354~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux316~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux323~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux290~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux289~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux351~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux363~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux339~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux300~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux297~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux309~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux310~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux336~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux342~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux346~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux366~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux344~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux337~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux350~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux352~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux360~0_combout\ : std_logic;
SIGNAL \rnd_08_gen|Mux372~0_combout\ : std_logic;
SIGNAL \LEDG[4]~reg0_q\ : std_logic;
SIGNAL \rnd_08_gen|Mux373~0_combout\ : std_logic;
SIGNAL \LEDG[5]~1_combout\ : std_logic;
SIGNAL \LEDG[5]~reg0_q\ : std_logic;
SIGNAL \rnd_08_gen|Mux374~0_combout\ : std_logic;
SIGNAL \LEDG[6]~reg0_q\ : std_logic;
SIGNAL \rnd_08_gen|Mux375~0_combout\ : std_logic;
SIGNAL \LEDG[7]~reg0_q\ : std_logic;
SIGNAL \rnd_08_gen|state_02\ : std_logic_vector(47 DOWNTO 0);
SIGNAL \rnd_08_gen|state_10\ : std_logic_vector(47 DOWNTO 0);
SIGNAL \rnd_08_gen|state_09\ : std_logic_vector(47 DOWNTO 0);
SIGNAL \rnd_08_gen|state_08\ : std_logic_vector(47 DOWNTO 0);
SIGNAL \rnd_08_gen|state_07\ : std_logic_vector(47 DOWNTO 0);
SIGNAL \rnd_08_gen|state_06\ : std_logic_vector(47 DOWNTO 0);
SIGNAL \rnd_08_gen|state_05\ : std_logic_vector(47 DOWNTO 0);
SIGNAL \rnd_08_gen|state_04\ : std_logic_vector(47 DOWNTO 0);
SIGNAL \rnd_08_gen|state_03\ : std_logic_vector(47 DOWNTO 0);
SIGNAL \rnd_08_gen|state_01\ : std_logic_vector(47 DOWNTO 0);
SIGNAL \rnd_08_gen|state_00\ : std_logic_vector(47 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG[0]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG[1]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG[2]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG[3]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG[4]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG[5]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG[6]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG[7]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\rnd_08_gen|state_00[24]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|state_00[24]~5_combout\ = !\rnd_08_gen|state_00\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(24),
	combout => \rnd_08_gen|state_00[24]~5_combout\);

\rnd_08_gen|state_00[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|state_00[0]~8_combout\ = !\rnd_08_gen|state_00\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(0),
	combout => \rnd_08_gen|state_00[0]~8_combout\);

\rnd_08_gen|state_00[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|state_00[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(0));

\rnd_08_gen|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add0~0_combout\ = (\rnd_08_gen|state_00\(1) & (\rnd_08_gen|state_00\(0) $ (VCC))) # (!\rnd_08_gen|state_00\(1) & (\rnd_08_gen|state_00\(0) & VCC))
-- \rnd_08_gen|Add0~1\ = CARRY((\rnd_08_gen|state_00\(1) & \rnd_08_gen|state_00\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(1),
	datab => \rnd_08_gen|state_00\(0),
	datad => VCC,
	combout => \rnd_08_gen|Add0~0_combout\,
	cout => \rnd_08_gen|Add0~1\);

\rnd_08_gen|state_00[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(1));

\rnd_08_gen|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add0~2_combout\ = (\rnd_08_gen|state_00\(2) & ((\rnd_08_gen|Add0~1\) # (GND))) # (!\rnd_08_gen|state_00\(2) & (!\rnd_08_gen|Add0~1\))
-- \rnd_08_gen|Add0~3\ = CARRY((\rnd_08_gen|state_00\(2)) # (!\rnd_08_gen|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(2),
	datad => VCC,
	cin => \rnd_08_gen|Add0~1\,
	combout => \rnd_08_gen|Add0~2_combout\,
	cout => \rnd_08_gen|Add0~3\);

\rnd_08_gen|state_00[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|state_00[2]~6_combout\ = !\rnd_08_gen|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|Add0~2_combout\,
	combout => \rnd_08_gen|state_00[2]~6_combout\);

\rnd_08_gen|state_00[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|state_00[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(2));

\rnd_08_gen|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add0~4_combout\ = (\rnd_08_gen|state_00\(3) & (\rnd_08_gen|Add0~3\ $ (GND))) # (!\rnd_08_gen|state_00\(3) & (!\rnd_08_gen|Add0~3\ & VCC))
-- \rnd_08_gen|Add0~5\ = CARRY((\rnd_08_gen|state_00\(3) & !\rnd_08_gen|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(3),
	datad => VCC,
	cin => \rnd_08_gen|Add0~3\,
	combout => \rnd_08_gen|Add0~4_combout\,
	cout => \rnd_08_gen|Add0~5\);

\rnd_08_gen|state_00[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(3));

\rnd_08_gen|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Equal0~0_combout\ = (\rnd_08_gen|state_00\(2) & (\rnd_08_gen|state_00\(1) & (\rnd_08_gen|state_00\(3) & \rnd_08_gen|state_00\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(2),
	datab => \rnd_08_gen|state_00\(1),
	datac => \rnd_08_gen|state_00\(3),
	datad => \rnd_08_gen|state_00\(0),
	combout => \rnd_08_gen|Equal0~0_combout\);

\rnd_08_gen|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add0~6_combout\ = (\rnd_08_gen|state_00\(4) & (!\rnd_08_gen|Add0~5\)) # (!\rnd_08_gen|state_00\(4) & ((\rnd_08_gen|Add0~5\) # (GND)))
-- \rnd_08_gen|Add0~7\ = CARRY((!\rnd_08_gen|Add0~5\) # (!\rnd_08_gen|state_00\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(4),
	datad => VCC,
	cin => \rnd_08_gen|Add0~5\,
	combout => \rnd_08_gen|Add0~6_combout\,
	cout => \rnd_08_gen|Add0~7\);

\rnd_08_gen|state_00[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(4));

\rnd_08_gen|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add0~8_combout\ = (\rnd_08_gen|state_00\(5) & (!\rnd_08_gen|Add0~7\ & VCC)) # (!\rnd_08_gen|state_00\(5) & (\rnd_08_gen|Add0~7\ $ (GND)))
-- \rnd_08_gen|Add0~9\ = CARRY((!\rnd_08_gen|state_00\(5) & !\rnd_08_gen|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(5),
	datad => VCC,
	cin => \rnd_08_gen|Add0~7\,
	combout => \rnd_08_gen|Add0~8_combout\,
	cout => \rnd_08_gen|Add0~9\);

\rnd_08_gen|state_00[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|state_00[5]~7_combout\ = !\rnd_08_gen|Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|Add0~8_combout\,
	combout => \rnd_08_gen|state_00[5]~7_combout\);

\rnd_08_gen|state_00[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|state_00[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(5));

\rnd_08_gen|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add0~10_combout\ = (\rnd_08_gen|state_00\(6) & (!\rnd_08_gen|Add0~9\)) # (!\rnd_08_gen|state_00\(6) & ((\rnd_08_gen|Add0~9\) # (GND)))
-- \rnd_08_gen|Add0~11\ = CARRY((!\rnd_08_gen|Add0~9\) # (!\rnd_08_gen|state_00\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(6),
	datad => VCC,
	cin => \rnd_08_gen|Add0~9\,
	combout => \rnd_08_gen|Add0~10_combout\,
	cout => \rnd_08_gen|Add0~11\);

\rnd_08_gen|state_00[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(6));

\rnd_08_gen|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add0~12_combout\ = (\rnd_08_gen|state_00\(7) & (\rnd_08_gen|Add0~11\ $ (GND))) # (!\rnd_08_gen|state_00\(7) & (!\rnd_08_gen|Add0~11\ & VCC))
-- \rnd_08_gen|Add0~13\ = CARRY((\rnd_08_gen|state_00\(7) & !\rnd_08_gen|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(7),
	datad => VCC,
	cin => \rnd_08_gen|Add0~11\,
	combout => \rnd_08_gen|Add0~12_combout\,
	cout => \rnd_08_gen|Add0~13\);

\rnd_08_gen|state_00[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(7));

\rnd_08_gen|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Equal0~1_combout\ = (\rnd_08_gen|state_00\(5) & (!\rnd_08_gen|state_00\(6) & (!\rnd_08_gen|state_00\(7) & !\rnd_08_gen|state_00\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(5),
	datab => \rnd_08_gen|state_00\(6),
	datac => \rnd_08_gen|state_00\(7),
	datad => \rnd_08_gen|state_00\(4),
	combout => \rnd_08_gen|Equal0~1_combout\);

\rnd_08_gen|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add0~14_combout\ = (\rnd_08_gen|state_00\(8) & (!\rnd_08_gen|Add0~13\)) # (!\rnd_08_gen|state_00\(8) & ((\rnd_08_gen|Add0~13\) # (GND)))
-- \rnd_08_gen|Add0~15\ = CARRY((!\rnd_08_gen|Add0~13\) # (!\rnd_08_gen|state_00\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(8),
	datad => VCC,
	cin => \rnd_08_gen|Add0~13\,
	combout => \rnd_08_gen|Add0~14_combout\,
	cout => \rnd_08_gen|Add0~15\);

\rnd_08_gen|state_00[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(8));

\rnd_08_gen|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add0~16_combout\ = (\rnd_08_gen|state_00\(9) & (\rnd_08_gen|Add0~15\ $ (GND))) # (!\rnd_08_gen|state_00\(9) & (!\rnd_08_gen|Add0~15\ & VCC))
-- \rnd_08_gen|Add0~17\ = CARRY((\rnd_08_gen|state_00\(9) & !\rnd_08_gen|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(9),
	datad => VCC,
	cin => \rnd_08_gen|Add0~15\,
	combout => \rnd_08_gen|Add0~16_combout\,
	cout => \rnd_08_gen|Add0~17\);

\rnd_08_gen|state_00[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(9));

\rnd_08_gen|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add0~18_combout\ = (\rnd_08_gen|state_00\(10) & (!\rnd_08_gen|Add0~17\)) # (!\rnd_08_gen|state_00\(10) & ((\rnd_08_gen|Add0~17\) # (GND)))
-- \rnd_08_gen|Add0~19\ = CARRY((!\rnd_08_gen|Add0~17\) # (!\rnd_08_gen|state_00\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(10),
	datad => VCC,
	cin => \rnd_08_gen|Add0~17\,
	combout => \rnd_08_gen|Add0~18_combout\,
	cout => \rnd_08_gen|Add0~19\);

\rnd_08_gen|state_00[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(10));

\rnd_08_gen|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add0~20_combout\ = (\rnd_08_gen|state_00\(11) & (\rnd_08_gen|Add0~19\ $ (GND))) # (!\rnd_08_gen|state_00\(11) & (!\rnd_08_gen|Add0~19\ & VCC))
-- \rnd_08_gen|Add0~21\ = CARRY((\rnd_08_gen|state_00\(11) & !\rnd_08_gen|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(11),
	datad => VCC,
	cin => \rnd_08_gen|Add0~19\,
	combout => \rnd_08_gen|Add0~20_combout\,
	cout => \rnd_08_gen|Add0~21\);

\rnd_08_gen|state_00[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(11));

\rnd_08_gen|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Equal0~2_combout\ = (\rnd_08_gen|state_00\(9) & (\rnd_08_gen|state_00\(10) & (!\rnd_08_gen|state_00\(11) & !\rnd_08_gen|state_00\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(9),
	datab => \rnd_08_gen|state_00\(10),
	datac => \rnd_08_gen|state_00\(11),
	datad => \rnd_08_gen|state_00\(8),
	combout => \rnd_08_gen|Equal0~2_combout\);

\rnd_08_gen|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add0~22_combout\ = (\rnd_08_gen|state_00\(12) & (!\rnd_08_gen|Add0~21\)) # (!\rnd_08_gen|state_00\(12) & ((\rnd_08_gen|Add0~21\) # (GND)))
-- \rnd_08_gen|Add0~23\ = CARRY((!\rnd_08_gen|Add0~21\) # (!\rnd_08_gen|state_00\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(12),
	datad => VCC,
	cin => \rnd_08_gen|Add0~21\,
	combout => \rnd_08_gen|Add0~22_combout\,
	cout => \rnd_08_gen|Add0~23\);

\rnd_08_gen|state_00[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(12));

\rnd_08_gen|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add0~24_combout\ = (\rnd_08_gen|state_00\(13) & (\rnd_08_gen|Add0~23\ $ (GND))) # (!\rnd_08_gen|state_00\(13) & (!\rnd_08_gen|Add0~23\ & VCC))
-- \rnd_08_gen|Add0~25\ = CARRY((\rnd_08_gen|state_00\(13) & !\rnd_08_gen|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(13),
	datad => VCC,
	cin => \rnd_08_gen|Add0~23\,
	combout => \rnd_08_gen|Add0~24_combout\,
	cout => \rnd_08_gen|Add0~25\);

\rnd_08_gen|state_00[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(13));

\rnd_08_gen|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add0~26_combout\ = (\rnd_08_gen|state_00\(14) & (!\rnd_08_gen|Add0~25\)) # (!\rnd_08_gen|state_00\(14) & ((\rnd_08_gen|Add0~25\) # (GND)))
-- \rnd_08_gen|Add0~27\ = CARRY((!\rnd_08_gen|Add0~25\) # (!\rnd_08_gen|state_00\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(14),
	datad => VCC,
	cin => \rnd_08_gen|Add0~25\,
	combout => \rnd_08_gen|Add0~26_combout\,
	cout => \rnd_08_gen|Add0~27\);

\rnd_08_gen|state_00[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(14));

\rnd_08_gen|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add0~28_combout\ = (\rnd_08_gen|state_00\(15) & (\rnd_08_gen|Add0~27\ $ (GND))) # (!\rnd_08_gen|state_00\(15) & (!\rnd_08_gen|Add0~27\ & VCC))
-- \rnd_08_gen|Add0~29\ = CARRY((\rnd_08_gen|state_00\(15) & !\rnd_08_gen|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(15),
	datad => VCC,
	cin => \rnd_08_gen|Add0~27\,
	combout => \rnd_08_gen|Add0~28_combout\,
	cout => \rnd_08_gen|Add0~29\);

\rnd_08_gen|state_00[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(15));

\rnd_08_gen|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Equal0~3_combout\ = (\rnd_08_gen|state_00\(14) & (\rnd_08_gen|state_00\(15) & (\rnd_08_gen|state_00\(12) & !\rnd_08_gen|state_00\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(14),
	datab => \rnd_08_gen|state_00\(15),
	datac => \rnd_08_gen|state_00\(12),
	datad => \rnd_08_gen|state_00\(13),
	combout => \rnd_08_gen|Equal0~3_combout\);

\rnd_08_gen|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Equal0~4_combout\ = (\rnd_08_gen|Equal0~0_combout\ & (\rnd_08_gen|Equal0~1_combout\ & (\rnd_08_gen|Equal0~2_combout\ & \rnd_08_gen|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|Equal0~0_combout\,
	datab => \rnd_08_gen|Equal0~1_combout\,
	datac => \rnd_08_gen|Equal0~2_combout\,
	datad => \rnd_08_gen|Equal0~3_combout\,
	combout => \rnd_08_gen|Equal0~4_combout\);

\rnd_08_gen|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add0~30_combout\ = (\rnd_08_gen|state_00\(16) & ((\rnd_08_gen|Add0~29\) # (GND))) # (!\rnd_08_gen|state_00\(16) & (!\rnd_08_gen|Add0~29\))
-- \rnd_08_gen|Add0~31\ = CARRY((\rnd_08_gen|state_00\(16)) # (!\rnd_08_gen|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(16),
	datad => VCC,
	cin => \rnd_08_gen|Add0~29\,
	combout => \rnd_08_gen|Add0~30_combout\,
	cout => \rnd_08_gen|Add0~31\);

\rnd_08_gen|state_00[16]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|state_00[16]~1_combout\ = !\rnd_08_gen|Add0~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|Add0~30_combout\,
	combout => \rnd_08_gen|state_00[16]~1_combout\);

\rnd_08_gen|state_00[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|state_00[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(16));

\rnd_08_gen|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add0~32_combout\ = (\rnd_08_gen|state_00\(17) & (\rnd_08_gen|Add0~31\ $ (GND))) # (!\rnd_08_gen|state_00\(17) & (!\rnd_08_gen|Add0~31\ & VCC))
-- \rnd_08_gen|Add0~33\ = CARRY((\rnd_08_gen|state_00\(17) & !\rnd_08_gen|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(17),
	datad => VCC,
	cin => \rnd_08_gen|Add0~31\,
	combout => \rnd_08_gen|Add0~32_combout\,
	cout => \rnd_08_gen|Add0~33\);

\rnd_08_gen|state_00[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(17));

\rnd_08_gen|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add0~34_combout\ = (\rnd_08_gen|state_00\(18) & ((\rnd_08_gen|Add0~33\) # (GND))) # (!\rnd_08_gen|state_00\(18) & (!\rnd_08_gen|Add0~33\))
-- \rnd_08_gen|Add0~35\ = CARRY((\rnd_08_gen|state_00\(18)) # (!\rnd_08_gen|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(18),
	datad => VCC,
	cin => \rnd_08_gen|Add0~33\,
	combout => \rnd_08_gen|Add0~34_combout\,
	cout => \rnd_08_gen|Add0~35\);

\rnd_08_gen|state_00[18]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|state_00[18]~2_combout\ = !\rnd_08_gen|Add0~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|Add0~34_combout\,
	combout => \rnd_08_gen|state_00[18]~2_combout\);

\rnd_08_gen|state_00[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|state_00[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(18));

\rnd_08_gen|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add0~36_combout\ = (\rnd_08_gen|state_00\(19) & (\rnd_08_gen|Add0~35\ $ (GND))) # (!\rnd_08_gen|state_00\(19) & (!\rnd_08_gen|Add0~35\ & VCC))
-- \rnd_08_gen|Add0~37\ = CARRY((\rnd_08_gen|state_00\(19) & !\rnd_08_gen|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(19),
	datad => VCC,
	cin => \rnd_08_gen|Add0~35\,
	combout => \rnd_08_gen|Add0~36_combout\,
	cout => \rnd_08_gen|Add0~37\);

\rnd_08_gen|state_00[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(19));

\rnd_08_gen|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Equal0~5_combout\ = (\rnd_08_gen|state_00\(16) & (\rnd_08_gen|state_00\(19) & (!\rnd_08_gen|state_00\(18) & !\rnd_08_gen|state_00\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(16),
	datab => \rnd_08_gen|state_00\(19),
	datac => \rnd_08_gen|state_00\(18),
	datad => \rnd_08_gen|state_00\(17),
	combout => \rnd_08_gen|Equal0~5_combout\);

\rnd_08_gen|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add0~38_combout\ = (\rnd_08_gen|state_00\(20) & (!\rnd_08_gen|Add0~37\)) # (!\rnd_08_gen|state_00\(20) & ((\rnd_08_gen|Add0~37\) # (GND)))
-- \rnd_08_gen|Add0~39\ = CARRY((!\rnd_08_gen|Add0~37\) # (!\rnd_08_gen|state_00\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(20),
	datad => VCC,
	cin => \rnd_08_gen|Add0~37\,
	combout => \rnd_08_gen|Add0~38_combout\,
	cout => \rnd_08_gen|Add0~39\);

\rnd_08_gen|state_00[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(20));

\rnd_08_gen|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add0~40_combout\ = (\rnd_08_gen|state_00\(21) & (\rnd_08_gen|Add0~39\ $ (GND))) # (!\rnd_08_gen|state_00\(21) & (!\rnd_08_gen|Add0~39\ & VCC))
-- \rnd_08_gen|Add0~41\ = CARRY((\rnd_08_gen|state_00\(21) & !\rnd_08_gen|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(21),
	datad => VCC,
	cin => \rnd_08_gen|Add0~39\,
	combout => \rnd_08_gen|Add0~40_combout\,
	cout => \rnd_08_gen|Add0~41\);

\rnd_08_gen|state_00[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(21));

\rnd_08_gen|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add0~42_combout\ = (\rnd_08_gen|state_00\(22) & (!\rnd_08_gen|Add0~41\)) # (!\rnd_08_gen|state_00\(22) & ((\rnd_08_gen|Add0~41\) # (GND)))
-- \rnd_08_gen|Add0~43\ = CARRY((!\rnd_08_gen|Add0~41\) # (!\rnd_08_gen|state_00\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(22),
	datad => VCC,
	cin => \rnd_08_gen|Add0~41\,
	combout => \rnd_08_gen|Add0~42_combout\,
	cout => \rnd_08_gen|Add0~43\);

\rnd_08_gen|state_00[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(22));

\rnd_08_gen|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add0~44_combout\ = \rnd_08_gen|state_00\(23) $ (!\rnd_08_gen|Add0~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(23),
	cin => \rnd_08_gen|Add0~43\,
	combout => \rnd_08_gen|Add0~44_combout\);

\rnd_08_gen|state_00[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(23));

\rnd_08_gen|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Equal0~6_combout\ = (\rnd_08_gen|state_00\(23) & (\rnd_08_gen|state_00\(21) & (\rnd_08_gen|state_00\(20) & !\rnd_08_gen|state_00\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(23),
	datab => \rnd_08_gen|state_00\(21),
	datac => \rnd_08_gen|state_00\(20),
	datad => \rnd_08_gen|state_00\(22),
	combout => \rnd_08_gen|Equal0~6_combout\);

\rnd_08_gen|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Equal0~7_combout\ = (\rnd_08_gen|Equal0~4_combout\ & (\rnd_08_gen|Equal0~5_combout\ & \rnd_08_gen|Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|Equal0~4_combout\,
	datab => \rnd_08_gen|Equal0~5_combout\,
	datac => \rnd_08_gen|Equal0~6_combout\,
	combout => \rnd_08_gen|Equal0~7_combout\);

\rnd_08_gen|carry\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|carry~q\);

\rnd_08_gen|state_00[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|state_00[24]~5_combout\,
	ena => \rnd_08_gen|carry~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(24));

\rnd_08_gen|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add1~0_combout\ = (\rnd_08_gen|state_00\(25) & (\rnd_08_gen|state_00\(24) $ (VCC))) # (!\rnd_08_gen|state_00\(25) & (\rnd_08_gen|state_00\(24) & VCC))
-- \rnd_08_gen|Add1~1\ = CARRY((\rnd_08_gen|state_00\(25) & \rnd_08_gen|state_00\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(25),
	datab => \rnd_08_gen|state_00\(24),
	datad => VCC,
	combout => \rnd_08_gen|Add1~0_combout\,
	cout => \rnd_08_gen|Add1~1\);

\rnd_08_gen|state_00[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Add1~0_combout\,
	ena => \rnd_08_gen|carry~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(25));

\rnd_08_gen|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add1~2_combout\ = (\rnd_08_gen|state_00\(26) & (!\rnd_08_gen|Add1~1\)) # (!\rnd_08_gen|state_00\(26) & ((\rnd_08_gen|Add1~1\) # (GND)))
-- \rnd_08_gen|Add1~3\ = CARRY((!\rnd_08_gen|Add1~1\) # (!\rnd_08_gen|state_00\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(26),
	datad => VCC,
	cin => \rnd_08_gen|Add1~1\,
	combout => \rnd_08_gen|Add1~2_combout\,
	cout => \rnd_08_gen|Add1~3\);

\rnd_08_gen|state_00[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Add1~2_combout\,
	ena => \rnd_08_gen|carry~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(26));

\rnd_08_gen|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add1~4_combout\ = (\rnd_08_gen|state_00\(27) & (\rnd_08_gen|Add1~3\ $ (GND))) # (!\rnd_08_gen|state_00\(27) & (!\rnd_08_gen|Add1~3\ & VCC))
-- \rnd_08_gen|Add1~5\ = CARRY((\rnd_08_gen|state_00\(27) & !\rnd_08_gen|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(27),
	datad => VCC,
	cin => \rnd_08_gen|Add1~3\,
	combout => \rnd_08_gen|Add1~4_combout\,
	cout => \rnd_08_gen|Add1~5\);

\rnd_08_gen|state_00[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Add1~4_combout\,
	ena => \rnd_08_gen|carry~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(27));

\rnd_08_gen|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add1~6_combout\ = (\rnd_08_gen|state_00\(28) & (!\rnd_08_gen|Add1~5\)) # (!\rnd_08_gen|state_00\(28) & ((\rnd_08_gen|Add1~5\) # (GND)))
-- \rnd_08_gen|Add1~7\ = CARRY((!\rnd_08_gen|Add1~5\) # (!\rnd_08_gen|state_00\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(28),
	datad => VCC,
	cin => \rnd_08_gen|Add1~5\,
	combout => \rnd_08_gen|Add1~6_combout\,
	cout => \rnd_08_gen|Add1~7\);

\rnd_08_gen|state_00[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Add1~6_combout\,
	ena => \rnd_08_gen|carry~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(28));

\rnd_08_gen|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add1~8_combout\ = (\rnd_08_gen|state_00\(29) & (\rnd_08_gen|Add1~7\ $ (GND))) # (!\rnd_08_gen|state_00\(29) & (!\rnd_08_gen|Add1~7\ & VCC))
-- \rnd_08_gen|Add1~9\ = CARRY((\rnd_08_gen|state_00\(29) & !\rnd_08_gen|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(29),
	datad => VCC,
	cin => \rnd_08_gen|Add1~7\,
	combout => \rnd_08_gen|Add1~8_combout\,
	cout => \rnd_08_gen|Add1~9\);

\rnd_08_gen|state_00[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Add1~8_combout\,
	ena => \rnd_08_gen|carry~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(29));

\rnd_08_gen|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add1~10_combout\ = (\rnd_08_gen|state_00\(30) & (!\rnd_08_gen|Add1~9\)) # (!\rnd_08_gen|state_00\(30) & ((\rnd_08_gen|Add1~9\) # (GND)))
-- \rnd_08_gen|Add1~11\ = CARRY((!\rnd_08_gen|Add1~9\) # (!\rnd_08_gen|state_00\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(30),
	datad => VCC,
	cin => \rnd_08_gen|Add1~9\,
	combout => \rnd_08_gen|Add1~10_combout\,
	cout => \rnd_08_gen|Add1~11\);

\rnd_08_gen|state_00[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Add1~10_combout\,
	ena => \rnd_08_gen|carry~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(30));

\rnd_08_gen|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add1~12_combout\ = (\rnd_08_gen|state_00\(31) & (\rnd_08_gen|Add1~11\ $ (GND))) # (!\rnd_08_gen|state_00\(31) & (!\rnd_08_gen|Add1~11\ & VCC))
-- \rnd_08_gen|Add1~13\ = CARRY((\rnd_08_gen|state_00\(31) & !\rnd_08_gen|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(31),
	datad => VCC,
	cin => \rnd_08_gen|Add1~11\,
	combout => \rnd_08_gen|Add1~12_combout\,
	cout => \rnd_08_gen|Add1~13\);

\rnd_08_gen|state_00[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Add1~12_combout\,
	ena => \rnd_08_gen|carry~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(31));

\rnd_08_gen|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add1~14_combout\ = (\rnd_08_gen|state_00\(32) & ((\rnd_08_gen|Add1~13\) # (GND))) # (!\rnd_08_gen|state_00\(32) & (!\rnd_08_gen|Add1~13\))
-- \rnd_08_gen|Add1~15\ = CARRY((\rnd_08_gen|state_00\(32)) # (!\rnd_08_gen|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(32),
	datad => VCC,
	cin => \rnd_08_gen|Add1~13\,
	combout => \rnd_08_gen|Add1~14_combout\,
	cout => \rnd_08_gen|Add1~15\);

\rnd_08_gen|state_00[32]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|state_00[32]~4_combout\ = !\rnd_08_gen|Add1~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|Add1~14_combout\,
	combout => \rnd_08_gen|state_00[32]~4_combout\);

\rnd_08_gen|state_00[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|state_00[32]~4_combout\,
	ena => \rnd_08_gen|carry~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(32));

\rnd_08_gen|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add1~16_combout\ = (\rnd_08_gen|state_00\(33) & (\rnd_08_gen|Add1~15\ $ (GND))) # (!\rnd_08_gen|state_00\(33) & (!\rnd_08_gen|Add1~15\ & VCC))
-- \rnd_08_gen|Add1~17\ = CARRY((\rnd_08_gen|state_00\(33) & !\rnd_08_gen|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(33),
	datad => VCC,
	cin => \rnd_08_gen|Add1~15\,
	combout => \rnd_08_gen|Add1~16_combout\,
	cout => \rnd_08_gen|Add1~17\);

\rnd_08_gen|state_00[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Add1~16_combout\,
	ena => \rnd_08_gen|carry~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(33));

\rnd_08_gen|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add1~18_combout\ = (\rnd_08_gen|state_00\(34) & (!\rnd_08_gen|Add1~17\)) # (!\rnd_08_gen|state_00\(34) & ((\rnd_08_gen|Add1~17\) # (GND)))
-- \rnd_08_gen|Add1~19\ = CARRY((!\rnd_08_gen|Add1~17\) # (!\rnd_08_gen|state_00\(34)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(34),
	datad => VCC,
	cin => \rnd_08_gen|Add1~17\,
	combout => \rnd_08_gen|Add1~18_combout\,
	cout => \rnd_08_gen|Add1~19\);

\rnd_08_gen|state_00[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Add1~18_combout\,
	ena => \rnd_08_gen|carry~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(34));

\rnd_08_gen|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add1~20_combout\ = (\rnd_08_gen|state_00\(35) & (\rnd_08_gen|Add1~19\ $ (GND))) # (!\rnd_08_gen|state_00\(35) & (!\rnd_08_gen|Add1~19\ & VCC))
-- \rnd_08_gen|Add1~21\ = CARRY((\rnd_08_gen|state_00\(35) & !\rnd_08_gen|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(35),
	datad => VCC,
	cin => \rnd_08_gen|Add1~19\,
	combout => \rnd_08_gen|Add1~20_combout\,
	cout => \rnd_08_gen|Add1~21\);

\rnd_08_gen|state_00[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Add1~20_combout\,
	ena => \rnd_08_gen|carry~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(35));

\rnd_08_gen|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add1~22_combout\ = (\rnd_08_gen|state_00\(36) & (!\rnd_08_gen|Add1~21\)) # (!\rnd_08_gen|state_00\(36) & ((\rnd_08_gen|Add1~21\) # (GND)))
-- \rnd_08_gen|Add1~23\ = CARRY((!\rnd_08_gen|Add1~21\) # (!\rnd_08_gen|state_00\(36)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(36),
	datad => VCC,
	cin => \rnd_08_gen|Add1~21\,
	combout => \rnd_08_gen|Add1~22_combout\,
	cout => \rnd_08_gen|Add1~23\);

\rnd_08_gen|state_00[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Add1~22_combout\,
	ena => \rnd_08_gen|carry~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(36));

\rnd_08_gen|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add1~24_combout\ = (\rnd_08_gen|state_00\(37) & (!\rnd_08_gen|Add1~23\ & VCC)) # (!\rnd_08_gen|state_00\(37) & (\rnd_08_gen|Add1~23\ $ (GND)))
-- \rnd_08_gen|Add1~25\ = CARRY((!\rnd_08_gen|state_00\(37) & !\rnd_08_gen|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(37),
	datad => VCC,
	cin => \rnd_08_gen|Add1~23\,
	combout => \rnd_08_gen|Add1~24_combout\,
	cout => \rnd_08_gen|Add1~25\);

\rnd_08_gen|state_00[37]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|state_00[37]~3_combout\ = !\rnd_08_gen|Add1~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|Add1~24_combout\,
	combout => \rnd_08_gen|state_00[37]~3_combout\);

\rnd_08_gen|state_00[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|state_00[37]~3_combout\,
	ena => \rnd_08_gen|carry~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(37));

\rnd_08_gen|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add1~26_combout\ = (\rnd_08_gen|state_00\(38) & (!\rnd_08_gen|Add1~25\)) # (!\rnd_08_gen|state_00\(38) & ((\rnd_08_gen|Add1~25\) # (GND)))
-- \rnd_08_gen|Add1~27\ = CARRY((!\rnd_08_gen|Add1~25\) # (!\rnd_08_gen|state_00\(38)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(38),
	datad => VCC,
	cin => \rnd_08_gen|Add1~25\,
	combout => \rnd_08_gen|Add1~26_combout\,
	cout => \rnd_08_gen|Add1~27\);

\rnd_08_gen|state_00[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Add1~26_combout\,
	ena => \rnd_08_gen|carry~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(38));

\rnd_08_gen|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add1~28_combout\ = (\rnd_08_gen|state_00\(39) & (\rnd_08_gen|Add1~27\ $ (GND))) # (!\rnd_08_gen|state_00\(39) & (!\rnd_08_gen|Add1~27\ & VCC))
-- \rnd_08_gen|Add1~29\ = CARRY((\rnd_08_gen|state_00\(39) & !\rnd_08_gen|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(39),
	datad => VCC,
	cin => \rnd_08_gen|Add1~27\,
	combout => \rnd_08_gen|Add1~28_combout\,
	cout => \rnd_08_gen|Add1~29\);

\rnd_08_gen|state_00[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Add1~28_combout\,
	ena => \rnd_08_gen|carry~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(39));

\rnd_08_gen|Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux41~0_combout\ = (\rnd_08_gen|state_00\(13) & ((\rnd_08_gen|state_00\(35) & ((!\rnd_08_gen|state_00\(14)))) # (!\rnd_08_gen|state_00\(35) & (\rnd_08_gen|state_00\(39))))) # (!\rnd_08_gen|state_00\(13) & ((\rnd_08_gen|state_00\(35) & 
-- (\rnd_08_gen|state_00\(39))) # (!\rnd_08_gen|state_00\(35) & ((\rnd_08_gen|state_00\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(39),
	datab => \rnd_08_gen|state_00\(13),
	datac => \rnd_08_gen|state_00\(35),
	datad => \rnd_08_gen|state_00\(14),
	combout => \rnd_08_gen|Mux41~0_combout\);

\rnd_08_gen|state_01[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux41~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(41));

\rnd_08_gen|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add1~30_combout\ = (\rnd_08_gen|state_00\(40) & (!\rnd_08_gen|Add1~29\)) # (!\rnd_08_gen|state_00\(40) & ((\rnd_08_gen|Add1~29\) # (GND)))
-- \rnd_08_gen|Add1~31\ = CARRY((!\rnd_08_gen|Add1~29\) # (!\rnd_08_gen|state_00\(40)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(40),
	datad => VCC,
	cin => \rnd_08_gen|Add1~29\,
	combout => \rnd_08_gen|Add1~30_combout\,
	cout => \rnd_08_gen|Add1~31\);

\rnd_08_gen|state_00[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Add1~30_combout\,
	ena => \rnd_08_gen|carry~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(40));

\rnd_08_gen|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add1~32_combout\ = (\rnd_08_gen|state_00\(41) & (\rnd_08_gen|Add1~31\ $ (GND))) # (!\rnd_08_gen|state_00\(41) & (!\rnd_08_gen|Add1~31\ & VCC))
-- \rnd_08_gen|Add1~33\ = CARRY((\rnd_08_gen|state_00\(41) & !\rnd_08_gen|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(41),
	datad => VCC,
	cin => \rnd_08_gen|Add1~31\,
	combout => \rnd_08_gen|Add1~32_combout\,
	cout => \rnd_08_gen|Add1~33\);

\rnd_08_gen|state_00[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Add1~32_combout\,
	ena => \rnd_08_gen|carry~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(41));

\rnd_08_gen|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add1~34_combout\ = (\rnd_08_gen|state_00\(42) & (!\rnd_08_gen|Add1~33\)) # (!\rnd_08_gen|state_00\(42) & ((\rnd_08_gen|Add1~33\) # (GND)))
-- \rnd_08_gen|Add1~35\ = CARRY((!\rnd_08_gen|Add1~33\) # (!\rnd_08_gen|state_00\(42)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(42),
	datad => VCC,
	cin => \rnd_08_gen|Add1~33\,
	combout => \rnd_08_gen|Add1~34_combout\,
	cout => \rnd_08_gen|Add1~35\);

\rnd_08_gen|state_00[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Add1~34_combout\,
	ena => \rnd_08_gen|carry~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(42));

\rnd_08_gen|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add1~36_combout\ = (\rnd_08_gen|state_00\(43) & (\rnd_08_gen|Add1~35\ $ (GND))) # (!\rnd_08_gen|state_00\(43) & (!\rnd_08_gen|Add1~35\ & VCC))
-- \rnd_08_gen|Add1~37\ = CARRY((\rnd_08_gen|state_00\(43) & !\rnd_08_gen|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(43),
	datad => VCC,
	cin => \rnd_08_gen|Add1~35\,
	combout => \rnd_08_gen|Add1~36_combout\,
	cout => \rnd_08_gen|Add1~37\);

\rnd_08_gen|state_00[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Add1~36_combout\,
	ena => \rnd_08_gen|carry~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(43));

\rnd_08_gen|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add1~38_combout\ = (\rnd_08_gen|state_00\(44) & (!\rnd_08_gen|Add1~37\)) # (!\rnd_08_gen|state_00\(44) & ((\rnd_08_gen|Add1~37\) # (GND)))
-- \rnd_08_gen|Add1~39\ = CARRY((!\rnd_08_gen|Add1~37\) # (!\rnd_08_gen|state_00\(44)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(44),
	datad => VCC,
	cin => \rnd_08_gen|Add1~37\,
	combout => \rnd_08_gen|Add1~38_combout\,
	cout => \rnd_08_gen|Add1~39\);

\rnd_08_gen|state_00[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Add1~38_combout\,
	ena => \rnd_08_gen|carry~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(44));

\rnd_08_gen|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add1~40_combout\ = (\rnd_08_gen|state_00\(45) & (!\rnd_08_gen|Add1~39\ & VCC)) # (!\rnd_08_gen|state_00\(45) & (\rnd_08_gen|Add1~39\ $ (GND)))
-- \rnd_08_gen|Add1~41\ = CARRY((!\rnd_08_gen|state_00\(45) & !\rnd_08_gen|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(45),
	datad => VCC,
	cin => \rnd_08_gen|Add1~39\,
	combout => \rnd_08_gen|Add1~40_combout\,
	cout => \rnd_08_gen|Add1~41\);

\rnd_08_gen|state_00[45]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|state_00[45]~0_combout\ = !\rnd_08_gen|Add1~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|Add1~40_combout\,
	combout => \rnd_08_gen|state_00[45]~0_combout\);

\rnd_08_gen|state_00[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|state_00[45]~0_combout\,
	ena => \rnd_08_gen|carry~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(45));

\rnd_08_gen|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux20~0_combout\ = (\rnd_08_gen|state_00\(23) & (\rnd_08_gen|state_00\(45) & (\rnd_08_gen|state_00\(6) $ (!\rnd_08_gen|state_00\(16))))) # (!\rnd_08_gen|state_00\(23) & ((\rnd_08_gen|state_00\(16)) # (\rnd_08_gen|state_00\(6) $ 
-- (!\rnd_08_gen|state_00\(45)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001101100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(6),
	datab => \rnd_08_gen|state_00\(23),
	datac => \rnd_08_gen|state_00\(45),
	datad => \rnd_08_gen|state_00\(16),
	combout => \rnd_08_gen|Mux20~0_combout\);

\rnd_08_gen|state_01[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(20));

\rnd_08_gen|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux26~0_combout\ = \rnd_08_gen|state_00\(37) $ (((\rnd_08_gen|state_00\(18) & (\rnd_08_gen|state_00\(11) & !\rnd_08_gen|state_00\(29))) # (!\rnd_08_gen|state_00\(18) & (!\rnd_08_gen|state_00\(11) & \rnd_08_gen|state_00\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(18),
	datab => \rnd_08_gen|state_00\(11),
	datac => \rnd_08_gen|state_00\(37),
	datad => \rnd_08_gen|state_00\(29),
	combout => \rnd_08_gen|Mux26~0_combout\);

\rnd_08_gen|state_01[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(26));

\rnd_08_gen|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux11~0_combout\ = (\rnd_08_gen|state_00\(17) & (((\rnd_08_gen|state_00\(32)) # (\rnd_08_gen|state_00\(34))))) # (!\rnd_08_gen|state_00\(17) & (\rnd_08_gen|state_00\(32) & (\rnd_08_gen|state_00\(38) $ (\rnd_08_gen|state_00\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(17),
	datab => \rnd_08_gen|state_00\(38),
	datac => \rnd_08_gen|state_00\(32),
	datad => \rnd_08_gen|state_00\(34),
	combout => \rnd_08_gen|Mux11~0_combout\);

\rnd_08_gen|state_01[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(11));

\rnd_08_gen|Mux91~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux91~0_combout\ = (\rnd_08_gen|state_01\(11) & (!\rnd_08_gen|state_01\(41) & ((\rnd_08_gen|state_01\(26))))) # (!\rnd_08_gen|state_01\(11) & ((\rnd_08_gen|state_01\(20)) # (\rnd_08_gen|state_01\(41) $ (!\rnd_08_gen|state_01\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(41),
	datab => \rnd_08_gen|state_01\(20),
	datac => \rnd_08_gen|state_01\(26),
	datad => \rnd_08_gen|state_01\(11),
	combout => \rnd_08_gen|Mux91~0_combout\);

\rnd_08_gen|state_02[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux91~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(43));

\rnd_08_gen|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux3~0_combout\ = (\rnd_08_gen|state_00\(41) & (\rnd_08_gen|state_00\(26) $ (((!\rnd_08_gen|state_00\(24)) # (!\rnd_08_gen|state_00\(40)))))) # (!\rnd_08_gen|state_00\(41) & ((\rnd_08_gen|state_00\(40) & (\rnd_08_gen|state_00\(26))) # 
-- (!\rnd_08_gen|state_00\(40) & ((\rnd_08_gen|state_00\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(26),
	datab => \rnd_08_gen|state_00\(41),
	datac => \rnd_08_gen|state_00\(40),
	datad => \rnd_08_gen|state_00\(24),
	combout => \rnd_08_gen|Mux3~0_combout\);

\rnd_08_gen|state_01[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(3));

\rnd_08_gen|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux23~0_combout\ = (\rnd_08_gen|state_00\(45) & (((\rnd_08_gen|state_00\(23)) # (\rnd_08_gen|state_00\(16))))) # (!\rnd_08_gen|state_00\(45) & (\rnd_08_gen|state_00\(6) & (\rnd_08_gen|state_00\(23) $ (!\rnd_08_gen|state_00\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(6),
	datab => \rnd_08_gen|state_00\(23),
	datac => \rnd_08_gen|state_00\(45),
	datad => \rnd_08_gen|state_00\(16),
	combout => \rnd_08_gen|Mux23~0_combout\);

\rnd_08_gen|state_01[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(23));

\rnd_08_gen|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux9~0_combout\ = (\rnd_08_gen|state_00\(17) & ((\rnd_08_gen|state_00\(34) & ((\rnd_08_gen|state_00\(32)))) # (!\rnd_08_gen|state_00\(34) & (!\rnd_08_gen|state_00\(38))))) # (!\rnd_08_gen|state_00\(17) & (((!\rnd_08_gen|state_00\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(17),
	datab => \rnd_08_gen|state_00\(38),
	datac => \rnd_08_gen|state_00\(32),
	datad => \rnd_08_gen|state_00\(34),
	combout => \rnd_08_gen|Mux9~0_combout\);

\rnd_08_gen|state_01[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(9));

\rnd_08_gen|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add1~42_combout\ = (\rnd_08_gen|state_00\(46) & (!\rnd_08_gen|Add1~41\)) # (!\rnd_08_gen|state_00\(46) & ((\rnd_08_gen|Add1~41\) # (GND)))
-- \rnd_08_gen|Add1~43\ = CARRY((!\rnd_08_gen|Add1~41\) # (!\rnd_08_gen|state_00\(46)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(46),
	datad => VCC,
	cin => \rnd_08_gen|Add1~41\,
	combout => \rnd_08_gen|Add1~42_combout\,
	cout => \rnd_08_gen|Add1~43\);

\rnd_08_gen|state_00[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Add1~42_combout\,
	ena => \rnd_08_gen|carry~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(46));

\rnd_08_gen|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Add1~44_combout\ = \rnd_08_gen|state_00\(47) $ (!\rnd_08_gen|Add1~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(47),
	cin => \rnd_08_gen|Add1~43\,
	combout => \rnd_08_gen|Add1~44_combout\);

\rnd_08_gen|state_00[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Add1~44_combout\,
	ena => \rnd_08_gen|carry~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_00\(47));

\rnd_08_gen|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux35~0_combout\ = (\rnd_08_gen|state_00\(31) & (\rnd_08_gen|state_00\(2) $ (((\rnd_08_gen|state_00\(8)) # (!\rnd_08_gen|state_00\(47)))))) # (!\rnd_08_gen|state_00\(31) & ((\rnd_08_gen|state_00\(47) & (\rnd_08_gen|state_00\(8) & 
-- \rnd_08_gen|state_00\(2))) # (!\rnd_08_gen|state_00\(47) & ((\rnd_08_gen|state_00\(8)) # (\rnd_08_gen|state_00\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(47),
	datab => \rnd_08_gen|state_00\(31),
	datac => \rnd_08_gen|state_00\(8),
	datad => \rnd_08_gen|state_00\(2),
	combout => \rnd_08_gen|Mux35~0_combout\);

\rnd_08_gen|state_01[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(35));

\rnd_08_gen|Mux92~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux92~0_combout\ = (\rnd_08_gen|state_01\(23) & (!\rnd_08_gen|state_01\(3))) # (!\rnd_08_gen|state_01\(23) & ((\rnd_08_gen|state_01\(35) & (!\rnd_08_gen|state_01\(3))) # (!\rnd_08_gen|state_01\(35) & ((\rnd_08_gen|state_01\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(3),
	datab => \rnd_08_gen|state_01\(23),
	datac => \rnd_08_gen|state_01\(9),
	datad => \rnd_08_gen|state_01\(35),
	combout => \rnd_08_gen|Mux92~0_combout\);

\rnd_08_gen|state_02[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux92~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(44));

\rnd_08_gen|Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux40~0_combout\ = (\rnd_08_gen|state_00\(35) & (\rnd_08_gen|state_00\(39) & (\rnd_08_gen|state_00\(13) $ (!\rnd_08_gen|state_00\(14))))) # (!\rnd_08_gen|state_00\(35) & ((\rnd_08_gen|state_00\(13)) # (\rnd_08_gen|state_00\(39) $ 
-- (!\rnd_08_gen|state_00\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(39),
	datab => \rnd_08_gen|state_00\(13),
	datac => \rnd_08_gen|state_00\(35),
	datad => \rnd_08_gen|state_00\(14),
	combout => \rnd_08_gen|Mux40~0_combout\);

\rnd_08_gen|state_01[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux40~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(40));

\rnd_08_gen|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux17~0_combout\ = (\rnd_08_gen|state_00\(1) & ((\rnd_08_gen|state_00\(43) & ((\rnd_08_gen|state_00\(25)))) # (!\rnd_08_gen|state_00\(43) & (!\rnd_08_gen|state_00\(19))))) # (!\rnd_08_gen|state_00\(1) & (((\rnd_08_gen|state_00\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(19),
	datab => \rnd_08_gen|state_00\(25),
	datac => \rnd_08_gen|state_00\(1),
	datad => \rnd_08_gen|state_00\(43),
	combout => \rnd_08_gen|Mux17~0_combout\);

\rnd_08_gen|state_01[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(17));

\rnd_08_gen|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux38~0_combout\ = (\rnd_08_gen|state_00\(21) & ((\rnd_08_gen|state_00\(28) & ((\rnd_08_gen|state_00\(3)))) # (!\rnd_08_gen|state_00\(28) & (\rnd_08_gen|state_00\(9))))) # (!\rnd_08_gen|state_00\(21) & (\rnd_08_gen|state_00\(9) $ 
-- (((\rnd_08_gen|state_00\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(9),
	datab => \rnd_08_gen|state_00\(28),
	datac => \rnd_08_gen|state_00\(21),
	datad => \rnd_08_gen|state_00\(3),
	combout => \rnd_08_gen|Mux38~0_combout\);

\rnd_08_gen|state_01[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(38));

\rnd_08_gen|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux7~0_combout\ = (\rnd_08_gen|state_00\(15) & (((\rnd_08_gen|state_00\(10) & !\rnd_08_gen|state_00\(7))))) # (!\rnd_08_gen|state_00\(15) & ((\rnd_08_gen|state_00\(36) $ (\rnd_08_gen|state_00\(10))) # (!\rnd_08_gen|state_00\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(36),
	datab => \rnd_08_gen|state_00\(15),
	datac => \rnd_08_gen|state_00\(10),
	datad => \rnd_08_gen|state_00\(7),
	combout => \rnd_08_gen|Mux7~0_combout\);

\rnd_08_gen|state_01[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(7));

\rnd_08_gen|Mux87~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux87~0_combout\ = (\rnd_08_gen|state_01\(40) & ((\rnd_08_gen|state_01\(17) & ((!\rnd_08_gen|state_01\(7)) # (!\rnd_08_gen|state_01\(38)))) # (!\rnd_08_gen|state_01\(17) & (!\rnd_08_gen|state_01\(38) & !\rnd_08_gen|state_01\(7))))) # 
-- (!\rnd_08_gen|state_01\(40) & (\rnd_08_gen|state_01\(38) $ (((!\rnd_08_gen|state_01\(17) & \rnd_08_gen|state_01\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(40),
	datab => \rnd_08_gen|state_01\(17),
	datac => \rnd_08_gen|state_01\(38),
	datad => \rnd_08_gen|state_01\(7),
	combout => \rnd_08_gen|Mux87~0_combout\);

\rnd_08_gen|state_02[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux87~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(39));

\rnd_08_gen|Mux84~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux84~0_combout\ = (\rnd_08_gen|state_01\(40) & (((\rnd_08_gen|state_01\(38)) # (!\rnd_08_gen|state_01\(7))))) # (!\rnd_08_gen|state_01\(40) & ((\rnd_08_gen|state_01\(17) & (!\rnd_08_gen|state_01\(38) & \rnd_08_gen|state_01\(7))) # 
-- (!\rnd_08_gen|state_01\(17) & (\rnd_08_gen|state_01\(38) & !\rnd_08_gen|state_01\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(40),
	datab => \rnd_08_gen|state_01\(17),
	datac => \rnd_08_gen|state_01\(38),
	datad => \rnd_08_gen|state_01\(7),
	combout => \rnd_08_gen|Mux84~0_combout\);

\rnd_08_gen|state_02[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux84~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(36));

\rnd_08_gen|Mux103~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux103~0_combout\ = (\rnd_08_gen|state_02\(36) & ((\rnd_08_gen|state_02\(39) & ((!\rnd_08_gen|state_02\(44)))) # (!\rnd_08_gen|state_02\(39) & (\rnd_08_gen|state_02\(43))))) # (!\rnd_08_gen|state_02\(36) & ((\rnd_08_gen|state_02\(43) & 
-- ((\rnd_08_gen|state_02\(39)))) # (!\rnd_08_gen|state_02\(43) & (\rnd_08_gen|state_02\(44)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(43),
	datab => \rnd_08_gen|state_02\(44),
	datac => \rnd_08_gen|state_02\(39),
	datad => \rnd_08_gen|state_02\(36),
	combout => \rnd_08_gen|Mux103~0_combout\);

\rnd_08_gen|state_03[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux103~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(7));

\rnd_08_gen|Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux47~0_combout\ = (\rnd_08_gen|state_00\(5) & (!\rnd_08_gen|state_00\(22) & ((\rnd_08_gen|state_00\(46)) # (!\rnd_08_gen|state_00\(30))))) # (!\rnd_08_gen|state_00\(5) & ((\rnd_08_gen|state_00\(30)) # ((\rnd_08_gen|state_00\(22) & 
-- !\rnd_08_gen|state_00\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(22),
	datab => \rnd_08_gen|state_00\(5),
	datac => \rnd_08_gen|state_00\(30),
	datad => \rnd_08_gen|state_00\(46),
	combout => \rnd_08_gen|Mux47~0_combout\);

\rnd_08_gen|state_01[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(47));

\rnd_08_gen|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux14~0_combout\ = (\rnd_08_gen|state_00\(20) & ((\rnd_08_gen|state_00\(4) & ((!\rnd_08_gen|state_00\(0)))) # (!\rnd_08_gen|state_00\(4) & (!\rnd_08_gen|state_00\(12))))) # (!\rnd_08_gen|state_00\(20) & ((\rnd_08_gen|state_00\(4) & 
-- (\rnd_08_gen|state_00\(12))) # (!\rnd_08_gen|state_00\(4) & ((\rnd_08_gen|state_00\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(20),
	datab => \rnd_08_gen|state_00\(12),
	datac => \rnd_08_gen|state_00\(0),
	datad => \rnd_08_gen|state_00\(4),
	combout => \rnd_08_gen|Mux14~0_combout\);

\rnd_08_gen|state_01[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(14));

\rnd_08_gen|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux15~0_combout\ = (\rnd_08_gen|state_00\(20) & ((\rnd_08_gen|state_00\(12) & ((!\rnd_08_gen|state_00\(4)))) # (!\rnd_08_gen|state_00\(12) & (\rnd_08_gen|state_00\(0))))) # (!\rnd_08_gen|state_00\(20) & ((\rnd_08_gen|state_00\(0) $ 
-- (\rnd_08_gen|state_00\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(20),
	datab => \rnd_08_gen|state_00\(12),
	datac => \rnd_08_gen|state_00\(0),
	datad => \rnd_08_gen|state_00\(4),
	combout => \rnd_08_gen|Mux15~0_combout\);

\rnd_08_gen|state_01[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(15));

\rnd_08_gen|Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux46~0_combout\ = (\rnd_08_gen|state_00\(46) & (((!\rnd_08_gen|state_00\(5))))) # (!\rnd_08_gen|state_00\(46) & (\rnd_08_gen|state_00\(30) $ (((!\rnd_08_gen|state_00\(5)) # (!\rnd_08_gen|state_00\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(22),
	datab => \rnd_08_gen|state_00\(5),
	datac => \rnd_08_gen|state_00\(30),
	datad => \rnd_08_gen|state_00\(46),
	combout => \rnd_08_gen|Mux46~0_combout\);

\rnd_08_gen|state_01[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux46~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(46));

\rnd_08_gen|Mux79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux79~0_combout\ = (\rnd_08_gen|state_01\(47) & ((\rnd_08_gen|state_01\(15) & ((!\rnd_08_gen|state_01\(46)))) # (!\rnd_08_gen|state_01\(15) & (!\rnd_08_gen|state_01\(14))))) # (!\rnd_08_gen|state_01\(47) & (((!\rnd_08_gen|state_01\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(47),
	datab => \rnd_08_gen|state_01\(14),
	datac => \rnd_08_gen|state_01\(15),
	datad => \rnd_08_gen|state_01\(46),
	combout => \rnd_08_gen|Mux79~0_combout\);

\rnd_08_gen|state_02[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux79~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(31));

\rnd_08_gen|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux21~0_combout\ = (\rnd_08_gen|state_00\(23) & (\rnd_08_gen|state_00\(45) $ (((\rnd_08_gen|state_00\(6)) # (\rnd_08_gen|state_00\(16)))))) # (!\rnd_08_gen|state_00\(23) & (\rnd_08_gen|state_00\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(6),
	datab => \rnd_08_gen|state_00\(23),
	datac => \rnd_08_gen|state_00\(45),
	datad => \rnd_08_gen|state_00\(16),
	combout => \rnd_08_gen|Mux21~0_combout\);

\rnd_08_gen|state_01[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(21));

\rnd_08_gen|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux5~0_combout\ = (\rnd_08_gen|state_00\(36) & ((\rnd_08_gen|state_00\(10) $ (!\rnd_08_gen|state_00\(7))) # (!\rnd_08_gen|state_00\(15)))) # (!\rnd_08_gen|state_00\(36) & (\rnd_08_gen|state_00\(10) & (\rnd_08_gen|state_00\(15) $ 
-- (!\rnd_08_gen|state_00\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(36),
	datab => \rnd_08_gen|state_00\(15),
	datac => \rnd_08_gen|state_00\(10),
	datad => \rnd_08_gen|state_00\(7),
	combout => \rnd_08_gen|Mux5~0_combout\);

\rnd_08_gen|state_01[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(5));

\rnd_08_gen|Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux36~0_combout\ = (\rnd_08_gen|state_00\(9) & (\rnd_08_gen|state_00\(3) $ (((\rnd_08_gen|state_00\(28)) # (!\rnd_08_gen|state_00\(21)))))) # (!\rnd_08_gen|state_00\(9) & ((\rnd_08_gen|state_00\(3) & (!\rnd_08_gen|state_00\(28))) # 
-- (!\rnd_08_gen|state_00\(3) & ((!\rnd_08_gen|state_00\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(9),
	datab => \rnd_08_gen|state_00\(28),
	datac => \rnd_08_gen|state_00\(21),
	datad => \rnd_08_gen|state_00\(3),
	combout => \rnd_08_gen|Mux36~0_combout\);

\rnd_08_gen|state_01[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux36~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(36));

\rnd_08_gen|Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux45~0_combout\ = (\rnd_08_gen|state_00\(22) & ((\rnd_08_gen|state_00\(30)) # ((\rnd_08_gen|state_00\(5) & \rnd_08_gen|state_00\(46))))) # (!\rnd_08_gen|state_00\(22) & (!\rnd_08_gen|state_00\(46) & ((!\rnd_08_gen|state_00\(30)) # 
-- (!\rnd_08_gen|state_00\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(22),
	datab => \rnd_08_gen|state_00\(5),
	datac => \rnd_08_gen|state_00\(30),
	datad => \rnd_08_gen|state_00\(46),
	combout => \rnd_08_gen|Mux45~0_combout\);

\rnd_08_gen|state_01[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux45~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(45));

\rnd_08_gen|Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux61~0_combout\ = (\rnd_08_gen|state_01\(45) & (\rnd_08_gen|state_01\(5) $ (((!\rnd_08_gen|state_01\(21) & \rnd_08_gen|state_01\(36)))))) # (!\rnd_08_gen|state_01\(45) & (!\rnd_08_gen|state_01\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(21),
	datab => \rnd_08_gen|state_01\(5),
	datac => \rnd_08_gen|state_01\(36),
	datad => \rnd_08_gen|state_01\(45),
	combout => \rnd_08_gen|Mux61~0_combout\);

\rnd_08_gen|state_02[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux61~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(13));

\rnd_08_gen|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux39~0_combout\ = (\rnd_08_gen|state_00\(9) & ((\rnd_08_gen|state_00\(21)) # (\rnd_08_gen|state_00\(28) $ (\rnd_08_gen|state_00\(3))))) # (!\rnd_08_gen|state_00\(9) & (!\rnd_08_gen|state_00\(3) & (\rnd_08_gen|state_00\(28) $ 
-- (!\rnd_08_gen|state_00\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(9),
	datab => \rnd_08_gen|state_00\(28),
	datac => \rnd_08_gen|state_00\(21),
	datad => \rnd_08_gen|state_00\(3),
	combout => \rnd_08_gen|Mux39~0_combout\);

\rnd_08_gen|state_01[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(39));

\rnd_08_gen|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux19~0_combout\ = (\rnd_08_gen|state_00\(43) & (\rnd_08_gen|state_00\(1) & ((\rnd_08_gen|state_00\(19)) # (!\rnd_08_gen|state_00\(25))))) # (!\rnd_08_gen|state_00\(43) & (((!\rnd_08_gen|state_00\(25) & !\rnd_08_gen|state_00\(1))) # 
-- (!\rnd_08_gen|state_00\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(19),
	datab => \rnd_08_gen|state_00\(25),
	datac => \rnd_08_gen|state_00\(1),
	datad => \rnd_08_gen|state_00\(43),
	combout => \rnd_08_gen|Mux19~0_combout\);

\rnd_08_gen|state_01[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(19));

\rnd_08_gen|Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux44~0_combout\ = (\rnd_08_gen|state_00\(5) & ((\rnd_08_gen|state_00\(46) & ((!\rnd_08_gen|state_00\(30)))) # (!\rnd_08_gen|state_00\(46) & (!\rnd_08_gen|state_00\(22))))) # (!\rnd_08_gen|state_00\(5) & (\rnd_08_gen|state_00\(22) $ 
-- (((\rnd_08_gen|state_00\(46)) # (!\rnd_08_gen|state_00\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(22),
	datab => \rnd_08_gen|state_00\(5),
	datac => \rnd_08_gen|state_00\(30),
	datad => \rnd_08_gen|state_00\(46),
	combout => \rnd_08_gen|Mux44~0_combout\);

\rnd_08_gen|state_01[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux44~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(44));

\rnd_08_gen|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux1~0_combout\ = (\rnd_08_gen|state_00\(24) & (((!\rnd_08_gen|state_00\(40))))) # (!\rnd_08_gen|state_00\(24) & (\rnd_08_gen|state_00\(41) $ (((\rnd_08_gen|state_00\(40)) # (!\rnd_08_gen|state_00\(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(26),
	datab => \rnd_08_gen|state_00\(41),
	datac => \rnd_08_gen|state_00\(40),
	datad => \rnd_08_gen|state_00\(24),
	combout => \rnd_08_gen|Mux1~0_combout\);

\rnd_08_gen|state_01[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(1));

\rnd_08_gen|Mux80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux80~0_combout\ = \rnd_08_gen|state_01\(19) $ (((\rnd_08_gen|state_01\(39) & (!\rnd_08_gen|state_01\(44) & \rnd_08_gen|state_01\(1))) # (!\rnd_08_gen|state_01\(39) & (\rnd_08_gen|state_01\(44)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(39),
	datab => \rnd_08_gen|state_01\(19),
	datac => \rnd_08_gen|state_01\(44),
	datad => \rnd_08_gen|state_01\(1),
	combout => \rnd_08_gen|Mux80~0_combout\);

\rnd_08_gen|state_02[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux80~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(32));

\rnd_08_gen|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux18~0_combout\ = (\rnd_08_gen|state_00\(19) & (\rnd_08_gen|state_00\(25) $ (((\rnd_08_gen|state_00\(1)) # (\rnd_08_gen|state_00\(43)))))) # (!\rnd_08_gen|state_00\(19) & (\rnd_08_gen|state_00\(43) $ (((!\rnd_08_gen|state_00\(1)) # 
-- (!\rnd_08_gen|state_00\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(19),
	datab => \rnd_08_gen|state_00\(25),
	datac => \rnd_08_gen|state_00\(1),
	datad => \rnd_08_gen|state_00\(43),
	combout => \rnd_08_gen|Mux18~0_combout\);

\rnd_08_gen|state_01[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(18));

\rnd_08_gen|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux0~0_combout\ = (\rnd_08_gen|state_00\(40) & ((\rnd_08_gen|state_00\(24) & ((!\rnd_08_gen|state_00\(41)))) # (!\rnd_08_gen|state_00\(24) & (!\rnd_08_gen|state_00\(26))))) # (!\rnd_08_gen|state_00\(40) & (\rnd_08_gen|state_00\(26) $ 
-- (((\rnd_08_gen|state_00\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(26),
	datab => \rnd_08_gen|state_00\(41),
	datac => \rnd_08_gen|state_00\(40),
	datad => \rnd_08_gen|state_00\(24),
	combout => \rnd_08_gen|Mux0~0_combout\);

\rnd_08_gen|state_01[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(0));

\rnd_08_gen|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux8~0_combout\ = \rnd_08_gen|state_00\(17) $ (((!\rnd_08_gen|state_00\(38) & ((!\rnd_08_gen|state_00\(34)) # (!\rnd_08_gen|state_00\(32))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(17),
	datab => \rnd_08_gen|state_00\(38),
	datac => \rnd_08_gen|state_00\(32),
	datad => \rnd_08_gen|state_00\(34),
	combout => \rnd_08_gen|Mux8~0_combout\);

\rnd_08_gen|state_01[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(8));

\rnd_08_gen|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux4~0_combout\ = (\rnd_08_gen|state_00\(36) & ((\rnd_08_gen|state_00\(15)) # ((!\rnd_08_gen|state_00\(10))))) # (!\rnd_08_gen|state_00\(36) & (\rnd_08_gen|state_00\(15) & ((!\rnd_08_gen|state_00\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(36),
	datab => \rnd_08_gen|state_00\(15),
	datac => \rnd_08_gen|state_00\(10),
	datad => \rnd_08_gen|state_00\(7),
	combout => \rnd_08_gen|Mux4~0_combout\);

\rnd_08_gen|state_01[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(4));

\rnd_08_gen|Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux52~0_combout\ = (\rnd_08_gen|state_01\(4) & ((\rnd_08_gen|state_01\(0) $ (\rnd_08_gen|state_01\(8))) # (!\rnd_08_gen|state_01\(18)))) # (!\rnd_08_gen|state_01\(4) & (((\rnd_08_gen|state_01\(0) & \rnd_08_gen|state_01\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(18),
	datab => \rnd_08_gen|state_01\(0),
	datac => \rnd_08_gen|state_01\(8),
	datad => \rnd_08_gen|state_01\(4),
	combout => \rnd_08_gen|Mux52~0_combout\);

\rnd_08_gen|state_02[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux52~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(4));

\rnd_08_gen|Mux132~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux132~0_combout\ = (\rnd_08_gen|state_02\(31) & (\rnd_08_gen|state_02\(13) $ (((\rnd_08_gen|state_02\(32) & \rnd_08_gen|state_02\(4)))))) # (!\rnd_08_gen|state_02\(31) & ((\rnd_08_gen|state_02\(32) $ (!\rnd_08_gen|state_02\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(31),
	datab => \rnd_08_gen|state_02\(13),
	datac => \rnd_08_gen|state_02\(32),
	datad => \rnd_08_gen|state_02\(4),
	combout => \rnd_08_gen|Mux132~0_combout\);

\rnd_08_gen|state_03[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux132~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(36));

\rnd_08_gen|Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux42~0_combout\ = \rnd_08_gen|state_00\(14) $ (((\rnd_08_gen|state_00\(39) & (\rnd_08_gen|state_00\(13) & !\rnd_08_gen|state_00\(35))) # (!\rnd_08_gen|state_00\(39) & (!\rnd_08_gen|state_00\(13) & \rnd_08_gen|state_00\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(39),
	datab => \rnd_08_gen|state_00\(13),
	datac => \rnd_08_gen|state_00\(35),
	datad => \rnd_08_gen|state_00\(14),
	combout => \rnd_08_gen|Mux42~0_combout\);

\rnd_08_gen|state_01[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux42~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(42));

\rnd_08_gen|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux30~0_combout\ = (\rnd_08_gen|state_00\(33) & ((\rnd_08_gen|state_00\(27) & (\rnd_08_gen|state_00\(42))) # (!\rnd_08_gen|state_00\(27) & ((!\rnd_08_gen|state_00\(44)))))) # (!\rnd_08_gen|state_00\(33) & ((\rnd_08_gen|state_00\(42) $ 
-- (!\rnd_08_gen|state_00\(44)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(27),
	datab => \rnd_08_gen|state_00\(42),
	datac => \rnd_08_gen|state_00\(33),
	datad => \rnd_08_gen|state_00\(44),
	combout => \rnd_08_gen|Mux30~0_combout\);

\rnd_08_gen|state_01[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(30));

\rnd_08_gen|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux24~0_combout\ = (\rnd_08_gen|state_00\(11) & (((\rnd_08_gen|state_00\(29))) # (!\rnd_08_gen|state_00\(18)))) # (!\rnd_08_gen|state_00\(11) & (\rnd_08_gen|state_00\(37) & (\rnd_08_gen|state_00\(18) $ (\rnd_08_gen|state_00\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(18),
	datab => \rnd_08_gen|state_00\(11),
	datac => \rnd_08_gen|state_00\(37),
	datad => \rnd_08_gen|state_00\(29),
	combout => \rnd_08_gen|Mux24~0_combout\);

\rnd_08_gen|state_01[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(24));

\rnd_08_gen|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux2~0_combout\ = (\rnd_08_gen|state_00\(41) & ((\rnd_08_gen|state_00\(26)) # (\rnd_08_gen|state_00\(40) $ (\rnd_08_gen|state_00\(24))))) # (!\rnd_08_gen|state_00\(41) & (\rnd_08_gen|state_00\(40) & (\rnd_08_gen|state_00\(26) $ 
-- (\rnd_08_gen|state_00\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(26),
	datab => \rnd_08_gen|state_00\(41),
	datac => \rnd_08_gen|state_00\(40),
	datad => \rnd_08_gen|state_00\(24),
	combout => \rnd_08_gen|Mux2~0_combout\);

\rnd_08_gen|state_01[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(2));

\rnd_08_gen|Mux68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux68~0_combout\ = (\rnd_08_gen|state_01\(24) & ((\rnd_08_gen|state_01\(2) & (!\rnd_08_gen|state_01\(42))) # (!\rnd_08_gen|state_01\(2) & ((\rnd_08_gen|state_01\(30)))))) # (!\rnd_08_gen|state_01\(24) & ((\rnd_08_gen|state_01\(30) & 
-- (\rnd_08_gen|state_01\(42))) # (!\rnd_08_gen|state_01\(30) & ((!\rnd_08_gen|state_01\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(42),
	datab => \rnd_08_gen|state_01\(30),
	datac => \rnd_08_gen|state_01\(24),
	datad => \rnd_08_gen|state_01\(2),
	combout => \rnd_08_gen|Mux68~0_combout\);

\rnd_08_gen|state_02[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux68~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(20));

\rnd_08_gen|Mux83~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux83~0_combout\ = (\rnd_08_gen|state_01\(19) & ((\rnd_08_gen|state_01\(1) & ((\rnd_08_gen|state_01\(44)))) # (!\rnd_08_gen|state_01\(1) & (!\rnd_08_gen|state_01\(39))))) # (!\rnd_08_gen|state_01\(19) & (\rnd_08_gen|state_01\(39) $ 
-- (((\rnd_08_gen|state_01\(44)) # (\rnd_08_gen|state_01\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(39),
	datab => \rnd_08_gen|state_01\(19),
	datac => \rnd_08_gen|state_01\(44),
	datad => \rnd_08_gen|state_01\(1),
	combout => \rnd_08_gen|Mux83~0_combout\);

\rnd_08_gen|state_02[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux83~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(35));

\rnd_08_gen|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux22~0_combout\ = (\rnd_08_gen|state_00\(16) & ((\rnd_08_gen|state_00\(6) & (!\rnd_08_gen|state_00\(23))) # (!\rnd_08_gen|state_00\(6) & ((\rnd_08_gen|state_00\(45)))))) # (!\rnd_08_gen|state_00\(16) & (((!\rnd_08_gen|state_00\(45)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(6),
	datab => \rnd_08_gen|state_00\(23),
	datac => \rnd_08_gen|state_00\(45),
	datad => \rnd_08_gen|state_00\(16),
	combout => \rnd_08_gen|Mux22~0_combout\);

\rnd_08_gen|state_01[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(22));

\rnd_08_gen|Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux43~0_combout\ = (\rnd_08_gen|state_00\(39) & ((\rnd_08_gen|state_00\(35) & (!\rnd_08_gen|state_00\(13))) # (!\rnd_08_gen|state_00\(35) & ((!\rnd_08_gen|state_00\(14)))))) # (!\rnd_08_gen|state_00\(39) & ((\rnd_08_gen|state_00\(35) & 
-- ((!\rnd_08_gen|state_00\(14)))) # (!\rnd_08_gen|state_00\(35) & (\rnd_08_gen|state_00\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(39),
	datab => \rnd_08_gen|state_00\(13),
	datac => \rnd_08_gen|state_00\(35),
	datad => \rnd_08_gen|state_00\(14),
	combout => \rnd_08_gen|Mux43~0_combout\);

\rnd_08_gen|state_01[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(43));

\rnd_08_gen|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux13~0_combout\ = (\rnd_08_gen|state_00\(4) & (((\rnd_08_gen|state_00\(0))) # (!\rnd_08_gen|state_00\(20)))) # (!\rnd_08_gen|state_00\(4) & (!\rnd_08_gen|state_00\(12) & (\rnd_08_gen|state_00\(20) $ (\rnd_08_gen|state_00\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(20),
	datab => \rnd_08_gen|state_00\(12),
	datac => \rnd_08_gen|state_00\(0),
	datad => \rnd_08_gen|state_00\(4),
	combout => \rnd_08_gen|Mux13~0_combout\);

\rnd_08_gen|state_01[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(13));

\rnd_08_gen|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux27~0_combout\ = (\rnd_08_gen|state_00\(29) & ((\rnd_08_gen|state_00\(18) $ (\rnd_08_gen|state_00\(11))) # (!\rnd_08_gen|state_00\(37)))) # (!\rnd_08_gen|state_00\(29) & (\rnd_08_gen|state_00\(18) & (!\rnd_08_gen|state_00\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(18),
	datab => \rnd_08_gen|state_00\(11),
	datac => \rnd_08_gen|state_00\(37),
	datad => \rnd_08_gen|state_00\(29),
	combout => \rnd_08_gen|Mux27~0_combout\);

\rnd_08_gen|state_01[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(27));

\rnd_08_gen|Mux64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux64~0_combout\ = (\rnd_08_gen|state_01\(43) & (\rnd_08_gen|state_01\(27) $ (((\rnd_08_gen|state_01\(22) & \rnd_08_gen|state_01\(13)))))) # (!\rnd_08_gen|state_01\(43) & ((\rnd_08_gen|state_01\(27) & ((\rnd_08_gen|state_01\(13)))) # 
-- (!\rnd_08_gen|state_01\(27) & (!\rnd_08_gen|state_01\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(22),
	datab => \rnd_08_gen|state_01\(43),
	datac => \rnd_08_gen|state_01\(13),
	datad => \rnd_08_gen|state_01\(27),
	combout => \rnd_08_gen|Mux64~0_combout\);

\rnd_08_gen|state_02[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(16));

\rnd_08_gen|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux10~0_combout\ = (\rnd_08_gen|state_00\(17) & ((\rnd_08_gen|state_00\(38) & ((!\rnd_08_gen|state_00\(34)))) # (!\rnd_08_gen|state_00\(38) & (\rnd_08_gen|state_00\(32))))) # (!\rnd_08_gen|state_00\(17) & ((\rnd_08_gen|state_00\(32) $ 
-- (!\rnd_08_gen|state_00\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(17),
	datab => \rnd_08_gen|state_00\(38),
	datac => \rnd_08_gen|state_00\(32),
	datad => \rnd_08_gen|state_00\(34),
	combout => \rnd_08_gen|Mux10~0_combout\);

\rnd_08_gen|state_01[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(10));

\rnd_08_gen|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux32~0_combout\ = (\rnd_08_gen|state_00\(31) & ((\rnd_08_gen|state_00\(47) & (!\rnd_08_gen|state_00\(8) & \rnd_08_gen|state_00\(2))) # (!\rnd_08_gen|state_00\(47) & ((\rnd_08_gen|state_00\(2)) # (!\rnd_08_gen|state_00\(8)))))) # 
-- (!\rnd_08_gen|state_00\(31) & ((\rnd_08_gen|state_00\(8) $ (!\rnd_08_gen|state_00\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(47),
	datab => \rnd_08_gen|state_00\(31),
	datac => \rnd_08_gen|state_00\(8),
	datad => \rnd_08_gen|state_00\(2),
	combout => \rnd_08_gen|Mux32~0_combout\);

\rnd_08_gen|state_01[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(32));

\rnd_08_gen|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux31~0_combout\ = (\rnd_08_gen|state_00\(27) & (\rnd_08_gen|state_00\(42) $ (((\rnd_08_gen|state_00\(33) & \rnd_08_gen|state_00\(44)))))) # (!\rnd_08_gen|state_00\(27) & ((\rnd_08_gen|state_00\(42) & ((\rnd_08_gen|state_00\(44)))) # 
-- (!\rnd_08_gen|state_00\(42) & (!\rnd_08_gen|state_00\(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(27),
	datab => \rnd_08_gen|state_00\(42),
	datac => \rnd_08_gen|state_00\(33),
	datad => \rnd_08_gen|state_00\(44),
	combout => \rnd_08_gen|Mux31~0_combout\);

\rnd_08_gen|state_01[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(31));

\rnd_08_gen|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux12~0_combout\ = (\rnd_08_gen|state_00\(20) & (\rnd_08_gen|state_00\(12) $ (\rnd_08_gen|state_00\(0) $ (\rnd_08_gen|state_00\(4))))) # (!\rnd_08_gen|state_00\(20) & ((\rnd_08_gen|state_00\(12) & ((\rnd_08_gen|state_00\(4)) # 
-- (!\rnd_08_gen|state_00\(0)))) # (!\rnd_08_gen|state_00\(12) & (!\rnd_08_gen|state_00\(0) & \rnd_08_gen|state_00\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(20),
	datab => \rnd_08_gen|state_00\(12),
	datac => \rnd_08_gen|state_00\(0),
	datad => \rnd_08_gen|state_00\(4),
	combout => \rnd_08_gen|Mux12~0_combout\);

\rnd_08_gen|state_01[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(12));

\rnd_08_gen|Mux73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux73~0_combout\ = \rnd_08_gen|state_01\(12) $ (((\rnd_08_gen|state_01\(10) & (\rnd_08_gen|state_01\(32) $ (\rnd_08_gen|state_01\(31)))) # (!\rnd_08_gen|state_01\(10) & ((\rnd_08_gen|state_01\(32)) # (!\rnd_08_gen|state_01\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001001101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(10),
	datab => \rnd_08_gen|state_01\(32),
	datac => \rnd_08_gen|state_01\(31),
	datad => \rnd_08_gen|state_01\(12),
	combout => \rnd_08_gen|Mux73~0_combout\);

\rnd_08_gen|state_02[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux73~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(25));

\rnd_08_gen|Mux106~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux106~0_combout\ = (\rnd_08_gen|state_02\(35) & (!\rnd_08_gen|state_02\(20) & ((\rnd_08_gen|state_02\(25))))) # (!\rnd_08_gen|state_02\(35) & ((\rnd_08_gen|state_02\(25)) # (\rnd_08_gen|state_02\(20) $ (\rnd_08_gen|state_02\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(20),
	datab => \rnd_08_gen|state_02\(35),
	datac => \rnd_08_gen|state_02\(16),
	datad => \rnd_08_gen|state_02\(25),
	combout => \rnd_08_gen|Mux106~0_combout\);

\rnd_08_gen|state_03[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux106~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(10));

\rnd_08_gen|Mux71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux71~0_combout\ = (\rnd_08_gen|state_01\(42) & (\rnd_08_gen|state_01\(2) $ (((!\rnd_08_gen|state_01\(30) & !\rnd_08_gen|state_01\(24)))))) # (!\rnd_08_gen|state_01\(42) & (\rnd_08_gen|state_01\(30) $ (((!\rnd_08_gen|state_01\(24) & 
-- \rnd_08_gen|state_01\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(42),
	datab => \rnd_08_gen|state_01\(30),
	datac => \rnd_08_gen|state_01\(24),
	datad => \rnd_08_gen|state_01\(2),
	combout => \rnd_08_gen|Mux71~0_combout\);

\rnd_08_gen|state_02[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux71~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(23));

\rnd_08_gen|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux25~0_combout\ = (\rnd_08_gen|state_00\(18) & (\rnd_08_gen|state_00\(37) $ (((\rnd_08_gen|state_00\(11)) # (\rnd_08_gen|state_00\(29)))))) # (!\rnd_08_gen|state_00\(18) & ((\rnd_08_gen|state_00\(11) & ((!\rnd_08_gen|state_00\(29)))) # 
-- (!\rnd_08_gen|state_00\(11) & (!\rnd_08_gen|state_00\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101101101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(18),
	datab => \rnd_08_gen|state_00\(11),
	datac => \rnd_08_gen|state_00\(37),
	datad => \rnd_08_gen|state_00\(29),
	combout => \rnd_08_gen|Mux25~0_combout\);

\rnd_08_gen|state_01[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(25));

\rnd_08_gen|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux16~0_combout\ = (\rnd_08_gen|state_00\(19) & ((\rnd_08_gen|state_00\(25) & (!\rnd_08_gen|state_00\(1) & \rnd_08_gen|state_00\(43))) # (!\rnd_08_gen|state_00\(25) & ((\rnd_08_gen|state_00\(43)) # (!\rnd_08_gen|state_00\(1)))))) # 
-- (!\rnd_08_gen|state_00\(19) & (\rnd_08_gen|state_00\(1) $ (((!\rnd_08_gen|state_00\(25) & \rnd_08_gen|state_00\(43))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(19),
	datab => \rnd_08_gen|state_00\(25),
	datac => \rnd_08_gen|state_00\(1),
	datad => \rnd_08_gen|state_00\(43),
	combout => \rnd_08_gen|Mux16~0_combout\);

\rnd_08_gen|state_01[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(16));

\rnd_08_gen|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux28~0_combout\ = (\rnd_08_gen|state_00\(27) & ((\rnd_08_gen|state_00\(42) & ((!\rnd_08_gen|state_00\(44)))) # (!\rnd_08_gen|state_00\(42) & (!\rnd_08_gen|state_00\(33))))) # (!\rnd_08_gen|state_00\(27) & (\rnd_08_gen|state_00\(33) $ 
-- (((!\rnd_08_gen|state_00\(42) & !\rnd_08_gen|state_00\(44))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(27),
	datab => \rnd_08_gen|state_00\(42),
	datac => \rnd_08_gen|state_00\(33),
	datad => \rnd_08_gen|state_00\(44),
	combout => \rnd_08_gen|Mux28~0_combout\);

\rnd_08_gen|state_01[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(28));

\rnd_08_gen|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux6~0_combout\ = (\rnd_08_gen|state_00\(15) & (\rnd_08_gen|state_00\(36) $ (((!\rnd_08_gen|state_00\(7)) # (!\rnd_08_gen|state_00\(10)))))) # (!\rnd_08_gen|state_00\(15) & ((\rnd_08_gen|state_00\(36) & ((\rnd_08_gen|state_00\(7)))) # 
-- (!\rnd_08_gen|state_00\(36) & (\rnd_08_gen|state_00\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(36),
	datab => \rnd_08_gen|state_00\(15),
	datac => \rnd_08_gen|state_00\(10),
	datad => \rnd_08_gen|state_00\(7),
	combout => \rnd_08_gen|Mux6~0_combout\);

\rnd_08_gen|state_01[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(6));

\rnd_08_gen|Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux51~0_combout\ = (\rnd_08_gen|state_01\(28) & ((\rnd_08_gen|state_01\(16) & ((\rnd_08_gen|state_01\(6)))) # (!\rnd_08_gen|state_01\(16) & (!\rnd_08_gen|state_01\(25))))) # (!\rnd_08_gen|state_01\(28) & (\rnd_08_gen|state_01\(16) $ 
-- (((\rnd_08_gen|state_01\(25) & !\rnd_08_gen|state_01\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(25),
	datab => \rnd_08_gen|state_01\(16),
	datac => \rnd_08_gen|state_01\(28),
	datad => \rnd_08_gen|state_01\(6),
	combout => \rnd_08_gen|Mux51~0_combout\);

\rnd_08_gen|state_02[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux51~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(3));

\rnd_08_gen|Mux90~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux90~0_combout\ = (\rnd_08_gen|state_01\(20) & (((!\rnd_08_gen|state_01\(41) & !\rnd_08_gen|state_01\(11))) # (!\rnd_08_gen|state_01\(26)))) # (!\rnd_08_gen|state_01\(20) & (\rnd_08_gen|state_01\(11) & ((\rnd_08_gen|state_01\(26)) # 
-- (!\rnd_08_gen|state_01\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(41),
	datab => \rnd_08_gen|state_01\(20),
	datac => \rnd_08_gen|state_01\(26),
	datad => \rnd_08_gen|state_01\(11),
	combout => \rnd_08_gen|Mux90~0_combout\);

\rnd_08_gen|state_02[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux90~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(42));

\rnd_08_gen|Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux53~0_combout\ = (\rnd_08_gen|state_01\(8) & ((\rnd_08_gen|state_01\(18) $ (!\rnd_08_gen|state_01\(4))) # (!\rnd_08_gen|state_01\(0)))) # (!\rnd_08_gen|state_01\(8) & (!\rnd_08_gen|state_01\(18) & (\rnd_08_gen|state_01\(0) $ 
-- (!\rnd_08_gen|state_01\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(18),
	datab => \rnd_08_gen|state_01\(0),
	datac => \rnd_08_gen|state_01\(8),
	datad => \rnd_08_gen|state_01\(4),
	combout => \rnd_08_gen|Mux53~0_combout\);

\rnd_08_gen|state_02[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux53~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(5));

\rnd_08_gen|Mux139~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux139~0_combout\ = (\rnd_08_gen|state_02\(42) & ((\rnd_08_gen|state_02\(23) $ (!\rnd_08_gen|state_02\(3))) # (!\rnd_08_gen|state_02\(5)))) # (!\rnd_08_gen|state_02\(42) & (\rnd_08_gen|state_02\(23) & ((!\rnd_08_gen|state_02\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(23),
	datab => \rnd_08_gen|state_02\(3),
	datac => \rnd_08_gen|state_02\(42),
	datad => \rnd_08_gen|state_02\(5),
	combout => \rnd_08_gen|Mux139~0_combout\);

\rnd_08_gen|state_03[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux139~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(43));

\rnd_08_gen|Mux159~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux159~0_combout\ = (\rnd_08_gen|state_03\(10) & (\rnd_08_gen|state_03\(7) $ (\rnd_08_gen|state_03\(36) $ (\rnd_08_gen|state_03\(43))))) # (!\rnd_08_gen|state_03\(10) & ((\rnd_08_gen|state_03\(43) & (\rnd_08_gen|state_03\(7))) # 
-- (!\rnd_08_gen|state_03\(43) & ((!\rnd_08_gen|state_03\(36))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(7),
	datab => \rnd_08_gen|state_03\(36),
	datac => \rnd_08_gen|state_03\(10),
	datad => \rnd_08_gen|state_03\(43),
	combout => \rnd_08_gen|Mux159~0_combout\);

\rnd_08_gen|state_04[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux159~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(15));

\rnd_08_gen|Mux105~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux105~0_combout\ = (\rnd_08_gen|state_02\(20) & ((\rnd_08_gen|state_02\(16) & (!\rnd_08_gen|state_02\(35))) # (!\rnd_08_gen|state_02\(16) & ((\rnd_08_gen|state_02\(25)))))) # (!\rnd_08_gen|state_02\(20) & ((\rnd_08_gen|state_02\(16) $ 
-- (!\rnd_08_gen|state_02\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(20),
	datab => \rnd_08_gen|state_02\(35),
	datac => \rnd_08_gen|state_02\(16),
	datad => \rnd_08_gen|state_02\(25),
	combout => \rnd_08_gen|Mux105~0_combout\);

\rnd_08_gen|state_03[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux105~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(9));

\rnd_08_gen|Mux70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux70~0_combout\ = (\rnd_08_gen|state_01\(42) & (\rnd_08_gen|state_01\(2) $ (((\rnd_08_gen|state_01\(30)) # (!\rnd_08_gen|state_01\(24)))))) # (!\rnd_08_gen|state_01\(42) & ((\rnd_08_gen|state_01\(24) & ((!\rnd_08_gen|state_01\(2)))) # 
-- (!\rnd_08_gen|state_01\(24) & (\rnd_08_gen|state_01\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(42),
	datab => \rnd_08_gen|state_01\(30),
	datac => \rnd_08_gen|state_01\(24),
	datad => \rnd_08_gen|state_01\(2),
	combout => \rnd_08_gen|Mux70~0_combout\);

\rnd_08_gen|state_02[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux70~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(22));

\rnd_08_gen|Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux55~0_combout\ = (\rnd_08_gen|state_01\(0) & ((\rnd_08_gen|state_01\(8) & ((\rnd_08_gen|state_01\(4)) # (!\rnd_08_gen|state_01\(18)))) # (!\rnd_08_gen|state_01\(8) & ((!\rnd_08_gen|state_01\(4)))))) # (!\rnd_08_gen|state_01\(0) & 
-- (!\rnd_08_gen|state_01\(18) & ((\rnd_08_gen|state_01\(4)) # (!\rnd_08_gen|state_01\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(18),
	datab => \rnd_08_gen|state_01\(0),
	datac => \rnd_08_gen|state_01\(8),
	datad => \rnd_08_gen|state_01\(4),
	combout => \rnd_08_gen|Mux55~0_combout\);

\rnd_08_gen|state_02[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux55~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(7));

\rnd_08_gen|Mux67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux67~0_combout\ = (\rnd_08_gen|state_01\(43) & ((\rnd_08_gen|state_01\(13)) # (\rnd_08_gen|state_01\(22) $ (\rnd_08_gen|state_01\(27))))) # (!\rnd_08_gen|state_01\(43) & (\rnd_08_gen|state_01\(22) & (\rnd_08_gen|state_01\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(22),
	datab => \rnd_08_gen|state_01\(43),
	datac => \rnd_08_gen|state_01\(13),
	datad => \rnd_08_gen|state_01\(27),
	combout => \rnd_08_gen|Mux67~0_combout\);

\rnd_08_gen|state_02[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux67~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(19));

\rnd_08_gen|Mux72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux72~0_combout\ = (\rnd_08_gen|state_01\(10) & ((\rnd_08_gen|state_01\(12) & (!\rnd_08_gen|state_01\(32))) # (!\rnd_08_gen|state_01\(12) & ((\rnd_08_gen|state_01\(31)))))) # (!\rnd_08_gen|state_01\(10) & (\rnd_08_gen|state_01\(32) $ 
-- ((\rnd_08_gen|state_01\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(10),
	datab => \rnd_08_gen|state_01\(32),
	datac => \rnd_08_gen|state_01\(31),
	datad => \rnd_08_gen|state_01\(12),
	combout => \rnd_08_gen|Mux72~0_combout\);

\rnd_08_gen|state_02[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux72~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(24));

\rnd_08_gen|Mux130~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux130~0_combout\ = (\rnd_08_gen|state_02\(7) & (((!\rnd_08_gen|state_02\(22) & !\rnd_08_gen|state_02\(24))) # (!\rnd_08_gen|state_02\(19)))) # (!\rnd_08_gen|state_02\(7) & ((\rnd_08_gen|state_02\(22) & (\rnd_08_gen|state_02\(19) & 
-- !\rnd_08_gen|state_02\(24))) # (!\rnd_08_gen|state_02\(22) & (\rnd_08_gen|state_02\(19) $ (!\rnd_08_gen|state_02\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110001101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(22),
	datab => \rnd_08_gen|state_02\(7),
	datac => \rnd_08_gen|state_02\(19),
	datad => \rnd_08_gen|state_02\(24),
	combout => \rnd_08_gen|Mux130~0_combout\);

\rnd_08_gen|state_03[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux130~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(34));

\rnd_08_gen|Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux50~0_combout\ = \rnd_08_gen|state_01\(16) $ (((\rnd_08_gen|state_01\(25) & ((\rnd_08_gen|state_01\(6)) # (!\rnd_08_gen|state_01\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(25),
	datab => \rnd_08_gen|state_01\(16),
	datac => \rnd_08_gen|state_01\(28),
	datad => \rnd_08_gen|state_01\(6),
	combout => \rnd_08_gen|Mux50~0_combout\);

\rnd_08_gen|state_02[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(2));

\rnd_08_gen|Mux74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux74~0_combout\ = (\rnd_08_gen|state_01\(32) & (!\rnd_08_gen|state_01\(31) & (\rnd_08_gen|state_01\(10) $ (\rnd_08_gen|state_01\(12))))) # (!\rnd_08_gen|state_01\(32) & (((\rnd_08_gen|state_01\(12)) # (!\rnd_08_gen|state_01\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(10),
	datab => \rnd_08_gen|state_01\(32),
	datac => \rnd_08_gen|state_01\(31),
	datad => \rnd_08_gen|state_01\(12),
	combout => \rnd_08_gen|Mux74~0_combout\);

\rnd_08_gen|state_02[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux74~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(26));

\rnd_08_gen|Mux65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux65~0_combout\ = (\rnd_08_gen|state_01\(43) & (\rnd_08_gen|state_01\(22) $ ((\rnd_08_gen|state_01\(13))))) # (!\rnd_08_gen|state_01\(43) & (\rnd_08_gen|state_01\(27) $ (((\rnd_08_gen|state_01\(22) & !\rnd_08_gen|state_01\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(22),
	datab => \rnd_08_gen|state_01\(43),
	datac => \rnd_08_gen|state_01\(13),
	datad => \rnd_08_gen|state_01\(27),
	combout => \rnd_08_gen|Mux65~0_combout\);

\rnd_08_gen|state_02[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(17));

\rnd_08_gen|Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux54~0_combout\ = (\rnd_08_gen|state_01\(18) & ((\rnd_08_gen|state_01\(0) & (\rnd_08_gen|state_01\(8))) # (!\rnd_08_gen|state_01\(0) & ((!\rnd_08_gen|state_01\(4)))))) # (!\rnd_08_gen|state_01\(18) & ((\rnd_08_gen|state_01\(8) & 
-- ((\rnd_08_gen|state_01\(4)))) # (!\rnd_08_gen|state_01\(8) & (\rnd_08_gen|state_01\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(18),
	datab => \rnd_08_gen|state_01\(0),
	datac => \rnd_08_gen|state_01\(8),
	datad => \rnd_08_gen|state_01\(4),
	combout => \rnd_08_gen|Mux54~0_combout\);

\rnd_08_gen|state_02[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux54~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(6));

\rnd_08_gen|Mux143~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux143~0_combout\ = (\rnd_08_gen|state_02\(2) & ((\rnd_08_gen|state_02\(6)) # ((!\rnd_08_gen|state_02\(26) & \rnd_08_gen|state_02\(17))))) # (!\rnd_08_gen|state_02\(2) & (!\rnd_08_gen|state_02\(26) & ((!\rnd_08_gen|state_02\(6)) # 
-- (!\rnd_08_gen|state_02\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(2),
	datab => \rnd_08_gen|state_02\(26),
	datac => \rnd_08_gen|state_02\(17),
	datad => \rnd_08_gen|state_02\(6),
	combout => \rnd_08_gen|Mux143~0_combout\);

\rnd_08_gen|state_03[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux143~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(47));

\rnd_08_gen|Mux142~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux142~0_combout\ = (\rnd_08_gen|state_02\(2) & (!\rnd_08_gen|state_02\(17) & ((\rnd_08_gen|state_02\(6)) # (!\rnd_08_gen|state_02\(26))))) # (!\rnd_08_gen|state_02\(2) & ((\rnd_08_gen|state_02\(26) & ((\rnd_08_gen|state_02\(6)) # 
-- (!\rnd_08_gen|state_02\(17)))) # (!\rnd_08_gen|state_02\(26) & ((!\rnd_08_gen|state_02\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(2),
	datab => \rnd_08_gen|state_02\(26),
	datac => \rnd_08_gen|state_02\(17),
	datad => \rnd_08_gen|state_02\(6),
	combout => \rnd_08_gen|Mux142~0_combout\);

\rnd_08_gen|state_03[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux142~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(46));

\rnd_08_gen|Mux146~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux146~0_combout\ = (\rnd_08_gen|state_03\(34) & (((\rnd_08_gen|state_03\(46))))) # (!\rnd_08_gen|state_03\(34) & ((\rnd_08_gen|state_03\(9) & (!\rnd_08_gen|state_03\(47))) # (!\rnd_08_gen|state_03\(9) & ((!\rnd_08_gen|state_03\(46))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(9),
	datab => \rnd_08_gen|state_03\(34),
	datac => \rnd_08_gen|state_03\(47),
	datad => \rnd_08_gen|state_03\(46),
	combout => \rnd_08_gen|Mux146~0_combout\);

\rnd_08_gen|state_04[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux146~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(2));

\rnd_08_gen|Mux102~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux102~0_combout\ = (\rnd_08_gen|state_02\(39) & (!\rnd_08_gen|state_02\(43))) # (!\rnd_08_gen|state_02\(39) & ((\rnd_08_gen|state_02\(36) & ((\rnd_08_gen|state_02\(44)))) # (!\rnd_08_gen|state_02\(36) & (!\rnd_08_gen|state_02\(43)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(43),
	datab => \rnd_08_gen|state_02\(44),
	datac => \rnd_08_gen|state_02\(39),
	datad => \rnd_08_gen|state_02\(36),
	combout => \rnd_08_gen|Mux102~0_combout\);

\rnd_08_gen|state_03[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux102~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(6));

\rnd_08_gen|Mux78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux78~0_combout\ = (\rnd_08_gen|state_01\(15) & (\rnd_08_gen|state_01\(47) $ (((!\rnd_08_gen|state_01\(14) & \rnd_08_gen|state_01\(46)))))) # (!\rnd_08_gen|state_01\(15) & ((\rnd_08_gen|state_01\(46) & (\rnd_08_gen|state_01\(47))) # 
-- (!\rnd_08_gen|state_01\(46) & ((\rnd_08_gen|state_01\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(47),
	datab => \rnd_08_gen|state_01\(14),
	datac => \rnd_08_gen|state_01\(15),
	datad => \rnd_08_gen|state_01\(46),
	combout => \rnd_08_gen|Mux78~0_combout\);

\rnd_08_gen|state_02[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux78~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(30));

\rnd_08_gen|Mux60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux60~0_combout\ = \rnd_08_gen|state_01\(45) $ (((\rnd_08_gen|state_01\(21) & (!\rnd_08_gen|state_01\(5))) # (!\rnd_08_gen|state_01\(21) & (\rnd_08_gen|state_01\(5) & !\rnd_08_gen|state_01\(36)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100100100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(21),
	datab => \rnd_08_gen|state_01\(5),
	datac => \rnd_08_gen|state_01\(36),
	datad => \rnd_08_gen|state_01\(45),
	combout => \rnd_08_gen|Mux60~0_combout\);

\rnd_08_gen|state_02[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux60~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(12));

\rnd_08_gen|Mux66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux66~0_combout\ = (\rnd_08_gen|state_01\(13) & (\rnd_08_gen|state_01\(43) $ (((\rnd_08_gen|state_01\(22)) # (\rnd_08_gen|state_01\(27)))))) # (!\rnd_08_gen|state_01\(13) & ((\rnd_08_gen|state_01\(43) & (!\rnd_08_gen|state_01\(22))) # 
-- (!\rnd_08_gen|state_01\(43) & ((!\rnd_08_gen|state_01\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010001100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(22),
	datab => \rnd_08_gen|state_01\(43),
	datac => \rnd_08_gen|state_01\(13),
	datad => \rnd_08_gen|state_01\(27),
	combout => \rnd_08_gen|Mux66~0_combout\);

\rnd_08_gen|state_02[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(18));

\rnd_08_gen|Mux69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux69~0_combout\ = (\rnd_08_gen|state_01\(24) & (\rnd_08_gen|state_01\(42) $ (((\rnd_08_gen|state_01\(30) & \rnd_08_gen|state_01\(2)))))) # (!\rnd_08_gen|state_01\(24) & ((\rnd_08_gen|state_01\(2) & (!\rnd_08_gen|state_01\(42))) # 
-- (!\rnd_08_gen|state_01\(2) & ((!\rnd_08_gen|state_01\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(42),
	datab => \rnd_08_gen|state_01\(30),
	datac => \rnd_08_gen|state_01\(24),
	datad => \rnd_08_gen|state_01\(2),
	combout => \rnd_08_gen|Mux69~0_combout\);

\rnd_08_gen|state_02[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(21));

\rnd_08_gen|Mux99~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux99~0_combout\ = (\rnd_08_gen|state_02\(21) & ((\rnd_08_gen|state_02\(12) & ((\rnd_08_gen|state_02\(18)))) # (!\rnd_08_gen|state_02\(12) & (!\rnd_08_gen|state_02\(30))))) # (!\rnd_08_gen|state_02\(21) & (\rnd_08_gen|state_02\(30) $ 
-- (((\rnd_08_gen|state_02\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(30),
	datab => \rnd_08_gen|state_02\(12),
	datac => \rnd_08_gen|state_02\(18),
	datad => \rnd_08_gen|state_02\(21),
	combout => \rnd_08_gen|Mux99~0_combout\);

\rnd_08_gen|state_03[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux99~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(3));

\rnd_08_gen|Mux82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux82~0_combout\ = (\rnd_08_gen|state_01\(39) & (((\rnd_08_gen|state_01\(44) & !\rnd_08_gen|state_01\(1))))) # (!\rnd_08_gen|state_01\(39) & ((\rnd_08_gen|state_01\(19)) # (\rnd_08_gen|state_01\(44) $ (!\rnd_08_gen|state_01\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(39),
	datab => \rnd_08_gen|state_01\(19),
	datac => \rnd_08_gen|state_01\(44),
	datad => \rnd_08_gen|state_01\(1),
	combout => \rnd_08_gen|Mux82~0_combout\);

\rnd_08_gen|state_02[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux82~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(34));

\rnd_08_gen|Mux86~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux86~0_combout\ = (\rnd_08_gen|state_01\(40) & ((\rnd_08_gen|state_01\(7) & (!\rnd_08_gen|state_01\(17))) # (!\rnd_08_gen|state_01\(7) & ((\rnd_08_gen|state_01\(38)))))) # (!\rnd_08_gen|state_01\(40) & ((\rnd_08_gen|state_01\(17) & 
-- (\rnd_08_gen|state_01\(38))) # (!\rnd_08_gen|state_01\(17) & ((!\rnd_08_gen|state_01\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(40),
	datab => \rnd_08_gen|state_01\(17),
	datac => \rnd_08_gen|state_01\(38),
	datad => \rnd_08_gen|state_01\(7),
	combout => \rnd_08_gen|Mux86~0_combout\);

\rnd_08_gen|state_02[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux86~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(38));

\rnd_08_gen|Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux49~0_combout\ = (\rnd_08_gen|state_01\(16) & ((\rnd_08_gen|state_01\(25) $ (!\rnd_08_gen|state_01\(6))) # (!\rnd_08_gen|state_01\(28)))) # (!\rnd_08_gen|state_01\(16) & (((!\rnd_08_gen|state_01\(28) & \rnd_08_gen|state_01\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(25),
	datab => \rnd_08_gen|state_01\(16),
	datac => \rnd_08_gen|state_01\(28),
	datad => \rnd_08_gen|state_01\(6),
	combout => \rnd_08_gen|Mux49~0_combout\);

\rnd_08_gen|state_02[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux49~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(1));

\rnd_08_gen|Mux75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux75~0_combout\ = \rnd_08_gen|state_01\(32) $ (((\rnd_08_gen|state_01\(12) & ((\rnd_08_gen|state_01\(10)) # (!\rnd_08_gen|state_01\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(10),
	datab => \rnd_08_gen|state_01\(32),
	datac => \rnd_08_gen|state_01\(31),
	datad => \rnd_08_gen|state_01\(12),
	combout => \rnd_08_gen|Mux75~0_combout\);

\rnd_08_gen|state_02[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(27));

\rnd_08_gen|Mux117~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux117~0_combout\ = (\rnd_08_gen|state_02\(34) & ((\rnd_08_gen|state_02\(1) & ((!\rnd_08_gen|state_02\(27)) # (!\rnd_08_gen|state_02\(38)))) # (!\rnd_08_gen|state_02\(1) & ((\rnd_08_gen|state_02\(27)))))) # (!\rnd_08_gen|state_02\(34) & 
-- (!\rnd_08_gen|state_02\(27) & ((!\rnd_08_gen|state_02\(1)) # (!\rnd_08_gen|state_02\(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(34),
	datab => \rnd_08_gen|state_02\(38),
	datac => \rnd_08_gen|state_02\(1),
	datad => \rnd_08_gen|state_02\(27),
	combout => \rnd_08_gen|Mux117~0_combout\);

\rnd_08_gen|state_03[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux117~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(21));

\rnd_08_gen|Mux128~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux128~0_combout\ = (\rnd_08_gen|state_02\(22) & (((\rnd_08_gen|state_02\(19) & \rnd_08_gen|state_02\(24))))) # (!\rnd_08_gen|state_02\(22) & ((\rnd_08_gen|state_02\(19)) # (\rnd_08_gen|state_02\(7) $ (!\rnd_08_gen|state_02\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(22),
	datab => \rnd_08_gen|state_02\(7),
	datac => \rnd_08_gen|state_02\(19),
	datad => \rnd_08_gen|state_02\(24),
	combout => \rnd_08_gen|Mux128~0_combout\);

\rnd_08_gen|state_03[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux128~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(32));

\rnd_08_gen|Mux163~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux163~0_combout\ = (\rnd_08_gen|state_03\(6) & (\rnd_08_gen|state_03\(3) $ (((\rnd_08_gen|state_03\(21)) # (\rnd_08_gen|state_03\(32)))))) # (!\rnd_08_gen|state_03\(6) & ((\rnd_08_gen|state_03\(3) & ((!\rnd_08_gen|state_03\(32)))) # 
-- (!\rnd_08_gen|state_03\(3) & (!\rnd_08_gen|state_03\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001101101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(6),
	datab => \rnd_08_gen|state_03\(3),
	datac => \rnd_08_gen|state_03\(21),
	datad => \rnd_08_gen|state_03\(32),
	combout => \rnd_08_gen|Mux163~0_combout\);

\rnd_08_gen|state_04[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux163~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(19));

\rnd_08_gen|Mux136~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux136~0_combout\ = (\rnd_08_gen|state_02\(23) & ((\rnd_08_gen|state_02\(5) & ((!\rnd_08_gen|state_02\(42)))) # (!\rnd_08_gen|state_02\(5) & (\rnd_08_gen|state_02\(3))))) # (!\rnd_08_gen|state_02\(23) & (\rnd_08_gen|state_02\(3) $ 
-- (((\rnd_08_gen|state_02\(42)) # (\rnd_08_gen|state_02\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(23),
	datab => \rnd_08_gen|state_02\(3),
	datac => \rnd_08_gen|state_02\(42),
	datad => \rnd_08_gen|state_02\(5),
	combout => \rnd_08_gen|Mux136~0_combout\);

\rnd_08_gen|state_03[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux136~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(40));

\rnd_08_gen|Mux119~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux119~0_combout\ = (\rnd_08_gen|state_02\(34) & ((\rnd_08_gen|state_02\(1) & ((\rnd_08_gen|state_02\(27)))) # (!\rnd_08_gen|state_02\(1) & (\rnd_08_gen|state_02\(38))))) # (!\rnd_08_gen|state_02\(34) & ((\rnd_08_gen|state_02\(27) & 
-- ((\rnd_08_gen|state_02\(1)))) # (!\rnd_08_gen|state_02\(27) & (!\rnd_08_gen|state_02\(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(34),
	datab => \rnd_08_gen|state_02\(38),
	datac => \rnd_08_gen|state_02\(1),
	datad => \rnd_08_gen|state_02\(27),
	combout => \rnd_08_gen|Mux119~0_combout\);

\rnd_08_gen|state_03[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux119~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(23));

\rnd_08_gen|Mux100~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux100~0_combout\ = (\rnd_08_gen|state_02\(36) & ((\rnd_08_gen|state_02\(39) & ((!\rnd_08_gen|state_02\(44)))) # (!\rnd_08_gen|state_02\(39) & (!\rnd_08_gen|state_02\(43))))) # (!\rnd_08_gen|state_02\(36) & (\rnd_08_gen|state_02\(39) $ 
-- (((!\rnd_08_gen|state_02\(44)) # (!\rnd_08_gen|state_02\(43))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(43),
	datab => \rnd_08_gen|state_02\(44),
	datac => \rnd_08_gen|state_02\(39),
	datad => \rnd_08_gen|state_02\(36),
	combout => \rnd_08_gen|Mux100~0_combout\);

\rnd_08_gen|state_03[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux100~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(4));

\rnd_08_gen|Mux85~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux85~0_combout\ = (\rnd_08_gen|state_01\(40) & ((\rnd_08_gen|state_01\(7) & ((!\rnd_08_gen|state_01\(38)))) # (!\rnd_08_gen|state_01\(7) & (!\rnd_08_gen|state_01\(17))))) # (!\rnd_08_gen|state_01\(40) & (\rnd_08_gen|state_01\(38) $ 
-- (((\rnd_08_gen|state_01\(17) & \rnd_08_gen|state_01\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(40),
	datab => \rnd_08_gen|state_01\(17),
	datac => \rnd_08_gen|state_01\(38),
	datad => \rnd_08_gen|state_01\(7),
	combout => \rnd_08_gen|Mux85~0_combout\);

\rnd_08_gen|state_02[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux85~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(37));

\rnd_08_gen|Mux88~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux88~0_combout\ = (\rnd_08_gen|state_01\(41) & ((\rnd_08_gen|state_01\(20) & ((\rnd_08_gen|state_01\(26)) # (!\rnd_08_gen|state_01\(11)))) # (!\rnd_08_gen|state_01\(20) & (\rnd_08_gen|state_01\(26) & !\rnd_08_gen|state_01\(11))))) # 
-- (!\rnd_08_gen|state_01\(41) & ((\rnd_08_gen|state_01\(26) $ (\rnd_08_gen|state_01\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(41),
	datab => \rnd_08_gen|state_01\(20),
	datac => \rnd_08_gen|state_01\(26),
	datad => \rnd_08_gen|state_01\(11),
	combout => \rnd_08_gen|Mux88~0_combout\);

\rnd_08_gen|state_02[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux88~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(40));

\rnd_08_gen|Mux77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux77~0_combout\ = (\rnd_08_gen|state_01\(14) & (\rnd_08_gen|state_01\(46) & ((\rnd_08_gen|state_01\(47)) # (\rnd_08_gen|state_01\(15))))) # (!\rnd_08_gen|state_01\(14) & ((\rnd_08_gen|state_01\(47)) # ((!\rnd_08_gen|state_01\(15) & 
-- !\rnd_08_gen|state_01\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(47),
	datab => \rnd_08_gen|state_01\(14),
	datac => \rnd_08_gen|state_01\(15),
	datad => \rnd_08_gen|state_01\(46),
	combout => \rnd_08_gen|Mux77~0_combout\);

\rnd_08_gen|state_02[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux77~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(29));

\rnd_08_gen|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux29~0_combout\ = (\rnd_08_gen|state_00\(27) & (!\rnd_08_gen|state_00\(42) & (!\rnd_08_gen|state_00\(33)))) # (!\rnd_08_gen|state_00\(27) & ((\rnd_08_gen|state_00\(42) $ (!\rnd_08_gen|state_00\(44))) # (!\rnd_08_gen|state_00\(33))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(27),
	datab => \rnd_08_gen|state_00\(42),
	datac => \rnd_08_gen|state_00\(33),
	datad => \rnd_08_gen|state_00\(44),
	combout => \rnd_08_gen|Mux29~0_combout\);

\rnd_08_gen|state_01[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(29));

\rnd_08_gen|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux37~0_combout\ = (\rnd_08_gen|state_00\(28) & ((\rnd_08_gen|state_00\(21) $ (!\rnd_08_gen|state_00\(3))))) # (!\rnd_08_gen|state_00\(28) & ((\rnd_08_gen|state_00\(3) & ((!\rnd_08_gen|state_00\(21)))) # (!\rnd_08_gen|state_00\(3) & 
-- (!\rnd_08_gen|state_00\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(9),
	datab => \rnd_08_gen|state_00\(28),
	datac => \rnd_08_gen|state_00\(21),
	datad => \rnd_08_gen|state_00\(3),
	combout => \rnd_08_gen|Mux37~0_combout\);

\rnd_08_gen|state_01[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(37));

\rnd_08_gen|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux33~0_combout\ = (\rnd_08_gen|state_00\(47) & (((!\rnd_08_gen|state_00\(8) & \rnd_08_gen|state_00\(2))) # (!\rnd_08_gen|state_00\(31)))) # (!\rnd_08_gen|state_00\(47) & ((\rnd_08_gen|state_00\(31) & (\rnd_08_gen|state_00\(8) & 
-- !\rnd_08_gen|state_00\(2))) # (!\rnd_08_gen|state_00\(31) & (!\rnd_08_gen|state_00\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101101100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(47),
	datab => \rnd_08_gen|state_00\(31),
	datac => \rnd_08_gen|state_00\(8),
	datad => \rnd_08_gen|state_00\(2),
	combout => \rnd_08_gen|Mux33~0_combout\);

\rnd_08_gen|state_01[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(33));

\rnd_08_gen|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux34~0_combout\ = (\rnd_08_gen|state_00\(47) & ((\rnd_08_gen|state_00\(2) & ((!\rnd_08_gen|state_00\(8)))) # (!\rnd_08_gen|state_00\(2) & (\rnd_08_gen|state_00\(31))))) # (!\rnd_08_gen|state_00\(47) & ((\rnd_08_gen|state_00\(8) & 
-- ((\rnd_08_gen|state_00\(2)))) # (!\rnd_08_gen|state_00\(8) & (!\rnd_08_gen|state_00\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_00\(47),
	datab => \rnd_08_gen|state_00\(31),
	datac => \rnd_08_gen|state_00\(8),
	datad => \rnd_08_gen|state_00\(2),
	combout => \rnd_08_gen|Mux34~0_combout\);

\rnd_08_gen|state_01[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux34~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_01\(34));

\rnd_08_gen|Mux57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux57~0_combout\ = (\rnd_08_gen|state_01\(37) & ((\rnd_08_gen|state_01\(33) & ((!\rnd_08_gen|state_01\(34)))) # (!\rnd_08_gen|state_01\(33) & (\rnd_08_gen|state_01\(29) & \rnd_08_gen|state_01\(34))))) # (!\rnd_08_gen|state_01\(37) & 
-- ((\rnd_08_gen|state_01\(34)) # ((\rnd_08_gen|state_01\(29) & !\rnd_08_gen|state_01\(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(29),
	datab => \rnd_08_gen|state_01\(37),
	datac => \rnd_08_gen|state_01\(33),
	datad => \rnd_08_gen|state_01\(34),
	combout => \rnd_08_gen|Mux57~0_combout\);

\rnd_08_gen|state_02[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(9));

\rnd_08_gen|Mux126~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux126~0_combout\ = (\rnd_08_gen|state_02\(40) & (\rnd_08_gen|state_02\(9) $ (((!\rnd_08_gen|state_02\(37) & \rnd_08_gen|state_02\(29)))))) # (!\rnd_08_gen|state_02\(40) & (\rnd_08_gen|state_02\(37) $ ((\rnd_08_gen|state_02\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(37),
	datab => \rnd_08_gen|state_02\(40),
	datac => \rnd_08_gen|state_02\(29),
	datad => \rnd_08_gen|state_02\(9),
	combout => \rnd_08_gen|Mux126~0_combout\);

\rnd_08_gen|state_03[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux126~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(30));

\rnd_08_gen|Mux165~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux165~0_combout\ = (\rnd_08_gen|state_03\(40) & ((\rnd_08_gen|state_03\(23) & (!\rnd_08_gen|state_03\(4))) # (!\rnd_08_gen|state_03\(23) & ((!\rnd_08_gen|state_03\(30)))))) # (!\rnd_08_gen|state_03\(40) & ((\rnd_08_gen|state_03\(30) & 
-- (\rnd_08_gen|state_03\(23))) # (!\rnd_08_gen|state_03\(30) & ((\rnd_08_gen|state_03\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(40),
	datab => \rnd_08_gen|state_03\(23),
	datac => \rnd_08_gen|state_03\(4),
	datad => \rnd_08_gen|state_03\(30),
	combout => \rnd_08_gen|Mux165~0_combout\);

\rnd_08_gen|state_04[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux165~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(21));

\rnd_08_gen|Mux233~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux233~0_combout\ = (\rnd_08_gen|state_04\(2) & ((\rnd_08_gen|state_04\(15) & (!\rnd_08_gen|state_04\(19))) # (!\rnd_08_gen|state_04\(15) & ((!\rnd_08_gen|state_04\(21)))))) # (!\rnd_08_gen|state_04\(2) & ((\rnd_08_gen|state_04\(21) & 
-- (!\rnd_08_gen|state_04\(15))) # (!\rnd_08_gen|state_04\(21) & ((\rnd_08_gen|state_04\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(15),
	datab => \rnd_08_gen|state_04\(2),
	datac => \rnd_08_gen|state_04\(19),
	datad => \rnd_08_gen|state_04\(21),
	combout => \rnd_08_gen|Mux233~0_combout\);

\rnd_08_gen|state_05[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux233~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(41));

\rnd_08_gen|Mux160~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux160~0_combout\ = (\rnd_08_gen|state_03\(3) & ((\rnd_08_gen|state_03\(32)) # (\rnd_08_gen|state_03\(6) $ (\rnd_08_gen|state_03\(21))))) # (!\rnd_08_gen|state_03\(3) & (\rnd_08_gen|state_03\(6) & (\rnd_08_gen|state_03\(21) $ 
-- (\rnd_08_gen|state_03\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(6),
	datab => \rnd_08_gen|state_03\(3),
	datac => \rnd_08_gen|state_03\(21),
	datad => \rnd_08_gen|state_03\(32),
	combout => \rnd_08_gen|Mux160~0_combout\);

\rnd_08_gen|state_04[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux160~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(16));

\rnd_08_gen|Mux89~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux89~0_combout\ = (\rnd_08_gen|state_01\(26) & (((!\rnd_08_gen|state_01\(20))) # (!\rnd_08_gen|state_01\(41)))) # (!\rnd_08_gen|state_01\(26) & (\rnd_08_gen|state_01\(11) & (\rnd_08_gen|state_01\(41) $ (\rnd_08_gen|state_01\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(41),
	datab => \rnd_08_gen|state_01\(20),
	datac => \rnd_08_gen|state_01\(26),
	datad => \rnd_08_gen|state_01\(11),
	combout => \rnd_08_gen|Mux89~0_combout\);

\rnd_08_gen|state_02[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux89~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(41));

\rnd_08_gen|Mux93~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux93~0_combout\ = (\rnd_08_gen|state_01\(9) & (\rnd_08_gen|state_01\(3))) # (!\rnd_08_gen|state_01\(9) & ((\rnd_08_gen|state_01\(35) & (!\rnd_08_gen|state_01\(3))) # (!\rnd_08_gen|state_01\(35) & ((\rnd_08_gen|state_01\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(3),
	datab => \rnd_08_gen|state_01\(23),
	datac => \rnd_08_gen|state_01\(9),
	datad => \rnd_08_gen|state_01\(35),
	combout => \rnd_08_gen|Mux93~0_combout\);

\rnd_08_gen|state_02[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux93~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(45));

\rnd_08_gen|Mux81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux81~0_combout\ = (\rnd_08_gen|state_01\(39) & (((\rnd_08_gen|state_01\(44) & \rnd_08_gen|state_01\(1))) # (!\rnd_08_gen|state_01\(19)))) # (!\rnd_08_gen|state_01\(39) & ((\rnd_08_gen|state_01\(19) & (\rnd_08_gen|state_01\(44) $ 
-- (\rnd_08_gen|state_01\(1)))) # (!\rnd_08_gen|state_01\(19) & (\rnd_08_gen|state_01\(44) & \rnd_08_gen|state_01\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(39),
	datab => \rnd_08_gen|state_01\(19),
	datac => \rnd_08_gen|state_01\(44),
	datad => \rnd_08_gen|state_01\(1),
	combout => \rnd_08_gen|Mux81~0_combout\);

\rnd_08_gen|state_02[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux81~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(33));

\rnd_08_gen|Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux62~0_combout\ = (\rnd_08_gen|state_01\(21) & (\rnd_08_gen|state_01\(36) & (\rnd_08_gen|state_01\(5) $ (\rnd_08_gen|state_01\(45))))) # (!\rnd_08_gen|state_01\(21) & ((\rnd_08_gen|state_01\(5)) # ((\rnd_08_gen|state_01\(45)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(21),
	datab => \rnd_08_gen|state_01\(5),
	datac => \rnd_08_gen|state_01\(36),
	datad => \rnd_08_gen|state_01\(45),
	combout => \rnd_08_gen|Mux62~0_combout\);

\rnd_08_gen|state_02[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux62~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(14));

\rnd_08_gen|Mux113~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux113~0_combout\ = (\rnd_08_gen|state_02\(14) & ((\rnd_08_gen|state_02\(41) & (\rnd_08_gen|state_02\(45))) # (!\rnd_08_gen|state_02\(41) & ((!\rnd_08_gen|state_02\(33)) # (!\rnd_08_gen|state_02\(45)))))) # (!\rnd_08_gen|state_02\(14) & 
-- (!\rnd_08_gen|state_02\(33) & ((\rnd_08_gen|state_02\(41)) # (!\rnd_08_gen|state_02\(45)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(41),
	datab => \rnd_08_gen|state_02\(45),
	datac => \rnd_08_gen|state_02\(33),
	datad => \rnd_08_gen|state_02\(14),
	combout => \rnd_08_gen|Mux113~0_combout\);

\rnd_08_gen|state_03[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux113~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(17));

\rnd_08_gen|Mux76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux76~0_combout\ = (\rnd_08_gen|state_01\(15) & ((\rnd_08_gen|state_01\(14) & ((\rnd_08_gen|state_01\(46)))) # (!\rnd_08_gen|state_01\(14) & (!\rnd_08_gen|state_01\(47))))) # (!\rnd_08_gen|state_01\(15) & (\rnd_08_gen|state_01\(14) $ 
-- (((\rnd_08_gen|state_01\(47)) # (\rnd_08_gen|state_01\(46))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(47),
	datab => \rnd_08_gen|state_01\(14),
	datac => \rnd_08_gen|state_01\(15),
	datad => \rnd_08_gen|state_01\(46),
	combout => \rnd_08_gen|Mux76~0_combout\);

\rnd_08_gen|state_02[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(28));

\rnd_08_gen|Mux95~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux95~0_combout\ = (\rnd_08_gen|state_01\(9) & (\rnd_08_gen|state_01\(23) $ (((!\rnd_08_gen|state_01\(35)) # (!\rnd_08_gen|state_01\(3)))))) # (!\rnd_08_gen|state_01\(9) & (((!\rnd_08_gen|state_01\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(3),
	datab => \rnd_08_gen|state_01\(23),
	datac => \rnd_08_gen|state_01\(9),
	datad => \rnd_08_gen|state_01\(35),
	combout => \rnd_08_gen|Mux95~0_combout\);

\rnd_08_gen|state_02[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux95~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(47));

\rnd_08_gen|Mux94~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux94~0_combout\ = (\rnd_08_gen|state_01\(23) & (\rnd_08_gen|state_01\(9) $ (((!\rnd_08_gen|state_01\(3) & \rnd_08_gen|state_01\(35)))))) # (!\rnd_08_gen|state_01\(23) & ((\rnd_08_gen|state_01\(9) & ((!\rnd_08_gen|state_01\(35)))) # 
-- (!\rnd_08_gen|state_01\(9) & (\rnd_08_gen|state_01\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(3),
	datab => \rnd_08_gen|state_01\(23),
	datac => \rnd_08_gen|state_01\(9),
	datad => \rnd_08_gen|state_01\(35),
	combout => \rnd_08_gen|Mux94~0_combout\);

\rnd_08_gen|state_02[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux94~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(46));

\rnd_08_gen|Mux58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux58~0_combout\ = (\rnd_08_gen|state_01\(34) & (\rnd_08_gen|state_01\(29) $ (((!\rnd_08_gen|state_01\(33)) # (!\rnd_08_gen|state_01\(37)))))) # (!\rnd_08_gen|state_01\(34) & ((\rnd_08_gen|state_01\(29) & (!\rnd_08_gen|state_01\(37))) # 
-- (!\rnd_08_gen|state_01\(29) & ((\rnd_08_gen|state_01\(33))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(29),
	datab => \rnd_08_gen|state_01\(37),
	datac => \rnd_08_gen|state_01\(33),
	datad => \rnd_08_gen|state_01\(34),
	combout => \rnd_08_gen|Mux58~0_combout\);

\rnd_08_gen|state_02[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux58~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(10));

\rnd_08_gen|Mux122~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux122~0_combout\ = (\rnd_08_gen|state_02\(10) & ((\rnd_08_gen|state_02\(28) & (!\rnd_08_gen|state_02\(47) & !\rnd_08_gen|state_02\(46))) # (!\rnd_08_gen|state_02\(28) & (\rnd_08_gen|state_02\(47))))) # (!\rnd_08_gen|state_02\(10) & 
-- (((\rnd_08_gen|state_02\(28) & !\rnd_08_gen|state_02\(47))) # (!\rnd_08_gen|state_02\(46))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(28),
	datab => \rnd_08_gen|state_02\(47),
	datac => \rnd_08_gen|state_02\(46),
	datad => \rnd_08_gen|state_02\(10),
	combout => \rnd_08_gen|Mux122~0_combout\);

\rnd_08_gen|state_03[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux122~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(26));

\rnd_08_gen|Mux135~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux135~0_combout\ = (\rnd_08_gen|state_02\(4) & (\rnd_08_gen|state_02\(13) & ((\rnd_08_gen|state_02\(31)) # (\rnd_08_gen|state_02\(32))))) # (!\rnd_08_gen|state_02\(4) & (((!\rnd_08_gen|state_02\(13) & \rnd_08_gen|state_02\(32))) # 
-- (!\rnd_08_gen|state_02\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(31),
	datab => \rnd_08_gen|state_02\(13),
	datac => \rnd_08_gen|state_02\(32),
	datad => \rnd_08_gen|state_02\(4),
	combout => \rnd_08_gen|Mux135~0_combout\);

\rnd_08_gen|state_03[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux135~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(39));

\rnd_08_gen|Mux96~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux96~0_combout\ = (\rnd_08_gen|state_02\(12) & ((\rnd_08_gen|state_02\(30) & ((!\rnd_08_gen|state_02\(21)))) # (!\rnd_08_gen|state_02\(30) & (!\rnd_08_gen|state_02\(18))))) # (!\rnd_08_gen|state_02\(12) & ((\rnd_08_gen|state_02\(21) & 
-- (!\rnd_08_gen|state_02\(30))) # (!\rnd_08_gen|state_02\(21) & ((\rnd_08_gen|state_02\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(30),
	datab => \rnd_08_gen|state_02\(12),
	datac => \rnd_08_gen|state_02\(18),
	datad => \rnd_08_gen|state_02\(21),
	combout => \rnd_08_gen|Mux96~0_combout\);

\rnd_08_gen|state_03[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux96~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(0));

\rnd_08_gen|Mux154~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux154~0_combout\ = (\rnd_08_gen|state_03\(17) & ((\rnd_08_gen|state_03\(0)) # ((\rnd_08_gen|state_03\(26) & !\rnd_08_gen|state_03\(39))))) # (!\rnd_08_gen|state_03\(17) & (!\rnd_08_gen|state_03\(26) & ((\rnd_08_gen|state_03\(39)) # 
-- (\rnd_08_gen|state_03\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(17),
	datab => \rnd_08_gen|state_03\(26),
	datac => \rnd_08_gen|state_03\(39),
	datad => \rnd_08_gen|state_03\(0),
	combout => \rnd_08_gen|Mux154~0_combout\);

\rnd_08_gen|state_04[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux154~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(10));

\rnd_08_gen|Mux164~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux164~0_combout\ = (\rnd_08_gen|state_03\(40) & (((\rnd_08_gen|state_03\(30)) # (!\rnd_08_gen|state_03\(4))))) # (!\rnd_08_gen|state_03\(40) & (\rnd_08_gen|state_03\(23) & ((!\rnd_08_gen|state_03\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(40),
	datab => \rnd_08_gen|state_03\(23),
	datac => \rnd_08_gen|state_03\(4),
	datad => \rnd_08_gen|state_03\(30),
	combout => \rnd_08_gen|Mux164~0_combout\);

\rnd_08_gen|state_04[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux164~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(20));

\rnd_08_gen|Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux63~0_combout\ = (\rnd_08_gen|state_01\(21) & ((\rnd_08_gen|state_01\(36) $ (\rnd_08_gen|state_01\(45))))) # (!\rnd_08_gen|state_01\(21) & ((\rnd_08_gen|state_01\(5) & ((!\rnd_08_gen|state_01\(45)))) # (!\rnd_08_gen|state_01\(5) & 
-- (!\rnd_08_gen|state_01\(36)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(21),
	datab => \rnd_08_gen|state_01\(5),
	datac => \rnd_08_gen|state_01\(36),
	datad => \rnd_08_gen|state_01\(45),
	combout => \rnd_08_gen|Mux63~0_combout\);

\rnd_08_gen|state_02[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux63~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(15));

\rnd_08_gen|Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux48~0_combout\ = (\rnd_08_gen|state_01\(25) & ((\rnd_08_gen|state_01\(16) & (!\rnd_08_gen|state_01\(28))) # (!\rnd_08_gen|state_01\(16) & ((\rnd_08_gen|state_01\(6)))))) # (!\rnd_08_gen|state_01\(25) & ((\rnd_08_gen|state_01\(28) $ 
-- (!\rnd_08_gen|state_01\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(25),
	datab => \rnd_08_gen|state_01\(16),
	datac => \rnd_08_gen|state_01\(28),
	datad => \rnd_08_gen|state_01\(6),
	combout => \rnd_08_gen|Mux48~0_combout\);

\rnd_08_gen|state_02[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux48~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(0));

\rnd_08_gen|Mux59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux59~0_combout\ = (\rnd_08_gen|state_01\(37) & (\rnd_08_gen|state_01\(29) $ (\rnd_08_gen|state_01\(33) $ (!\rnd_08_gen|state_01\(34))))) # (!\rnd_08_gen|state_01\(37) & ((\rnd_08_gen|state_01\(34) & (!\rnd_08_gen|state_01\(29))) # 
-- (!\rnd_08_gen|state_01\(34) & ((\rnd_08_gen|state_01\(33))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(29),
	datab => \rnd_08_gen|state_01\(37),
	datac => \rnd_08_gen|state_01\(33),
	datad => \rnd_08_gen|state_01\(34),
	combout => \rnd_08_gen|Mux59~0_combout\);

\rnd_08_gen|state_02[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux59~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(11));

\rnd_08_gen|Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux56~0_combout\ = (\rnd_08_gen|state_01\(29) & ((\rnd_08_gen|state_01\(37) $ (!\rnd_08_gen|state_01\(34))) # (!\rnd_08_gen|state_01\(33)))) # (!\rnd_08_gen|state_01\(29) & (!\rnd_08_gen|state_01\(33) & (\rnd_08_gen|state_01\(37) $ 
-- (\rnd_08_gen|state_01\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_01\(29),
	datab => \rnd_08_gen|state_01\(37),
	datac => \rnd_08_gen|state_01\(33),
	datad => \rnd_08_gen|state_01\(34),
	combout => \rnd_08_gen|Mux56~0_combout\);

\rnd_08_gen|state_02[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux56~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_02\(8));

\rnd_08_gen|Mux109~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux109~0_combout\ = (\rnd_08_gen|state_02\(15) & ((\rnd_08_gen|state_02\(11) & (!\rnd_08_gen|state_02\(0) & \rnd_08_gen|state_02\(8))) # (!\rnd_08_gen|state_02\(11) & ((!\rnd_08_gen|state_02\(8)))))) # (!\rnd_08_gen|state_02\(15) & 
-- ((\rnd_08_gen|state_02\(11) & ((!\rnd_08_gen|state_02\(8)))) # (!\rnd_08_gen|state_02\(11) & ((\rnd_08_gen|state_02\(8)) # (!\rnd_08_gen|state_02\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010101011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(15),
	datab => \rnd_08_gen|state_02\(0),
	datac => \rnd_08_gen|state_02\(11),
	datad => \rnd_08_gen|state_02\(8),
	combout => \rnd_08_gen|Mux109~0_combout\);

\rnd_08_gen|state_03[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux109~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(13));

\rnd_08_gen|Mux134~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux134~0_combout\ = \rnd_08_gen|state_02\(31) $ (((\rnd_08_gen|state_02\(13) & ((\rnd_08_gen|state_02\(32)) # (\rnd_08_gen|state_02\(4)))) # (!\rnd_08_gen|state_02\(13) & ((!\rnd_08_gen|state_02\(4)) # (!\rnd_08_gen|state_02\(32))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(31),
	datab => \rnd_08_gen|state_02\(13),
	datac => \rnd_08_gen|state_02\(32),
	datad => \rnd_08_gen|state_02\(4),
	combout => \rnd_08_gen|Mux134~0_combout\);

\rnd_08_gen|state_03[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux134~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(38));

\rnd_08_gen|Mux112~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux112~0_combout\ = (\rnd_08_gen|state_02\(41) & ((\rnd_08_gen|state_02\(45) & ((\rnd_08_gen|state_02\(33)) # (!\rnd_08_gen|state_02\(14)))) # (!\rnd_08_gen|state_02\(45) & (\rnd_08_gen|state_02\(33) & !\rnd_08_gen|state_02\(14))))) # 
-- (!\rnd_08_gen|state_02\(41) & (\rnd_08_gen|state_02\(45) $ (((!\rnd_08_gen|state_02\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(41),
	datab => \rnd_08_gen|state_02\(45),
	datac => \rnd_08_gen|state_02\(33),
	datad => \rnd_08_gen|state_02\(14),
	combout => \rnd_08_gen|Mux112~0_combout\);

\rnd_08_gen|state_03[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux112~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(16));

\rnd_08_gen|Mux97~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux97~0_combout\ = (\rnd_08_gen|state_02\(30) & (!\rnd_08_gen|state_02\(12) & (!\rnd_08_gen|state_02\(18)))) # (!\rnd_08_gen|state_02\(30) & ((\rnd_08_gen|state_02\(12) $ (\rnd_08_gen|state_02\(18))) # (!\rnd_08_gen|state_02\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(30),
	datab => \rnd_08_gen|state_02\(12),
	datac => \rnd_08_gen|state_02\(18),
	datad => \rnd_08_gen|state_02\(21),
	combout => \rnd_08_gen|Mux97~0_combout\);

\rnd_08_gen|state_03[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux97~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(1));

\rnd_08_gen|Mux169~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux169~0_combout\ = (\rnd_08_gen|state_03\(13) & (\rnd_08_gen|state_03\(1) $ (((\rnd_08_gen|state_03\(38)) # (!\rnd_08_gen|state_03\(16)))))) # (!\rnd_08_gen|state_03\(13) & ((\rnd_08_gen|state_03\(1) & ((\rnd_08_gen|state_03\(16)))) # 
-- (!\rnd_08_gen|state_03\(1) & (\rnd_08_gen|state_03\(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(13),
	datab => \rnd_08_gen|state_03\(38),
	datac => \rnd_08_gen|state_03\(16),
	datad => \rnd_08_gen|state_03\(1),
	combout => \rnd_08_gen|Mux169~0_combout\);

\rnd_08_gen|state_04[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux169~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(25));

\rnd_08_gen|Mux204~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux204~0_combout\ = (\rnd_08_gen|state_04\(16) & ((\rnd_08_gen|state_04\(10)) # ((!\rnd_08_gen|state_04\(20) & !\rnd_08_gen|state_04\(25))))) # (!\rnd_08_gen|state_04\(16) & (\rnd_08_gen|state_04\(25) & ((!\rnd_08_gen|state_04\(20)) # 
-- (!\rnd_08_gen|state_04\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(16),
	datab => \rnd_08_gen|state_04\(10),
	datac => \rnd_08_gen|state_04\(20),
	datad => \rnd_08_gen|state_04\(25),
	combout => \rnd_08_gen|Mux204~0_combout\);

\rnd_08_gen|state_05[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux204~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(12));

\rnd_08_gen|Mux168~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux168~0_combout\ = (\rnd_08_gen|state_03\(13) & (((\rnd_08_gen|state_03\(16) & !\rnd_08_gen|state_03\(1))) # (!\rnd_08_gen|state_03\(38)))) # (!\rnd_08_gen|state_03\(13) & ((\rnd_08_gen|state_03\(38) & (!\rnd_08_gen|state_03\(16))) # 
-- (!\rnd_08_gen|state_03\(38) & (\rnd_08_gen|state_03\(16) & !\rnd_08_gen|state_03\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(13),
	datab => \rnd_08_gen|state_03\(38),
	datac => \rnd_08_gen|state_03\(16),
	datad => \rnd_08_gen|state_03\(1),
	combout => \rnd_08_gen|Mux168~0_combout\);

\rnd_08_gen|state_04[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux168~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(24));

\rnd_08_gen|Mux123~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux123~0_combout\ = (\rnd_08_gen|state_02\(28) & (((!\rnd_08_gen|state_02\(46) & \rnd_08_gen|state_02\(10))))) # (!\rnd_08_gen|state_02\(28) & ((\rnd_08_gen|state_02\(47)) # ((\rnd_08_gen|state_02\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(28),
	datab => \rnd_08_gen|state_02\(47),
	datac => \rnd_08_gen|state_02\(46),
	datad => \rnd_08_gen|state_02\(10),
	combout => \rnd_08_gen|Mux123~0_combout\);

\rnd_08_gen|state_03[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux123~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(27));

\rnd_08_gen|Mux115~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux115~0_combout\ = (\rnd_08_gen|state_02\(41) & (\rnd_08_gen|state_02\(45) $ (((!\rnd_08_gen|state_02\(14)) # (!\rnd_08_gen|state_02\(33)))))) # (!\rnd_08_gen|state_02\(41) & ((\rnd_08_gen|state_02\(33) & (\rnd_08_gen|state_02\(45))) # 
-- (!\rnd_08_gen|state_02\(33) & ((\rnd_08_gen|state_02\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(41),
	datab => \rnd_08_gen|state_02\(45),
	datac => \rnd_08_gen|state_02\(33),
	datad => \rnd_08_gen|state_02\(14),
	combout => \rnd_08_gen|Mux115~0_combout\);

\rnd_08_gen|state_03[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux115~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(19));

\rnd_08_gen|Mux131~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux131~0_combout\ = (\rnd_08_gen|state_02\(22) & (\rnd_08_gen|state_02\(7) & ((!\rnd_08_gen|state_02\(24)) # (!\rnd_08_gen|state_02\(19))))) # (!\rnd_08_gen|state_02\(22) & ((\rnd_08_gen|state_02\(7) & (\rnd_08_gen|state_02\(19))) # 
-- (!\rnd_08_gen|state_02\(7) & ((!\rnd_08_gen|state_02\(24)) # (!\rnd_08_gen|state_02\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100111011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(22),
	datab => \rnd_08_gen|state_02\(7),
	datac => \rnd_08_gen|state_02\(19),
	datad => \rnd_08_gen|state_02\(24),
	combout => \rnd_08_gen|Mux131~0_combout\);

\rnd_08_gen|state_03[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux131~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(35));

\rnd_08_gen|Mux124~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux124~0_combout\ = (\rnd_08_gen|state_02\(29) & (\rnd_08_gen|state_02\(40) $ (((\rnd_08_gen|state_02\(37)) # (\rnd_08_gen|state_02\(9)))))) # (!\rnd_08_gen|state_02\(29) & ((\rnd_08_gen|state_02\(9) & (!\rnd_08_gen|state_02\(37))) # 
-- (!\rnd_08_gen|state_02\(9) & ((!\rnd_08_gen|state_02\(40))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010101100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(37),
	datab => \rnd_08_gen|state_02\(40),
	datac => \rnd_08_gen|state_02\(29),
	datad => \rnd_08_gen|state_02\(9),
	combout => \rnd_08_gen|Mux124~0_combout\);

\rnd_08_gen|state_03[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux124~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(28));

\rnd_08_gen|Mux175~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux175~0_combout\ = (\rnd_08_gen|state_03\(27) & (\rnd_08_gen|state_03\(19) $ (((\rnd_08_gen|state_03\(35)) # (\rnd_08_gen|state_03\(28)))))) # (!\rnd_08_gen|state_03\(27) & ((\rnd_08_gen|state_03\(19) & (!\rnd_08_gen|state_03\(35))) # 
-- (!\rnd_08_gen|state_03\(19) & ((!\rnd_08_gen|state_03\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(27),
	datab => \rnd_08_gen|state_03\(19),
	datac => \rnd_08_gen|state_03\(35),
	datad => \rnd_08_gen|state_03\(28),
	combout => \rnd_08_gen|Mux175~0_combout\);

\rnd_08_gen|state_04[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux175~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(31));

\rnd_08_gen|Mux101~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux101~0_combout\ = (\rnd_08_gen|state_02\(43) & ((\rnd_08_gen|state_02\(44) & (!\rnd_08_gen|state_02\(39))) # (!\rnd_08_gen|state_02\(44) & ((\rnd_08_gen|state_02\(36)))))) # (!\rnd_08_gen|state_02\(43) & (((\rnd_08_gen|state_02\(36)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(43),
	datab => \rnd_08_gen|state_02\(44),
	datac => \rnd_08_gen|state_02\(39),
	datad => \rnd_08_gen|state_02\(36),
	combout => \rnd_08_gen|Mux101~0_combout\);

\rnd_08_gen|state_03[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux101~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(5));

\rnd_08_gen|Mux111~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux111~0_combout\ = (\rnd_08_gen|state_02\(15) & (!\rnd_08_gen|state_02\(0) & ((\rnd_08_gen|state_02\(11)) # (!\rnd_08_gen|state_02\(8))))) # (!\rnd_08_gen|state_02\(15) & ((\rnd_08_gen|state_02\(0) & ((\rnd_08_gen|state_02\(11)) # 
-- (!\rnd_08_gen|state_02\(8)))) # (!\rnd_08_gen|state_02\(0) & ((\rnd_08_gen|state_02\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(15),
	datab => \rnd_08_gen|state_02\(0),
	datac => \rnd_08_gen|state_02\(11),
	datad => \rnd_08_gen|state_02\(8),
	combout => \rnd_08_gen|Mux111~0_combout\);

\rnd_08_gen|state_03[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux111~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(15));

\rnd_08_gen|Mux140~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux140~0_combout\ = (\rnd_08_gen|state_02\(2) & (\rnd_08_gen|state_02\(26) $ ((\rnd_08_gen|state_02\(17))))) # (!\rnd_08_gen|state_02\(2) & ((\rnd_08_gen|state_02\(26) & ((!\rnd_08_gen|state_02\(6)) # (!\rnd_08_gen|state_02\(17)))) # 
-- (!\rnd_08_gen|state_02\(26) & (!\rnd_08_gen|state_02\(17) & !\rnd_08_gen|state_02\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110001101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(2),
	datab => \rnd_08_gen|state_02\(26),
	datac => \rnd_08_gen|state_02\(17),
	datad => \rnd_08_gen|state_02\(6),
	combout => \rnd_08_gen|Mux140~0_combout\);

\rnd_08_gen|state_03[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux140~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(44));

\rnd_08_gen|Mux129~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux129~0_combout\ = (\rnd_08_gen|state_02\(7) & ((\rnd_08_gen|state_02\(19)) # (\rnd_08_gen|state_02\(22) $ (\rnd_08_gen|state_02\(24))))) # (!\rnd_08_gen|state_02\(7) & (\rnd_08_gen|state_02\(22) & (\rnd_08_gen|state_02\(19) $ 
-- (\rnd_08_gen|state_02\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(22),
	datab => \rnd_08_gen|state_02\(7),
	datac => \rnd_08_gen|state_02\(19),
	datad => \rnd_08_gen|state_02\(24),
	combout => \rnd_08_gen|Mux129~0_combout\);

\rnd_08_gen|state_03[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux129~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(33));

\rnd_08_gen|Mux185~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux185~0_combout\ = (\rnd_08_gen|state_03\(5) & (\rnd_08_gen|state_03\(15) $ (((\rnd_08_gen|state_03\(44)) # (!\rnd_08_gen|state_03\(33)))))) # (!\rnd_08_gen|state_03\(5) & (\rnd_08_gen|state_03\(44) $ (((!\rnd_08_gen|state_03\(15) & 
-- !\rnd_08_gen|state_03\(33))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(5),
	datab => \rnd_08_gen|state_03\(15),
	datac => \rnd_08_gen|state_03\(44),
	datad => \rnd_08_gen|state_03\(33),
	combout => \rnd_08_gen|Mux185~0_combout\);

\rnd_08_gen|state_04[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux185~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(41));

\rnd_08_gen|Mux137~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux137~0_combout\ = (\rnd_08_gen|state_02\(23) & ((\rnd_08_gen|state_02\(3) & (\rnd_08_gen|state_02\(42) & !\rnd_08_gen|state_02\(5))) # (!\rnd_08_gen|state_02\(3) & ((\rnd_08_gen|state_02\(42)) # (!\rnd_08_gen|state_02\(5)))))) # 
-- (!\rnd_08_gen|state_02\(23) & (\rnd_08_gen|state_02\(5) $ (((\rnd_08_gen|state_02\(3) & !\rnd_08_gen|state_02\(42))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(23),
	datab => \rnd_08_gen|state_02\(3),
	datac => \rnd_08_gen|state_02\(42),
	datad => \rnd_08_gen|state_02\(5),
	combout => \rnd_08_gen|Mux137~0_combout\);

\rnd_08_gen|state_03[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux137~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(41));

\rnd_08_gen|Mux138~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux138~0_combout\ = (\rnd_08_gen|state_02\(3) & ((\rnd_08_gen|state_02\(42) & (\rnd_08_gen|state_02\(23))) # (!\rnd_08_gen|state_02\(42) & ((!\rnd_08_gen|state_02\(5)))))) # (!\rnd_08_gen|state_02\(3) & ((\rnd_08_gen|state_02\(5) & 
-- (\rnd_08_gen|state_02\(23))) # (!\rnd_08_gen|state_02\(5) & ((!\rnd_08_gen|state_02\(42))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(23),
	datab => \rnd_08_gen|state_02\(3),
	datac => \rnd_08_gen|state_02\(42),
	datad => \rnd_08_gen|state_02\(5),
	combout => \rnd_08_gen|Mux138~0_combout\);

\rnd_08_gen|state_03[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux138~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(42));

\rnd_08_gen|Mux125~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux125~0_combout\ = (\rnd_08_gen|state_02\(40) & ((\rnd_08_gen|state_02\(29) & ((\rnd_08_gen|state_02\(9)))) # (!\rnd_08_gen|state_02\(29) & (\rnd_08_gen|state_02\(37))))) # (!\rnd_08_gen|state_02\(40) & (\rnd_08_gen|state_02\(9) $ 
-- (((\rnd_08_gen|state_02\(37)) # (!\rnd_08_gen|state_02\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(37),
	datab => \rnd_08_gen|state_02\(40),
	datac => \rnd_08_gen|state_02\(29),
	datad => \rnd_08_gen|state_02\(9),
	combout => \rnd_08_gen|Mux125~0_combout\);

\rnd_08_gen|state_03[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux125~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(29));

\rnd_08_gen|Mux120~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux120~0_combout\ = (\rnd_08_gen|state_02\(10) & ((\rnd_08_gen|state_02\(28) $ (!\rnd_08_gen|state_02\(47))) # (!\rnd_08_gen|state_02\(46)))) # (!\rnd_08_gen|state_02\(10) & (!\rnd_08_gen|state_02\(47) & (\rnd_08_gen|state_02\(28) $ 
-- (!\rnd_08_gen|state_02\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(28),
	datab => \rnd_08_gen|state_02\(47),
	datac => \rnd_08_gen|state_02\(46),
	datad => \rnd_08_gen|state_02\(10),
	combout => \rnd_08_gen|Mux120~0_combout\);

\rnd_08_gen|state_03[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux120~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(24));

\rnd_08_gen|Mux188~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux188~0_combout\ = (\rnd_08_gen|state_03\(41) & (\rnd_08_gen|state_03\(42) & (!\rnd_08_gen|state_03\(29) & \rnd_08_gen|state_03\(24)))) # (!\rnd_08_gen|state_03\(41) & ((\rnd_08_gen|state_03\(42)) # ((!\rnd_08_gen|state_03\(24)) # 
-- (!\rnd_08_gen|state_03\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(41),
	datab => \rnd_08_gen|state_03\(42),
	datac => \rnd_08_gen|state_03\(29),
	datad => \rnd_08_gen|state_03\(24),
	combout => \rnd_08_gen|Mux188~0_combout\);

\rnd_08_gen|state_04[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux188~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(44));

\rnd_08_gen|Mux221~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux221~0_combout\ = (\rnd_08_gen|state_04\(24) & ((\rnd_08_gen|state_04\(31) & ((!\rnd_08_gen|state_04\(44)))) # (!\rnd_08_gen|state_04\(31) & (!\rnd_08_gen|state_04\(41))))) # (!\rnd_08_gen|state_04\(24) & ((\rnd_08_gen|state_04\(31) & 
-- (\rnd_08_gen|state_04\(41))) # (!\rnd_08_gen|state_04\(31) & ((\rnd_08_gen|state_04\(44))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(24),
	datab => \rnd_08_gen|state_04\(31),
	datac => \rnd_08_gen|state_04\(41),
	datad => \rnd_08_gen|state_04\(44),
	combout => \rnd_08_gen|Mux221~0_combout\);

\rnd_08_gen|state_05[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux221~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(29));

\rnd_08_gen|Mux223~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux223~0_combout\ = (\rnd_08_gen|state_04\(31) & (\rnd_08_gen|state_04\(24) $ (((\rnd_08_gen|state_04\(41) & !\rnd_08_gen|state_04\(44)))))) # (!\rnd_08_gen|state_04\(31) & (\rnd_08_gen|state_04\(44) $ (((!\rnd_08_gen|state_04\(24) & 
-- !\rnd_08_gen|state_04\(41))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(24),
	datab => \rnd_08_gen|state_04\(31),
	datac => \rnd_08_gen|state_04\(41),
	datad => \rnd_08_gen|state_04\(44),
	combout => \rnd_08_gen|Mux223~0_combout\);

\rnd_08_gen|state_05[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux223~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(31));

\rnd_08_gen|Mux252~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux252~0_combout\ = (\rnd_08_gen|state_05\(41) & (!\rnd_08_gen|state_05\(12) & ((\rnd_08_gen|state_05\(31)) # (!\rnd_08_gen|state_05\(29))))) # (!\rnd_08_gen|state_05\(41) & ((\rnd_08_gen|state_05\(12) & ((\rnd_08_gen|state_05\(31)) # 
-- (!\rnd_08_gen|state_05\(29)))) # (!\rnd_08_gen|state_05\(12) & (\rnd_08_gen|state_05\(29) $ (\rnd_08_gen|state_05\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(41),
	datab => \rnd_08_gen|state_05\(12),
	datac => \rnd_08_gen|state_05\(29),
	datad => \rnd_08_gen|state_05\(31),
	combout => \rnd_08_gen|Mux252~0_combout\);

\rnd_08_gen|state_06[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux252~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(12));

\rnd_08_gen|Mux162~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux162~0_combout\ = (\rnd_08_gen|state_03\(6) & ((\rnd_08_gen|state_03\(21)) # ((\rnd_08_gen|state_03\(3) & !\rnd_08_gen|state_03\(32))))) # (!\rnd_08_gen|state_03\(6) & (\rnd_08_gen|state_03\(32) & ((!\rnd_08_gen|state_03\(21)) # 
-- (!\rnd_08_gen|state_03\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(6),
	datab => \rnd_08_gen|state_03\(3),
	datac => \rnd_08_gen|state_03\(21),
	datad => \rnd_08_gen|state_03\(32),
	combout => \rnd_08_gen|Mux162~0_combout\);

\rnd_08_gen|state_04[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux162~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(18));

\rnd_08_gen|Mux170~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux170~0_combout\ = (\rnd_08_gen|state_03\(13) & (\rnd_08_gen|state_03\(38) $ ((\rnd_08_gen|state_03\(16))))) # (!\rnd_08_gen|state_03\(13) & (\rnd_08_gen|state_03\(1) $ (((!\rnd_08_gen|state_03\(16)) # (!\rnd_08_gen|state_03\(38))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(13),
	datab => \rnd_08_gen|state_03\(38),
	datac => \rnd_08_gen|state_03\(16),
	datad => \rnd_08_gen|state_03\(1),
	combout => \rnd_08_gen|Mux170~0_combout\);

\rnd_08_gen|state_04[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux170~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(26));

\rnd_08_gen|Mux158~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux158~0_combout\ = (\rnd_08_gen|state_03\(10) & (\rnd_08_gen|state_03\(7) & ((!\rnd_08_gen|state_03\(43))))) # (!\rnd_08_gen|state_03\(10) & (((\rnd_08_gen|state_03\(36)) # (!\rnd_08_gen|state_03\(43)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(7),
	datab => \rnd_08_gen|state_03\(36),
	datac => \rnd_08_gen|state_03\(10),
	datad => \rnd_08_gen|state_03\(43),
	combout => \rnd_08_gen|Mux158~0_combout\);

\rnd_08_gen|state_04[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux158~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(14));

\rnd_08_gen|Mux110~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux110~0_combout\ = (\rnd_08_gen|state_02\(8) & (!\rnd_08_gen|state_02\(0) & ((\rnd_08_gen|state_02\(15)) # (!\rnd_08_gen|state_02\(11))))) # (!\rnd_08_gen|state_02\(8) & ((\rnd_08_gen|state_02\(15) & ((\rnd_08_gen|state_02\(11)))) # 
-- (!\rnd_08_gen|state_02\(15) & ((!\rnd_08_gen|state_02\(11)) # (!\rnd_08_gen|state_02\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(15),
	datab => \rnd_08_gen|state_02\(0),
	datac => \rnd_08_gen|state_02\(11),
	datad => \rnd_08_gen|state_02\(8),
	combout => \rnd_08_gen|Mux110~0_combout\);

\rnd_08_gen|state_03[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux110~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(14));

\rnd_08_gen|Mux114~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux114~0_combout\ = \rnd_08_gen|state_02\(33) $ (((\rnd_08_gen|state_02\(41) & (!\rnd_08_gen|state_02\(45))) # (!\rnd_08_gen|state_02\(41) & ((!\rnd_08_gen|state_02\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(41),
	datab => \rnd_08_gen|state_02\(45),
	datac => \rnd_08_gen|state_02\(33),
	datad => \rnd_08_gen|state_02\(14),
	combout => \rnd_08_gen|Mux114~0_combout\);

\rnd_08_gen|state_03[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux114~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(18));

\rnd_08_gen|Mux104~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux104~0_combout\ = (\rnd_08_gen|state_02\(16) & ((\rnd_08_gen|state_02\(20)) # (\rnd_08_gen|state_02\(35) $ (!\rnd_08_gen|state_02\(25))))) # (!\rnd_08_gen|state_02\(16) & (\rnd_08_gen|state_02\(25) & (\rnd_08_gen|state_02\(20) $ 
-- (!\rnd_08_gen|state_02\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(20),
	datab => \rnd_08_gen|state_02\(35),
	datac => \rnd_08_gen|state_02\(16),
	datad => \rnd_08_gen|state_02\(25),
	combout => \rnd_08_gen|Mux104~0_combout\);

\rnd_08_gen|state_03[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux104~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(8));

\rnd_08_gen|Mux121~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux121~0_combout\ = \rnd_08_gen|state_02\(46) $ (((\rnd_08_gen|state_02\(47) & ((!\rnd_08_gen|state_02\(10)) # (!\rnd_08_gen|state_02\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(28),
	datab => \rnd_08_gen|state_02\(47),
	datac => \rnd_08_gen|state_02\(46),
	datad => \rnd_08_gen|state_02\(10),
	combout => \rnd_08_gen|Mux121~0_combout\);

\rnd_08_gen|state_03[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux121~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(25));

\rnd_08_gen|Mux182~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux182~0_combout\ = (\rnd_08_gen|state_03\(18) & (((!\rnd_08_gen|state_03\(8) & \rnd_08_gen|state_03\(25))) # (!\rnd_08_gen|state_03\(14)))) # (!\rnd_08_gen|state_03\(18) & (!\rnd_08_gen|state_03\(25) & ((\rnd_08_gen|state_03\(14)) # 
-- (!\rnd_08_gen|state_03\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(14),
	datab => \rnd_08_gen|state_03\(18),
	datac => \rnd_08_gen|state_03\(8),
	datad => \rnd_08_gen|state_03\(25),
	combout => \rnd_08_gen|Mux182~0_combout\);

\rnd_08_gen|state_04[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux182~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(38));

\rnd_08_gen|Mux216~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux216~0_combout\ = (\rnd_08_gen|state_04\(14) & (\rnd_08_gen|state_04\(18) $ ((\rnd_08_gen|state_04\(26))))) # (!\rnd_08_gen|state_04\(14) & (\rnd_08_gen|state_04\(38) $ (((!\rnd_08_gen|state_04\(18) & \rnd_08_gen|state_04\(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(18),
	datab => \rnd_08_gen|state_04\(26),
	datac => \rnd_08_gen|state_04\(14),
	datad => \rnd_08_gen|state_04\(38),
	combout => \rnd_08_gen|Mux216~0_combout\);

\rnd_08_gen|state_05[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux216~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(24));

\rnd_08_gen|Mux145~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux145~0_combout\ = (\rnd_08_gen|state_03\(47) & ((\rnd_08_gen|state_03\(34) & ((\rnd_08_gen|state_03\(46)))) # (!\rnd_08_gen|state_03\(34) & (\rnd_08_gen|state_03\(9))))) # (!\rnd_08_gen|state_03\(47) & (\rnd_08_gen|state_03\(9) $ 
-- (((\rnd_08_gen|state_03\(46))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(9),
	datab => \rnd_08_gen|state_03\(34),
	datac => \rnd_08_gen|state_03\(47),
	datad => \rnd_08_gen|state_03\(46),
	combout => \rnd_08_gen|Mux145~0_combout\);

\rnd_08_gen|state_04[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux145~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(1));

\rnd_08_gen|Mux156~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux156~0_combout\ = (\rnd_08_gen|state_03\(36) & (((!\rnd_08_gen|state_03\(10) & \rnd_08_gen|state_03\(43))) # (!\rnd_08_gen|state_03\(7)))) # (!\rnd_08_gen|state_03\(36) & (\rnd_08_gen|state_03\(10) & ((!\rnd_08_gen|state_03\(43)) # 
-- (!\rnd_08_gen|state_03\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(7),
	datab => \rnd_08_gen|state_03\(36),
	datac => \rnd_08_gen|state_03\(10),
	datad => \rnd_08_gen|state_03\(43),
	combout => \rnd_08_gen|Mux156~0_combout\);

\rnd_08_gen|state_04[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux156~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(12));

\rnd_08_gen|Mux166~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux166~0_combout\ = (\rnd_08_gen|state_03\(40) & (!\rnd_08_gen|state_03\(23) & ((\rnd_08_gen|state_03\(4)) # (!\rnd_08_gen|state_03\(30))))) # (!\rnd_08_gen|state_03\(40) & ((\rnd_08_gen|state_03\(23) & ((\rnd_08_gen|state_03\(4)) # 
-- (!\rnd_08_gen|state_03\(30)))) # (!\rnd_08_gen|state_03\(23) & (!\rnd_08_gen|state_03\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(40),
	datab => \rnd_08_gen|state_03\(23),
	datac => \rnd_08_gen|state_03\(4),
	datad => \rnd_08_gen|state_03\(30),
	combout => \rnd_08_gen|Mux166~0_combout\);

\rnd_08_gen|state_04[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux166~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(22));

\rnd_08_gen|Mux153~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux153~0_combout\ = (\rnd_08_gen|state_03\(17) & (!\rnd_08_gen|state_03\(26))) # (!\rnd_08_gen|state_03\(17) & ((\rnd_08_gen|state_03\(0) & (!\rnd_08_gen|state_03\(26))) # (!\rnd_08_gen|state_03\(0) & ((!\rnd_08_gen|state_03\(39))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(17),
	datab => \rnd_08_gen|state_03\(26),
	datac => \rnd_08_gen|state_03\(39),
	datad => \rnd_08_gen|state_03\(0),
	combout => \rnd_08_gen|Mux153~0_combout\);

\rnd_08_gen|state_04[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux153~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(9));

\rnd_08_gen|Mux213~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux213~0_combout\ = (\rnd_08_gen|state_04\(12) & (!\rnd_08_gen|state_04\(1) & (!\rnd_08_gen|state_04\(22)))) # (!\rnd_08_gen|state_04\(12) & ((\rnd_08_gen|state_04\(1) $ (!\rnd_08_gen|state_04\(9))) # (!\rnd_08_gen|state_04\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(1),
	datab => \rnd_08_gen|state_04\(12),
	datac => \rnd_08_gen|state_04\(22),
	datad => \rnd_08_gen|state_04\(9),
	combout => \rnd_08_gen|Mux213~0_combout\);

\rnd_08_gen|state_05[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux213~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(21));

\rnd_08_gen|Mux220~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux220~0_combout\ = \rnd_08_gen|state_04\(31) $ (((\rnd_08_gen|state_04\(24) & (!\rnd_08_gen|state_04\(41) & \rnd_08_gen|state_04\(44))) # (!\rnd_08_gen|state_04\(24) & ((!\rnd_08_gen|state_04\(44))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(24),
	datab => \rnd_08_gen|state_04\(31),
	datac => \rnd_08_gen|state_04\(41),
	datad => \rnd_08_gen|state_04\(44),
	combout => \rnd_08_gen|Mux220~0_combout\);

\rnd_08_gen|state_05[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux220~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(28));

\rnd_08_gen|Mux147~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux147~0_combout\ = (\rnd_08_gen|state_03\(9) & (((\rnd_08_gen|state_03\(47))))) # (!\rnd_08_gen|state_03\(9) & ((\rnd_08_gen|state_03\(34) & (!\rnd_08_gen|state_03\(47))) # (!\rnd_08_gen|state_03\(34) & ((!\rnd_08_gen|state_03\(46))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(9),
	datab => \rnd_08_gen|state_03\(34),
	datac => \rnd_08_gen|state_03\(47),
	datad => \rnd_08_gen|state_03\(46),
	combout => \rnd_08_gen|Mux147~0_combout\);

\rnd_08_gen|state_04[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux147~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(3));

\rnd_08_gen|Mux152~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux152~0_combout\ = (\rnd_08_gen|state_03\(0) & (\rnd_08_gen|state_03\(17) $ (((\rnd_08_gen|state_03\(26) & \rnd_08_gen|state_03\(39)))))) # (!\rnd_08_gen|state_03\(0) & ((\rnd_08_gen|state_03\(17) & (\rnd_08_gen|state_03\(26))) # 
-- (!\rnd_08_gen|state_03\(17) & ((!\rnd_08_gen|state_03\(39))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(17),
	datab => \rnd_08_gen|state_03\(26),
	datac => \rnd_08_gen|state_03\(39),
	datad => \rnd_08_gen|state_03\(0),
	combout => \rnd_08_gen|Mux152~0_combout\);

\rnd_08_gen|state_04[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux152~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(8));

\rnd_08_gen|Mux107~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux107~0_combout\ = \rnd_08_gen|state_02\(25) $ (((\rnd_08_gen|state_02\(20) & ((\rnd_08_gen|state_02\(35)) # (\rnd_08_gen|state_02\(16)))) # (!\rnd_08_gen|state_02\(20) & (!\rnd_08_gen|state_02\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(20),
	datab => \rnd_08_gen|state_02\(35),
	datac => \rnd_08_gen|state_02\(16),
	datad => \rnd_08_gen|state_02\(25),
	combout => \rnd_08_gen|Mux107~0_combout\);

\rnd_08_gen|state_03[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux107~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(11));

\rnd_08_gen|Mux98~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux98~0_combout\ = (\rnd_08_gen|state_02\(12) & (\rnd_08_gen|state_02\(21) $ (((\rnd_08_gen|state_02\(30)) # (!\rnd_08_gen|state_02\(18)))))) # (!\rnd_08_gen|state_02\(12) & (\rnd_08_gen|state_02\(30) $ (((\rnd_08_gen|state_02\(18) & 
-- !\rnd_08_gen|state_02\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001010011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(30),
	datab => \rnd_08_gen|state_02\(12),
	datac => \rnd_08_gen|state_02\(18),
	datad => \rnd_08_gen|state_02\(21),
	combout => \rnd_08_gen|Mux98~0_combout\);

\rnd_08_gen|state_03[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux98~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(2));

\rnd_08_gen|Mux118~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux118~0_combout\ = (\rnd_08_gen|state_02\(1) & (\rnd_08_gen|state_02\(34) & (\rnd_08_gen|state_02\(38) $ (!\rnd_08_gen|state_02\(27))))) # (!\rnd_08_gen|state_02\(1) & ((\rnd_08_gen|state_02\(27)) # (\rnd_08_gen|state_02\(34) $ 
-- (!\rnd_08_gen|state_02\(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(34),
	datab => \rnd_08_gen|state_02\(38),
	datac => \rnd_08_gen|state_02\(1),
	datad => \rnd_08_gen|state_02\(27),
	combout => \rnd_08_gen|Mux118~0_combout\);

\rnd_08_gen|state_03[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux118~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(22));

\rnd_08_gen|Mux133~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux133~0_combout\ = (\rnd_08_gen|state_02\(13) & ((\rnd_08_gen|state_02\(32) & ((\rnd_08_gen|state_02\(4)))) # (!\rnd_08_gen|state_02\(32) & (\rnd_08_gen|state_02\(31))))) # (!\rnd_08_gen|state_02\(13) & (\rnd_08_gen|state_02\(31) $ 
-- (((\rnd_08_gen|state_02\(32)) # (\rnd_08_gen|state_02\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(31),
	datab => \rnd_08_gen|state_02\(13),
	datac => \rnd_08_gen|state_02\(32),
	datad => \rnd_08_gen|state_02\(4),
	combout => \rnd_08_gen|Mux133~0_combout\);

\rnd_08_gen|state_03[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux133~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(37));

\rnd_08_gen|Mux148~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux148~0_combout\ = (\rnd_08_gen|state_03\(11) & ((\rnd_08_gen|state_03\(2) $ (!\rnd_08_gen|state_03\(22))) # (!\rnd_08_gen|state_03\(37)))) # (!\rnd_08_gen|state_03\(11) & (!\rnd_08_gen|state_03\(2) & (!\rnd_08_gen|state_03\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(11),
	datab => \rnd_08_gen|state_03\(2),
	datac => \rnd_08_gen|state_03\(22),
	datad => \rnd_08_gen|state_03\(37),
	combout => \rnd_08_gen|Mux148~0_combout\);

\rnd_08_gen|state_04[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux148~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(4));

\rnd_08_gen|Mux167~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux167~0_combout\ = (\rnd_08_gen|state_03\(40) & (\rnd_08_gen|state_03\(30) $ (((!\rnd_08_gen|state_03\(23) & !\rnd_08_gen|state_03\(4)))))) # (!\rnd_08_gen|state_03\(40) & ((\rnd_08_gen|state_03\(30) & ((\rnd_08_gen|state_03\(4)))) # 
-- (!\rnd_08_gen|state_03\(30) & (!\rnd_08_gen|state_03\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(40),
	datab => \rnd_08_gen|state_03\(23),
	datac => \rnd_08_gen|state_03\(4),
	datad => \rnd_08_gen|state_03\(30),
	combout => \rnd_08_gen|Mux167~0_combout\);

\rnd_08_gen|state_04[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux167~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(23));

\rnd_08_gen|Mux236~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux236~0_combout\ = (\rnd_08_gen|state_04\(3) & ((\rnd_08_gen|state_04\(8) & (!\rnd_08_gen|state_04\(4))) # (!\rnd_08_gen|state_04\(8) & ((!\rnd_08_gen|state_04\(23)))))) # (!\rnd_08_gen|state_04\(3) & ((\rnd_08_gen|state_04\(8) & 
-- ((!\rnd_08_gen|state_04\(23)))) # (!\rnd_08_gen|state_04\(8) & (\rnd_08_gen|state_04\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(3),
	datab => \rnd_08_gen|state_04\(8),
	datac => \rnd_08_gen|state_04\(4),
	datad => \rnd_08_gen|state_04\(23),
	combout => \rnd_08_gen|Mux236~0_combout\);

\rnd_08_gen|state_05[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux236~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(44));

\rnd_08_gen|Mux287~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux287~0_combout\ = (\rnd_08_gen|state_05\(24) & ((\rnd_08_gen|state_05\(28)) # (\rnd_08_gen|state_05\(21) $ (!\rnd_08_gen|state_05\(44))))) # (!\rnd_08_gen|state_05\(24) & (\rnd_08_gen|state_05\(21) & ((\rnd_08_gen|state_05\(44)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(24),
	datab => \rnd_08_gen|state_05\(21),
	datac => \rnd_08_gen|state_05\(28),
	datad => \rnd_08_gen|state_05\(44),
	combout => \rnd_08_gen|Mux287~0_combout\);

\rnd_08_gen|state_06[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux287~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(47));

\rnd_08_gen|Mux217~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux217~0_combout\ = (\rnd_08_gen|state_04\(14) & (!\rnd_08_gen|state_04\(18))) # (!\rnd_08_gen|state_04\(14) & ((\rnd_08_gen|state_04\(26) & ((\rnd_08_gen|state_04\(38)))) # (!\rnd_08_gen|state_04\(26) & (\rnd_08_gen|state_04\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(18),
	datab => \rnd_08_gen|state_04\(26),
	datac => \rnd_08_gen|state_04\(14),
	datad => \rnd_08_gen|state_04\(38),
	combout => \rnd_08_gen|Mux217~0_combout\);

\rnd_08_gen|state_05[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux217~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(25));

\rnd_08_gen|Mux173~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux173~0_combout\ = (\rnd_08_gen|state_03\(27) & ((\rnd_08_gen|state_03\(35) & ((\rnd_08_gen|state_03\(28)))) # (!\rnd_08_gen|state_03\(35) & (!\rnd_08_gen|state_03\(19))))) # (!\rnd_08_gen|state_03\(27) & (\rnd_08_gen|state_03\(35) $ 
-- (((\rnd_08_gen|state_03\(28)) # (!\rnd_08_gen|state_03\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011101000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(27),
	datab => \rnd_08_gen|state_03\(19),
	datac => \rnd_08_gen|state_03\(35),
	datad => \rnd_08_gen|state_03\(28),
	combout => \rnd_08_gen|Mux173~0_combout\);

\rnd_08_gen|state_04[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux173~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(29));

\rnd_08_gen|Mux150~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux150~0_combout\ = (\rnd_08_gen|state_03\(2) & (!\rnd_08_gen|state_03\(22) & (\rnd_08_gen|state_03\(11) $ (!\rnd_08_gen|state_03\(37))))) # (!\rnd_08_gen|state_03\(2) & ((\rnd_08_gen|state_03\(11)) # (\rnd_08_gen|state_03\(22) $ 
-- (!\rnd_08_gen|state_03\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(11),
	datab => \rnd_08_gen|state_03\(2),
	datac => \rnd_08_gen|state_03\(22),
	datad => \rnd_08_gen|state_03\(37),
	combout => \rnd_08_gen|Mux150~0_combout\);

\rnd_08_gen|state_04[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux150~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(6));

\rnd_08_gen|Mux144~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux144~0_combout\ = (\rnd_08_gen|state_03\(46) & (\rnd_08_gen|state_03\(9) $ ((\rnd_08_gen|state_03\(34))))) # (!\rnd_08_gen|state_03\(46) & ((\rnd_08_gen|state_03\(47) & (!\rnd_08_gen|state_03\(9))) # (!\rnd_08_gen|state_03\(47) & 
-- ((\rnd_08_gen|state_03\(34))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(9),
	datab => \rnd_08_gen|state_03\(34),
	datac => \rnd_08_gen|state_03\(47),
	datad => \rnd_08_gen|state_03\(46),
	combout => \rnd_08_gen|Mux144~0_combout\);

\rnd_08_gen|state_04[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux144~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(0));

\rnd_08_gen|Mux171~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux171~0_combout\ = (\rnd_08_gen|state_03\(13) & (((\rnd_08_gen|state_03\(16)) # (\rnd_08_gen|state_03\(1))))) # (!\rnd_08_gen|state_03\(13) & (\rnd_08_gen|state_03\(38) & (\rnd_08_gen|state_03\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(13),
	datab => \rnd_08_gen|state_03\(38),
	datac => \rnd_08_gen|state_03\(16),
	datad => \rnd_08_gen|state_03\(1),
	combout => \rnd_08_gen|Mux171~0_combout\);

\rnd_08_gen|state_04[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux171~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(27));

\rnd_08_gen|Mux196~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux196~0_combout\ = (\rnd_08_gen|state_04\(29) & ((\rnd_08_gen|state_04\(6) & ((!\rnd_08_gen|state_04\(27)))) # (!\rnd_08_gen|state_04\(6) & (\rnd_08_gen|state_04\(0))))) # (!\rnd_08_gen|state_04\(29) & (\rnd_08_gen|state_04\(6) $ 
-- (((\rnd_08_gen|state_04\(0)) # (!\rnd_08_gen|state_04\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(29),
	datab => \rnd_08_gen|state_04\(6),
	datac => \rnd_08_gen|state_04\(0),
	datad => \rnd_08_gen|state_04\(27),
	combout => \rnd_08_gen|Mux196~0_combout\);

\rnd_08_gen|state_05[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux196~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(4));

\rnd_08_gen|Mux180~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux180~0_combout\ = (\rnd_08_gen|state_03\(14) & ((\rnd_08_gen|state_03\(25)) # (\rnd_08_gen|state_03\(18) $ (\rnd_08_gen|state_03\(8))))) # (!\rnd_08_gen|state_03\(14) & (\rnd_08_gen|state_03\(18) & (!\rnd_08_gen|state_03\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(14),
	datab => \rnd_08_gen|state_03\(18),
	datac => \rnd_08_gen|state_03\(8),
	datad => \rnd_08_gen|state_03\(25),
	combout => \rnd_08_gen|Mux180~0_combout\);

\rnd_08_gen|state_04[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux180~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(36));

\rnd_08_gen|Mux191~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux191~0_combout\ = (\rnd_08_gen|state_03\(29) & (\rnd_08_gen|state_03\(42) $ (((!\rnd_08_gen|state_03\(41) & \rnd_08_gen|state_03\(24)))))) # (!\rnd_08_gen|state_03\(29) & (((\rnd_08_gen|state_03\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(41),
	datab => \rnd_08_gen|state_03\(42),
	datac => \rnd_08_gen|state_03\(29),
	datad => \rnd_08_gen|state_03\(24),
	combout => \rnd_08_gen|Mux191~0_combout\);

\rnd_08_gen|state_04[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux191~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(47));

\rnd_08_gen|Mux151~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux151~0_combout\ = (\rnd_08_gen|state_03\(22) & ((\rnd_08_gen|state_03\(37) & (\rnd_08_gen|state_03\(11))) # (!\rnd_08_gen|state_03\(37) & ((!\rnd_08_gen|state_03\(2)))))) # (!\rnd_08_gen|state_03\(22) & (\rnd_08_gen|state_03\(37) $ 
-- (((\rnd_08_gen|state_03\(11) & !\rnd_08_gen|state_03\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(11),
	datab => \rnd_08_gen|state_03\(2),
	datac => \rnd_08_gen|state_03\(22),
	datad => \rnd_08_gen|state_03\(37),
	combout => \rnd_08_gen|Mux151~0_combout\);

\rnd_08_gen|state_04[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux151~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(7));

\rnd_08_gen|Mux149~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux149~0_combout\ = (\rnd_08_gen|state_03\(2) & ((\rnd_08_gen|state_03\(11) & ((\rnd_08_gen|state_03\(22)) # (\rnd_08_gen|state_03\(37)))) # (!\rnd_08_gen|state_03\(11) & ((!\rnd_08_gen|state_03\(37)) # (!\rnd_08_gen|state_03\(22)))))) # 
-- (!\rnd_08_gen|state_03\(2) & (((!\rnd_08_gen|state_03\(22) & !\rnd_08_gen|state_03\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(11),
	datab => \rnd_08_gen|state_03\(2),
	datac => \rnd_08_gen|state_03\(22),
	datad => \rnd_08_gen|state_03\(37),
	combout => \rnd_08_gen|Mux149~0_combout\);

\rnd_08_gen|state_04[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux149~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(5));

\rnd_08_gen|Mux194~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux194~0_combout\ = (\rnd_08_gen|state_04\(7) & ((\rnd_08_gen|state_04\(36) & ((\rnd_08_gen|state_04\(5)))) # (!\rnd_08_gen|state_04\(36) & (\rnd_08_gen|state_04\(47))))) # (!\rnd_08_gen|state_04\(7) & (((!\rnd_08_gen|state_04\(47)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001101000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(36),
	datab => \rnd_08_gen|state_04\(47),
	datac => \rnd_08_gen|state_04\(7),
	datad => \rnd_08_gen|state_04\(5),
	combout => \rnd_08_gen|Mux194~0_combout\);

\rnd_08_gen|state_05[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux194~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(2));

\rnd_08_gen|Mux157~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux157~0_combout\ = (\rnd_08_gen|state_03\(10) & ((\rnd_08_gen|state_03\(43)) # ((\rnd_08_gen|state_03\(7) & \rnd_08_gen|state_03\(36))))) # (!\rnd_08_gen|state_03\(10) & ((\rnd_08_gen|state_03\(7) & (\rnd_08_gen|state_03\(36) $ 
-- (!\rnd_08_gen|state_03\(43)))) # (!\rnd_08_gen|state_03\(7) & (\rnd_08_gen|state_03\(36) & !\rnd_08_gen|state_03\(43)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(7),
	datab => \rnd_08_gen|state_03\(36),
	datac => \rnd_08_gen|state_03\(10),
	datad => \rnd_08_gen|state_03\(43),
	combout => \rnd_08_gen|Mux157~0_combout\);

\rnd_08_gen|state_04[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux157~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(13));

\rnd_08_gen|Mux141~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux141~0_combout\ = (\rnd_08_gen|state_02\(2) & ((\rnd_08_gen|state_02\(17) & ((!\rnd_08_gen|state_02\(6)))) # (!\rnd_08_gen|state_02\(17) & (!\rnd_08_gen|state_02\(26))))) # (!\rnd_08_gen|state_02\(2) & ((\rnd_08_gen|state_02\(26) & 
-- ((!\rnd_08_gen|state_02\(6)))) # (!\rnd_08_gen|state_02\(26) & (!\rnd_08_gen|state_02\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(2),
	datab => \rnd_08_gen|state_02\(26),
	datac => \rnd_08_gen|state_02\(17),
	datad => \rnd_08_gen|state_02\(6),
	combout => \rnd_08_gen|Mux141~0_combout\);

\rnd_08_gen|state_03[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux141~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(45));

\rnd_08_gen|Mux108~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux108~0_combout\ = (\rnd_08_gen|state_02\(8) & (\rnd_08_gen|state_02\(15) $ (((!\rnd_08_gen|state_02\(11)) # (!\rnd_08_gen|state_02\(0)))))) # (!\rnd_08_gen|state_02\(8) & (((\rnd_08_gen|state_02\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(15),
	datab => \rnd_08_gen|state_02\(0),
	datac => \rnd_08_gen|state_02\(11),
	datad => \rnd_08_gen|state_02\(8),
	combout => \rnd_08_gen|Mux108~0_combout\);

\rnd_08_gen|state_03[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux108~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(12));

\rnd_08_gen|Mux116~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux116~0_combout\ = (\rnd_08_gen|state_02\(34) & ((\rnd_08_gen|state_02\(1) & ((!\rnd_08_gen|state_02\(27)))) # (!\rnd_08_gen|state_02\(1) & (\rnd_08_gen|state_02\(38))))) # (!\rnd_08_gen|state_02\(34) & ((\rnd_08_gen|state_02\(27) & 
-- (!\rnd_08_gen|state_02\(38))) # (!\rnd_08_gen|state_02\(27) & ((\rnd_08_gen|state_02\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(34),
	datab => \rnd_08_gen|state_02\(38),
	datac => \rnd_08_gen|state_02\(1),
	datad => \rnd_08_gen|state_02\(27),
	combout => \rnd_08_gen|Mux116~0_combout\);

\rnd_08_gen|state_03[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux116~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(20));

\rnd_08_gen|Mux127~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux127~0_combout\ = (\rnd_08_gen|state_02\(40) & (\rnd_08_gen|state_02\(29) $ (((!\rnd_08_gen|state_02\(9)) # (!\rnd_08_gen|state_02\(37)))))) # (!\rnd_08_gen|state_02\(40) & ((\rnd_08_gen|state_02\(37) & ((\rnd_08_gen|state_02\(29)) # 
-- (\rnd_08_gen|state_02\(9)))) # (!\rnd_08_gen|state_02\(37) & (\rnd_08_gen|state_02\(29) & \rnd_08_gen|state_02\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_02\(37),
	datab => \rnd_08_gen|state_02\(40),
	datac => \rnd_08_gen|state_02\(29),
	datad => \rnd_08_gen|state_02\(9),
	combout => \rnd_08_gen|Mux127~0_combout\);

\rnd_08_gen|state_03[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux127~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_03\(31));

\rnd_08_gen|Mux178~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux178~0_combout\ = (\rnd_08_gen|state_03\(12) & ((\rnd_08_gen|state_03\(20) & ((\rnd_08_gen|state_03\(31)))) # (!\rnd_08_gen|state_03\(20) & ((\rnd_08_gen|state_03\(45)) # (!\rnd_08_gen|state_03\(31)))))) # (!\rnd_08_gen|state_03\(12) & 
-- (\rnd_08_gen|state_03\(31) & ((!\rnd_08_gen|state_03\(20)) # (!\rnd_08_gen|state_03\(45)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(45),
	datab => \rnd_08_gen|state_03\(12),
	datac => \rnd_08_gen|state_03\(20),
	datad => \rnd_08_gen|state_03\(31),
	combout => \rnd_08_gen|Mux178~0_combout\);

\rnd_08_gen|state_04[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux178~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(34));

\rnd_08_gen|Mux186~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux186~0_combout\ = (\rnd_08_gen|state_03\(5) & (\rnd_08_gen|state_03\(33) $ (((\rnd_08_gen|state_03\(15) & \rnd_08_gen|state_03\(44)))))) # (!\rnd_08_gen|state_03\(5) & ((\rnd_08_gen|state_03\(33) & (!\rnd_08_gen|state_03\(15))) # 
-- (!\rnd_08_gen|state_03\(33) & ((!\rnd_08_gen|state_03\(44))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(5),
	datab => \rnd_08_gen|state_03\(15),
	datac => \rnd_08_gen|state_03\(44),
	datad => \rnd_08_gen|state_03\(33),
	combout => \rnd_08_gen|Mux186~0_combout\);

\rnd_08_gen|state_04[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux186~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(42));

\rnd_08_gen|Mux177~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux177~0_combout\ = (\rnd_08_gen|state_03\(45) & (\rnd_08_gen|state_03\(31) $ (((\rnd_08_gen|state_03\(12) & \rnd_08_gen|state_03\(20)))))) # (!\rnd_08_gen|state_03\(45) & (\rnd_08_gen|state_03\(20) $ (((\rnd_08_gen|state_03\(12)) # 
-- (!\rnd_08_gen|state_03\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(45),
	datab => \rnd_08_gen|state_03\(12),
	datac => \rnd_08_gen|state_03\(20),
	datad => \rnd_08_gen|state_03\(31),
	combout => \rnd_08_gen|Mux177~0_combout\);

\rnd_08_gen|state_04[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux177~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(33));

\rnd_08_gen|Mux229~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux229~0_combout\ = (\rnd_08_gen|state_04\(34) & (((\rnd_08_gen|state_04\(42))))) # (!\rnd_08_gen|state_04\(34) & ((\rnd_08_gen|state_04\(33) & (!\rnd_08_gen|state_04\(13))) # (!\rnd_08_gen|state_04\(33) & ((!\rnd_08_gen|state_04\(42))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(13),
	datab => \rnd_08_gen|state_04\(34),
	datac => \rnd_08_gen|state_04\(42),
	datad => \rnd_08_gen|state_04\(33),
	combout => \rnd_08_gen|Mux229~0_combout\);

\rnd_08_gen|state_05[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux229~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(37));

\rnd_08_gen|Mux278~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux278~0_combout\ = (\rnd_08_gen|state_05\(25) & ((\rnd_08_gen|state_05\(2) & (!\rnd_08_gen|state_05\(4))) # (!\rnd_08_gen|state_05\(2) & ((!\rnd_08_gen|state_05\(37)))))) # (!\rnd_08_gen|state_05\(25) & ((\rnd_08_gen|state_05\(4) & 
-- (\rnd_08_gen|state_05\(2))) # (!\rnd_08_gen|state_05\(4) & ((\rnd_08_gen|state_05\(37))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(25),
	datab => \rnd_08_gen|state_05\(4),
	datac => \rnd_08_gen|state_05\(2),
	datad => \rnd_08_gen|state_05\(37),
	combout => \rnd_08_gen|Mux278~0_combout\);

\rnd_08_gen|state_06[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux278~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(38));

\rnd_08_gen|Mux214~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux214~0_combout\ = (\rnd_08_gen|state_04\(22) & (\rnd_08_gen|state_04\(1) $ (((!\rnd_08_gen|state_04\(9)))))) # (!\rnd_08_gen|state_04\(22) & ((\rnd_08_gen|state_04\(12) & (\rnd_08_gen|state_04\(1))) # (!\rnd_08_gen|state_04\(12) & 
-- ((!\rnd_08_gen|state_04\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100001011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(1),
	datab => \rnd_08_gen|state_04\(12),
	datac => \rnd_08_gen|state_04\(22),
	datad => \rnd_08_gen|state_04\(9),
	combout => \rnd_08_gen|Mux214~0_combout\);

\rnd_08_gen|state_05[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux214~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(22));

\rnd_08_gen|Mux192~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux192~0_combout\ = (\rnd_08_gen|state_04\(47) & (((!\rnd_08_gen|state_04\(5))))) # (!\rnd_08_gen|state_04\(47) & (\rnd_08_gen|state_04\(36) $ (((\rnd_08_gen|state_04\(7) & !\rnd_08_gen|state_04\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(36),
	datab => \rnd_08_gen|state_04\(47),
	datac => \rnd_08_gen|state_04\(7),
	datad => \rnd_08_gen|state_04\(5),
	combout => \rnd_08_gen|Mux192~0_combout\);

\rnd_08_gen|state_05[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux192~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(0));

\rnd_08_gen|Mux189~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux189~0_combout\ = (\rnd_08_gen|state_03\(24) & ((\rnd_08_gen|state_03\(41) $ (\rnd_08_gen|state_03\(29))) # (!\rnd_08_gen|state_03\(42)))) # (!\rnd_08_gen|state_03\(24) & (!\rnd_08_gen|state_03\(29) & (\rnd_08_gen|state_03\(41) $ 
-- (\rnd_08_gen|state_03\(42)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(41),
	datab => \rnd_08_gen|state_03\(42),
	datac => \rnd_08_gen|state_03\(29),
	datad => \rnd_08_gen|state_03\(24),
	combout => \rnd_08_gen|Mux189~0_combout\);

\rnd_08_gen|state_04[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux189~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(45));

\rnd_08_gen|Mux174~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux174~0_combout\ = (\rnd_08_gen|state_03\(27) & (\rnd_08_gen|state_03\(19) & ((!\rnd_08_gen|state_03\(28)) # (!\rnd_08_gen|state_03\(35))))) # (!\rnd_08_gen|state_03\(27) & ((\rnd_08_gen|state_03\(35) & ((!\rnd_08_gen|state_03\(28)))) # 
-- (!\rnd_08_gen|state_03\(35) & ((\rnd_08_gen|state_03\(28)) # (!\rnd_08_gen|state_03\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(27),
	datab => \rnd_08_gen|state_03\(19),
	datac => \rnd_08_gen|state_03\(35),
	datad => \rnd_08_gen|state_03\(28),
	combout => \rnd_08_gen|Mux174~0_combout\);

\rnd_08_gen|state_04[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux174~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(30));

\rnd_08_gen|Mux172~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux172~0_combout\ = (\rnd_08_gen|state_03\(27) & ((\rnd_08_gen|state_03\(35) & ((\rnd_08_gen|state_03\(28)))) # (!\rnd_08_gen|state_03\(35) & (\rnd_08_gen|state_03\(19))))) # (!\rnd_08_gen|state_03\(27) & (\rnd_08_gen|state_03\(35) $ 
-- (((!\rnd_08_gen|state_03\(28)) # (!\rnd_08_gen|state_03\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(27),
	datab => \rnd_08_gen|state_03\(19),
	datac => \rnd_08_gen|state_03\(35),
	datad => \rnd_08_gen|state_03\(28),
	combout => \rnd_08_gen|Mux172~0_combout\);

\rnd_08_gen|state_04[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux172~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(28));

\rnd_08_gen|Mux181~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux181~0_combout\ = (\rnd_08_gen|state_03\(25) & (((!\rnd_08_gen|state_03\(18) & \rnd_08_gen|state_03\(8))))) # (!\rnd_08_gen|state_03\(25) & ((\rnd_08_gen|state_03\(18) $ (\rnd_08_gen|state_03\(8))) # (!\rnd_08_gen|state_03\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(14),
	datab => \rnd_08_gen|state_03\(18),
	datac => \rnd_08_gen|state_03\(8),
	datad => \rnd_08_gen|state_03\(25),
	combout => \rnd_08_gen|Mux181~0_combout\);

\rnd_08_gen|state_04[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux181~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(37));

\rnd_08_gen|Mux209~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux209~0_combout\ = (\rnd_08_gen|state_04\(45) & (!\rnd_08_gen|state_04\(37) & ((\rnd_08_gen|state_04\(30)) # (!\rnd_08_gen|state_04\(28))))) # (!\rnd_08_gen|state_04\(45) & ((\rnd_08_gen|state_04\(30)) # ((\rnd_08_gen|state_04\(28) & 
-- \rnd_08_gen|state_04\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(45),
	datab => \rnd_08_gen|state_04\(30),
	datac => \rnd_08_gen|state_04\(28),
	datad => \rnd_08_gen|state_04\(37),
	combout => \rnd_08_gen|Mux209~0_combout\);

\rnd_08_gen|state_05[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux209~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(17));

\rnd_08_gen|Mux161~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux161~0_combout\ = (\rnd_08_gen|state_03\(6) & (((\rnd_08_gen|state_03\(21) & !\rnd_08_gen|state_03\(32))))) # (!\rnd_08_gen|state_03\(6) & ((\rnd_08_gen|state_03\(3)) # (\rnd_08_gen|state_03\(21) $ (\rnd_08_gen|state_03\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(6),
	datab => \rnd_08_gen|state_03\(3),
	datac => \rnd_08_gen|state_03\(21),
	datad => \rnd_08_gen|state_03\(32),
	combout => \rnd_08_gen|Mux161~0_combout\);

\rnd_08_gen|state_04[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux161~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(17));

\rnd_08_gen|Mux187~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux187~0_combout\ = (\rnd_08_gen|state_03\(15) & (((!\rnd_08_gen|state_03\(33))))) # (!\rnd_08_gen|state_03\(15) & (\rnd_08_gen|state_03\(44) $ (((\rnd_08_gen|state_03\(5) & !\rnd_08_gen|state_03\(33))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(5),
	datab => \rnd_08_gen|state_03\(15),
	datac => \rnd_08_gen|state_03\(44),
	datad => \rnd_08_gen|state_03\(33),
	combout => \rnd_08_gen|Mux187~0_combout\);

\rnd_08_gen|state_04[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux187~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(43));

\rnd_08_gen|Mux184~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux184~0_combout\ = (\rnd_08_gen|state_03\(15) & (!\rnd_08_gen|state_03\(5) & (!\rnd_08_gen|state_03\(44)))) # (!\rnd_08_gen|state_03\(15) & ((\rnd_08_gen|state_03\(5) $ (\rnd_08_gen|state_03\(44))) # (!\rnd_08_gen|state_03\(33))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(5),
	datab => \rnd_08_gen|state_03\(15),
	datac => \rnd_08_gen|state_03\(44),
	datad => \rnd_08_gen|state_03\(33),
	combout => \rnd_08_gen|Mux184~0_combout\);

\rnd_08_gen|state_04[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux184~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(40));

\rnd_08_gen|Mux179~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux179~0_combout\ = (\rnd_08_gen|state_03\(20) & ((\rnd_08_gen|state_03\(31)) # ((!\rnd_08_gen|state_03\(45) & \rnd_08_gen|state_03\(12))))) # (!\rnd_08_gen|state_03\(20) & ((\rnd_08_gen|state_03\(45) & (!\rnd_08_gen|state_03\(12))) # 
-- (!\rnd_08_gen|state_03\(45) & (\rnd_08_gen|state_03\(12) & \rnd_08_gen|state_03\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(45),
	datab => \rnd_08_gen|state_03\(12),
	datac => \rnd_08_gen|state_03\(20),
	datad => \rnd_08_gen|state_03\(31),
	combout => \rnd_08_gen|Mux179~0_combout\);

\rnd_08_gen|state_04[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux179~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(35));

\rnd_08_gen|Mux227~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux227~0_combout\ = (\rnd_08_gen|state_04\(43) & (!\rnd_08_gen|state_04\(17) & (!\rnd_08_gen|state_04\(40)))) # (!\rnd_08_gen|state_04\(43) & ((\rnd_08_gen|state_04\(17) $ (!\rnd_08_gen|state_04\(35))) # (!\rnd_08_gen|state_04\(40))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(17),
	datab => \rnd_08_gen|state_04\(43),
	datac => \rnd_08_gen|state_04\(40),
	datad => \rnd_08_gen|state_04\(35),
	combout => \rnd_08_gen|Mux227~0_combout\);

\rnd_08_gen|state_05[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux227~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(35));

\rnd_08_gen|Mux283~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux283~0_combout\ = (\rnd_08_gen|state_05\(22) & ((\rnd_08_gen|state_05\(17) $ (\rnd_08_gen|state_05\(35))))) # (!\rnd_08_gen|state_05\(22) & ((\rnd_08_gen|state_05\(0) & ((\rnd_08_gen|state_05\(35)))) # (!\rnd_08_gen|state_05\(0) & 
-- (!\rnd_08_gen|state_05\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(22),
	datab => \rnd_08_gen|state_05\(0),
	datac => \rnd_08_gen|state_05\(17),
	datad => \rnd_08_gen|state_05\(35),
	combout => \rnd_08_gen|Mux283~0_combout\);

\rnd_08_gen|state_06[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux283~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(43));

\rnd_08_gen|Mux332~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux332~0_combout\ = (\rnd_08_gen|state_06\(47) & ((\rnd_08_gen|state_06\(12) & ((\rnd_08_gen|state_06\(43)))) # (!\rnd_08_gen|state_06\(12) & (!\rnd_08_gen|state_06\(38))))) # (!\rnd_08_gen|state_06\(47) & ((\rnd_08_gen|state_06\(43) & 
-- (!\rnd_08_gen|state_06\(12))) # (!\rnd_08_gen|state_06\(43) & ((\rnd_08_gen|state_06\(38))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(12),
	datab => \rnd_08_gen|state_06\(47),
	datac => \rnd_08_gen|state_06\(38),
	datad => \rnd_08_gen|state_06\(43),
	combout => \rnd_08_gen|Mux332~0_combout\);

\rnd_08_gen|state_07[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux332~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(44));

\rnd_08_gen|Mux195~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux195~0_combout\ = (\rnd_08_gen|state_04\(36) & ((\rnd_08_gen|state_04\(47) & (!\rnd_08_gen|state_04\(7) & !\rnd_08_gen|state_04\(5))) # (!\rnd_08_gen|state_04\(47) & ((\rnd_08_gen|state_04\(5)))))) # (!\rnd_08_gen|state_04\(36) & 
-- ((\rnd_08_gen|state_04\(47) & ((\rnd_08_gen|state_04\(5)))) # (!\rnd_08_gen|state_04\(47) & ((\rnd_08_gen|state_04\(7)) # (!\rnd_08_gen|state_04\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(36),
	datab => \rnd_08_gen|state_04\(47),
	datac => \rnd_08_gen|state_04\(7),
	datad => \rnd_08_gen|state_04\(5),
	combout => \rnd_08_gen|Mux195~0_combout\);

\rnd_08_gen|state_05[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux195~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(3));

\rnd_08_gen|Mux238~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux238~0_combout\ = (\rnd_08_gen|state_04\(8) & ((\rnd_08_gen|state_04\(23)) # ((!\rnd_08_gen|state_04\(3) & !\rnd_08_gen|state_04\(4))))) # (!\rnd_08_gen|state_04\(8) & (\rnd_08_gen|state_04\(3) & ((\rnd_08_gen|state_04\(4)) # 
-- (!\rnd_08_gen|state_04\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(3),
	datab => \rnd_08_gen|state_04\(8),
	datac => \rnd_08_gen|state_04\(4),
	datad => \rnd_08_gen|state_04\(23),
	combout => \rnd_08_gen|Mux238~0_combout\);

\rnd_08_gen|state_05[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux238~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(46));

\rnd_08_gen|Mux198~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux198~0_combout\ = (\rnd_08_gen|state_04\(0) & (\rnd_08_gen|state_04\(27) $ (((!\rnd_08_gen|state_04\(6)) # (!\rnd_08_gen|state_04\(29)))))) # (!\rnd_08_gen|state_04\(0) & (!\rnd_08_gen|state_04\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(29),
	datab => \rnd_08_gen|state_04\(6),
	datac => \rnd_08_gen|state_04\(0),
	datad => \rnd_08_gen|state_04\(27),
	combout => \rnd_08_gen|Mux198~0_combout\);

\rnd_08_gen|state_05[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux198~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(6));

\rnd_08_gen|Mux218~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux218~0_combout\ = (\rnd_08_gen|state_04\(26) & (((!\rnd_08_gen|state_04\(38))) # (!\rnd_08_gen|state_04\(18)))) # (!\rnd_08_gen|state_04\(26) & (\rnd_08_gen|state_04\(14) & (\rnd_08_gen|state_04\(18) $ (!\rnd_08_gen|state_04\(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(18),
	datab => \rnd_08_gen|state_04\(26),
	datac => \rnd_08_gen|state_04\(14),
	datad => \rnd_08_gen|state_04\(38),
	combout => \rnd_08_gen|Mux218~0_combout\);

\rnd_08_gen|state_05[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux218~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(26));

\rnd_08_gen|Mux272~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux272~0_combout\ = (\rnd_08_gen|state_05\(26) & (\rnd_08_gen|state_05\(46) $ (((!\rnd_08_gen|state_05\(3) & !\rnd_08_gen|state_05\(6)))))) # (!\rnd_08_gen|state_05\(26) & (!\rnd_08_gen|state_05\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(3),
	datab => \rnd_08_gen|state_05\(46),
	datac => \rnd_08_gen|state_05\(6),
	datad => \rnd_08_gen|state_05\(26),
	combout => \rnd_08_gen|Mux272~0_combout\);

\rnd_08_gen|state_06[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux272~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(32));

\rnd_08_gen|Mux226~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux226~0_combout\ = (\rnd_08_gen|state_04\(35) & ((\rnd_08_gen|state_04\(43) $ (\rnd_08_gen|state_04\(40))))) # (!\rnd_08_gen|state_04\(35) & (\rnd_08_gen|state_04\(17) $ (((!\rnd_08_gen|state_04\(43) & \rnd_08_gen|state_04\(40))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(17),
	datab => \rnd_08_gen|state_04\(43),
	datac => \rnd_08_gen|state_04\(40),
	datad => \rnd_08_gen|state_04\(35),
	combout => \rnd_08_gen|Mux226~0_combout\);

\rnd_08_gen|state_05[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux226~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(34));

\rnd_08_gen|Mux212~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux212~0_combout\ = (\rnd_08_gen|state_04\(22) & (\rnd_08_gen|state_04\(12) $ (((\rnd_08_gen|state_04\(1) & !\rnd_08_gen|state_04\(9)))))) # (!\rnd_08_gen|state_04\(22) & ((\rnd_08_gen|state_04\(9) & (!\rnd_08_gen|state_04\(1))) # 
-- (!\rnd_08_gen|state_04\(9) & ((!\rnd_08_gen|state_04\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010101100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(1),
	datab => \rnd_08_gen|state_04\(12),
	datac => \rnd_08_gen|state_04\(22),
	datad => \rnd_08_gen|state_04\(9),
	combout => \rnd_08_gen|Mux212~0_combout\);

\rnd_08_gen|state_05[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux212~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(20));

\rnd_08_gen|Mux210~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux210~0_combout\ = (\rnd_08_gen|state_04\(45) & (\rnd_08_gen|state_04\(30) $ (((\rnd_08_gen|state_04\(28) & \rnd_08_gen|state_04\(37)))))) # (!\rnd_08_gen|state_04\(45) & (\rnd_08_gen|state_04\(28) $ (((\rnd_08_gen|state_04\(37)) # 
-- (!\rnd_08_gen|state_04\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(45),
	datab => \rnd_08_gen|state_04\(30),
	datac => \rnd_08_gen|state_04\(28),
	datad => \rnd_08_gen|state_04\(37),
	combout => \rnd_08_gen|Mux210~0_combout\);

\rnd_08_gen|state_05[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux210~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(18));

\rnd_08_gen|Mux235~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux235~0_combout\ = (\rnd_08_gen|state_04\(15) & ((\rnd_08_gen|state_04\(2) & ((!\rnd_08_gen|state_04\(21)) # (!\rnd_08_gen|state_04\(19)))) # (!\rnd_08_gen|state_04\(2) & (\rnd_08_gen|state_04\(19))))) # (!\rnd_08_gen|state_04\(15) & 
-- ((\rnd_08_gen|state_04\(2) & (\rnd_08_gen|state_04\(19))) # (!\rnd_08_gen|state_04\(2) & (!\rnd_08_gen|state_04\(19) & !\rnd_08_gen|state_04\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(15),
	datab => \rnd_08_gen|state_04\(2),
	datac => \rnd_08_gen|state_04\(19),
	datad => \rnd_08_gen|state_04\(21),
	combout => \rnd_08_gen|Mux235~0_combout\);

\rnd_08_gen|state_05[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux235~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(43));

\rnd_08_gen|Mux271~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux271~0_combout\ = (\rnd_08_gen|state_05\(20) & ((\rnd_08_gen|state_05\(43) & (\rnd_08_gen|state_05\(34))) # (!\rnd_08_gen|state_05\(43) & ((!\rnd_08_gen|state_05\(18)))))) # (!\rnd_08_gen|state_05\(20) & (\rnd_08_gen|state_05\(43) $ 
-- (((\rnd_08_gen|state_05\(34)) # (\rnd_08_gen|state_05\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(34),
	datab => \rnd_08_gen|state_05\(20),
	datac => \rnd_08_gen|state_05\(18),
	datad => \rnd_08_gen|state_05\(43),
	combout => \rnd_08_gen|Mux271~0_combout\);

\rnd_08_gen|state_06[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux271~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(31));

\rnd_08_gen|Mux276~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux276~0_combout\ = (\rnd_08_gen|state_05\(25) & ((\rnd_08_gen|state_05\(4) & (\rnd_08_gen|state_05\(2))) # (!\rnd_08_gen|state_05\(4) & ((!\rnd_08_gen|state_05\(37)))))) # (!\rnd_08_gen|state_05\(25) & (\rnd_08_gen|state_05\(2) $ 
-- (((\rnd_08_gen|state_05\(4) & \rnd_08_gen|state_05\(37))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(25),
	datab => \rnd_08_gen|state_05\(4),
	datac => \rnd_08_gen|state_05\(2),
	datad => \rnd_08_gen|state_05\(37),
	combout => \rnd_08_gen|Mux276~0_combout\);

\rnd_08_gen|state_06[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux276~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(36));

\rnd_08_gen|Mux234~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux234~0_combout\ = (\rnd_08_gen|state_04\(15) & (\rnd_08_gen|state_04\(2) $ (((!\rnd_08_gen|state_04\(19) & \rnd_08_gen|state_04\(21)))))) # (!\rnd_08_gen|state_04\(15) & (\rnd_08_gen|state_04\(21) $ (((\rnd_08_gen|state_04\(2)) # 
-- (!\rnd_08_gen|state_04\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(15),
	datab => \rnd_08_gen|state_04\(2),
	datac => \rnd_08_gen|state_04\(19),
	datad => \rnd_08_gen|state_04\(21),
	combout => \rnd_08_gen|Mux234~0_combout\);

\rnd_08_gen|state_05[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux234~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(42));

\rnd_08_gen|Mux237~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux237~0_combout\ = (\rnd_08_gen|state_04\(3) & (\rnd_08_gen|state_04\(23) $ (((!\rnd_08_gen|state_04\(4)) # (!\rnd_08_gen|state_04\(8)))))) # (!\rnd_08_gen|state_04\(3) & ((\rnd_08_gen|state_04\(4) & ((\rnd_08_gen|state_04\(23)))) # 
-- (!\rnd_08_gen|state_04\(4) & (!\rnd_08_gen|state_04\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(3),
	datab => \rnd_08_gen|state_04\(8),
	datac => \rnd_08_gen|state_04\(4),
	datad => \rnd_08_gen|state_04\(23),
	combout => \rnd_08_gen|Mux237~0_combout\);

\rnd_08_gen|state_05[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux237~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(45));

\rnd_08_gen|Mux193~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux193~0_combout\ = (\rnd_08_gen|state_04\(7) & (\rnd_08_gen|state_04\(36) & (\rnd_08_gen|state_04\(47) $ (!\rnd_08_gen|state_04\(5))))) # (!\rnd_08_gen|state_04\(7) & ((\rnd_08_gen|state_04\(36) $ (\rnd_08_gen|state_04\(47))) # 
-- (!\rnd_08_gen|state_04\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(36),
	datab => \rnd_08_gen|state_04\(47),
	datac => \rnd_08_gen|state_04\(7),
	datad => \rnd_08_gen|state_04\(5),
	combout => \rnd_08_gen|Mux193~0_combout\);

\rnd_08_gen|state_05[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux193~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(1));

\rnd_08_gen|Mux176~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux176~0_combout\ = (\rnd_08_gen|state_03\(12) & (\rnd_08_gen|state_03\(45) $ (((\rnd_08_gen|state_03\(31)) # (!\rnd_08_gen|state_03\(20)))))) # (!\rnd_08_gen|state_03\(12) & (\rnd_08_gen|state_03\(20) $ (((\rnd_08_gen|state_03\(45)) # 
-- (\rnd_08_gen|state_03\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(45),
	datab => \rnd_08_gen|state_03\(12),
	datac => \rnd_08_gen|state_03\(20),
	datad => \rnd_08_gen|state_03\(31),
	combout => \rnd_08_gen|Mux176~0_combout\);

\rnd_08_gen|state_04[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux176~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(32));

\rnd_08_gen|Mux183~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux183~0_combout\ = (\rnd_08_gen|state_03\(14) & (\rnd_08_gen|state_03\(18))) # (!\rnd_08_gen|state_03\(14) & ((\rnd_08_gen|state_03\(8) $ (!\rnd_08_gen|state_03\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(14),
	datab => \rnd_08_gen|state_03\(18),
	datac => \rnd_08_gen|state_03\(8),
	datad => \rnd_08_gen|state_03\(25),
	combout => \rnd_08_gen|Mux183~0_combout\);

\rnd_08_gen|state_04[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux183~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(39));

\rnd_08_gen|Mux190~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux190~0_combout\ = (\rnd_08_gen|state_03\(41) & ((\rnd_08_gen|state_03\(29) & ((\rnd_08_gen|state_03\(24)))) # (!\rnd_08_gen|state_03\(29) & (\rnd_08_gen|state_03\(42) & !\rnd_08_gen|state_03\(24))))) # (!\rnd_08_gen|state_03\(41) & 
-- ((\rnd_08_gen|state_03\(29)) # ((!\rnd_08_gen|state_03\(42) & \rnd_08_gen|state_03\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(41),
	datab => \rnd_08_gen|state_03\(42),
	datac => \rnd_08_gen|state_03\(29),
	datad => \rnd_08_gen|state_03\(24),
	combout => \rnd_08_gen|Mux190~0_combout\);

\rnd_08_gen|state_04[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux190~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(46));

\rnd_08_gen|Mux155~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux155~0_combout\ = (\rnd_08_gen|state_03\(39) & (!\rnd_08_gen|state_03\(17) & (\rnd_08_gen|state_03\(26) $ (!\rnd_08_gen|state_03\(0))))) # (!\rnd_08_gen|state_03\(39) & (((\rnd_08_gen|state_03\(0)) # (!\rnd_08_gen|state_03\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_03\(17),
	datab => \rnd_08_gen|state_03\(26),
	datac => \rnd_08_gen|state_03\(39),
	datad => \rnd_08_gen|state_03\(0),
	combout => \rnd_08_gen|Mux155~0_combout\);

\rnd_08_gen|state_04[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux155~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_04\(11));

\rnd_08_gen|Mux200~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux200~0_combout\ = (\rnd_08_gen|state_04\(39) & ((\rnd_08_gen|state_04\(46) & ((\rnd_08_gen|state_04\(11)))) # (!\rnd_08_gen|state_04\(46) & (!\rnd_08_gen|state_04\(32))))) # (!\rnd_08_gen|state_04\(39) & (\rnd_08_gen|state_04\(11) $ 
-- (((\rnd_08_gen|state_04\(32)) # (!\rnd_08_gen|state_04\(46))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(32),
	datab => \rnd_08_gen|state_04\(39),
	datac => \rnd_08_gen|state_04\(46),
	datad => \rnd_08_gen|state_04\(11),
	combout => \rnd_08_gen|Mux200~0_combout\);

\rnd_08_gen|state_05[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux200~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(8));

\rnd_08_gen|Mux258~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux258~0_combout\ = (\rnd_08_gen|state_05\(42) & ((\rnd_08_gen|state_05\(45)) # ((!\rnd_08_gen|state_05\(1))))) # (!\rnd_08_gen|state_05\(42) & (!\rnd_08_gen|state_05\(1) & (\rnd_08_gen|state_05\(45) $ (!\rnd_08_gen|state_05\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(42),
	datab => \rnd_08_gen|state_05\(45),
	datac => \rnd_08_gen|state_05\(1),
	datad => \rnd_08_gen|state_05\(8),
	combout => \rnd_08_gen|Mux258~0_combout\);

\rnd_08_gen|state_06[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux258~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(18));

\rnd_08_gen|Mux319~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux319~0_combout\ = (\rnd_08_gen|state_06\(32) & ((\rnd_08_gen|state_06\(36) & ((\rnd_08_gen|state_06\(18)) # (!\rnd_08_gen|state_06\(31)))) # (!\rnd_08_gen|state_06\(36) & ((!\rnd_08_gen|state_06\(18)))))) # (!\rnd_08_gen|state_06\(32) & 
-- (!\rnd_08_gen|state_06\(36) & ((\rnd_08_gen|state_06\(18)) # (!\rnd_08_gen|state_06\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(32),
	datab => \rnd_08_gen|state_06\(31),
	datac => \rnd_08_gen|state_06\(36),
	datad => \rnd_08_gen|state_06\(18),
	combout => \rnd_08_gen|Mux319~0_combout\);

\rnd_08_gen|state_07[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux319~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(31));

\rnd_08_gen|Mux199~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux199~0_combout\ = (\rnd_08_gen|state_04\(0) & ((\rnd_08_gen|state_04\(6)) # (\rnd_08_gen|state_04\(29) $ (\rnd_08_gen|state_04\(27))))) # (!\rnd_08_gen|state_04\(0) & (\rnd_08_gen|state_04\(27) & (\rnd_08_gen|state_04\(29) $ 
-- (\rnd_08_gen|state_04\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(29),
	datab => \rnd_08_gen|state_04\(6),
	datac => \rnd_08_gen|state_04\(0),
	datad => \rnd_08_gen|state_04\(27),
	combout => \rnd_08_gen|Mux199~0_combout\);

\rnd_08_gen|state_05[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux199~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(7));

\rnd_08_gen|Mux222~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux222~0_combout\ = (\rnd_08_gen|state_04\(24) & ((\rnd_08_gen|state_04\(44) & ((!\rnd_08_gen|state_04\(41)))) # (!\rnd_08_gen|state_04\(44) & (!\rnd_08_gen|state_04\(31))))) # (!\rnd_08_gen|state_04\(24) & (\rnd_08_gen|state_04\(31) $ 
-- (((!\rnd_08_gen|state_04\(41) & !\rnd_08_gen|state_04\(44))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(24),
	datab => \rnd_08_gen|state_04\(31),
	datac => \rnd_08_gen|state_04\(41),
	datad => \rnd_08_gen|state_04\(44),
	combout => \rnd_08_gen|Mux222~0_combout\);

\rnd_08_gen|state_05[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux222~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(30));

\rnd_08_gen|Mux203~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux203~0_combout\ = (\rnd_08_gen|state_04\(11) & (\rnd_08_gen|state_04\(32) $ (((\rnd_08_gen|state_04\(39) & \rnd_08_gen|state_04\(46)))))) # (!\rnd_08_gen|state_04\(11) & (((!\rnd_08_gen|state_04\(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(32),
	datab => \rnd_08_gen|state_04\(39),
	datac => \rnd_08_gen|state_04\(46),
	datad => \rnd_08_gen|state_04\(11),
	combout => \rnd_08_gen|Mux203~0_combout\);

\rnd_08_gen|state_05[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux203~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(11));

\rnd_08_gen|Mux225~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux225~0_combout\ = (\rnd_08_gen|state_04\(40) & (\rnd_08_gen|state_04\(17))) # (!\rnd_08_gen|state_04\(40) & (\rnd_08_gen|state_04\(43) $ (((!\rnd_08_gen|state_04\(35)) # (!\rnd_08_gen|state_04\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(17),
	datab => \rnd_08_gen|state_04\(43),
	datac => \rnd_08_gen|state_04\(40),
	datad => \rnd_08_gen|state_04\(35),
	combout => \rnd_08_gen|Mux225~0_combout\);

\rnd_08_gen|state_05[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux225~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(33));

\rnd_08_gen|Mux243~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux243~0_combout\ = (\rnd_08_gen|state_05\(7) & ((\rnd_08_gen|state_05\(11) & ((\rnd_08_gen|state_05\(33)))) # (!\rnd_08_gen|state_05\(11) & (\rnd_08_gen|state_05\(30))))) # (!\rnd_08_gen|state_05\(7) & ((\rnd_08_gen|state_05\(33) & 
-- (\rnd_08_gen|state_05\(30))) # (!\rnd_08_gen|state_05\(33) & ((!\rnd_08_gen|state_05\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(7),
	datab => \rnd_08_gen|state_05\(30),
	datac => \rnd_08_gen|state_05\(11),
	datad => \rnd_08_gen|state_05\(33),
	combout => \rnd_08_gen|Mux243~0_combout\);

\rnd_08_gen|state_06[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux243~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(3));

\rnd_08_gen|Mux241~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux241~0_combout\ = (\rnd_08_gen|state_05\(7) & (\rnd_08_gen|state_05\(11) & ((\rnd_08_gen|state_05\(30)) # (\rnd_08_gen|state_05\(33))))) # (!\rnd_08_gen|state_05\(7) & ((\rnd_08_gen|state_05\(11)) # ((\rnd_08_gen|state_05\(30) & 
-- \rnd_08_gen|state_05\(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(7),
	datab => \rnd_08_gen|state_05\(30),
	datac => \rnd_08_gen|state_05\(11),
	datad => \rnd_08_gen|state_05\(33),
	combout => \rnd_08_gen|Mux241~0_combout\);

\rnd_08_gen|state_06[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux241~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(1));

\rnd_08_gen|Mux253~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux253~0_combout\ = (\rnd_08_gen|state_05\(41) & ((\rnd_08_gen|state_05\(12) & (!\rnd_08_gen|state_05\(29) & !\rnd_08_gen|state_05\(31))) # (!\rnd_08_gen|state_05\(12) & ((!\rnd_08_gen|state_05\(31)) # (!\rnd_08_gen|state_05\(29)))))) # 
-- (!\rnd_08_gen|state_05\(41) & (((!\rnd_08_gen|state_05\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(41),
	datab => \rnd_08_gen|state_05\(12),
	datac => \rnd_08_gen|state_05\(29),
	datad => \rnd_08_gen|state_05\(31),
	combout => \rnd_08_gen|Mux253~0_combout\);

\rnd_08_gen|state_06[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux253~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(13));

\rnd_08_gen|Mux231~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux231~0_combout\ = (\rnd_08_gen|state_04\(42) & (((!\rnd_08_gen|state_04\(33))) # (!\rnd_08_gen|state_04\(13)))) # (!\rnd_08_gen|state_04\(42) & (\rnd_08_gen|state_04\(34) & (\rnd_08_gen|state_04\(13) $ (!\rnd_08_gen|state_04\(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(13),
	datab => \rnd_08_gen|state_04\(34),
	datac => \rnd_08_gen|state_04\(42),
	datad => \rnd_08_gen|state_04\(33),
	combout => \rnd_08_gen|Mux231~0_combout\);

\rnd_08_gen|state_05[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux231~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(39));

\rnd_08_gen|Mux208~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux208~0_combout\ = (\rnd_08_gen|state_04\(45) & ((\rnd_08_gen|state_04\(28)) # ((!\rnd_08_gen|state_04\(30) & !\rnd_08_gen|state_04\(37))))) # (!\rnd_08_gen|state_04\(45) & (\rnd_08_gen|state_04\(37) & ((!\rnd_08_gen|state_04\(28)) # 
-- (!\rnd_08_gen|state_04\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(45),
	datab => \rnd_08_gen|state_04\(30),
	datac => \rnd_08_gen|state_04\(28),
	datad => \rnd_08_gen|state_04\(37),
	combout => \rnd_08_gen|Mux208~0_combout\);

\rnd_08_gen|state_05[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux208~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(16));

\rnd_08_gen|Mux215~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux215~0_combout\ = (\rnd_08_gen|state_04\(12) & ((\rnd_08_gen|state_04\(22) & (!\rnd_08_gen|state_04\(1))) # (!\rnd_08_gen|state_04\(22) & ((\rnd_08_gen|state_04\(9)))))) # (!\rnd_08_gen|state_04\(12) & (\rnd_08_gen|state_04\(9) $ 
-- (((!\rnd_08_gen|state_04\(1) & !\rnd_08_gen|state_04\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(1),
	datab => \rnd_08_gen|state_04\(12),
	datac => \rnd_08_gen|state_04\(22),
	datad => \rnd_08_gen|state_04\(9),
	combout => \rnd_08_gen|Mux215~0_combout\);

\rnd_08_gen|state_05[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux215~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(23));

\rnd_08_gen|Mux239~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux239~0_combout\ = (\rnd_08_gen|state_04\(3) & (\rnd_08_gen|state_04\(4) $ (((!\rnd_08_gen|state_04\(8) & !\rnd_08_gen|state_04\(23)))))) # (!\rnd_08_gen|state_04\(3) & (\rnd_08_gen|state_04\(8) $ (((\rnd_08_gen|state_04\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(3),
	datab => \rnd_08_gen|state_04\(8),
	datac => \rnd_08_gen|state_04\(4),
	datad => \rnd_08_gen|state_04\(23),
	combout => \rnd_08_gen|Mux239~0_combout\);

\rnd_08_gen|state_05[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux239~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(47));

\rnd_08_gen|Mux248~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux248~0_combout\ = (\rnd_08_gen|state_05\(16) & ((\rnd_08_gen|state_05\(23) & ((!\rnd_08_gen|state_05\(47)))) # (!\rnd_08_gen|state_05\(23) & (\rnd_08_gen|state_05\(39) & \rnd_08_gen|state_05\(47))))) # (!\rnd_08_gen|state_05\(16) & 
-- (((\rnd_08_gen|state_05\(39) & \rnd_08_gen|state_05\(47))) # (!\rnd_08_gen|state_05\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(39),
	datab => \rnd_08_gen|state_05\(16),
	datac => \rnd_08_gen|state_05\(23),
	datad => \rnd_08_gen|state_05\(47),
	combout => \rnd_08_gen|Mux248~0_combout\);

\rnd_08_gen|state_06[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux248~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(8));

\rnd_08_gen|Mux304~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux304~0_combout\ = (\rnd_08_gen|state_06\(3) & ((\rnd_08_gen|state_06\(13)) # (\rnd_08_gen|state_06\(1) $ (!\rnd_08_gen|state_06\(8))))) # (!\rnd_08_gen|state_06\(3) & (!\rnd_08_gen|state_06\(8) & (\rnd_08_gen|state_06\(1) $ 
-- (!\rnd_08_gen|state_06\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(3),
	datab => \rnd_08_gen|state_06\(1),
	datac => \rnd_08_gen|state_06\(13),
	datad => \rnd_08_gen|state_06\(8),
	combout => \rnd_08_gen|Mux304~0_combout\);

\rnd_08_gen|state_07[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux304~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(16));

\rnd_08_gen|Mux219~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux219~0_combout\ = (\rnd_08_gen|state_04\(38) & ((\rnd_08_gen|state_04\(26) $ (!\rnd_08_gen|state_04\(14))) # (!\rnd_08_gen|state_04\(18)))) # (!\rnd_08_gen|state_04\(38) & (((\rnd_08_gen|state_04\(26) & !\rnd_08_gen|state_04\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(18),
	datab => \rnd_08_gen|state_04\(26),
	datac => \rnd_08_gen|state_04\(14),
	datad => \rnd_08_gen|state_04\(38),
	combout => \rnd_08_gen|Mux219~0_combout\);

\rnd_08_gen|state_05[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux219~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(27));

\rnd_08_gen|Mux205~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux205~0_combout\ = (\rnd_08_gen|state_04\(20) & ((\rnd_08_gen|state_04\(10) & ((!\rnd_08_gen|state_04\(25)))) # (!\rnd_08_gen|state_04\(10) & (\rnd_08_gen|state_04\(16))))) # (!\rnd_08_gen|state_04\(20) & (\rnd_08_gen|state_04\(10) $ 
-- (((\rnd_08_gen|state_04\(16) & !\rnd_08_gen|state_04\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(16),
	datab => \rnd_08_gen|state_04\(10),
	datac => \rnd_08_gen|state_04\(20),
	datad => \rnd_08_gen|state_04\(25),
	combout => \rnd_08_gen|Mux205~0_combout\);

\rnd_08_gen|state_05[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux205~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(13));

\rnd_08_gen|Mux206~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux206~0_combout\ = \rnd_08_gen|state_04\(16) $ (((\rnd_08_gen|state_04\(20)) # (\rnd_08_gen|state_04\(10) $ (\rnd_08_gen|state_04\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(16),
	datab => \rnd_08_gen|state_04\(10),
	datac => \rnd_08_gen|state_04\(20),
	datad => \rnd_08_gen|state_04\(25),
	combout => \rnd_08_gen|Mux206~0_combout\);

\rnd_08_gen|state_05[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux206~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(14));

\rnd_08_gen|Mux197~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux197~0_combout\ = (\rnd_08_gen|state_04\(29) & (((\rnd_08_gen|state_04\(0) & \rnd_08_gen|state_04\(27))) # (!\rnd_08_gen|state_04\(6)))) # (!\rnd_08_gen|state_04\(29) & (!\rnd_08_gen|state_04\(6) & ((\rnd_08_gen|state_04\(27)) # 
-- (!\rnd_08_gen|state_04\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(29),
	datab => \rnd_08_gen|state_04\(6),
	datac => \rnd_08_gen|state_04\(0),
	datad => \rnd_08_gen|state_04\(27),
	combout => \rnd_08_gen|Mux197~0_combout\);

\rnd_08_gen|state_05[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux197~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(5));

\rnd_08_gen|Mux245~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux245~0_combout\ = (\rnd_08_gen|state_05\(27) & ((\rnd_08_gen|state_05\(14) & ((\rnd_08_gen|state_05\(5)))) # (!\rnd_08_gen|state_05\(14) & (!\rnd_08_gen|state_05\(13))))) # (!\rnd_08_gen|state_05\(27) & ((\rnd_08_gen|state_05\(14) & 
-- (\rnd_08_gen|state_05\(13))) # (!\rnd_08_gen|state_05\(14) & ((\rnd_08_gen|state_05\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(27),
	datab => \rnd_08_gen|state_05\(13),
	datac => \rnd_08_gen|state_05\(14),
	datad => \rnd_08_gen|state_05\(5),
	combout => \rnd_08_gen|Mux245~0_combout\);

\rnd_08_gen|state_06[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux245~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(5));

\rnd_08_gen|Mux257~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux257~0_combout\ = (\rnd_08_gen|state_05\(45) & (((!\rnd_08_gen|state_05\(1) & \rnd_08_gen|state_05\(8))))) # (!\rnd_08_gen|state_05\(45) & ((\rnd_08_gen|state_05\(42)) # ((\rnd_08_gen|state_05\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(42),
	datab => \rnd_08_gen|state_05\(45),
	datac => \rnd_08_gen|state_05\(1),
	datad => \rnd_08_gen|state_05\(8),
	combout => \rnd_08_gen|Mux257~0_combout\);

\rnd_08_gen|state_06[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux257~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(17));

\rnd_08_gen|Mux232~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux232~0_combout\ = (\rnd_08_gen|state_04\(2) & (((!\rnd_08_gen|state_04\(19) & !\rnd_08_gen|state_04\(21))))) # (!\rnd_08_gen|state_04\(2) & ((\rnd_08_gen|state_04\(15)) # ((!\rnd_08_gen|state_04\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(15),
	datab => \rnd_08_gen|state_04\(2),
	datac => \rnd_08_gen|state_04\(19),
	datad => \rnd_08_gen|state_04\(21),
	combout => \rnd_08_gen|Mux232~0_combout\);

\rnd_08_gen|state_05[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux232~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(40));

\rnd_08_gen|Mux211~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux211~0_combout\ = (\rnd_08_gen|state_04\(37) & ((\rnd_08_gen|state_04\(45) & ((!\rnd_08_gen|state_04\(28)))) # (!\rnd_08_gen|state_04\(45) & (!\rnd_08_gen|state_04\(30))))) # (!\rnd_08_gen|state_04\(37) & ((\rnd_08_gen|state_04\(28) & 
-- (\rnd_08_gen|state_04\(45))) # (!\rnd_08_gen|state_04\(28) & ((\rnd_08_gen|state_04\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(45),
	datab => \rnd_08_gen|state_04\(30),
	datac => \rnd_08_gen|state_04\(28),
	datad => \rnd_08_gen|state_04\(37),
	combout => \rnd_08_gen|Mux211~0_combout\);

\rnd_08_gen|state_05[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux211~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(19));

\rnd_08_gen|Mux230~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux230~0_combout\ = (\rnd_08_gen|state_04\(34) & (\rnd_08_gen|state_04\(33) $ (((\rnd_08_gen|state_04\(13)) # (!\rnd_08_gen|state_04\(42)))))) # (!\rnd_08_gen|state_04\(34) & ((\rnd_08_gen|state_04\(33) & ((!\rnd_08_gen|state_04\(42)))) # 
-- (!\rnd_08_gen|state_04\(33) & (!\rnd_08_gen|state_04\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001110011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(13),
	datab => \rnd_08_gen|state_04\(34),
	datac => \rnd_08_gen|state_04\(42),
	datad => \rnd_08_gen|state_04\(33),
	combout => \rnd_08_gen|Mux230~0_combout\);

\rnd_08_gen|state_05[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux230~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(38));

\rnd_08_gen|Mux224~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux224~0_combout\ = (\rnd_08_gen|state_04\(17) & ((\rnd_08_gen|state_04\(43) & (!\rnd_08_gen|state_04\(40))) # (!\rnd_08_gen|state_04\(43) & ((!\rnd_08_gen|state_04\(35)))))) # (!\rnd_08_gen|state_04\(17) & (((!\rnd_08_gen|state_04\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(17),
	datab => \rnd_08_gen|state_04\(43),
	datac => \rnd_08_gen|state_04\(40),
	datad => \rnd_08_gen|state_04\(35),
	combout => \rnd_08_gen|Mux224~0_combout\);

\rnd_08_gen|state_05[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux224~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(32));

\rnd_08_gen|Mux267~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux267~0_combout\ = (\rnd_08_gen|state_05\(40) & ((\rnd_08_gen|state_05\(38) & ((!\rnd_08_gen|state_05\(32)))) # (!\rnd_08_gen|state_05\(38) & (!\rnd_08_gen|state_05\(19))))) # (!\rnd_08_gen|state_05\(40) & ((\rnd_08_gen|state_05\(38) $ 
-- (!\rnd_08_gen|state_05\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(40),
	datab => \rnd_08_gen|state_05\(19),
	datac => \rnd_08_gen|state_05\(38),
	datad => \rnd_08_gen|state_05\(32),
	combout => \rnd_08_gen|Mux267~0_combout\);

\rnd_08_gen|state_06[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux267~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(27));

\rnd_08_gen|Mux249~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux249~0_combout\ = (\rnd_08_gen|state_05\(16) & ((\rnd_08_gen|state_05\(39) & (\rnd_08_gen|state_05\(23))) # (!\rnd_08_gen|state_05\(39) & ((\rnd_08_gen|state_05\(47)))))) # (!\rnd_08_gen|state_05\(16) & ((\rnd_08_gen|state_05\(47) & 
-- ((!\rnd_08_gen|state_05\(23)))) # (!\rnd_08_gen|state_05\(47) & (!\rnd_08_gen|state_05\(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(39),
	datab => \rnd_08_gen|state_05\(16),
	datac => \rnd_08_gen|state_05\(23),
	datad => \rnd_08_gen|state_05\(47),
	combout => \rnd_08_gen|Mux249~0_combout\);

\rnd_08_gen|state_06[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux249~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(9));

\rnd_08_gen|Mux296~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux296~0_combout\ = (\rnd_08_gen|state_06\(5) & ((\rnd_08_gen|state_06\(27) & (\rnd_08_gen|state_06\(17))) # (!\rnd_08_gen|state_06\(27) & ((\rnd_08_gen|state_06\(9)))))) # (!\rnd_08_gen|state_06\(5) & (\rnd_08_gen|state_06\(17) $ 
-- (((\rnd_08_gen|state_06\(9)) # (!\rnd_08_gen|state_06\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(5),
	datab => \rnd_08_gen|state_06\(17),
	datac => \rnd_08_gen|state_06\(27),
	datad => \rnd_08_gen|state_06\(9),
	combout => \rnd_08_gen|Mux296~0_combout\);

\rnd_08_gen|state_07[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux296~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(8));

\rnd_08_gen|Mux343~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux343~0_combout\ = (\rnd_08_gen|state_07\(16) & (\rnd_08_gen|state_07\(8) $ (((\rnd_08_gen|state_07\(44)) # (!\rnd_08_gen|state_07\(31)))))) # (!\rnd_08_gen|state_07\(16) & ((\rnd_08_gen|state_07\(8) & ((\rnd_08_gen|state_07\(31)))) # 
-- (!\rnd_08_gen|state_07\(8) & (\rnd_08_gen|state_07\(44)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_07\(44),
	datab => \rnd_08_gen|state_07\(31),
	datac => \rnd_08_gen|state_07\(16),
	datad => \rnd_08_gen|state_07\(8),
	combout => \rnd_08_gen|Mux343~0_combout\);

\rnd_08_gen|state_08[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux343~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_08\(18));

\rnd_08_gen|Mux317~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux317~0_combout\ = (\rnd_08_gen|state_06\(32) & (((\rnd_08_gen|state_06\(36) & \rnd_08_gen|state_06\(18))))) # (!\rnd_08_gen|state_06\(32) & (((!\rnd_08_gen|state_06\(18))) # (!\rnd_08_gen|state_06\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(32),
	datab => \rnd_08_gen|state_06\(31),
	datac => \rnd_08_gen|state_06\(36),
	datad => \rnd_08_gen|state_06\(18),
	combout => \rnd_08_gen|Mux317~0_combout\);

\rnd_08_gen|state_07[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux317~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(29));

\rnd_08_gen|Mux207~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux207~0_combout\ = (\rnd_08_gen|state_04\(10) & (((\rnd_08_gen|state_04\(20))))) # (!\rnd_08_gen|state_04\(10) & ((\rnd_08_gen|state_04\(25) & ((!\rnd_08_gen|state_04\(20)))) # (!\rnd_08_gen|state_04\(25) & (\rnd_08_gen|state_04\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(16),
	datab => \rnd_08_gen|state_04\(10),
	datac => \rnd_08_gen|state_04\(20),
	datad => \rnd_08_gen|state_04\(25),
	combout => \rnd_08_gen|Mux207~0_combout\);

\rnd_08_gen|state_05[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux207~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(15));

\rnd_08_gen|Mux201~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux201~0_combout\ = (\rnd_08_gen|state_04\(46) & (((\rnd_08_gen|state_04\(11))))) # (!\rnd_08_gen|state_04\(46) & (\rnd_08_gen|state_04\(32) $ (((!\rnd_08_gen|state_04\(39) & \rnd_08_gen|state_04\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(32),
	datab => \rnd_08_gen|state_04\(39),
	datac => \rnd_08_gen|state_04\(46),
	datad => \rnd_08_gen|state_04\(11),
	combout => \rnd_08_gen|Mux201~0_combout\);

\rnd_08_gen|state_05[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux201~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(9));

\rnd_08_gen|Mux228~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux228~0_combout\ = (\rnd_08_gen|state_04\(42) & ((\rnd_08_gen|state_04\(33) & ((\rnd_08_gen|state_04\(34)))) # (!\rnd_08_gen|state_04\(33) & (!\rnd_08_gen|state_04\(13))))) # (!\rnd_08_gen|state_04\(42) & (\rnd_08_gen|state_04\(33) $ 
-- (((!\rnd_08_gen|state_04\(13) & !\rnd_08_gen|state_04\(34))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(13),
	datab => \rnd_08_gen|state_04\(34),
	datac => \rnd_08_gen|state_04\(42),
	datad => \rnd_08_gen|state_04\(33),
	combout => \rnd_08_gen|Mux228~0_combout\);

\rnd_08_gen|state_05[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux228~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(36));

\rnd_08_gen|Mux202~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux202~0_combout\ = (\rnd_08_gen|state_04\(32) & ((\rnd_08_gen|state_04\(46)) # ((!\rnd_08_gen|state_04\(39) & !\rnd_08_gen|state_04\(11))))) # (!\rnd_08_gen|state_04\(32) & ((\rnd_08_gen|state_04\(46) & (!\rnd_08_gen|state_04\(39) & 
-- !\rnd_08_gen|state_04\(11))) # (!\rnd_08_gen|state_04\(46) & ((\rnd_08_gen|state_04\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_04\(32),
	datab => \rnd_08_gen|state_04\(39),
	datac => \rnd_08_gen|state_04\(46),
	datad => \rnd_08_gen|state_04\(11),
	combout => \rnd_08_gen|Mux202~0_combout\);

\rnd_08_gen|state_05[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux202~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_05\(10));

\rnd_08_gen|Mux260~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux260~0_combout\ = \rnd_08_gen|state_05\(15) $ (((\rnd_08_gen|state_05\(9) & ((\rnd_08_gen|state_05\(36)) # (!\rnd_08_gen|state_05\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(15),
	datab => \rnd_08_gen|state_05\(9),
	datac => \rnd_08_gen|state_05\(36),
	datad => \rnd_08_gen|state_05\(10),
	combout => \rnd_08_gen|Mux260~0_combout\);

\rnd_08_gen|state_06[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux260~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(20));

\rnd_08_gen|Mux255~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux255~0_combout\ = (\rnd_08_gen|state_05\(12) & (\rnd_08_gen|state_05\(29) $ (((!\rnd_08_gen|state_05\(41) & \rnd_08_gen|state_05\(31)))))) # (!\rnd_08_gen|state_05\(12) & ((\rnd_08_gen|state_05\(31) & ((!\rnd_08_gen|state_05\(29)))) # 
-- (!\rnd_08_gen|state_05\(31) & (!\rnd_08_gen|state_05\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(41),
	datab => \rnd_08_gen|state_05\(12),
	datac => \rnd_08_gen|state_05\(29),
	datad => \rnd_08_gen|state_05\(31),
	combout => \rnd_08_gen|Mux255~0_combout\);

\rnd_08_gen|state_06[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux255~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(15));

\rnd_08_gen|Mux285~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux285~0_combout\ = (\rnd_08_gen|state_05\(21) & (\rnd_08_gen|state_05\(24) $ (((!\rnd_08_gen|state_05\(28) & \rnd_08_gen|state_05\(44)))))) # (!\rnd_08_gen|state_05\(21) & (\rnd_08_gen|state_05\(44) $ (((!\rnd_08_gen|state_05\(24) & 
-- !\rnd_08_gen|state_05\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(24),
	datab => \rnd_08_gen|state_05\(21),
	datac => \rnd_08_gen|state_05\(28),
	datad => \rnd_08_gen|state_05\(44),
	combout => \rnd_08_gen|Mux285~0_combout\);

\rnd_08_gen|state_06[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux285~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(45));

\rnd_08_gen|Mux274~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux274~0_combout\ = (\rnd_08_gen|state_05\(6) & (\rnd_08_gen|state_05\(3) $ ((!\rnd_08_gen|state_05\(46))))) # (!\rnd_08_gen|state_05\(6) & ((\rnd_08_gen|state_05\(26) & (\rnd_08_gen|state_05\(3))) # (!\rnd_08_gen|state_05\(26) & 
-- ((\rnd_08_gen|state_05\(46))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(3),
	datab => \rnd_08_gen|state_05\(46),
	datac => \rnd_08_gen|state_05\(6),
	datad => \rnd_08_gen|state_05\(26),
	combout => \rnd_08_gen|Mux274~0_combout\);

\rnd_08_gen|state_06[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux274~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(34));

\rnd_08_gen|Mux313~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux313~0_combout\ = (\rnd_08_gen|state_06\(20) & ((\rnd_08_gen|state_06\(15) & ((\rnd_08_gen|state_06\(34)))) # (!\rnd_08_gen|state_06\(15) & (\rnd_08_gen|state_06\(45))))) # (!\rnd_08_gen|state_06\(20) & ((\rnd_08_gen|state_06\(45) & 
-- (!\rnd_08_gen|state_06\(15))) # (!\rnd_08_gen|state_06\(45) & ((!\rnd_08_gen|state_06\(34))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(20),
	datab => \rnd_08_gen|state_06\(15),
	datac => \rnd_08_gen|state_06\(45),
	datad => \rnd_08_gen|state_06\(34),
	combout => \rnd_08_gen|Mux313~0_combout\);

\rnd_08_gen|state_07[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux313~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(25));

\rnd_08_gen|Mux335~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux335~0_combout\ = \rnd_08_gen|state_06\(38) $ (((\rnd_08_gen|state_06\(12) & (!\rnd_08_gen|state_06\(47) & \rnd_08_gen|state_06\(43))) # (!\rnd_08_gen|state_06\(12) & ((\rnd_08_gen|state_06\(43)) # (!\rnd_08_gen|state_06\(47))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(12),
	datab => \rnd_08_gen|state_06\(47),
	datac => \rnd_08_gen|state_06\(38),
	datad => \rnd_08_gen|state_06\(43),
	combout => \rnd_08_gen|Mux335~0_combout\);

\rnd_08_gen|state_07[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux335~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(47));

\rnd_08_gen|Mux242~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux242~0_combout\ = (\rnd_08_gen|state_05\(30) & (((\rnd_08_gen|state_05\(11) & !\rnd_08_gen|state_05\(33))) # (!\rnd_08_gen|state_05\(7)))) # (!\rnd_08_gen|state_05\(30) & (!\rnd_08_gen|state_05\(11) & ((\rnd_08_gen|state_05\(33)) # 
-- (!\rnd_08_gen|state_05\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(7),
	datab => \rnd_08_gen|state_05\(30),
	datac => \rnd_08_gen|state_05\(11),
	datad => \rnd_08_gen|state_05\(33),
	combout => \rnd_08_gen|Mux242~0_combout\);

\rnd_08_gen|state_06[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux242~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(2));

\rnd_08_gen|Mux268~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux268~0_combout\ = (\rnd_08_gen|state_05\(34) & ((\rnd_08_gen|state_05\(20)) # ((\rnd_08_gen|state_05\(43))))) # (!\rnd_08_gen|state_05\(34) & (((\rnd_08_gen|state_05\(18) & !\rnd_08_gen|state_05\(43)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(34),
	datab => \rnd_08_gen|state_05\(20),
	datac => \rnd_08_gen|state_05\(18),
	datad => \rnd_08_gen|state_05\(43),
	combout => \rnd_08_gen|Mux268~0_combout\);

\rnd_08_gen|state_06[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux268~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(28));

\rnd_08_gen|Mux264~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux264~0_combout\ = (\rnd_08_gen|state_05\(38) & ((\rnd_08_gen|state_05\(40) $ (!\rnd_08_gen|state_05\(19))) # (!\rnd_08_gen|state_05\(32)))) # (!\rnd_08_gen|state_05\(38) & (((\rnd_08_gen|state_05\(19) & !\rnd_08_gen|state_05\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(40),
	datab => \rnd_08_gen|state_05\(19),
	datac => \rnd_08_gen|state_05\(38),
	datad => \rnd_08_gen|state_05\(32),
	combout => \rnd_08_gen|Mux264~0_combout\);

\rnd_08_gen|state_06[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux264~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(24));

\rnd_08_gen|Mux280~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux280~0_combout\ = (\rnd_08_gen|state_05\(22) & (!\rnd_08_gen|state_05\(0) & ((!\rnd_08_gen|state_05\(35))))) # (!\rnd_08_gen|state_05\(22) & (((\rnd_08_gen|state_05\(17))) # (!\rnd_08_gen|state_05\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(22),
	datab => \rnd_08_gen|state_05\(0),
	datac => \rnd_08_gen|state_05\(17),
	datad => \rnd_08_gen|state_05\(35),
	combout => \rnd_08_gen|Mux280~0_combout\);

\rnd_08_gen|state_06[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux280~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(40));

\rnd_08_gen|Mux292~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux292~0_combout\ = (\rnd_08_gen|state_06\(2) & ((\rnd_08_gen|state_06\(40) & ((!\rnd_08_gen|state_06\(24)))) # (!\rnd_08_gen|state_06\(40) & (!\rnd_08_gen|state_06\(28))))) # (!\rnd_08_gen|state_06\(2) & (((!\rnd_08_gen|state_06\(40)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(2),
	datab => \rnd_08_gen|state_06\(28),
	datac => \rnd_08_gen|state_06\(24),
	datad => \rnd_08_gen|state_06\(40),
	combout => \rnd_08_gen|Mux292~0_combout\);

\rnd_08_gen|state_07[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux292~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(4));

\rnd_08_gen|Mux358~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux358~0_combout\ = (\rnd_08_gen|state_07\(29) & (!\rnd_08_gen|state_07\(25))) # (!\rnd_08_gen|state_07\(29) & ((\rnd_08_gen|state_07\(47) & (!\rnd_08_gen|state_07\(25))) # (!\rnd_08_gen|state_07\(47) & ((!\rnd_08_gen|state_07\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_07\(29),
	datab => \rnd_08_gen|state_07\(25),
	datac => \rnd_08_gen|state_07\(47),
	datad => \rnd_08_gen|state_07\(4),
	combout => \rnd_08_gen|Mux358~0_combout\);

\rnd_08_gen|state_08[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux358~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_08\(46));

\rnd_08_gen|Mux262~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux262~0_combout\ = (\rnd_08_gen|state_05\(15) & ((\rnd_08_gen|state_05\(9) & ((\rnd_08_gen|state_05\(10)) # (!\rnd_08_gen|state_05\(36)))) # (!\rnd_08_gen|state_05\(9) & (!\rnd_08_gen|state_05\(36) & \rnd_08_gen|state_05\(10))))) # 
-- (!\rnd_08_gen|state_05\(15) & (\rnd_08_gen|state_05\(36) $ (((!\rnd_08_gen|state_05\(9) & !\rnd_08_gen|state_05\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(15),
	datab => \rnd_08_gen|state_05\(9),
	datac => \rnd_08_gen|state_05\(36),
	datad => \rnd_08_gen|state_05\(10),
	combout => \rnd_08_gen|Mux262~0_combout\);

\rnd_08_gen|state_06[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux262~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(22));

\rnd_08_gen|Mux244~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux244~0_combout\ = (\rnd_08_gen|state_05\(14) & (!\rnd_08_gen|state_05\(27) & (!\rnd_08_gen|state_05\(13)))) # (!\rnd_08_gen|state_05\(14) & ((\rnd_08_gen|state_05\(5)) # (\rnd_08_gen|state_05\(27) $ (\rnd_08_gen|state_05\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(27),
	datab => \rnd_08_gen|state_05\(13),
	datac => \rnd_08_gen|state_05\(14),
	datad => \rnd_08_gen|state_05\(5),
	combout => \rnd_08_gen|Mux244~0_combout\);

\rnd_08_gen|state_06[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux244~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(4));

\rnd_08_gen|Mux254~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux254~0_combout\ = (\rnd_08_gen|state_05\(29) & (\rnd_08_gen|state_05\(31) & ((\rnd_08_gen|state_05\(41)) # (!\rnd_08_gen|state_05\(12))))) # (!\rnd_08_gen|state_05\(29) & ((\rnd_08_gen|state_05\(41) & ((!\rnd_08_gen|state_05\(31)) # 
-- (!\rnd_08_gen|state_05\(12)))) # (!\rnd_08_gen|state_05\(41) & (\rnd_08_gen|state_05\(12) $ (!\rnd_08_gen|state_05\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(41),
	datab => \rnd_08_gen|state_05\(12),
	datac => \rnd_08_gen|state_05\(29),
	datad => \rnd_08_gen|state_05\(31),
	combout => \rnd_08_gen|Mux254~0_combout\);

\rnd_08_gen|state_06[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux254~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(14));

\rnd_08_gen|Mux266~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux266~0_combout\ = (\rnd_08_gen|state_05\(40) & (\rnd_08_gen|state_05\(19) $ (((!\rnd_08_gen|state_05\(32)))))) # (!\rnd_08_gen|state_05\(40) & ((\rnd_08_gen|state_05\(19) & (\rnd_08_gen|state_05\(38) & \rnd_08_gen|state_05\(32))) # 
-- (!\rnd_08_gen|state_05\(19) & ((\rnd_08_gen|state_05\(38)) # (\rnd_08_gen|state_05\(32))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(40),
	datab => \rnd_08_gen|state_05\(19),
	datac => \rnd_08_gen|state_05\(38),
	datad => \rnd_08_gen|state_05\(32),
	combout => \rnd_08_gen|Mux266~0_combout\);

\rnd_08_gen|state_06[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux266~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(26));

\rnd_08_gen|Mux301~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux301~0_combout\ = (\rnd_08_gen|state_06\(22) & (\rnd_08_gen|state_06\(4) $ (((!\rnd_08_gen|state_06\(14) & !\rnd_08_gen|state_06\(26)))))) # (!\rnd_08_gen|state_06\(22) & (\rnd_08_gen|state_06\(26) $ (((!\rnd_08_gen|state_06\(14)) # 
-- (!\rnd_08_gen|state_06\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(22),
	datab => \rnd_08_gen|state_06\(4),
	datac => \rnd_08_gen|state_06\(14),
	datad => \rnd_08_gen|state_06\(26),
	combout => \rnd_08_gen|Mux301~0_combout\);

\rnd_08_gen|state_07[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux301~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(13));

\rnd_08_gen|Mux334~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux334~0_combout\ = (\rnd_08_gen|state_06\(47) & (\rnd_08_gen|state_06\(12) & ((\rnd_08_gen|state_06\(43))))) # (!\rnd_08_gen|state_06\(47) & ((\rnd_08_gen|state_06\(12) $ (!\rnd_08_gen|state_06\(43))) # (!\rnd_08_gen|state_06\(38))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(12),
	datab => \rnd_08_gen|state_06\(47),
	datac => \rnd_08_gen|state_06\(38),
	datad => \rnd_08_gen|state_06\(43),
	combout => \rnd_08_gen|Mux334~0_combout\);

\rnd_08_gen|state_07[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux334~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(46));

\rnd_08_gen|Mux312~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux312~0_combout\ = (\rnd_08_gen|state_06\(34) & ((\rnd_08_gen|state_06\(15) & ((\rnd_08_gen|state_06\(45)))) # (!\rnd_08_gen|state_06\(15) & (!\rnd_08_gen|state_06\(20))))) # (!\rnd_08_gen|state_06\(34) & (\rnd_08_gen|state_06\(15) $ 
-- (((!\rnd_08_gen|state_06\(20) & \rnd_08_gen|state_06\(45))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(20),
	datab => \rnd_08_gen|state_06\(15),
	datac => \rnd_08_gen|state_06\(45),
	datad => \rnd_08_gen|state_06\(34),
	combout => \rnd_08_gen|Mux312~0_combout\);

\rnd_08_gen|state_07[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux312~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(24));

\rnd_08_gen|Mux295~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux295~0_combout\ = (\rnd_08_gen|state_06\(28) & (((\rnd_08_gen|state_06\(24) & !\rnd_08_gen|state_06\(40))))) # (!\rnd_08_gen|state_06\(28) & ((\rnd_08_gen|state_06\(2) & ((\rnd_08_gen|state_06\(24)) # (!\rnd_08_gen|state_06\(40)))) # 
-- (!\rnd_08_gen|state_06\(2) & ((\rnd_08_gen|state_06\(40)) # (!\rnd_08_gen|state_06\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(2),
	datab => \rnd_08_gen|state_06\(28),
	datac => \rnd_08_gen|state_06\(24),
	datad => \rnd_08_gen|state_06\(40),
	combout => \rnd_08_gen|Mux295~0_combout\);

\rnd_08_gen|state_07[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux295~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(7));

\rnd_08_gen|Mux348~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux348~0_combout\ = (\rnd_08_gen|state_07\(13) & (\rnd_08_gen|state_07\(46) $ (((\rnd_08_gen|state_07\(24)) # (\rnd_08_gen|state_07\(7)))))) # (!\rnd_08_gen|state_07\(13) & (((!\rnd_08_gen|state_07\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_07\(13),
	datab => \rnd_08_gen|state_07\(46),
	datac => \rnd_08_gen|state_07\(24),
	datad => \rnd_08_gen|state_07\(7),
	combout => \rnd_08_gen|Mux348~0_combout\);

\rnd_08_gen|state_08[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux348~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_08\(29));

\rnd_08_gen|Mux318~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux318~0_combout\ = (\rnd_08_gen|state_06\(31) & ((\rnd_08_gen|state_06\(32) $ (!\rnd_08_gen|state_06\(18))) # (!\rnd_08_gen|state_06\(36)))) # (!\rnd_08_gen|state_06\(31) & (!\rnd_08_gen|state_06\(36) & (\rnd_08_gen|state_06\(32) $ 
-- (!\rnd_08_gen|state_06\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(32),
	datab => \rnd_08_gen|state_06\(31),
	datac => \rnd_08_gen|state_06\(36),
	datad => \rnd_08_gen|state_06\(18),
	combout => \rnd_08_gen|Mux318~0_combout\);

\rnd_08_gen|state_07[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux318~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(30));

\rnd_08_gen|Mux286~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux286~0_combout\ = (\rnd_08_gen|state_05\(24) & (((!\rnd_08_gen|state_05\(21) & \rnd_08_gen|state_05\(44))) # (!\rnd_08_gen|state_05\(28)))) # (!\rnd_08_gen|state_05\(24) & (\rnd_08_gen|state_05\(21) & ((!\rnd_08_gen|state_05\(44)) # 
-- (!\rnd_08_gen|state_05\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(24),
	datab => \rnd_08_gen|state_05\(21),
	datac => \rnd_08_gen|state_05\(28),
	datad => \rnd_08_gen|state_05\(44),
	combout => \rnd_08_gen|Mux286~0_combout\);

\rnd_08_gen|state_06[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux286~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(46));

\rnd_08_gen|Mux270~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux270~0_combout\ = (\rnd_08_gen|state_05\(34) & ((\rnd_08_gen|state_05\(43) & ((!\rnd_08_gen|state_05\(18)))) # (!\rnd_08_gen|state_05\(43) & (!\rnd_08_gen|state_05\(20))))) # (!\rnd_08_gen|state_05\(34) & ((\rnd_08_gen|state_05\(20) & 
-- (\rnd_08_gen|state_05\(18))) # (!\rnd_08_gen|state_05\(20) & ((!\rnd_08_gen|state_05\(43))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(34),
	datab => \rnd_08_gen|state_05\(20),
	datac => \rnd_08_gen|state_05\(18),
	datad => \rnd_08_gen|state_05\(43),
	combout => \rnd_08_gen|Mux270~0_combout\);

\rnd_08_gen|state_06[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux270~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(30));

\rnd_08_gen|Mux277~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux277~0_combout\ = (\rnd_08_gen|state_05\(25) & ((\rnd_08_gen|state_05\(37)) # ((!\rnd_08_gen|state_05\(4) & !\rnd_08_gen|state_05\(2))))) # (!\rnd_08_gen|state_05\(25) & (\rnd_08_gen|state_05\(4) & ((\rnd_08_gen|state_05\(2)) # 
-- (\rnd_08_gen|state_05\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(25),
	datab => \rnd_08_gen|state_05\(4),
	datac => \rnd_08_gen|state_05\(2),
	datad => \rnd_08_gen|state_05\(37),
	combout => \rnd_08_gen|Mux277~0_combout\);

\rnd_08_gen|state_06[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux277~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(37));

\rnd_08_gen|Mux261~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux261~0_combout\ = (\rnd_08_gen|state_05\(10) & (\rnd_08_gen|state_05\(36) $ (((!\rnd_08_gen|state_05\(15) & !\rnd_08_gen|state_05\(9)))))) # (!\rnd_08_gen|state_05\(10) & ((\rnd_08_gen|state_05\(36) & (!\rnd_08_gen|state_05\(15))) # 
-- (!\rnd_08_gen|state_05\(36) & ((!\rnd_08_gen|state_05\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(15),
	datab => \rnd_08_gen|state_05\(9),
	datac => \rnd_08_gen|state_05\(36),
	datad => \rnd_08_gen|state_05\(10),
	combout => \rnd_08_gen|Mux261~0_combout\);

\rnd_08_gen|state_06[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux261~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(21));

\rnd_08_gen|Mux328~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux328~0_combout\ = (\rnd_08_gen|state_06\(30) & (\rnd_08_gen|state_06\(37) $ (((\rnd_08_gen|state_06\(46) & \rnd_08_gen|state_06\(21)))))) # (!\rnd_08_gen|state_06\(30) & ((\rnd_08_gen|state_06\(37) & (!\rnd_08_gen|state_06\(46))) # 
-- (!\rnd_08_gen|state_06\(37) & ((!\rnd_08_gen|state_06\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(46),
	datab => \rnd_08_gen|state_06\(30),
	datac => \rnd_08_gen|state_06\(37),
	datad => \rnd_08_gen|state_06\(21),
	combout => \rnd_08_gen|Mux328~0_combout\);

\rnd_08_gen|state_07[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux328~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(40));

\rnd_08_gen|Mux333~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux333~0_combout\ = (\rnd_08_gen|state_06\(47) & ((\rnd_08_gen|state_06\(43)) # (\rnd_08_gen|state_06\(12) $ (!\rnd_08_gen|state_06\(38))))) # (!\rnd_08_gen|state_06\(47) & (\rnd_08_gen|state_06\(12) & (!\rnd_08_gen|state_06\(38))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(12),
	datab => \rnd_08_gen|state_06\(47),
	datac => \rnd_08_gen|state_06\(38),
	datad => \rnd_08_gen|state_06\(43),
	combout => \rnd_08_gen|Mux333~0_combout\);

\rnd_08_gen|state_07[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux333~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(45));

\rnd_08_gen|Mux282~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux282~0_combout\ = (\rnd_08_gen|state_05\(22) & (\rnd_08_gen|state_05\(0))) # (!\rnd_08_gen|state_05\(22) & (\rnd_08_gen|state_05\(17) $ (((!\rnd_08_gen|state_05\(0) & !\rnd_08_gen|state_05\(35))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(22),
	datab => \rnd_08_gen|state_05\(0),
	datac => \rnd_08_gen|state_05\(17),
	datad => \rnd_08_gen|state_05\(35),
	combout => \rnd_08_gen|Mux282~0_combout\);

\rnd_08_gen|state_06[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux282~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(42));

\rnd_08_gen|Mux275~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux275~0_combout\ = (\rnd_08_gen|state_05\(3) & ((\rnd_08_gen|state_05\(46) & (\rnd_08_gen|state_05\(6) & \rnd_08_gen|state_05\(26))) # (!\rnd_08_gen|state_05\(46) & (\rnd_08_gen|state_05\(6) $ (\rnd_08_gen|state_05\(26)))))) # 
-- (!\rnd_08_gen|state_05\(3) & (((!\rnd_08_gen|state_05\(46) & \rnd_08_gen|state_05\(26))) # (!\rnd_08_gen|state_05\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011100100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(3),
	datab => \rnd_08_gen|state_05\(46),
	datac => \rnd_08_gen|state_05\(6),
	datad => \rnd_08_gen|state_05\(26),
	combout => \rnd_08_gen|Mux275~0_combout\);

\rnd_08_gen|state_06[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux275~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(35));

\rnd_08_gen|Mux269~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux269~0_combout\ = (\rnd_08_gen|state_05\(20) & (((!\rnd_08_gen|state_05\(18))))) # (!\rnd_08_gen|state_05\(20) & (\rnd_08_gen|state_05\(34) $ (((!\rnd_08_gen|state_05\(18) & !\rnd_08_gen|state_05\(43))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(34),
	datab => \rnd_08_gen|state_05\(20),
	datac => \rnd_08_gen|state_05\(18),
	datad => \rnd_08_gen|state_05\(43),
	combout => \rnd_08_gen|Mux269~0_combout\);

\rnd_08_gen|state_06[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux269~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(29));

\rnd_08_gen|Mux281~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux281~0_combout\ = (\rnd_08_gen|state_05\(22) & (((\rnd_08_gen|state_05\(17))) # (!\rnd_08_gen|state_05\(0)))) # (!\rnd_08_gen|state_05\(22) & (((\rnd_08_gen|state_05\(17) & \rnd_08_gen|state_05\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(22),
	datab => \rnd_08_gen|state_05\(0),
	datac => \rnd_08_gen|state_05\(17),
	datad => \rnd_08_gen|state_05\(35),
	combout => \rnd_08_gen|Mux281~0_combout\);

\rnd_08_gen|state_06[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux281~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(41));

\rnd_08_gen|Mux308~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux308~0_combout\ = (\rnd_08_gen|state_06\(35) & (\rnd_08_gen|state_06\(41) $ (((\rnd_08_gen|state_06\(42) & !\rnd_08_gen|state_06\(29)))))) # (!\rnd_08_gen|state_06\(35) & (\rnd_08_gen|state_06\(42) $ ((!\rnd_08_gen|state_06\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010100101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(42),
	datab => \rnd_08_gen|state_06\(35),
	datac => \rnd_08_gen|state_06\(29),
	datad => \rnd_08_gen|state_06\(41),
	combout => \rnd_08_gen|Mux308~0_combout\);

\rnd_08_gen|state_07[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux308~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(20));

\rnd_08_gen|Mux345~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux345~0_combout\ = \rnd_08_gen|state_07\(45) $ (((\rnd_08_gen|state_07\(30) & ((!\rnd_08_gen|state_07\(20)))) # (!\rnd_08_gen|state_07\(30) & (!\rnd_08_gen|state_07\(40) & \rnd_08_gen|state_07\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_07\(30),
	datab => \rnd_08_gen|state_07\(40),
	datac => \rnd_08_gen|state_07\(45),
	datad => \rnd_08_gen|state_07\(20),
	combout => \rnd_08_gen|Mux345~0_combout\);

\rnd_08_gen|state_08[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux345~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_08\(21));

\rnd_08_gen|Mux367~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux367~0_combout\ = (\rnd_08_gen|state_08\(46) & ((\rnd_08_gen|state_08\(18) & (\rnd_08_gen|state_08\(29))) # (!\rnd_08_gen|state_08\(18) & ((\rnd_08_gen|state_08\(21)))))) # (!\rnd_08_gen|state_08\(46) & ((\rnd_08_gen|state_08\(29) & 
-- (!\rnd_08_gen|state_08\(18))) # (!\rnd_08_gen|state_08\(29) & ((\rnd_08_gen|state_08\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_08\(18),
	datab => \rnd_08_gen|state_08\(46),
	datac => \rnd_08_gen|state_08\(29),
	datad => \rnd_08_gen|state_08\(21),
	combout => \rnd_08_gen|Mux367~0_combout\);

\rnd_08_gen|state_09[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux367~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_09\(42));

\rnd_08_gen|Mux349~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux349~0_combout\ = (\rnd_08_gen|state_07\(24) & ((\rnd_08_gen|state_07\(46) & ((\rnd_08_gen|state_07\(7)))) # (!\rnd_08_gen|state_07\(46) & (!\rnd_08_gen|state_07\(13))))) # (!\rnd_08_gen|state_07\(24) & (((!\rnd_08_gen|state_07\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_07\(13),
	datab => \rnd_08_gen|state_07\(46),
	datac => \rnd_08_gen|state_07\(24),
	datad => \rnd_08_gen|state_07\(7),
	combout => \rnd_08_gen|Mux349~0_combout\);

\rnd_08_gen|state_08[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux349~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_08\(31));

\rnd_08_gen|Mux240~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux240~0_combout\ = (\rnd_08_gen|state_05\(33) & ((\rnd_08_gen|state_05\(30) & ((\rnd_08_gen|state_05\(11)))) # (!\rnd_08_gen|state_05\(30) & (!\rnd_08_gen|state_05\(7))))) # (!\rnd_08_gen|state_05\(33) & (\rnd_08_gen|state_05\(30) $ 
-- (((\rnd_08_gen|state_05\(7) & \rnd_08_gen|state_05\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(7),
	datab => \rnd_08_gen|state_05\(30),
	datac => \rnd_08_gen|state_05\(11),
	datad => \rnd_08_gen|state_05\(33),
	combout => \rnd_08_gen|Mux240~0_combout\);

\rnd_08_gen|state_06[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux240~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(0));

\rnd_08_gen|Mux246~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux246~0_combout\ = (\rnd_08_gen|state_05\(14) & (\rnd_08_gen|state_05\(5) $ (((\rnd_08_gen|state_05\(27) & \rnd_08_gen|state_05\(13)))))) # (!\rnd_08_gen|state_05\(14) & ((\rnd_08_gen|state_05\(5) & (!\rnd_08_gen|state_05\(27))) # 
-- (!\rnd_08_gen|state_05\(5) & ((\rnd_08_gen|state_05\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(27),
	datab => \rnd_08_gen|state_05\(13),
	datac => \rnd_08_gen|state_05\(14),
	datad => \rnd_08_gen|state_05\(5),
	combout => \rnd_08_gen|Mux246~0_combout\);

\rnd_08_gen|state_06[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux246~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(6));

\rnd_08_gen|Mux256~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux256~0_combout\ = (\rnd_08_gen|state_05\(45) & (\rnd_08_gen|state_05\(1) $ (((\rnd_08_gen|state_05\(42)) # (\rnd_08_gen|state_05\(8)))))) # (!\rnd_08_gen|state_05\(45) & ((\rnd_08_gen|state_05\(1) & ((!\rnd_08_gen|state_05\(8)))) # 
-- (!\rnd_08_gen|state_05\(1) & (!\rnd_08_gen|state_05\(42)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(42),
	datab => \rnd_08_gen|state_05\(45),
	datac => \rnd_08_gen|state_05\(1),
	datad => \rnd_08_gen|state_05\(8),
	combout => \rnd_08_gen|Mux256~0_combout\);

\rnd_08_gen|state_06[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux256~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(16));

\rnd_08_gen|Mux247~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux247~0_combout\ = (\rnd_08_gen|state_05\(27) & (\rnd_08_gen|state_05\(5) $ (((\rnd_08_gen|state_05\(14)) # (!\rnd_08_gen|state_05\(13)))))) # (!\rnd_08_gen|state_05\(27) & (\rnd_08_gen|state_05\(13) $ (((!\rnd_08_gen|state_05\(14) & 
-- \rnd_08_gen|state_05\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(27),
	datab => \rnd_08_gen|state_05\(13),
	datac => \rnd_08_gen|state_05\(14),
	datad => \rnd_08_gen|state_05\(5),
	combout => \rnd_08_gen|Mux247~0_combout\);

\rnd_08_gen|state_06[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux247~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(7));

\rnd_08_gen|Mux325~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux325~0_combout\ = (\rnd_08_gen|state_06\(0) & (\rnd_08_gen|state_06\(16) $ (((\rnd_08_gen|state_06\(6) & \rnd_08_gen|state_06\(7)))))) # (!\rnd_08_gen|state_06\(0) & ((\rnd_08_gen|state_06\(6) & (!\rnd_08_gen|state_06\(16))) # 
-- (!\rnd_08_gen|state_06\(6) & ((\rnd_08_gen|state_06\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(0),
	datab => \rnd_08_gen|state_06\(6),
	datac => \rnd_08_gen|state_06\(16),
	datad => \rnd_08_gen|state_06\(7),
	combout => \rnd_08_gen|Mux325~0_combout\);

\rnd_08_gen|state_07[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux325~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(37));

\rnd_08_gen|Mux324~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux324~0_combout\ = (\rnd_08_gen|state_06\(6) & ((\rnd_08_gen|state_06\(7) & (\rnd_08_gen|state_06\(0))) # (!\rnd_08_gen|state_06\(7) & ((\rnd_08_gen|state_06\(16)))))) # (!\rnd_08_gen|state_06\(6) & (\rnd_08_gen|state_06\(7) $ 
-- (((!\rnd_08_gen|state_06\(0) & \rnd_08_gen|state_06\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(0),
	datab => \rnd_08_gen|state_06\(6),
	datac => \rnd_08_gen|state_06\(16),
	datad => \rnd_08_gen|state_06\(7),
	combout => \rnd_08_gen|Mux324~0_combout\);

\rnd_08_gen|state_07[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux324~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(36));

\rnd_08_gen|Mux305~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux305~0_combout\ = (\rnd_08_gen|state_06\(1) & ((\rnd_08_gen|state_06\(13)) # ((!\rnd_08_gen|state_06\(3) & !\rnd_08_gen|state_06\(8))))) # (!\rnd_08_gen|state_06\(1) & ((\rnd_08_gen|state_06\(13) & ((!\rnd_08_gen|state_06\(8)))) # 
-- (!\rnd_08_gen|state_06\(13) & (\rnd_08_gen|state_06\(3) & \rnd_08_gen|state_06\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(3),
	datab => \rnd_08_gen|state_06\(1),
	datac => \rnd_08_gen|state_06\(13),
	datad => \rnd_08_gen|state_06\(8),
	combout => \rnd_08_gen|Mux305~0_combout\);

\rnd_08_gen|state_07[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux305~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(17));

\rnd_08_gen|Mux330~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux330~0_combout\ = (\rnd_08_gen|state_06\(46) & ((\rnd_08_gen|state_06\(30) & (\rnd_08_gen|state_06\(37) & \rnd_08_gen|state_06\(21))) # (!\rnd_08_gen|state_06\(30) & ((\rnd_08_gen|state_06\(37)) # (\rnd_08_gen|state_06\(21)))))) # 
-- (!\rnd_08_gen|state_06\(46) & (((\rnd_08_gen|state_06\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(46),
	datab => \rnd_08_gen|state_06\(30),
	datac => \rnd_08_gen|state_06\(37),
	datad => \rnd_08_gen|state_06\(21),
	combout => \rnd_08_gen|Mux330~0_combout\);

\rnd_08_gen|state_07[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux330~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(42));

\rnd_08_gen|Mux353~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux353~0_combout\ = (\rnd_08_gen|state_07\(36) & (\rnd_08_gen|state_07\(17) & ((!\rnd_08_gen|state_07\(42)) # (!\rnd_08_gen|state_07\(37))))) # (!\rnd_08_gen|state_07\(36) & ((\rnd_08_gen|state_07\(37) & ((\rnd_08_gen|state_07\(17)) # 
-- (!\rnd_08_gen|state_07\(42)))) # (!\rnd_08_gen|state_07\(37) & ((\rnd_08_gen|state_07\(42))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_07\(37),
	datab => \rnd_08_gen|state_07\(36),
	datac => \rnd_08_gen|state_07\(17),
	datad => \rnd_08_gen|state_07\(42),
	combout => \rnd_08_gen|Mux353~0_combout\);

\rnd_08_gen|state_08[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux353~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_08\(36));

\rnd_08_gen|Mux284~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux284~0_combout\ = (\rnd_08_gen|state_05\(24) & (\rnd_08_gen|state_05\(21) $ (((!\rnd_08_gen|state_05\(44)) # (!\rnd_08_gen|state_05\(28)))))) # (!\rnd_08_gen|state_05\(24) & (\rnd_08_gen|state_05\(28) $ (((\rnd_08_gen|state_05\(44)) # 
-- (!\rnd_08_gen|state_05\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(24),
	datab => \rnd_08_gen|state_05\(21),
	datac => \rnd_08_gen|state_05\(28),
	datad => \rnd_08_gen|state_05\(44),
	combout => \rnd_08_gen|Mux284~0_combout\);

\rnd_08_gen|state_06[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux284~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(44));

\rnd_08_gen|Mux265~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux265~0_combout\ = (\rnd_08_gen|state_05\(19) & (!\rnd_08_gen|state_05\(40))) # (!\rnd_08_gen|state_05\(19) & ((\rnd_08_gen|state_05\(38) $ (\rnd_08_gen|state_05\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(40),
	datab => \rnd_08_gen|state_05\(19),
	datac => \rnd_08_gen|state_05\(38),
	datad => \rnd_08_gen|state_05\(32),
	combout => \rnd_08_gen|Mux265~0_combout\);

\rnd_08_gen|state_06[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux265~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(25));

\rnd_08_gen|Mux250~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux250~0_combout\ = (\rnd_08_gen|state_05\(47) & ((\rnd_08_gen|state_05\(16) & (!\rnd_08_gen|state_05\(39))) # (!\rnd_08_gen|state_05\(16) & ((\rnd_08_gen|state_05\(23)))))) # (!\rnd_08_gen|state_05\(47) & ((\rnd_08_gen|state_05\(23) & 
-- (\rnd_08_gen|state_05\(39))) # (!\rnd_08_gen|state_05\(23) & ((!\rnd_08_gen|state_05\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(39),
	datab => \rnd_08_gen|state_05\(16),
	datac => \rnd_08_gen|state_05\(23),
	datad => \rnd_08_gen|state_05\(47),
	combout => \rnd_08_gen|Mux250~0_combout\);

\rnd_08_gen|state_06[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux250~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(10));

\rnd_08_gen|Mux273~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux273~0_combout\ = (\rnd_08_gen|state_05\(3) & (\rnd_08_gen|state_05\(26) $ (((!\rnd_08_gen|state_05\(6)) # (!\rnd_08_gen|state_05\(46)))))) # (!\rnd_08_gen|state_05\(3) & ((\rnd_08_gen|state_05\(26) & ((\rnd_08_gen|state_05\(6)))) # 
-- (!\rnd_08_gen|state_05\(26) & (!\rnd_08_gen|state_05\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(3),
	datab => \rnd_08_gen|state_05\(46),
	datac => \rnd_08_gen|state_05\(6),
	datad => \rnd_08_gen|state_05\(26),
	combout => \rnd_08_gen|Mux273~0_combout\);

\rnd_08_gen|state_06[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux273~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(33));

\rnd_08_gen|Mux288~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux288~0_combout\ = (\rnd_08_gen|state_06\(44) & ((\rnd_08_gen|state_06\(25) & ((!\rnd_08_gen|state_06\(33)))) # (!\rnd_08_gen|state_06\(25) & (!\rnd_08_gen|state_06\(10))))) # (!\rnd_08_gen|state_06\(44) & ((\rnd_08_gen|state_06\(10) & 
-- (\rnd_08_gen|state_06\(25))) # (!\rnd_08_gen|state_06\(10) & ((\rnd_08_gen|state_06\(33))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(44),
	datab => \rnd_08_gen|state_06\(25),
	datac => \rnd_08_gen|state_06\(10),
	datad => \rnd_08_gen|state_06\(33),
	combout => \rnd_08_gen|Mux288~0_combout\);

\rnd_08_gen|state_07[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux288~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(0));

\rnd_08_gen|Mux331~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux331~0_combout\ = (\rnd_08_gen|state_06\(37) & (\rnd_08_gen|state_06\(46) $ (((\rnd_08_gen|state_06\(21)))))) # (!\rnd_08_gen|state_06\(37) & (\rnd_08_gen|state_06\(30) $ (((\rnd_08_gen|state_06\(46)) # (\rnd_08_gen|state_06\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(46),
	datab => \rnd_08_gen|state_06\(30),
	datac => \rnd_08_gen|state_06\(37),
	datad => \rnd_08_gen|state_06\(21),
	combout => \rnd_08_gen|Mux331~0_combout\);

\rnd_08_gen|state_07[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux331~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(43));

\rnd_08_gen|Mux311~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux311~0_combout\ = (\rnd_08_gen|state_06\(42) & (!\rnd_08_gen|state_06\(35) & ((\rnd_08_gen|state_06\(41))))) # (!\rnd_08_gen|state_06\(42) & ((\rnd_08_gen|state_06\(29) $ (\rnd_08_gen|state_06\(41))) # (!\rnd_08_gen|state_06\(35))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(42),
	datab => \rnd_08_gen|state_06\(35),
	datac => \rnd_08_gen|state_06\(29),
	datad => \rnd_08_gen|state_06\(41),
	combout => \rnd_08_gen|Mux311~0_combout\);

\rnd_08_gen|state_07[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux311~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(23));

\rnd_08_gen|Mux307~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux307~0_combout\ = (\rnd_08_gen|state_06\(3) & ((\rnd_08_gen|state_06\(1) & (!\rnd_08_gen|state_06\(13))) # (!\rnd_08_gen|state_06\(1) & ((!\rnd_08_gen|state_06\(8)))))) # (!\rnd_08_gen|state_06\(3) & (\rnd_08_gen|state_06\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(3),
	datab => \rnd_08_gen|state_06\(1),
	datac => \rnd_08_gen|state_06\(13),
	datad => \rnd_08_gen|state_06\(8),
	combout => \rnd_08_gen|Mux307~0_combout\);

\rnd_08_gen|state_07[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux307~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(19));

\rnd_08_gen|Mux356~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux356~0_combout\ = (\rnd_08_gen|state_07\(0) & (!\rnd_08_gen|state_07\(43) & (\rnd_08_gen|state_07\(23) $ (!\rnd_08_gen|state_07\(19))))) # (!\rnd_08_gen|state_07\(0) & (((\rnd_08_gen|state_07\(23)) # (!\rnd_08_gen|state_07\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_07\(0),
	datab => \rnd_08_gen|state_07\(43),
	datac => \rnd_08_gen|state_07\(23),
	datad => \rnd_08_gen|state_07\(19),
	combout => \rnd_08_gen|Mux356~0_combout\);

\rnd_08_gen|state_08[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux356~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_08\(43));

\rnd_08_gen|Mux357~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux357~0_combout\ = (\rnd_08_gen|state_07\(25) & (\rnd_08_gen|state_07\(4) $ (((!\rnd_08_gen|state_07\(29) & !\rnd_08_gen|state_07\(47)))))) # (!\rnd_08_gen|state_07\(25) & (\rnd_08_gen|state_07\(29) $ (((!\rnd_08_gen|state_07\(4)) # 
-- (!\rnd_08_gen|state_07\(47))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_07\(29),
	datab => \rnd_08_gen|state_07\(25),
	datac => \rnd_08_gen|state_07\(47),
	datad => \rnd_08_gen|state_07\(4),
	combout => \rnd_08_gen|Mux357~0_combout\);

\rnd_08_gen|state_08[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux357~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_08\(45));

\rnd_08_gen|Mux362~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux362~0_combout\ = (\rnd_08_gen|state_08\(31) & ((\rnd_08_gen|state_08\(43) & (!\rnd_08_gen|state_08\(36) & \rnd_08_gen|state_08\(45))) # (!\rnd_08_gen|state_08\(43) & ((!\rnd_08_gen|state_08\(45)))))) # (!\rnd_08_gen|state_08\(31) & 
-- ((\rnd_08_gen|state_08\(45)) # ((!\rnd_08_gen|state_08\(36) & \rnd_08_gen|state_08\(43)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_08\(31),
	datab => \rnd_08_gen|state_08\(36),
	datac => \rnd_08_gen|state_08\(43),
	datad => \rnd_08_gen|state_08\(45),
	combout => \rnd_08_gen|Mux362~0_combout\);

\rnd_08_gen|state_09[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux362~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_09\(19));

\rnd_08_gen|Mux361~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux361~0_combout\ = (\rnd_08_gen|state_08\(36) & ((\rnd_08_gen|state_08\(31)) # ((!\rnd_08_gen|state_08\(43))))) # (!\rnd_08_gen|state_08\(36) & (!\rnd_08_gen|state_08\(45) & (\rnd_08_gen|state_08\(31) $ (\rnd_08_gen|state_08\(43)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_08\(31),
	datab => \rnd_08_gen|state_08\(36),
	datac => \rnd_08_gen|state_08\(43),
	datad => \rnd_08_gen|state_08\(45),
	combout => \rnd_08_gen|Mux361~0_combout\);

\rnd_08_gen|state_09[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux361~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_09\(17));

\rnd_08_gen|Mux355~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux355~0_combout\ = (\rnd_08_gen|state_07\(0) & ((\rnd_08_gen|state_07\(19) & (!\rnd_08_gen|state_07\(43))) # (!\rnd_08_gen|state_07\(19) & ((!\rnd_08_gen|state_07\(23)))))) # (!\rnd_08_gen|state_07\(0) & (((\rnd_08_gen|state_07\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_07\(0),
	datab => \rnd_08_gen|state_07\(43),
	datac => \rnd_08_gen|state_07\(23),
	datad => \rnd_08_gen|state_07\(19),
	combout => \rnd_08_gen|Mux355~0_combout\);

\rnd_08_gen|state_08[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux355~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_08\(42));

\rnd_08_gen|Mux299~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux299~0_combout\ = (\rnd_08_gen|state_06\(27) & (\rnd_08_gen|state_06\(9) $ (((\rnd_08_gen|state_06\(5) & !\rnd_08_gen|state_06\(17)))))) # (!\rnd_08_gen|state_06\(27) & ((\rnd_08_gen|state_06\(9) & ((\rnd_08_gen|state_06\(17)))) # 
-- (!\rnd_08_gen|state_06\(9) & (!\rnd_08_gen|state_06\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(5),
	datab => \rnd_08_gen|state_06\(17),
	datac => \rnd_08_gen|state_06\(27),
	datad => \rnd_08_gen|state_06\(9),
	combout => \rnd_08_gen|Mux299~0_combout\);

\rnd_08_gen|state_07[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux299~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(11));

\rnd_08_gen|Mux315~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux315~0_combout\ = (\rnd_08_gen|state_06\(20) & ((\rnd_08_gen|state_06\(45)) # ((!\rnd_08_gen|state_06\(15) & \rnd_08_gen|state_06\(34))))) # (!\rnd_08_gen|state_06\(20) & (\rnd_08_gen|state_06\(45) & ((\rnd_08_gen|state_06\(15)) # 
-- (\rnd_08_gen|state_06\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(20),
	datab => \rnd_08_gen|state_06\(15),
	datac => \rnd_08_gen|state_06\(45),
	datad => \rnd_08_gen|state_06\(34),
	combout => \rnd_08_gen|Mux315~0_combout\);

\rnd_08_gen|state_07[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux315~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(27));

\rnd_08_gen|Mux259~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux259~0_combout\ = (\rnd_08_gen|state_05\(42) & ((\rnd_08_gen|state_05\(1) & ((\rnd_08_gen|state_05\(8)))) # (!\rnd_08_gen|state_05\(1) & ((\rnd_08_gen|state_05\(45)) # (!\rnd_08_gen|state_05\(8)))))) # (!\rnd_08_gen|state_05\(42) & 
-- (!\rnd_08_gen|state_05\(8) & ((\rnd_08_gen|state_05\(45)) # (\rnd_08_gen|state_05\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(42),
	datab => \rnd_08_gen|state_05\(45),
	datac => \rnd_08_gen|state_05\(1),
	datad => \rnd_08_gen|state_05\(8),
	combout => \rnd_08_gen|Mux259~0_combout\);

\rnd_08_gen|state_06[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(19));

\rnd_08_gen|Mux263~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux263~0_combout\ = (\rnd_08_gen|state_05\(36) & (\rnd_08_gen|state_05\(15) $ (((!\rnd_08_gen|state_05\(10)))))) # (!\rnd_08_gen|state_05\(36) & (\rnd_08_gen|state_05\(9) $ (((\rnd_08_gen|state_05\(15) & \rnd_08_gen|state_05\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(15),
	datab => \rnd_08_gen|state_05\(9),
	datac => \rnd_08_gen|state_05\(36),
	datad => \rnd_08_gen|state_05\(10),
	combout => \rnd_08_gen|Mux263~0_combout\);

\rnd_08_gen|state_06[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux263~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(23));

\rnd_08_gen|Mux251~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux251~0_combout\ = (\rnd_08_gen|state_05\(39) & (((\rnd_08_gen|state_05\(16) & \rnd_08_gen|state_05\(23))) # (!\rnd_08_gen|state_05\(47)))) # (!\rnd_08_gen|state_05\(39) & ((\rnd_08_gen|state_05\(23) & (\rnd_08_gen|state_05\(16) & 
-- !\rnd_08_gen|state_05\(47))) # (!\rnd_08_gen|state_05\(23) & ((\rnd_08_gen|state_05\(47))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(39),
	datab => \rnd_08_gen|state_05\(16),
	datac => \rnd_08_gen|state_05\(23),
	datad => \rnd_08_gen|state_05\(47),
	combout => \rnd_08_gen|Mux251~0_combout\);

\rnd_08_gen|state_06[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux251~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(11));

\rnd_08_gen|Mux279~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux279~0_combout\ = (\rnd_08_gen|state_05\(25) & (\rnd_08_gen|state_05\(37) & (\rnd_08_gen|state_05\(4) $ (\rnd_08_gen|state_05\(2))))) # (!\rnd_08_gen|state_05\(25) & ((\rnd_08_gen|state_05\(2) $ (\rnd_08_gen|state_05\(37))) # 
-- (!\rnd_08_gen|state_05\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_05\(25),
	datab => \rnd_08_gen|state_05\(4),
	datac => \rnd_08_gen|state_05\(2),
	datad => \rnd_08_gen|state_05\(37),
	combout => \rnd_08_gen|Mux279~0_combout\);

\rnd_08_gen|state_06[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux279~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_06\(39));

\rnd_08_gen|Mux322~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux322~0_combout\ = (\rnd_08_gen|state_06\(19) & ((\rnd_08_gen|state_06\(11) & (!\rnd_08_gen|state_06\(23))) # (!\rnd_08_gen|state_06\(11) & ((!\rnd_08_gen|state_06\(39)))))) # (!\rnd_08_gen|state_06\(19) & ((\rnd_08_gen|state_06\(39) & 
-- (!\rnd_08_gen|state_06\(23))) # (!\rnd_08_gen|state_06\(39) & ((!\rnd_08_gen|state_06\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(19),
	datab => \rnd_08_gen|state_06\(23),
	datac => \rnd_08_gen|state_06\(11),
	datad => \rnd_08_gen|state_06\(39),
	combout => \rnd_08_gen|Mux322~0_combout\);

\rnd_08_gen|state_07[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux322~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(34));

\rnd_08_gen|Mux293~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux293~0_combout\ = (\rnd_08_gen|state_06\(24) & ((\rnd_08_gen|state_06\(2) $ (\rnd_08_gen|state_06\(28))) # (!\rnd_08_gen|state_06\(40)))) # (!\rnd_08_gen|state_06\(24) & (\rnd_08_gen|state_06\(2) & (\rnd_08_gen|state_06\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(2),
	datab => \rnd_08_gen|state_06\(28),
	datac => \rnd_08_gen|state_06\(24),
	datad => \rnd_08_gen|state_06\(40),
	combout => \rnd_08_gen|Mux293~0_combout\);

\rnd_08_gen|state_07[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux293~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(5));

\rnd_08_gen|Mux347~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux347~0_combout\ = (\rnd_08_gen|state_07\(27) & (\rnd_08_gen|state_07\(34) $ (((!\rnd_08_gen|state_07\(11) & \rnd_08_gen|state_07\(5)))))) # (!\rnd_08_gen|state_07\(27) & (\rnd_08_gen|state_07\(11) $ (((\rnd_08_gen|state_07\(34) & 
-- \rnd_08_gen|state_07\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_07\(11),
	datab => \rnd_08_gen|state_07\(27),
	datac => \rnd_08_gen|state_07\(34),
	datad => \rnd_08_gen|state_07\(5),
	combout => \rnd_08_gen|Mux347~0_combout\);

\rnd_08_gen|state_08[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux347~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_08\(25));

\rnd_08_gen|Mux359~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux359~0_combout\ = \rnd_08_gen|state_07\(25) $ (\rnd_08_gen|state_07\(4) $ (((\rnd_08_gen|state_07\(47)) # (!\rnd_08_gen|state_07\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_07\(29),
	datab => \rnd_08_gen|state_07\(25),
	datac => \rnd_08_gen|state_07\(47),
	datad => \rnd_08_gen|state_07\(4),
	combout => \rnd_08_gen|Mux359~0_combout\);

\rnd_08_gen|state_08[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux359~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_08\(47));

\rnd_08_gen|Mux326~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux326~0_combout\ = (\rnd_08_gen|state_06\(16) & ((\rnd_08_gen|state_06\(0) & ((\rnd_08_gen|state_06\(7)))) # (!\rnd_08_gen|state_06\(0) & (!\rnd_08_gen|state_06\(6))))) # (!\rnd_08_gen|state_06\(16) & (\rnd_08_gen|state_06\(0) $ 
-- (((\rnd_08_gen|state_06\(7)) # (!\rnd_08_gen|state_06\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010100011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(0),
	datab => \rnd_08_gen|state_06\(6),
	datac => \rnd_08_gen|state_06\(16),
	datad => \rnd_08_gen|state_06\(7),
	combout => \rnd_08_gen|Mux326~0_combout\);

\rnd_08_gen|state_07[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux326~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(38));

\rnd_08_gen|Mux327~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux327~0_combout\ = (\rnd_08_gen|state_06\(0) & (((\rnd_08_gen|state_06\(7))) # (!\rnd_08_gen|state_06\(6)))) # (!\rnd_08_gen|state_06\(0) & (!\rnd_08_gen|state_06\(6) & (\rnd_08_gen|state_06\(16) $ (!\rnd_08_gen|state_06\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(0),
	datab => \rnd_08_gen|state_06\(6),
	datac => \rnd_08_gen|state_06\(16),
	datad => \rnd_08_gen|state_06\(7),
	combout => \rnd_08_gen|Mux327~0_combout\);

\rnd_08_gen|state_07[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux327~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(39));

\rnd_08_gen|Mux321~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux321~0_combout\ = (\rnd_08_gen|state_06\(19) & (((\rnd_08_gen|state_06\(11) & !\rnd_08_gen|state_06\(39))))) # (!\rnd_08_gen|state_06\(19) & ((\rnd_08_gen|state_06\(23) & ((\rnd_08_gen|state_06\(39)) # (!\rnd_08_gen|state_06\(11)))) # 
-- (!\rnd_08_gen|state_06\(23) & ((\rnd_08_gen|state_06\(11)) # (!\rnd_08_gen|state_06\(39))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010010110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(19),
	datab => \rnd_08_gen|state_06\(23),
	datac => \rnd_08_gen|state_06\(11),
	datad => \rnd_08_gen|state_06\(39),
	combout => \rnd_08_gen|Mux321~0_combout\);

\rnd_08_gen|state_07[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux321~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(33));

\rnd_08_gen|Mux302~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux302~0_combout\ = (\rnd_08_gen|state_06\(4) & ((\rnd_08_gen|state_06\(14) & (\rnd_08_gen|state_06\(22))) # (!\rnd_08_gen|state_06\(14) & ((!\rnd_08_gen|state_06\(26)))))) # (!\rnd_08_gen|state_06\(4) & (\rnd_08_gen|state_06\(14) $ 
-- (((!\rnd_08_gen|state_06\(22) & !\rnd_08_gen|state_06\(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(22),
	datab => \rnd_08_gen|state_06\(4),
	datac => \rnd_08_gen|state_06\(14),
	datad => \rnd_08_gen|state_06\(26),
	combout => \rnd_08_gen|Mux302~0_combout\);

\rnd_08_gen|state_07[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux302~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(14));

\rnd_08_gen|Mux340~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux340~0_combout\ = (\rnd_08_gen|state_07\(38) & (\rnd_08_gen|state_07\(33) $ (((\rnd_08_gen|state_07\(39) & !\rnd_08_gen|state_07\(14)))))) # (!\rnd_08_gen|state_07\(38) & (\rnd_08_gen|state_07\(14) $ (((!\rnd_08_gen|state_07\(39) & 
-- !\rnd_08_gen|state_07\(33))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_07\(38),
	datab => \rnd_08_gen|state_07\(39),
	datac => \rnd_08_gen|state_07\(33),
	datad => \rnd_08_gen|state_07\(14),
	combout => \rnd_08_gen|Mux340~0_combout\);

\rnd_08_gen|state_08[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux340~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_08\(11));

\rnd_08_gen|Mux364~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux364~0_combout\ = (\rnd_08_gen|state_08\(42) & (\rnd_08_gen|state_08\(25) $ (((\rnd_08_gen|state_08\(11)))))) # (!\rnd_08_gen|state_08\(42) & ((\rnd_08_gen|state_08\(11) & ((!\rnd_08_gen|state_08\(47)))) # (!\rnd_08_gen|state_08\(11) & 
-- (!\rnd_08_gen|state_08\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_08\(42),
	datab => \rnd_08_gen|state_08\(25),
	datac => \rnd_08_gen|state_08\(47),
	datad => \rnd_08_gen|state_08\(11),
	combout => \rnd_08_gen|Mux364~0_combout\);

\rnd_08_gen|state_09[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux364~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_09\(24));

\rnd_08_gen|Mux368~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux368~0_combout\ = (\rnd_08_gen|state_09\(42) & ((\rnd_08_gen|state_09\(17) & ((!\rnd_08_gen|state_09\(24)))) # (!\rnd_08_gen|state_09\(17) & ((\rnd_08_gen|state_09\(24)) # (!\rnd_08_gen|state_09\(19)))))) # (!\rnd_08_gen|state_09\(42) & 
-- (\rnd_08_gen|state_09\(19) & ((!\rnd_08_gen|state_09\(24)) # (!\rnd_08_gen|state_09\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_09\(42),
	datab => \rnd_08_gen|state_09\(19),
	datac => \rnd_08_gen|state_09\(17),
	datad => \rnd_08_gen|state_09\(24),
	combout => \rnd_08_gen|Mux368~0_combout\);

\rnd_08_gen|state_10[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux368~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_10\(0));

\LEDG[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|state_10\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDG[0]~reg0_q\);

\rnd_08_gen|Mux369~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux369~0_combout\ = (\rnd_08_gen|state_09\(42) & (\rnd_08_gen|state_09\(19) & (\rnd_08_gen|state_09\(17)))) # (!\rnd_08_gen|state_09\(42) & ((\rnd_08_gen|state_09\(19)) # ((\rnd_08_gen|state_09\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_09\(42),
	datab => \rnd_08_gen|state_09\(19),
	datac => \rnd_08_gen|state_09\(17),
	datad => \rnd_08_gen|state_09\(24),
	combout => \rnd_08_gen|Mux369~0_combout\);

\rnd_08_gen|state_10[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux369~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_10\(1));

\LEDG[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|state_10\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDG[1]~reg0_q\);

\rnd_08_gen|Mux370~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux370~0_combout\ = (\rnd_08_gen|state_09\(42) & (((\rnd_08_gen|state_09\(17)) # (!\rnd_08_gen|state_09\(24))))) # (!\rnd_08_gen|state_09\(42) & ((\rnd_08_gen|state_09\(19) & (\rnd_08_gen|state_09\(17) & !\rnd_08_gen|state_09\(24))) # 
-- (!\rnd_08_gen|state_09\(19) & (!\rnd_08_gen|state_09\(17) & \rnd_08_gen|state_09\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_09\(42),
	datab => \rnd_08_gen|state_09\(19),
	datac => \rnd_08_gen|state_09\(17),
	datad => \rnd_08_gen|state_09\(24),
	combout => \rnd_08_gen|Mux370~0_combout\);

\rnd_08_gen|state_10[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux370~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_10\(2));

\LEDG[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDG[2]~0_combout\ = !\rnd_08_gen|state_10\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_10\(2),
	combout => \LEDG[2]~0_combout\);

\LEDG[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \LEDG[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDG[2]~reg0_q\);

\rnd_08_gen|Mux371~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux371~0_combout\ = (\rnd_08_gen|state_09\(42) & ((\rnd_08_gen|state_09\(19) & ((!\rnd_08_gen|state_09\(24)))) # (!\rnd_08_gen|state_09\(19) & (!\rnd_08_gen|state_09\(17))))) # (!\rnd_08_gen|state_09\(42) & ((\rnd_08_gen|state_09\(17) & 
-- (!\rnd_08_gen|state_09\(19))) # (!\rnd_08_gen|state_09\(17) & ((\rnd_08_gen|state_09\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_09\(42),
	datab => \rnd_08_gen|state_09\(19),
	datac => \rnd_08_gen|state_09\(17),
	datad => \rnd_08_gen|state_09\(24),
	combout => \rnd_08_gen|Mux371~0_combout\);

\rnd_08_gen|state_10[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux371~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_10\(3));

\LEDG[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|state_10\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDG[3]~reg0_q\);

\rnd_08_gen|Mux365~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux365~0_combout\ = \rnd_08_gen|state_08\(25) $ (\rnd_08_gen|state_08\(47) $ (((!\rnd_08_gen|state_08\(42) & \rnd_08_gen|state_08\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_08\(42),
	datab => \rnd_08_gen|state_08\(25),
	datac => \rnd_08_gen|state_08\(47),
	datad => \rnd_08_gen|state_08\(11),
	combout => \rnd_08_gen|Mux365~0_combout\);

\rnd_08_gen|state_09[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux365~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_09\(25));

\rnd_08_gen|Mux294~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux294~0_combout\ = (\rnd_08_gen|state_06\(2) & (\rnd_08_gen|state_06\(40) & (\rnd_08_gen|state_06\(28) $ (\rnd_08_gen|state_06\(24))))) # (!\rnd_08_gen|state_06\(2) & ((\rnd_08_gen|state_06\(28)) # (\rnd_08_gen|state_06\(24) $ 
-- (!\rnd_08_gen|state_06\(40)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(2),
	datab => \rnd_08_gen|state_06\(28),
	datac => \rnd_08_gen|state_06\(24),
	datad => \rnd_08_gen|state_06\(40),
	combout => \rnd_08_gen|Mux294~0_combout\);

\rnd_08_gen|state_07[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux294~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(6));

\rnd_08_gen|Mux320~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux320~0_combout\ = (\rnd_08_gen|state_06\(19) & (\rnd_08_gen|state_06\(23) & (\rnd_08_gen|state_06\(11) $ (!\rnd_08_gen|state_06\(39))))) # (!\rnd_08_gen|state_06\(19) & ((\rnd_08_gen|state_06\(23)) # ((!\rnd_08_gen|state_06\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(19),
	datab => \rnd_08_gen|state_06\(23),
	datac => \rnd_08_gen|state_06\(11),
	datad => \rnd_08_gen|state_06\(39),
	combout => \rnd_08_gen|Mux320~0_combout\);

\rnd_08_gen|state_07[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux320~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(32));

\rnd_08_gen|Mux291~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux291~0_combout\ = (\rnd_08_gen|state_06\(44) & ((\rnd_08_gen|state_06\(25) & (\rnd_08_gen|state_06\(10))) # (!\rnd_08_gen|state_06\(25) & (!\rnd_08_gen|state_06\(10) & \rnd_08_gen|state_06\(33))))) # (!\rnd_08_gen|state_06\(44) & 
-- ((\rnd_08_gen|state_06\(25) & ((\rnd_08_gen|state_06\(33)) # (!\rnd_08_gen|state_06\(10)))) # (!\rnd_08_gen|state_06\(25) & (\rnd_08_gen|state_06\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(44),
	datab => \rnd_08_gen|state_06\(25),
	datac => \rnd_08_gen|state_06\(10),
	datad => \rnd_08_gen|state_06\(33),
	combout => \rnd_08_gen|Mux291~0_combout\);

\rnd_08_gen|state_07[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux291~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(3));

\rnd_08_gen|Mux303~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux303~0_combout\ = (\rnd_08_gen|state_06\(4) & ((\rnd_08_gen|state_06\(26)) # (\rnd_08_gen|state_06\(22) $ (\rnd_08_gen|state_06\(14))))) # (!\rnd_08_gen|state_06\(4) & (!\rnd_08_gen|state_06\(22) & (\rnd_08_gen|state_06\(14) $ 
-- (!\rnd_08_gen|state_06\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(22),
	datab => \rnd_08_gen|state_06\(4),
	datac => \rnd_08_gen|state_06\(14),
	datad => \rnd_08_gen|state_06\(26),
	combout => \rnd_08_gen|Mux303~0_combout\);

\rnd_08_gen|state_07[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux303~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(15));

\rnd_08_gen|Mux341~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux341~0_combout\ = (\rnd_08_gen|state_07\(6) & ((\rnd_08_gen|state_07\(32) & ((\rnd_08_gen|state_07\(15)))) # (!\rnd_08_gen|state_07\(32) & (!\rnd_08_gen|state_07\(3))))) # (!\rnd_08_gen|state_07\(6) & (((\rnd_08_gen|state_07\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_07\(6),
	datab => \rnd_08_gen|state_07\(32),
	datac => \rnd_08_gen|state_07\(3),
	datad => \rnd_08_gen|state_07\(15),
	combout => \rnd_08_gen|Mux341~0_combout\);

\rnd_08_gen|state_08[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux341~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_08\(12));

\rnd_08_gen|Mux298~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux298~0_combout\ = (\rnd_08_gen|state_06\(9) & (\rnd_08_gen|state_06\(27) $ (((\rnd_08_gen|state_06\(5) & \rnd_08_gen|state_06\(17)))))) # (!\rnd_08_gen|state_06\(9) & (((\rnd_08_gen|state_06\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(5),
	datab => \rnd_08_gen|state_06\(17),
	datac => \rnd_08_gen|state_06\(27),
	datad => \rnd_08_gen|state_06\(9),
	combout => \rnd_08_gen|Mux298~0_combout\);

\rnd_08_gen|state_07[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux298~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(10));

\rnd_08_gen|Mux329~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux329~0_combout\ = (\rnd_08_gen|state_06\(37) & ((\rnd_08_gen|state_06\(30)) # ((\rnd_08_gen|state_06\(46) & !\rnd_08_gen|state_06\(21))))) # (!\rnd_08_gen|state_06\(37) & (!\rnd_08_gen|state_06\(46) & ((\rnd_08_gen|state_06\(21)) # 
-- (!\rnd_08_gen|state_06\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(46),
	datab => \rnd_08_gen|state_06\(30),
	datac => \rnd_08_gen|state_06\(37),
	datad => \rnd_08_gen|state_06\(21),
	combout => \rnd_08_gen|Mux329~0_combout\);

\rnd_08_gen|state_07[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux329~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(41));

\rnd_08_gen|Mux306~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux306~0_combout\ = (\rnd_08_gen|state_06\(1) & (((!\rnd_08_gen|state_06\(8))))) # (!\rnd_08_gen|state_06\(1) & ((\rnd_08_gen|state_06\(3) & ((\rnd_08_gen|state_06\(8)) # (!\rnd_08_gen|state_06\(13)))) # (!\rnd_08_gen|state_06\(3) & 
-- (!\rnd_08_gen|state_06\(13) & \rnd_08_gen|state_06\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(3),
	datab => \rnd_08_gen|state_06\(1),
	datac => \rnd_08_gen|state_06\(13),
	datad => \rnd_08_gen|state_06\(8),
	combout => \rnd_08_gen|Mux306~0_combout\);

\rnd_08_gen|state_07[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux306~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(18));

\rnd_08_gen|Mux314~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux314~0_combout\ = (\rnd_08_gen|state_06\(20) & (\rnd_08_gen|state_06\(45) $ (((\rnd_08_gen|state_06\(15)) # (!\rnd_08_gen|state_06\(34)))))) # (!\rnd_08_gen|state_06\(20) & ((\rnd_08_gen|state_06\(34) & ((\rnd_08_gen|state_06\(45)))) # 
-- (!\rnd_08_gen|state_06\(34) & (\rnd_08_gen|state_06\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(20),
	datab => \rnd_08_gen|state_06\(15),
	datac => \rnd_08_gen|state_06\(45),
	datad => \rnd_08_gen|state_06\(34),
	combout => \rnd_08_gen|Mux314~0_combout\);

\rnd_08_gen|state_07[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux314~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(26));

\rnd_08_gen|Mux338~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux338~0_combout\ = (\rnd_08_gen|state_07\(18) & (!\rnd_08_gen|state_07\(10) & (\rnd_08_gen|state_07\(41) $ (\rnd_08_gen|state_07\(26))))) # (!\rnd_08_gen|state_07\(18) & ((\rnd_08_gen|state_07\(41)) # (\rnd_08_gen|state_07\(10) $ 
-- (\rnd_08_gen|state_07\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_07\(10),
	datab => \rnd_08_gen|state_07\(41),
	datac => \rnd_08_gen|state_07\(18),
	datad => \rnd_08_gen|state_07\(26),
	combout => \rnd_08_gen|Mux338~0_combout\);

\rnd_08_gen|state_08[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux338~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_08\(4));

\rnd_08_gen|Mux354~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux354~0_combout\ = (\rnd_08_gen|state_07\(0) & ((\rnd_08_gen|state_07\(23) & ((!\rnd_08_gen|state_07\(19)))) # (!\rnd_08_gen|state_07\(23) & (!\rnd_08_gen|state_07\(43))))) # (!\rnd_08_gen|state_07\(0) & (\rnd_08_gen|state_07\(43) $ 
-- (((\rnd_08_gen|state_07\(23)) # (!\rnd_08_gen|state_07\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_07\(0),
	datab => \rnd_08_gen|state_07\(43),
	datac => \rnd_08_gen|state_07\(23),
	datad => \rnd_08_gen|state_07\(19),
	combout => \rnd_08_gen|Mux354~0_combout\);

\rnd_08_gen|state_08[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux354~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_08\(40));

\rnd_08_gen|Mux316~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux316~0_combout\ = (\rnd_08_gen|state_06\(31) & (\rnd_08_gen|state_06\(36) $ (((!\rnd_08_gen|state_06\(32) & \rnd_08_gen|state_06\(18)))))) # (!\rnd_08_gen|state_06\(31) & ((\rnd_08_gen|state_06\(36) & ((\rnd_08_gen|state_06\(18)))) # 
-- (!\rnd_08_gen|state_06\(36) & (\rnd_08_gen|state_06\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(32),
	datab => \rnd_08_gen|state_06\(31),
	datac => \rnd_08_gen|state_06\(36),
	datad => \rnd_08_gen|state_06\(18),
	combout => \rnd_08_gen|Mux316~0_combout\);

\rnd_08_gen|state_07[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux316~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(28));

\rnd_08_gen|Mux323~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux323~0_combout\ = (\rnd_08_gen|state_06\(19) & ((\rnd_08_gen|state_06\(23) & (\rnd_08_gen|state_06\(11) & \rnd_08_gen|state_06\(39))) # (!\rnd_08_gen|state_06\(23) & ((\rnd_08_gen|state_06\(11)) # (\rnd_08_gen|state_06\(39)))))) # 
-- (!\rnd_08_gen|state_06\(19) & (\rnd_08_gen|state_06\(23) $ (\rnd_08_gen|state_06\(11) $ (\rnd_08_gen|state_06\(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(19),
	datab => \rnd_08_gen|state_06\(23),
	datac => \rnd_08_gen|state_06\(11),
	datad => \rnd_08_gen|state_06\(39),
	combout => \rnd_08_gen|Mux323~0_combout\);

\rnd_08_gen|state_07[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux323~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(35));

\rnd_08_gen|Mux290~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux290~0_combout\ = (\rnd_08_gen|state_06\(33) & ((\rnd_08_gen|state_06\(10) & (!\rnd_08_gen|state_06\(44))) # (!\rnd_08_gen|state_06\(10) & ((!\rnd_08_gen|state_06\(25)))))) # (!\rnd_08_gen|state_06\(33) & (\rnd_08_gen|state_06\(10) $ 
-- (((\rnd_08_gen|state_06\(25)) # (!\rnd_08_gen|state_06\(44))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(44),
	datab => \rnd_08_gen|state_06\(25),
	datac => \rnd_08_gen|state_06\(10),
	datad => \rnd_08_gen|state_06\(33),
	combout => \rnd_08_gen|Mux290~0_combout\);

\rnd_08_gen|state_07[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux290~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(2));

\rnd_08_gen|Mux289~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux289~0_combout\ = (\rnd_08_gen|state_06\(33) & ((\rnd_08_gen|state_06\(44) & ((\rnd_08_gen|state_06\(10)))) # (!\rnd_08_gen|state_06\(44) & (\rnd_08_gen|state_06\(25))))) # (!\rnd_08_gen|state_06\(33) & (((!\rnd_08_gen|state_06\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(44),
	datab => \rnd_08_gen|state_06\(25),
	datac => \rnd_08_gen|state_06\(10),
	datad => \rnd_08_gen|state_06\(33),
	combout => \rnd_08_gen|Mux289~0_combout\);

\rnd_08_gen|state_07[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux289~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(1));

\rnd_08_gen|Mux351~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux351~0_combout\ = (\rnd_08_gen|state_07\(35) & ((\rnd_08_gen|state_07\(2) & (\rnd_08_gen|state_07\(28))) # (!\rnd_08_gen|state_07\(2) & ((\rnd_08_gen|state_07\(1)))))) # (!\rnd_08_gen|state_07\(35) & (\rnd_08_gen|state_07\(2) $ 
-- (((!\rnd_08_gen|state_07\(28) & !\rnd_08_gen|state_07\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_07\(28),
	datab => \rnd_08_gen|state_07\(35),
	datac => \rnd_08_gen|state_07\(2),
	datad => \rnd_08_gen|state_07\(1),
	combout => \rnd_08_gen|Mux351~0_combout\);

\rnd_08_gen|state_08[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux351~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_08\(34));

\rnd_08_gen|Mux363~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux363~0_combout\ = (\rnd_08_gen|state_08\(40) & (\rnd_08_gen|state_08\(12) $ (((!\rnd_08_gen|state_08\(34)))))) # (!\rnd_08_gen|state_08\(40) & ((\rnd_08_gen|state_08\(4) & (!\rnd_08_gen|state_08\(12))) # (!\rnd_08_gen|state_08\(4) & 
-- ((!\rnd_08_gen|state_08\(34))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_08\(12),
	datab => \rnd_08_gen|state_08\(4),
	datac => \rnd_08_gen|state_08\(40),
	datad => \rnd_08_gen|state_08\(34),
	combout => \rnd_08_gen|Mux363~0_combout\);

\rnd_08_gen|state_09[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux363~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_09\(22));

\rnd_08_gen|Mux339~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux339~0_combout\ = (\rnd_08_gen|state_07\(10) & ((\rnd_08_gen|state_07\(41) & (\rnd_08_gen|state_07\(18))) # (!\rnd_08_gen|state_07\(41) & ((!\rnd_08_gen|state_07\(26)))))) # (!\rnd_08_gen|state_07\(10) & (\rnd_08_gen|state_07\(18) $ 
-- (((\rnd_08_gen|state_07\(26)) # (!\rnd_08_gen|state_07\(41))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010111100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_07\(10),
	datab => \rnd_08_gen|state_07\(41),
	datac => \rnd_08_gen|state_07\(18),
	datad => \rnd_08_gen|state_07\(26),
	combout => \rnd_08_gen|Mux339~0_combout\);

\rnd_08_gen|state_08[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux339~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_08\(5));

\rnd_08_gen|Mux300~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux300~0_combout\ = (\rnd_08_gen|state_06\(4) & ((\rnd_08_gen|state_06\(22) & ((\rnd_08_gen|state_06\(26)))) # (!\rnd_08_gen|state_06\(22) & (!\rnd_08_gen|state_06\(14))))) # (!\rnd_08_gen|state_06\(4) & ((\rnd_08_gen|state_06\(26) & 
-- (!\rnd_08_gen|state_06\(22))) # (!\rnd_08_gen|state_06\(26) & ((\rnd_08_gen|state_06\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(22),
	datab => \rnd_08_gen|state_06\(4),
	datac => \rnd_08_gen|state_06\(14),
	datad => \rnd_08_gen|state_06\(26),
	combout => \rnd_08_gen|Mux300~0_combout\);

\rnd_08_gen|state_07[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux300~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(12));

\rnd_08_gen|Mux297~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux297~0_combout\ = \rnd_08_gen|state_06\(17) $ (((\rnd_08_gen|state_06\(5) & (!\rnd_08_gen|state_06\(27) & \rnd_08_gen|state_06\(9))) # (!\rnd_08_gen|state_06\(5) & (\rnd_08_gen|state_06\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(5),
	datab => \rnd_08_gen|state_06\(17),
	datac => \rnd_08_gen|state_06\(27),
	datad => \rnd_08_gen|state_06\(9),
	combout => \rnd_08_gen|Mux297~0_combout\);

\rnd_08_gen|state_07[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux297~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(9));

\rnd_08_gen|Mux309~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux309~0_combout\ = (\rnd_08_gen|state_06\(29) & (\rnd_08_gen|state_06\(41) $ (((\rnd_08_gen|state_06\(42)) # (\rnd_08_gen|state_06\(35)))))) # (!\rnd_08_gen|state_06\(29) & (\rnd_08_gen|state_06\(42) $ ((!\rnd_08_gen|state_06\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100111101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(42),
	datab => \rnd_08_gen|state_06\(35),
	datac => \rnd_08_gen|state_06\(29),
	datad => \rnd_08_gen|state_06\(41),
	combout => \rnd_08_gen|Mux309~0_combout\);

\rnd_08_gen|state_07[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux309~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(21));

\rnd_08_gen|Mux310~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux310~0_combout\ = (\rnd_08_gen|state_06\(42) & ((\rnd_08_gen|state_06\(41) & (\rnd_08_gen|state_06\(35))) # (!\rnd_08_gen|state_06\(41) & ((!\rnd_08_gen|state_06\(29)))))) # (!\rnd_08_gen|state_06\(42) & (\rnd_08_gen|state_06\(41) $ 
-- (((\rnd_08_gen|state_06\(29)) # (!\rnd_08_gen|state_06\(35))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_06\(42),
	datab => \rnd_08_gen|state_06\(35),
	datac => \rnd_08_gen|state_06\(29),
	datad => \rnd_08_gen|state_06\(41),
	combout => \rnd_08_gen|Mux310~0_combout\);

\rnd_08_gen|state_07[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux310~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_07\(22));

\rnd_08_gen|Mux336~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux336~0_combout\ = (\rnd_08_gen|state_07\(9) & (!\rnd_08_gen|state_07\(12) & ((!\rnd_08_gen|state_07\(22))))) # (!\rnd_08_gen|state_07\(9) & ((\rnd_08_gen|state_07\(12) $ (!\rnd_08_gen|state_07\(22))) # (!\rnd_08_gen|state_07\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_07\(12),
	datab => \rnd_08_gen|state_07\(9),
	datac => \rnd_08_gen|state_07\(21),
	datad => \rnd_08_gen|state_07\(22),
	combout => \rnd_08_gen|Mux336~0_combout\);

\rnd_08_gen|state_08[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux336~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_08\(1));

\rnd_08_gen|Mux342~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux342~0_combout\ = (\rnd_08_gen|state_07\(32) & (\rnd_08_gen|state_07\(3) $ (((!\rnd_08_gen|state_07\(15)) # (!\rnd_08_gen|state_07\(6)))))) # (!\rnd_08_gen|state_07\(32) & (\rnd_08_gen|state_07\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_07\(6),
	datab => \rnd_08_gen|state_07\(32),
	datac => \rnd_08_gen|state_07\(3),
	datad => \rnd_08_gen|state_07\(15),
	combout => \rnd_08_gen|Mux342~0_combout\);

\rnd_08_gen|state_08[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux342~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_08\(14));

\rnd_08_gen|Mux346~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux346~0_combout\ = (\rnd_08_gen|state_07\(27) & (\rnd_08_gen|state_07\(11) & ((\rnd_08_gen|state_07\(5))))) # (!\rnd_08_gen|state_07\(27) & (((\rnd_08_gen|state_07\(34)) # (!\rnd_08_gen|state_07\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_07\(11),
	datab => \rnd_08_gen|state_07\(27),
	datac => \rnd_08_gen|state_07\(34),
	datad => \rnd_08_gen|state_07\(5),
	combout => \rnd_08_gen|Mux346~0_combout\);

\rnd_08_gen|state_08[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux346~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_08\(24));

\rnd_08_gen|Mux366~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux366~0_combout\ = \rnd_08_gen|state_08\(5) $ (\rnd_08_gen|state_08\(14) $ (((\rnd_08_gen|state_08\(1) & \rnd_08_gen|state_08\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_08\(5),
	datab => \rnd_08_gen|state_08\(1),
	datac => \rnd_08_gen|state_08\(14),
	datad => \rnd_08_gen|state_08\(24),
	combout => \rnd_08_gen|Mux366~0_combout\);

\rnd_08_gen|state_09[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux366~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_09\(28));

\rnd_08_gen|Mux344~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux344~0_combout\ = (\rnd_08_gen|state_07\(30) & ((\rnd_08_gen|state_07\(20) & (!\rnd_08_gen|state_07\(40))) # (!\rnd_08_gen|state_07\(20) & ((!\rnd_08_gen|state_07\(45)))))) # (!\rnd_08_gen|state_07\(30) & (\rnd_08_gen|state_07\(40) $ 
-- (((\rnd_08_gen|state_07\(45)) # (!\rnd_08_gen|state_07\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_07\(30),
	datab => \rnd_08_gen|state_07\(40),
	datac => \rnd_08_gen|state_07\(45),
	datad => \rnd_08_gen|state_07\(20),
	combout => \rnd_08_gen|Mux344~0_combout\);

\rnd_08_gen|state_08[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux344~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_08\(20));

\rnd_08_gen|Mux337~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux337~0_combout\ = (\rnd_08_gen|state_07\(9) & ((\rnd_08_gen|state_07\(21) & ((\rnd_08_gen|state_07\(22)))) # (!\rnd_08_gen|state_07\(21) & (\rnd_08_gen|state_07\(12))))) # (!\rnd_08_gen|state_07\(9) & ((\rnd_08_gen|state_07\(22) & 
-- ((!\rnd_08_gen|state_07\(21)))) # (!\rnd_08_gen|state_07\(22) & (!\rnd_08_gen|state_07\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_07\(12),
	datab => \rnd_08_gen|state_07\(9),
	datac => \rnd_08_gen|state_07\(21),
	datad => \rnd_08_gen|state_07\(22),
	combout => \rnd_08_gen|Mux337~0_combout\);

\rnd_08_gen|state_08[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux337~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_08\(3));

\rnd_08_gen|Mux350~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux350~0_combout\ = (\rnd_08_gen|state_07\(2) & (((!\rnd_08_gen|state_07\(35))))) # (!\rnd_08_gen|state_07\(2) & ((\rnd_08_gen|state_07\(28) & ((!\rnd_08_gen|state_07\(1)))) # (!\rnd_08_gen|state_07\(28) & (\rnd_08_gen|state_07\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_07\(28),
	datab => \rnd_08_gen|state_07\(35),
	datac => \rnd_08_gen|state_07\(2),
	datad => \rnd_08_gen|state_07\(1),
	combout => \rnd_08_gen|Mux350~0_combout\);

\rnd_08_gen|state_08[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux350~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_08\(32));

\rnd_08_gen|Mux352~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux352~0_combout\ = (\rnd_08_gen|state_07\(2) & (\rnd_08_gen|state_07\(28) $ (\rnd_08_gen|state_07\(35) $ (!\rnd_08_gen|state_07\(1))))) # (!\rnd_08_gen|state_07\(2) & ((\rnd_08_gen|state_07\(1) & (!\rnd_08_gen|state_07\(28))) # 
-- (!\rnd_08_gen|state_07\(1) & ((!\rnd_08_gen|state_07\(35))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_07\(28),
	datab => \rnd_08_gen|state_07\(35),
	datac => \rnd_08_gen|state_07\(2),
	datad => \rnd_08_gen|state_07\(1),
	combout => \rnd_08_gen|Mux352~0_combout\);

\rnd_08_gen|state_08[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux352~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_08\(35));

\rnd_08_gen|Mux360~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux360~0_combout\ = (\rnd_08_gen|state_08\(20) & ((\rnd_08_gen|state_08\(35)) # ((\rnd_08_gen|state_08\(3) & \rnd_08_gen|state_08\(32))))) # (!\rnd_08_gen|state_08\(20) & (\rnd_08_gen|state_08\(3) & ((!\rnd_08_gen|state_08\(35)) # 
-- (!\rnd_08_gen|state_08\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_08\(20),
	datab => \rnd_08_gen|state_08\(3),
	datac => \rnd_08_gen|state_08\(32),
	datad => \rnd_08_gen|state_08\(35),
	combout => \rnd_08_gen|Mux360~0_combout\);

\rnd_08_gen|state_09[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux360~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_09\(9));

\rnd_08_gen|Mux372~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux372~0_combout\ = (\rnd_08_gen|state_09\(25) & ((\rnd_08_gen|state_09\(28) & ((\rnd_08_gen|state_09\(9)) # (!\rnd_08_gen|state_09\(22)))) # (!\rnd_08_gen|state_09\(28) & ((!\rnd_08_gen|state_09\(9)))))) # (!\rnd_08_gen|state_09\(25) & 
-- (!\rnd_08_gen|state_09\(28) & ((\rnd_08_gen|state_09\(9)) # (!\rnd_08_gen|state_09\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_09\(25),
	datab => \rnd_08_gen|state_09\(22),
	datac => \rnd_08_gen|state_09\(28),
	datad => \rnd_08_gen|state_09\(9),
	combout => \rnd_08_gen|Mux372~0_combout\);

\rnd_08_gen|state_10[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux372~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_10\(4));

\LEDG[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|state_10\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDG[4]~reg0_q\);

\rnd_08_gen|Mux373~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux373~0_combout\ = (\rnd_08_gen|state_09\(22) & (\rnd_08_gen|state_09\(28) $ (((!\rnd_08_gen|state_09\(25) & \rnd_08_gen|state_09\(9)))))) # (!\rnd_08_gen|state_09\(22) & ((\rnd_08_gen|state_09\(28) & ((!\rnd_08_gen|state_09\(9)))) # 
-- (!\rnd_08_gen|state_09\(28) & (\rnd_08_gen|state_09\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_09\(25),
	datab => \rnd_08_gen|state_09\(22),
	datac => \rnd_08_gen|state_09\(28),
	datad => \rnd_08_gen|state_09\(9),
	combout => \rnd_08_gen|Mux373~0_combout\);

\rnd_08_gen|state_10[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux373~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_10\(5));

\LEDG[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDG[5]~1_combout\ = !\rnd_08_gen|state_10\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_10\(5),
	combout => \LEDG[5]~1_combout\);

\LEDG[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \LEDG[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDG[5]~reg0_q\);

\rnd_08_gen|Mux374~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux374~0_combout\ = (\rnd_08_gen|state_09\(22) & (!\rnd_08_gen|state_09\(28) & ((!\rnd_08_gen|state_09\(9)) # (!\rnd_08_gen|state_09\(25))))) # (!\rnd_08_gen|state_09\(22) & ((\rnd_08_gen|state_09\(25) & (\rnd_08_gen|state_09\(28) $ 
-- (\rnd_08_gen|state_09\(9)))) # (!\rnd_08_gen|state_09\(25) & ((\rnd_08_gen|state_09\(28)) # (!\rnd_08_gen|state_09\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_09\(25),
	datab => \rnd_08_gen|state_09\(22),
	datac => \rnd_08_gen|state_09\(28),
	datad => \rnd_08_gen|state_09\(9),
	combout => \rnd_08_gen|Mux374~0_combout\);

\rnd_08_gen|state_10[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux374~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_10\(6));

\LEDG[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|state_10\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDG[6]~reg0_q\);

\rnd_08_gen|Mux375~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_08_gen|Mux375~0_combout\ = \rnd_08_gen|state_09\(28) $ (((\rnd_08_gen|state_09\(9) & ((!\rnd_08_gen|state_09\(22)))) # (!\rnd_08_gen|state_09\(9) & (!\rnd_08_gen|state_09\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_08_gen|state_09\(25),
	datab => \rnd_08_gen|state_09\(22),
	datac => \rnd_08_gen|state_09\(28),
	datad => \rnd_08_gen|state_09\(9),
	combout => \rnd_08_gen|Mux375~0_combout\);

\rnd_08_gen|state_10[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|Mux375~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_08_gen|state_10\(7));

\LEDG[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_08_gen|state_10\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDG[7]~reg0_q\);

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;
END structure;


