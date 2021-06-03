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

-- DATE "06/03/2021 11:18:31"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	decoder IS
    PORT (
	enable : IN std_logic;
	binInput : IN std_logic_vector(4 DOWNTO 0);
	decOut_n : OUT std_logic_vector(6 DOWNTO 0)
	);
END decoder;

ARCHITECTURE structure OF decoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_binInput : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_decOut_n : std_logic_vector(6 DOWNTO 0);
SIGNAL \decOut_n[0]~output_o\ : std_logic;
SIGNAL \decOut_n[1]~output_o\ : std_logic;
SIGNAL \decOut_n[2]~output_o\ : std_logic;
SIGNAL \decOut_n[3]~output_o\ : std_logic;
SIGNAL \decOut_n[4]~output_o\ : std_logic;
SIGNAL \decOut_n[5]~output_o\ : std_logic;
SIGNAL \decOut_n[6]~output_o\ : std_logic;
SIGNAL \binInput[4]~input_o\ : std_logic;
SIGNAL \binInput[0]~input_o\ : std_logic;
SIGNAL \binInput[1]~input_o\ : std_logic;
SIGNAL \binInput[2]~input_o\ : std_logic;
SIGNAL \binInput[3]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \decOut_n~0_combout\ : std_logic;
SIGNAL \decOut_n~1_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \decOut_n~2_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \decOut_n~3_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \decOut_n~4_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \decOut_n~5_combout\ : std_logic;
SIGNAL \decOut_n~6_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \decOut_n~7_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \decOut_n~8_combout\ : std_logic;

BEGIN

ww_enable <= enable;
ww_binInput <= binInput;
decOut_n <= ww_decOut_n;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\decOut_n[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decOut_n~0_combout\,
	devoe => ww_devoe,
	o => \decOut_n[0]~output_o\);

\decOut_n[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decOut_n~2_combout\,
	devoe => ww_devoe,
	o => \decOut_n[1]~output_o\);

\decOut_n[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decOut_n~3_combout\,
	devoe => ww_devoe,
	o => \decOut_n[2]~output_o\);

\decOut_n[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decOut_n~4_combout\,
	devoe => ww_devoe,
	o => \decOut_n[3]~output_o\);

\decOut_n[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decOut_n~5_combout\,
	devoe => ww_devoe,
	o => \decOut_n[4]~output_o\);

\decOut_n[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decOut_n~7_combout\,
	devoe => ww_devoe,
	o => \decOut_n[5]~output_o\);

\decOut_n[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decOut_n~8_combout\,
	devoe => ww_devoe,
	o => \decOut_n[6]~output_o\);

\binInput[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binInput(4),
	o => \binInput[4]~input_o\);

\binInput[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binInput(0),
	o => \binInput[0]~input_o\);

\binInput[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binInput(1),
	o => \binInput[1]~input_o\);

\binInput[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binInput(2),
	o => \binInput[2]~input_o\);

\binInput[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binInput(3),
	o => \binInput[3]~input_o\);

