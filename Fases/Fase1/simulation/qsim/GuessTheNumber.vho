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

-- DATE "06/07/2021 15:31:37"

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

ENTITY 	bin_to_bcd_fsm IS
    PORT (
	bin_input : IN std_logic_vector(6 DOWNTO 0);
	activate : IN std_logic;
	digit1 : OUT std_logic_vector(3 DOWNTO 0);
	digit0 : OUT std_logic_vector(3 DOWNTO 0);
	done : OUT std_logic;
	clk : IN std_logic
	);
END bin_to_bcd_fsm;

ARCHITECTURE structure OF bin_to_bcd_fsm IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_bin_input : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_activate : std_logic;
SIGNAL ww_digit1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_digit0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_done : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL \digit1[0]~output_o\ : std_logic;
SIGNAL \digit1[1]~output_o\ : std_logic;
SIGNAL \digit1[2]~output_o\ : std_logic;
SIGNAL \digit1[3]~output_o\ : std_logic;
SIGNAL \digit0[0]~output_o\ : std_logic;
SIGNAL \digit0[1]~output_o\ : std_logic;
SIGNAL \digit0[2]~output_o\ : std_logic;
SIGNAL \digit0[3]~output_o\ : std_logic;
SIGNAL \done~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \s_inputUNSIGNED[1]~7_combout\ : std_logic;
SIGNAL \bin_input[1]~input_o\ : std_logic;
SIGNAL \s_inputUNSIGNED[1]~8\ : std_logic;
SIGNAL \s_inputUNSIGNED[2]~9_combout\ : std_logic;
SIGNAL \bin_input[2]~input_o\ : std_logic;
SIGNAL \s_inputUNSIGNED[2]~10\ : std_logic;
SIGNAL \s_inputUNSIGNED[3]~11_combout\ : std_logic;
SIGNAL \bin_input[3]~input_o\ : std_logic;
SIGNAL \s_inputUNSIGNED[3]~12\ : std_logic;
SIGNAL \s_inputUNSIGNED[4]~13_combout\ : std_logic;
SIGNAL \bin_input[4]~input_o\ : std_logic;
SIGNAL \s_inputUNSIGNED[4]~14\ : std_logic;
SIGNAL \s_inputUNSIGNED[5]~15_combout\ : std_logic;
SIGNAL \bin_input[5]~input_o\ : std_logic;
SIGNAL \s_inputUNSIGNED[5]~16\ : std_logic;
SIGNAL \s_inputUNSIGNED[6]~17_combout\ : std_logic;
SIGNAL \bin_input[6]~input_o\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \estado.finish~q\ : std_logic;
SIGNAL \activate~input_o\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \estado.idle~q\ : std_logic;
SIGNAL \s_inputUNSIGNED[6]~19_combout\ : std_logic;
SIGNAL \s_inputUNSIGNED[6]~20_combout\ : std_logic;
SIGNAL \estado.sub10~q\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \digit1[0]~reg0_q\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \digit1[1]~reg0_q\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \digit1[2]~reg0_q\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \digit1[3]~reg0_q\ : std_logic;
SIGNAL \bin_input[0]~input_o\ : std_logic;
SIGNAL \s_inputUNSIGNED[0]~6_combout\ : std_logic;
SIGNAL \digit0[0]~reg0_q\ : std_logic;
SIGNAL \digit0[1]~reg0_q\ : std_logic;
SIGNAL \digit0[2]~reg0_q\ : std_logic;
SIGNAL \digit0[3]~reg0_q\ : std_logic;
SIGNAL \done~reg0_q\ : std_logic;
SIGNAL s_inputUNSIGNED : std_logic_vector(6 DOWNTO 0);
SIGNAL s_dezenasUNSIGNED : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_estado.sub10~q\ : std_logic;

BEGIN

ww_bin_input <= bin_input;
ww_activate <= activate;
digit1 <= ww_digit1;
digit0 <= ww_digit0;
done <= ww_done;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_estado.sub10~q\ <= NOT \estado.sub10~q\;

\digit1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit1[0]~reg0_q\,
	devoe => ww_devoe,
	o => \digit1[0]~output_o\);

\digit1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit1[1]~reg0_q\,
	devoe => ww_devoe,
	o => \digit1[1]~output_o\);

\digit1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit1[2]~reg0_q\,
	devoe => ww_devoe,
	o => \digit1[2]~output_o\);

