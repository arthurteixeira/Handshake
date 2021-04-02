-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "04/02/2021 01:10:30"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Handshake IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	ReqLeit : IN std_logic;
	AckES : IN std_logic;
	endereco : IN std_logic_vector(7 DOWNTO 0);
	dado : OUT std_logic_vector(7 DOWNTO 0);
	AckMem : OUT std_logic;
	DadoPrt : OUT std_logic
	);
END Handshake;

-- Design Ports Information
-- endereco[4]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[6]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[7]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[1]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[2]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[4]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[5]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[6]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[7]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AckMem	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DadoPrt	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReqLeit	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AckES	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[0]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[1]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[2]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[3]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Handshake IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_ReqLeit : std_logic;
SIGNAL ww_AckES : std_logic;
SIGNAL ww_endereco : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dado : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_AckMem : std_logic;
SIGNAL ww_DadoPrt : std_logic;
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \endereco[4]~input_o\ : std_logic;
SIGNAL \endereco[5]~input_o\ : std_logic;
SIGNAL \endereco[6]~input_o\ : std_logic;
SIGNAL \endereco[7]~input_o\ : std_logic;
SIGNAL \endereco[1]~input_o\ : std_logic;
SIGNAL \regEndereco[1]~feeder_combout\ : std_logic;
SIGNAL \dado[0]~output_o\ : std_logic;
SIGNAL \dado[1]~output_o\ : std_logic;
SIGNAL \dado[2]~output_o\ : std_logic;
SIGNAL \dado[3]~output_o\ : std_logic;
SIGNAL \dado[4]~output_o\ : std_logic;
SIGNAL \dado[5]~output_o\ : std_logic;
SIGNAL \dado[6]~output_o\ : std_logic;
SIGNAL \dado[7]~output_o\ : std_logic;
SIGNAL \AckMem~output_o\ : std_logic;
SIGNAL \DadoPrt~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \endereco[3]~input_o\ : std_logic;
SIGNAL \regEndereco[3]~feeder_combout\ : std_logic;
SIGNAL \ReqLeit~input_o\ : std_logic;
SIGNAL \AckES~input_o\ : std_logic;
SIGNAL \inst_PC|state~10_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst_PC|state.s1~q\ : std_logic;
SIGNAL \inst_PC|Selector1~0_combout\ : std_logic;
SIGNAL \inst_PC|state.s2~q\ : std_logic;
SIGNAL \inst_PC|state~11_combout\ : std_logic;
SIGNAL \inst_PC|state.s3~q\ : std_logic;
SIGNAL \inst_PC|Selector0~0_combout\ : std_logic;
SIGNAL \inst_PC|state.s0~q\ : std_logic;
SIGNAL \endereco[0]~input_o\ : std_logic;
SIGNAL \regEndereco[0]~feeder_combout\ : std_logic;
SIGNAL \endereco[2]~input_o\ : std_logic;
SIGNAL \regEndereco[2]~feeder_combout\ : std_logic;
SIGNAL \inst_Memoria|Mux2~0_combout\ : std_logic;
SIGNAL \dado[0]~reg0_q\ : std_logic;
SIGNAL \inst_Memoria|Mux1~0_combout\ : std_logic;
SIGNAL \dado[1]~reg0_q\ : std_logic;
SIGNAL \inst_Memoria|Mux0~0_combout\ : std_logic;
SIGNAL \dado[2]~reg0_q\ : std_logic;
SIGNAL regEndereco : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst_PC|ALT_INV_state.s0~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_ReqLeit <= ReqLeit;
ww_AckES <= AckES;
ww_endereco <= endereco;
dado <= ww_dado;
AckMem <= ww_AckMem;
DadoPrt <= ww_DadoPrt;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\inst_PC|ALT_INV_state.s0~q\ <= NOT \inst_PC|state.s0~q\;

-- Location: FF_X24_Y1_N31
\regEndereco[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regEndereco[1]~feeder_combout\,
	ena => \inst_PC|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regEndereco(1));