\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\binInput[1]~input_o\ & (((!\binInput[3]~input_o\) # (!\binInput[2]~input_o\)))) # (!\binInput[1]~input_o\ & ((\binInput[3]~input_o\) # ((\binInput[0]~input_o\ & \binInput[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binInput[0]~input_o\,
	datab => \binInput[1]~input_o\,
	datac => \binInput[2]~input_o\,
	datad => \binInput[3]~input_o\,
	combout => \Mux6~0_combout\);

\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (!\binInput[3]~input_o\ & (\binInput[1]~input_o\ $ (((\binInput[0]~input_o\ & \binInput[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binInput[0]~input_o\,
	datab => \binInput[1]~input_o\,
	datac => \binInput[2]~input_o\,
	datad => \binInput[3]~input_o\,
	combout => \Mux6~1_combout\);

\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

\decOut_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decOut_n~0_combout\ = ((\binInput[4]~input_o\ & ((!\Mux6~1_combout\))) # (!\binInput[4]~input_o\ & (!\Mux6~0_combout\))) # (!\enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binInput[4]~input_o\,
	datab => \Mux6~0_combout\,
	datac => \Mux6~1_combout\,
	datad => \enable~input_o\,
	combout => \decOut_n~0_combout\);

\decOut_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decOut_n~1_combout\ = (\binInput[4]~input_o\ & ((\binInput[3]~input_o\) # ((!\binInput[0]~input_o\ & !\binInput[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binInput[4]~input_o\,
	datab => \binInput[3]~input_o\,
	datac => \binInput[0]~input_o\,
	datad => \binInput[2]~input_o\,
	combout => \decOut_n~1_combout\);

\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\binInput[0]~input_o\ & ((\binInput[1]~input_o\ & ((\binInput[2]~input_o\) # (!\binInput[3]~input_o\))) # (!\binInput[1]~input_o\ & ((\binInput[3]~input_o\) # (!\binInput[2]~input_o\))))) # (!\binInput[0]~input_o\ & 
-- ((\binInput[1]~input_o\ & ((\binInput[3]~input_o\) # (!\binInput[2]~input_o\))) # (!\binInput[1]~input_o\ & (\binInput[2]~input_o\ $ (\binInput[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binInput[0]~input_o\,
	datab => \binInput[1]~input_o\,
	datac => \binInput[2]~input_o\,
	datad => \binInput[3]~input_o\,
	combout => \Mux5~0_combout\);

\decOut_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \decOut_n~2_combout\ = (\decOut_n~1_combout\) # (((!\binInput[4]~input_o\ & !\Mux5~0_combout\)) # (!\enable~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decOut_n~1_combout\,
	datab => \binInput[4]~input_o\,
	datac => \Mux5~0_combout\,
	datad => \enable~input_o\,
	combout => \decOut_n~2_combout\);

\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\binInput[1]~input_o\ & ((\binInput[2]~input_o\) # (\binInput[0]~input_o\ $ (\binInput[3]~input_o\)))) # (!\binInput[1]~input_o\ & ((\binInput[0]~input_o\) # (\binInput[2]~input_o\ $ (\binInput[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binInput[0]~input_o\,
	datab => \binInput[1]~input_o\,
	datac => \binInput[2]~input_o\,
	datad => \binInput[3]~input_o\,
	combout => \Mux4~0_combout\);

\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (!\binInput[3]~input_o\ & ((\binInput[1]~input_o\) # (\binInput[0]~input_o\ $ (\binInput[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binInput[0]~input_o\,
	datab => \binInput[1]~input_o\,
	datac => \binInput[2]~input_o\,
	datad => \binInput[3]~input_o\,
	combout => \Mux4~1_combout\);

\decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \decOut_n~3_combout\ = ((\binInput[4]~input_o\ & ((!\Mux4~1_combout\))) # (!\binInput[4]~input_o\ & (!\Mux4~0_combout\))) # (!\enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binInput[4]~input_o\,
	datab => \Mux4~0_combout\,
	datac => \Mux4~1_combout\,
	datad => \enable~input_o\,
	combout => \decOut_n~3_combout\);

\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\binInput[3]~input_o\ & ((\binInput[0]~input_o\) # ((\binInput[2]~input_o\) # (!\binInput[1]~input_o\)))) # (!\binInput[3]~input_o\ & (\binInput[1]~input_o\ $ (((\binInput[0]~input_o\ & \binInput[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binInput[0]~input_o\,
	datab => \binInput[1]~input_o\,
	datac => \binInput[2]~input_o\,
	datad => \binInput[3]~input_o\,
	combout => \Mux3~0_combout\);

\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\binInput[1]~input_o\ & (((\binInput[2]~input_o\ & !\binInput[3]~input_o\)))) # (!\binInput[1]~input_o\ & ((\binInput[0]~input_o\ & ((!\binInput[3]~input_o\))) # (!\binInput[0]~input_o\ & (!\binInput[2]~input_o\ & 
-- \binInput[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binInput[0]~input_o\,
	datab => \binInput[1]~input_o\,
	datac => \binInput[2]~input_o\,
	datad => \binInput[3]~input_o\,
	combout => \Mux3~1_combout\);

\decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \decOut_n~4_combout\ = ((\binInput[4]~input_o\ & ((!\Mux3~1_combout\))) # (!\binInput[4]~input_o\ & (!\Mux3~0_combout\))) # (!\enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binInput[4]~input_o\,
	datab => \Mux3~0_combout\,
	datac => \Mux3~1_combout\,
	datad => \enable~input_o\,
	combout => \decOut_n~4_combout\);

\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\binInput[4]~input_o\ & (((!\binInput[2]~input_o\ & !\binInput[3]~input_o\)))) # (!\binInput[4]~input_o\ & ((\binInput[1]~input_o\) # ((\binInput[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binInput[4]~input_o\,
	datab => \binInput[1]~input_o\,
	datac => \binInput[2]~input_o\,
	datad => \binInput[3]~input_o\,
	combout => \Mux2~0_combout\);

\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\binInput[4]~input_o\ & (((\binInput[2]~input_o\ & !\binInput[3]~input_o\)))) # (!\binInput[4]~input_o\ & (\binInput[1]~input_o\ & (!\binInput[2]~input_o\ & \binInput[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binInput[4]~input_o\,
	datab => \binInput[1]~input_o\,
	datac => \binInput[2]~input_o\,
	datad => \binInput[3]~input_o\,
	combout => \Mux2~1_combout\);

\decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \decOut_n~5_combout\ = ((\binInput[0]~input_o\ & ((!\Mux2~1_combout\))) # (!\binInput[0]~input_o\ & (!\Mux2~0_combout\))) # (!\enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binInput[0]~input_o\,
	datab => \Mux2~0_combout\,
	datac => \Mux2~1_combout\,
	datad => \enable~input_o\,
	combout => \decOut_n~5_combout\);

\decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \decOut_n~6_combout\ = (\binInput[4]~input_o\ & ((\binInput[3]~input_o\) # (\binInput[0]~input_o\ $ (\binInput[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binInput[4]~input_o\,
	datab => \binInput[3]~input_o\,
	datac => \binInput[0]~input_o\,
	datad => \binInput[1]~input_o\,
	combout => \decOut_n~6_combout\);

\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\binInput[2]~input_o\ & (((!\binInput[1]~input_o\ & !\binInput[3]~input_o\)) # (!\binInput[0]~input_o\))) # (!\binInput[2]~input_o\ & (((\binInput[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binInput[0]~input_o\,
	datab => \binInput[1]~input_o\,
	datac => \binInput[2]~input_o\,
	datad => \binInput[3]~input_o\,
	combout => \Mux1~0_combout\);

\decOut_n~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \decOut_n~7_combout\ = (\decOut_n~6_combout\) # (((!\binInput[4]~input_o\ & !\Mux1~0_combout\)) # (!\enable~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decOut_n~6_combout\,
	datab => \binInput[4]~input_o\,
	datac => \Mux1~0_combout\,
	datad => \enable~input_o\,
	combout => \decOut_n~7_combout\);

\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\binInput[1]~input_o\ & ((\binInput[2]~input_o\ $ (!\binInput[3]~input_o\)) # (!\binInput[0]~input_o\))) # (!\binInput[1]~input_o\ & (((\binInput[2]~input_o\) # (\binInput[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binInput[0]~input_o\,
	datab => \binInput[1]~input_o\,
	datac => \binInput[2]~input_o\,
	datad => \binInput[3]~input_o\,
	combout => \Mux0~0_combout\);

\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (!\binInput[3]~input_o\ & ((\binInput[1]~input_o\ & (\binInput[0]~input_o\ & !\binInput[2]~input_o\)) # (!\binInput[1]~input_o\ & ((\binInput[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binInput[0]~input_o\,
	datab => \binInput[1]~input_o\,
	datac => \binInput[2]~input_o\,
	datad => \binInput[3]~input_o\,
	combout => \Mux0~1_combout\);

\decOut_n~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \decOut_n~8_combout\ = ((\binInput[4]~input_o\ & ((!\Mux0~1_combout\))) # (!\binInput[4]~input_o\ & (!\Mux0~0_combout\))) # (!\enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binInput[4]~input_o\,
	datab => \Mux0~0_combout\,
	datac => \Mux0~1_combout\,
	datad => \enable~input_o\,
	combout => \decOut_n~8_combout\);

ww_decOut_n(0) <= \decOut_n[0]~output_o\;

ww_decOut_n(1) <= \decOut_n[1]~output_o\;

ww_decOut_n(2) <= \decOut_n[2]~output_o\;

ww_decOut_n(3) <= \decOut_n[3]~output_o\;

ww_decOut_n(4) <= \decOut_n[4]~output_o\;

ww_decOut_n(5) <= \decOut_n[5]~output_o\;

ww_decOut_n(6) <= \decOut_n[6]~output_o\;
END structure;