\digit1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit1[3]~reg0_q\,
	devoe => ww_devoe,
	o => \digit1[3]~output_o\);

\digit0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit0[0]~reg0_q\,
	devoe => ww_devoe,
	o => \digit0[0]~output_o\);

\digit0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit0[1]~reg0_q\,
	devoe => ww_devoe,
	o => \digit0[1]~output_o\);

\digit0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit0[2]~reg0_q\,
	devoe => ww_devoe,
	o => \digit0[2]~output_o\);

\digit0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit0[3]~reg0_q\,
	devoe => ww_devoe,
	o => \digit0[3]~output_o\);

\done~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \done~reg0_q\,
	devoe => ww_devoe,
	o => \done~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\s_inputUNSIGNED[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_inputUNSIGNED[1]~7_combout\ = s_inputUNSIGNED(1) $ (VCC)
-- \s_inputUNSIGNED[1]~8\ = CARRY(s_inputUNSIGNED(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_inputUNSIGNED(1),
	datad => VCC,
	combout => \s_inputUNSIGNED[1]~7_combout\,
	cout => \s_inputUNSIGNED[1]~8\);

\bin_input[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin_input(1),
	o => \bin_input[1]~input_o\);

\s_inputUNSIGNED[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_inputUNSIGNED[1]~7_combout\,
	asdata => \bin_input[1]~input_o\,
	sload => \ALT_INV_estado.sub10~q\,
	ena => \s_inputUNSIGNED[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_inputUNSIGNED(1));

\s_inputUNSIGNED[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_inputUNSIGNED[2]~9_combout\ = (s_inputUNSIGNED(2) & (\s_inputUNSIGNED[1]~8\ & VCC)) # (!s_inputUNSIGNED(2) & (!\s_inputUNSIGNED[1]~8\))
-- \s_inputUNSIGNED[2]~10\ = CARRY((!s_inputUNSIGNED(2) & !\s_inputUNSIGNED[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_inputUNSIGNED(2),
	datad => VCC,
	cin => \s_inputUNSIGNED[1]~8\,
	combout => \s_inputUNSIGNED[2]~9_combout\,
	cout => \s_inputUNSIGNED[2]~10\);

\bin_input[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin_input(2),
	o => \bin_input[2]~input_o\);

\s_inputUNSIGNED[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_inputUNSIGNED[2]~9_combout\,
	asdata => \bin_input[2]~input_o\,
	sload => \ALT_INV_estado.sub10~q\,
	ena => \s_inputUNSIGNED[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_inputUNSIGNED(2));

\s_inputUNSIGNED[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_inputUNSIGNED[3]~11_combout\ = (s_inputUNSIGNED(3) & (\s_inputUNSIGNED[2]~10\ $ (GND))) # (!s_inputUNSIGNED(3) & (!\s_inputUNSIGNED[2]~10\ & VCC))
-- \s_inputUNSIGNED[3]~12\ = CARRY((s_inputUNSIGNED(3) & !\s_inputUNSIGNED[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_inputUNSIGNED(3),
	datad => VCC,
	cin => \s_inputUNSIGNED[2]~10\,
	combout => \s_inputUNSIGNED[3]~11_combout\,
	cout => \s_inputUNSIGNED[3]~12\);

\bin_input[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin_input(3),
	o => \bin_input[3]~input_o\);

\s_inputUNSIGNED[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_inputUNSIGNED[3]~11_combout\,
	asdata => \bin_input[3]~input_o\,
	sload => \ALT_INV_estado.sub10~q\,
	ena => \s_inputUNSIGNED[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_inputUNSIGNED(3));

\s_inputUNSIGNED[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_inputUNSIGNED[4]~13_combout\ = (s_inputUNSIGNED(4) & (\s_inputUNSIGNED[3]~12\ & VCC)) # (!s_inputUNSIGNED(4) & (!\s_inputUNSIGNED[3]~12\))
-- \s_inputUNSIGNED[4]~14\ = CARRY((!s_inputUNSIGNED(4) & !\s_inputUNSIGNED[3]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_inputUNSIGNED(4),
	datad => VCC,
	cin => \s_inputUNSIGNED[3]~12\,
	combout => \s_inputUNSIGNED[4]~13_combout\,
	cout => \s_inputUNSIGNED[4]~14\);

\bin_input[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin_input(4),
	o => \bin_input[4]~input_o\);

\s_inputUNSIGNED[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_inputUNSIGNED[4]~13_combout\,
	asdata => \bin_input[4]~input_o\,
	sload => \ALT_INV_estado.sub10~q\,
	ena => \s_inputUNSIGNED[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_inputUNSIGNED(4));

\s_inputUNSIGNED[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_inputUNSIGNED[5]~15_combout\ = (s_inputUNSIGNED(5) & ((GND) # (!\s_inputUNSIGNED[4]~14\))) # (!s_inputUNSIGNED(5) & (\s_inputUNSIGNED[4]~14\ $ (GND)))
-- \s_inputUNSIGNED[5]~16\ = CARRY((s_inputUNSIGNED(5)) # (!\s_inputUNSIGNED[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_inputUNSIGNED(5),
	datad => VCC,
	cin => \s_inputUNSIGNED[4]~14\,
	combout => \s_inputUNSIGNED[5]~15_combout\,
	cout => \s_inputUNSIGNED[5]~16\);

\bin_input[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin_input(5),
	o => \bin_input[5]~input_o\);

\s_inputUNSIGNED[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_inputUNSIGNED[5]~15_combout\,
	asdata => \bin_input[5]~input_o\,
	sload => \ALT_INV_estado.sub10~q\,
	ena => \s_inputUNSIGNED[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_inputUNSIGNED(5));

\s_inputUNSIGNED[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_inputUNSIGNED[6]~17_combout\ = s_inputUNSIGNED(6) $ (!\s_inputUNSIGNED[5]~16\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_inputUNSIGNED(6),
	cin => \s_inputUNSIGNED[5]~16\,
	combout => \s_inputUNSIGNED[6]~17_combout\);

\bin_input[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin_input(6),
	o => \bin_input[6]~input_o\);

\s_inputUNSIGNED[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_inputUNSIGNED[6]~17_combout\,
	asdata => \bin_input[6]~input_o\,
	sload => \ALT_INV_estado.sub10~q\,
	ena => \s_inputUNSIGNED[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_inputUNSIGNED(6));

\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!s_inputUNSIGNED(4) & (((!s_inputUNSIGNED(1) & !s_inputUNSIGNED(2))) # (!s_inputUNSIGNED(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_inputUNSIGNED(1),
	datab => s_inputUNSIGNED(2),
	datac => s_inputUNSIGNED(3),
	datad => s_inputUNSIGNED(4),
	combout => \LessThan0~0_combout\);

\Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (!s_inputUNSIGNED(5) & (!s_inputUNSIGNED(6) & (\estado.sub10~q\ & \LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_inputUNSIGNED(5),
	datab => s_inputUNSIGNED(6),
	datac => \estado.sub10~q\,
	datad => \LessThan0~0_combout\,
	combout => \Selector2~2_combout\);

\estado.finish\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.finish~q\);

\activate~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_activate,
	o => \activate~input_o\);

\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\estado.finish~q\ & ((\activate~input_o\) # (\estado.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.finish~q\,
	datac => \activate~input_o\,
	datad => \estado.idle~q\,
	combout => \Selector0~0_combout\);

\estado.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.idle~q\);

\s_inputUNSIGNED[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_inputUNSIGNED[6]~19_combout\ = (!s_inputUNSIGNED(6) & (!s_inputUNSIGNED(5) & \LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_inputUNSIGNED(6),
	datac => s_inputUNSIGNED(5),
	datad => \LessThan0~0_combout\,
	combout => \s_inputUNSIGNED[6]~19_combout\);

\s_inputUNSIGNED[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_inputUNSIGNED[6]~20_combout\ = (\estado.idle~q\ & (!\s_inputUNSIGNED[6]~19_combout\ & ((\estado.sub10~q\)))) # (!\estado.idle~q\ & ((\activate~input_o\) # ((!\s_inputUNSIGNED[6]~19_combout\ & \estado.sub10~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.idle~q\,
	datab => \s_inputUNSIGNED[6]~19_combout\,
	datac => \activate~input_o\,
	datad => \estado.sub10~q\,
	combout => \s_inputUNSIGNED[6]~20_combout\);

\estado.sub10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_inputUNSIGNED[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.sub10~q\);

\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (!s_dezenasUNSIGNED(0) & \estado.sub10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_dezenasUNSIGNED(0),
	datad => \estado.sub10~q\,
	combout => \Selector12~0_combout\);

\s_dezenasUNSIGNED[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector12~0_combout\,
	ena => \s_inputUNSIGNED[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_dezenasUNSIGNED(0));

\digit1[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => s_dezenasUNSIGNED(0),
	ena => \estado.finish~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit1[0]~reg0_q\);

\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\estado.sub10~q\ & (s_dezenasUNSIGNED(0) $ (s_dezenasUNSIGNED(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.sub10~q\,
	datac => s_dezenasUNSIGNED(0),
	datad => s_dezenasUNSIGNED(1),
	combout => \Selector11~0_combout\);

\s_dezenasUNSIGNED[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector11~0_combout\,
	ena => \s_inputUNSIGNED[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_dezenasUNSIGNED(1));

\digit1[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => s_dezenasUNSIGNED(1),
	ena => \estado.finish~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit1[1]~reg0_q\);

\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\estado.sub10~q\ & (s_dezenasUNSIGNED(2) $ (((s_dezenasUNSIGNED(0) & s_dezenasUNSIGNED(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.sub10~q\,
	datab => s_dezenasUNSIGNED(2),
	datac => s_dezenasUNSIGNED(0),
	datad => s_dezenasUNSIGNED(1),
	combout => \Selector10~0_combout\);

\s_dezenasUNSIGNED[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector10~0_combout\,
	ena => \s_inputUNSIGNED[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_dezenasUNSIGNED(2));

\digit1[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => s_dezenasUNSIGNED(2),
	ena => \estado.finish~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit1[2]~reg0_q\);

\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = s_dezenasUNSIGNED(3) $ (((s_dezenasUNSIGNED(0) & (s_dezenasUNSIGNED(1) & s_dezenasUNSIGNED(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_dezenasUNSIGNED(3),
	datab => s_dezenasUNSIGNED(0),
	datac => s_dezenasUNSIGNED(1),
	datad => s_dezenasUNSIGNED(2),
	combout => \Add1~0_combout\);

\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\estado.sub10~q\ & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.sub10~q\,
	datab => \Add1~0_combout\,
	combout => \Selector9~0_combout\);

\s_dezenasUNSIGNED[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector9~0_combout\,
	ena => \s_inputUNSIGNED[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_dezenasUNSIGNED(3));

\digit1[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => s_dezenasUNSIGNED(3),
	ena => \estado.finish~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit1[3]~reg0_q\);

\bin_input[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin_input(0),
	o => \bin_input[0]~input_o\);

\s_inputUNSIGNED[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_inputUNSIGNED[0]~6_combout\ = (\activate~input_o\ & ((\estado.idle~q\ & (s_inputUNSIGNED(0))) # (!\estado.idle~q\ & ((\bin_input[0]~input_o\))))) # (!\activate~input_o\ & (s_inputUNSIGNED(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_inputUNSIGNED(0),
	datab => \bin_input[0]~input_o\,
	datac => \activate~input_o\,
	datad => \estado.idle~q\,
	combout => \s_inputUNSIGNED[0]~6_combout\);

\s_inputUNSIGNED[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_inputUNSIGNED[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_inputUNSIGNED(0));

\digit0[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => s_inputUNSIGNED(0),
	ena => \estado.finish~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit0[0]~reg0_q\);

\digit0[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => s_inputUNSIGNED(1),
	ena => \estado.finish~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit0[1]~reg0_q\);

\digit0[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => s_inputUNSIGNED(2),
	ena => \estado.finish~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit0[2]~reg0_q\);

\digit0[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => s_inputUNSIGNED(3),
	ena => \estado.finish~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit0[3]~reg0_q\);

\done~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \estado.finish~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \done~reg0_q\);

ww_digit1(0) <= \digit1[0]~output_o\;

ww_digit1(1) <= \digit1[1]~output_o\;

ww_digit1(2) <= \digit1[2]~output_o\;

ww_digit1(3) <= \digit1[3]~output_o\;

ww_digit0(0) <= \digit0[0]~output_o\;

ww_digit0(1) <= \digit0[1]~output_o\;

ww_digit0(2) <= \digit0[2]~output_o\;

ww_digit0(3) <= \digit0[3]~output_o\;

ww_done <= \done~output_o\;
END structure;