-- Location: IOIBUF_X29_Y0_N8
\endereco[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_endereco(1),
	o => \endereco[1]~input_o\);

-- Location: LCCOMB_X24_Y1_N30
\regEndereco[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regEndereco[1]~feeder_combout\ = \endereco[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \endereco[1]~input_o\,
	combout => \regEndereco[1]~feeder_combout\);

-- Location: IOOBUF_X22_Y0_N2
\dado[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dado[0]~reg0_q\,
	devoe => ww_devoe,
	o => \dado[0]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\dado[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dado[1]~reg0_q\,
	devoe => ww_devoe,
	o => \dado[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\dado[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dado[2]~reg0_q\,
	devoe => ww_devoe,
	o => \dado[2]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\dado[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \dado[3]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\dado[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dado[4]~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\dado[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dado[5]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\dado[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dado[6]~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\dado[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dado[7]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\AckMem~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_PC|state.s1~q\,
	devoe => ww_devoe,
	o => \AckMem~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\DadoPrt~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_PC|state.s2~q\,
	devoe => ww_devoe,
	o => \DadoPrt~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X24_Y0_N1
\endereco[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_endereco(3),
	o => \endereco[3]~input_o\);

-- Location: LCCOMB_X24_Y1_N18
\regEndereco[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regEndereco[3]~feeder_combout\ = \endereco[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \endereco[3]~input_o\,
	combout => \regEndereco[3]~feeder_combout\);

-- Location: IOIBUF_X26_Y0_N1
\ReqLeit~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ReqLeit,
	o => \ReqLeit~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\AckES~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AckES,
	o => \AckES~input_o\);

-- Location: LCCOMB_X23_Y1_N18
\inst_PC|state~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst_PC|state~10_combout\ = (\ReqLeit~input_o\ & ((\inst_PC|state.s1~q\) # (!\inst_PC|state.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ReqLeit~input_o\,
	datac => \inst_PC|state.s1~q\,
	datad => \inst_PC|state.s0~q\,
	combout => \inst_PC|state~10_combout\);

-- Location: IOIBUF_X16_Y0_N22
\reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G19
\reset~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X23_Y1_N19
\inst_PC|state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_PC|state~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_PC|state.s1~q\);

-- Location: LCCOMB_X23_Y1_N28
\inst_PC|Selector1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst_PC|Selector1~0_combout\ = (\AckES~input_o\ & (!\ReqLeit~input_o\ & ((\inst_PC|state.s1~q\)))) # (!\AckES~input_o\ & ((\inst_PC|state.s2~q\) # ((!\ReqLeit~input_o\ & \inst_PC|state.s1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AckES~input_o\,
	datab => \ReqLeit~input_o\,
	datac => \inst_PC|state.s2~q\,
	datad => \inst_PC|state.s1~q\,
	combout => \inst_PC|Selector1~0_combout\);

-- Location: FF_X23_Y1_N29
\inst_PC|state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_PC|Selector1~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_PC|state.s2~q\);

-- Location: LCCOMB_X23_Y1_N14
\inst_PC|state~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst_PC|state~11_combout\ = (\AckES~input_o\ & \inst_PC|state.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AckES~input_o\,
	datad => \inst_PC|state.s2~q\,
	combout => \inst_PC|state~11_combout\);

-- Location: FF_X23_Y1_N15
\inst_PC|state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_PC|state~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_PC|state.s3~q\);

-- Location: LCCOMB_X24_Y1_N24
\inst_PC|Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst_PC|Selector0~0_combout\ = (!\inst_PC|state.s3~q\ & ((\ReqLeit~input_o\) # (\inst_PC|state.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ReqLeit~input_o\,
	datac => \inst_PC|state.s0~q\,
	datad => \inst_PC|state.s3~q\,
	combout => \inst_PC|Selector0~0_combout\);

-- Location: FF_X24_Y1_N25
\inst_PC|state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_PC|Selector0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_PC|state.s0~q\);

-- Location: FF_X24_Y1_N19
\regEndereco[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regEndereco[3]~feeder_combout\,
	ena => \inst_PC|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regEndereco(3));

-- Location: IOIBUF_X29_Y0_N1
\endereco[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_endereco(0),
	o => \endereco[0]~input_o\);

-- Location: LCCOMB_X24_Y1_N12
\regEndereco[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regEndereco[0]~feeder_combout\ = \endereco[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \endereco[0]~input_o\,
	combout => \regEndereco[0]~feeder_combout\);

-- Location: FF_X24_Y1_N13
\regEndereco[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regEndereco[0]~feeder_combout\,
	ena => \inst_PC|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regEndereco(0));

-- Location: IOIBUF_X24_Y0_N8
\endereco[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_endereco(2),
	o => \endereco[2]~input_o\);

-- Location: LCCOMB_X24_Y1_N28
\regEndereco[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regEndereco[2]~feeder_combout\ = \endereco[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \endereco[2]~input_o\,
	combout => \regEndereco[2]~feeder_combout\);

-- Location: FF_X24_Y1_N29
\regEndereco[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regEndereco[2]~feeder_combout\,
	ena => \inst_PC|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regEndereco(2));

-- Location: LCCOMB_X23_Y1_N24
\inst_Memoria|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst_Memoria|Mux2~0_combout\ = (!regEndereco(3) & (regEndereco(0) & (regEndereco(1) $ (regEndereco(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regEndereco(1),
	datab => regEndereco(3),
	datac => regEndereco(0),
	datad => regEndereco(2),
	combout => \inst_Memoria|Mux2~0_combout\);

-- Location: FF_X23_Y1_N25
\dado[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_Memoria|Mux2~0_combout\,
	ena => \inst_PC|state.s2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dado[0]~reg0_q\);

-- Location: LCCOMB_X23_Y1_N10
\inst_Memoria|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst_Memoria|Mux1~0_combout\ = (!regEndereco(3) & ((regEndereco(0) & (!regEndereco(1) & !regEndereco(2))) # (!regEndereco(0) & ((regEndereco(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regEndereco(1),
	datab => regEndereco(3),
	datac => regEndereco(0),
	datad => regEndereco(2),
	combout => \inst_Memoria|Mux1~0_combout\);

-- Location: FF_X23_Y1_N11
\dado[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_Memoria|Mux1~0_combout\,
	ena => \inst_PC|state.s2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dado[1]~reg0_q\);

-- Location: LCCOMB_X23_Y1_N4
\inst_Memoria|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst_Memoria|Mux0~0_combout\ = (regEndereco(1) & (!regEndereco(2) & (!regEndereco(0) & !regEndereco(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regEndereco(1),
	datab => regEndereco(2),
	datac => regEndereco(0),
	datad => regEndereco(3),
	combout => \inst_Memoria|Mux0~0_combout\);

-- Location: FF_X23_Y1_N5
\dado[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_Memoria|Mux0~0_combout\,
	ena => \inst_PC|state.s2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dado[2]~reg0_q\);

-- Location: IOIBUF_X33_Y16_N8
\endereco[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_endereco(4),
	o => \endereco[4]~input_o\);

-- Location: IOIBUF_X33_Y16_N1
\endereco[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_endereco(5),
	o => \endereco[5]~input_o\);

-- Location: IOIBUF_X33_Y24_N8
\endereco[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_endereco(6),
	o => \endereco[6]~input_o\);

-- Location: IOIBUF_X22_Y31_N1
\endereco[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_endereco(7),
	o => \endereco[7]~input_o\);

ww_dado(0) <= \dado[0]~output_o\;

ww_dado(1) <= \dado[1]~output_o\;

ww_dado(2) <= \dado[2]~output_o\;

ww_dado(3) <= \dado[3]~output_o\;

ww_dado(4) <= \dado[4]~output_o\;

ww_dado(5) <= \dado[5]~output_o\;

ww_dado(6) <= \dado[6]~output_o\;

ww_dado(7) <= \dado[7]~output_o\;

ww_AckMem <= \AckMem~output_o\;

ww_DadoPrt <= \DadoPrt~output_o\;
END structure;


