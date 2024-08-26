-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"

-- DATE "08/26/2024 10:22:04"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	nco8 IS
    PORT (
	i_clk : IN std_logic;
	i_clk_rst : IN std_logic;
	i_fcw : IN std_logic_vector(7 DOWNTO 0);
	o_nco : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END nco8;

-- Design Ports Information
-- i_clk_rst	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[0]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[2]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[3]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[4]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[5]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[6]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_nco[7]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[4]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[3]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[2]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[1]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[0]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[5]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[7]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[6]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF nco8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_clk : std_logic;
SIGNAL ww_i_clk_rst : std_logic;
SIGNAL ww_i_fcw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_nco : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \i_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_clk_rst~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \o_nco[0]~output_o\ : std_logic;
SIGNAL \o_nco[1]~output_o\ : std_logic;
SIGNAL \o_nco[2]~output_o\ : std_logic;
SIGNAL \o_nco[3]~output_o\ : std_logic;
SIGNAL \o_nco[4]~output_o\ : std_logic;
SIGNAL \o_nco[5]~output_o\ : std_logic;
SIGNAL \o_nco[6]~output_o\ : std_logic;
SIGNAL \o_nco[7]~output_o\ : std_logic;
SIGNAL \i_clk~input_o\ : std_logic;
SIGNAL \i_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_fcw[7]~input_o\ : std_logic;
SIGNAL \i_fcw[6]~input_o\ : std_logic;
SIGNAL \i_fcw[5]~input_o\ : std_logic;
SIGNAL \i_fcw[4]~input_o\ : std_logic;
SIGNAL \i_fcw[3]~input_o\ : std_logic;
SIGNAL \i_fcw[2]~input_o\ : std_logic;
SIGNAL \i_fcw[1]~input_o\ : std_logic;
SIGNAL \i_fcw[0]~input_o\ : std_logic;
SIGNAL \r_phase[0]~8_combout\ : std_logic;
SIGNAL \r_phase[0]~9\ : std_logic;
SIGNAL \r_phase[1]~10_combout\ : std_logic;
SIGNAL \r_phase[1]~11\ : std_logic;
SIGNAL \r_phase[2]~12_combout\ : std_logic;
SIGNAL \r_phase[2]~13\ : std_logic;
SIGNAL \r_phase[3]~14_combout\ : std_logic;
SIGNAL \r_phase[3]~15\ : std_logic;
SIGNAL \r_phase[4]~16_combout\ : std_logic;
SIGNAL \r_phase[4]~17\ : std_logic;
SIGNAL \r_phase[5]~18_combout\ : std_logic;
SIGNAL \r_phase[5]~19\ : std_logic;
SIGNAL \r_phase[6]~20_combout\ : std_logic;
SIGNAL \r_phase[6]~21\ : std_logic;
SIGNAL \r_phase[7]~22_combout\ : std_logic;
SIGNAL \Mux7~14_combout\ : std_logic;
SIGNAL \Mux7~10_combout\ : std_logic;
SIGNAL \Mux7~11_combout\ : std_logic;
SIGNAL \Mux7~12_combout\ : std_logic;
SIGNAL \Mux7~13_combout\ : std_logic;
SIGNAL \Mux7~15_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \Mux7~8_combout\ : std_logic;
SIGNAL \Mux7~9_combout\ : std_logic;
SIGNAL \Mux7~16_combout\ : std_logic;
SIGNAL \o_nco[0]~reg0_q\ : std_logic;
SIGNAL \Mux6~13_combout\ : std_logic;
SIGNAL \Mux6~17_combout\ : std_logic;
SIGNAL \Mux6~14_combout\ : std_logic;
SIGNAL \Mux6~15_combout\ : std_logic;
SIGNAL \Mux6~16_combout\ : std_logic;
SIGNAL \Mux6~18_combout\ : std_logic;
SIGNAL \Mux6~10_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux6~8_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \Mux6~9_combout\ : std_logic;
SIGNAL \Mux6~11_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux6~12_combout\ : std_logic;
SIGNAL \Mux6~19_combout\ : std_logic;
SIGNAL \o_nco[1]~reg0_q\ : std_logic;
SIGNAL \Mux5~17_combout\ : std_logic;
SIGNAL \Mux5~14_combout\ : std_logic;
SIGNAL \Mux5~15_combout\ : std_logic;
SIGNAL \Mux5~16_combout\ : std_logic;
SIGNAL \Mux5~13_combout\ : std_logic;
SIGNAL \Mux5~18_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~10_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~8_combout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \Mux5~9_combout\ : std_logic;
SIGNAL \Mux5~11_combout\ : std_logic;
SIGNAL \Mux5~12_combout\ : std_logic;
SIGNAL \Mux5~19_combout\ : std_logic;
SIGNAL \o_nco[2]~reg0_q\ : std_logic;
SIGNAL \Mux4~11_combout\ : std_logic;
SIGNAL \Mux4~10_combout\ : std_logic;
SIGNAL \Mux4~13_combout\ : std_logic;
SIGNAL \Mux4~16_combout\ : std_logic;
SIGNAL \Mux4~17_combout\ : std_logic;
SIGNAL \Mux4~12_combout\ : std_logic;
SIGNAL \Mux4~14_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \Mux4~9_combout\ : std_logic;
SIGNAL \Mux4~15_combout\ : std_logic;
SIGNAL \o_nco[3]~reg0_q\ : std_logic;
SIGNAL \Mux3~12_combout\ : std_logic;
SIGNAL \Mux3~10_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~11_combout\ : std_logic;
SIGNAL \Mux3~13_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \Mux3~8_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~15_combout\ : std_logic;
SIGNAL \Mux3~9_combout\ : std_logic;
SIGNAL \Mux3~14_combout\ : std_logic;
SIGNAL \o_nco[4]~reg0_q\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux2~9_combout\ : std_logic;
SIGNAL \Mux2~10_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \o_nco[5]~reg0_q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \o_nco[6]~reg0_q\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \o_nco[7]~reg0_q\ : std_logic;
SIGNAL r_phase : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_clk <= i_clk;
ww_i_clk_rst <= i_clk_rst;
ww_i_fcw <= i_fcw;
o_nco <= ww_o_nco;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\i_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X78_Y40_N23
\o_nco[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_nco[0]~reg0_q\,
	devoe => ww_devoe,
	o => \o_nco[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\o_nco[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_nco[1]~reg0_q\,
	devoe => ww_devoe,
	o => \o_nco[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\o_nco[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_nco[2]~reg0_q\,
	devoe => ww_devoe,
	o => \o_nco[2]~output_o\);

-- Location: IOOBUF_X78_Y37_N2
\o_nco[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_nco[3]~reg0_q\,
	devoe => ww_devoe,
	o => \o_nco[3]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\o_nco[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_nco[4]~reg0_q\,
	devoe => ww_devoe,
	o => \o_nco[4]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\o_nco[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_nco[5]~reg0_q\,
	devoe => ww_devoe,
	o => \o_nco[5]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\o_nco[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_nco[6]~reg0_q\,
	devoe => ww_devoe,
	o => \o_nco[6]~output_o\);

-- Location: IOOBUF_X78_Y36_N9
\o_nco[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_nco[7]~reg0_q\,
	devoe => ww_devoe,
	o => \o_nco[7]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\i_clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_clk,
	o => \i_clk~input_o\);

-- Location: CLKCTRL_G3
\i_clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X78_Y43_N22
\i_fcw[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(7),
	o => \i_fcw[7]~input_o\);

-- Location: IOIBUF_X78_Y41_N15
\i_fcw[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(6),
	o => \i_fcw[6]~input_o\);

-- Location: IOIBUF_X78_Y41_N8
\i_fcw[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(5),
	o => \i_fcw[5]~input_o\);

-- Location: IOIBUF_X78_Y41_N1
\i_fcw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(4),
	o => \i_fcw[4]~input_o\);

-- Location: IOIBUF_X78_Y37_N8
\i_fcw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(3),
	o => \i_fcw[3]~input_o\);

-- Location: IOIBUF_X78_Y36_N15
\i_fcw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(2),
	o => \i_fcw[2]~input_o\);

-- Location: IOIBUF_X78_Y37_N22
\i_fcw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(1),
	o => \i_fcw[1]~input_o\);

-- Location: IOIBUF_X78_Y41_N23
\i_fcw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(0),
	o => \i_fcw[0]~input_o\);

-- Location: LCCOMB_X75_Y40_N14
\r_phase[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_phase[0]~8_combout\ = (\i_fcw[0]~input_o\ & (r_phase(0) $ (VCC))) # (!\i_fcw[0]~input_o\ & (r_phase(0) & VCC))
-- \r_phase[0]~9\ = CARRY((\i_fcw[0]~input_o\ & r_phase(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_fcw[0]~input_o\,
	datab => r_phase(0),
	datad => VCC,
	combout => \r_phase[0]~8_combout\,
	cout => \r_phase[0]~9\);

-- Location: FF_X75_Y40_N15
\r_phase[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_phase[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_phase(0));

-- Location: LCCOMB_X75_Y40_N16
\r_phase[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_phase[1]~10_combout\ = (\i_fcw[1]~input_o\ & ((r_phase(1) & (\r_phase[0]~9\ & VCC)) # (!r_phase(1) & (!\r_phase[0]~9\)))) # (!\i_fcw[1]~input_o\ & ((r_phase(1) & (!\r_phase[0]~9\)) # (!r_phase(1) & ((\r_phase[0]~9\) # (GND)))))
-- \r_phase[1]~11\ = CARRY((\i_fcw[1]~input_o\ & (!r_phase(1) & !\r_phase[0]~9\)) # (!\i_fcw[1]~input_o\ & ((!\r_phase[0]~9\) # (!r_phase(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_fcw[1]~input_o\,
	datab => r_phase(1),
	datad => VCC,
	cin => \r_phase[0]~9\,
	combout => \r_phase[1]~10_combout\,
	cout => \r_phase[1]~11\);

-- Location: FF_X75_Y40_N17
\r_phase[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_phase[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_phase(1));

-- Location: LCCOMB_X75_Y40_N18
\r_phase[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_phase[2]~12_combout\ = ((\i_fcw[2]~input_o\ $ (r_phase(2) $ (!\r_phase[1]~11\)))) # (GND)
-- \r_phase[2]~13\ = CARRY((\i_fcw[2]~input_o\ & ((r_phase(2)) # (!\r_phase[1]~11\))) # (!\i_fcw[2]~input_o\ & (r_phase(2) & !\r_phase[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_fcw[2]~input_o\,
	datab => r_phase(2),
	datad => VCC,
	cin => \r_phase[1]~11\,
	combout => \r_phase[2]~12_combout\,
	cout => \r_phase[2]~13\);

-- Location: FF_X75_Y40_N19
\r_phase[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_phase[2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_phase(2));

-- Location: LCCOMB_X75_Y40_N20
\r_phase[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_phase[3]~14_combout\ = (\i_fcw[3]~input_o\ & ((r_phase(3) & (\r_phase[2]~13\ & VCC)) # (!r_phase(3) & (!\r_phase[2]~13\)))) # (!\i_fcw[3]~input_o\ & ((r_phase(3) & (!\r_phase[2]~13\)) # (!r_phase(3) & ((\r_phase[2]~13\) # (GND)))))
-- \r_phase[3]~15\ = CARRY((\i_fcw[3]~input_o\ & (!r_phase(3) & !\r_phase[2]~13\)) # (!\i_fcw[3]~input_o\ & ((!\r_phase[2]~13\) # (!r_phase(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_fcw[3]~input_o\,
	datab => r_phase(3),
	datad => VCC,
	cin => \r_phase[2]~13\,
	combout => \r_phase[3]~14_combout\,
	cout => \r_phase[3]~15\);

-- Location: FF_X75_Y40_N21
\r_phase[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_phase[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_phase(3));

-- Location: LCCOMB_X75_Y40_N22
\r_phase[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_phase[4]~16_combout\ = ((r_phase(4) $ (\i_fcw[4]~input_o\ $ (!\r_phase[3]~15\)))) # (GND)
-- \r_phase[4]~17\ = CARRY((r_phase(4) & ((\i_fcw[4]~input_o\) # (!\r_phase[3]~15\))) # (!r_phase(4) & (\i_fcw[4]~input_o\ & !\r_phase[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(4),
	datab => \i_fcw[4]~input_o\,
	datad => VCC,
	cin => \r_phase[3]~15\,
	combout => \r_phase[4]~16_combout\,
	cout => \r_phase[4]~17\);

-- Location: FF_X75_Y40_N23
\r_phase[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_phase[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_phase(4));

-- Location: LCCOMB_X75_Y40_N24
\r_phase[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_phase[5]~18_combout\ = (\i_fcw[5]~input_o\ & ((r_phase(5) & (\r_phase[4]~17\ & VCC)) # (!r_phase(5) & (!\r_phase[4]~17\)))) # (!\i_fcw[5]~input_o\ & ((r_phase(5) & (!\r_phase[4]~17\)) # (!r_phase(5) & ((\r_phase[4]~17\) # (GND)))))
-- \r_phase[5]~19\ = CARRY((\i_fcw[5]~input_o\ & (!r_phase(5) & !\r_phase[4]~17\)) # (!\i_fcw[5]~input_o\ & ((!\r_phase[4]~17\) # (!r_phase(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_fcw[5]~input_o\,
	datab => r_phase(5),
	datad => VCC,
	cin => \r_phase[4]~17\,
	combout => \r_phase[5]~18_combout\,
	cout => \r_phase[5]~19\);

-- Location: FF_X75_Y40_N25
\r_phase[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_phase[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_phase(5));

-- Location: LCCOMB_X75_Y40_N26
\r_phase[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_phase[6]~20_combout\ = ((r_phase(6) $ (\i_fcw[6]~input_o\ $ (!\r_phase[5]~19\)))) # (GND)
-- \r_phase[6]~21\ = CARRY((r_phase(6) & ((\i_fcw[6]~input_o\) # (!\r_phase[5]~19\))) # (!r_phase(6) & (\i_fcw[6]~input_o\ & !\r_phase[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(6),
	datab => \i_fcw[6]~input_o\,
	datad => VCC,
	cin => \r_phase[5]~19\,
	combout => \r_phase[6]~20_combout\,
	cout => \r_phase[6]~21\);

-- Location: FF_X75_Y40_N27
\r_phase[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_phase[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_phase(6));

-- Location: LCCOMB_X75_Y40_N28
\r_phase[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_phase[7]~22_combout\ = r_phase(7) $ (\r_phase[6]~21\ $ (\i_fcw[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_phase(7),
	datad => \i_fcw[7]~input_o\,
	cin => \r_phase[6]~21\,
	combout => \r_phase[7]~22_combout\);

-- Location: FF_X75_Y40_N29
\r_phase[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_phase[7]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_phase(7));

-- Location: LCCOMB_X77_Y40_N24
\Mux7~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~14_combout\ = (!r_phase(3) & ((r_phase(4) & (r_phase(1) $ (r_phase(5)))) # (!r_phase(4) & (r_phase(1) & r_phase(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(4),
	datab => r_phase(1),
	datac => r_phase(3),
	datad => r_phase(5),
	combout => \Mux7~14_combout\);

-- Location: LCCOMB_X77_Y40_N8
\Mux7~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~10_combout\ = (r_phase(4) & (((r_phase(3)) # (r_phase(5))))) # (!r_phase(4) & (!r_phase(1) & ((r_phase(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(4),
	datab => r_phase(1),
	datac => r_phase(3),
	datad => r_phase(5),
	combout => \Mux7~10_combout\);

-- Location: LCCOMB_X77_Y40_N22
\Mux7~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~11_combout\ = (r_phase(3) & ((r_phase(4) & ((!r_phase(5)))) # (!r_phase(4) & (!r_phase(1))))) # (!r_phase(3) & (r_phase(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(3),
	datab => r_phase(1),
	datac => r_phase(4),
	datad => r_phase(5),
	combout => \Mux7~11_combout\);

-- Location: LCCOMB_X77_Y40_N0
\Mux7~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~12_combout\ = (r_phase(1) & ((r_phase(4) & ((!r_phase(5)))) # (!r_phase(4) & (r_phase(3))))) # (!r_phase(1) & (!r_phase(3) & (r_phase(4) $ (r_phase(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(3),
	datab => r_phase(1),
	datac => r_phase(4),
	datad => r_phase(5),
	combout => \Mux7~12_combout\);

-- Location: LCCOMB_X77_Y40_N6
\Mux7~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~13_combout\ = (r_phase(0) & (r_phase(2))) # (!r_phase(0) & ((r_phase(2) & (!\Mux7~11_combout\)) # (!r_phase(2) & ((!\Mux7~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(0),
	datab => r_phase(2),
	datac => \Mux7~11_combout\,
	datad => \Mux7~12_combout\,
	combout => \Mux7~13_combout\);

-- Location: LCCOMB_X77_Y40_N14
\Mux7~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~15_combout\ = (r_phase(0) & ((\Mux7~13_combout\ & (\Mux7~14_combout\)) # (!\Mux7~13_combout\ & ((!\Mux7~10_combout\))))) # (!r_phase(0) & (((\Mux7~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(0),
	datab => \Mux7~14_combout\,
	datac => \Mux7~10_combout\,
	datad => \Mux7~13_combout\,
	combout => \Mux7~15_combout\);

-- Location: LCCOMB_X77_Y40_N12
\Mux7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (r_phase(4) & ((r_phase(2)) # ((r_phase(3) & !r_phase(5))))) # (!r_phase(4) & (r_phase(3) & (r_phase(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(3),
	datab => r_phase(5),
	datac => r_phase(4),
	datad => r_phase(2),
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X77_Y40_N26
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!r_phase(3) & ((r_phase(5)) # ((r_phase(4) & r_phase(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(3),
	datab => r_phase(5),
	datac => r_phase(4),
	datad => r_phase(2),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X76_Y40_N26
\Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (r_phase(5) & (!r_phase(3) & (r_phase(2) $ (!r_phase(4))))) # (!r_phase(5) & (r_phase(3) $ (((r_phase(2)) # (r_phase(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(5),
	datab => r_phase(2),
	datac => r_phase(3),
	datad => r_phase(4),
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X77_Y40_N28
\Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (r_phase(4) & (((r_phase(2)) # (!r_phase(5))))) # (!r_phase(4) & ((r_phase(5)) # (r_phase(3) $ (r_phase(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(3),
	datab => r_phase(2),
	datac => r_phase(4),
	datad => r_phase(5),
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X77_Y40_N10
\Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (r_phase(0) & ((r_phase(1)) # ((\Mux7~1_combout\)))) # (!r_phase(0) & (!r_phase(1) & (!\Mux7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(0),
	datab => r_phase(1),
	datac => \Mux7~2_combout\,
	datad => \Mux7~1_combout\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X77_Y40_N30
\Mux7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (r_phase(1) & ((\Mux7~3_combout\ & (!\Mux7~4_combout\)) # (!\Mux7~3_combout\ & ((\Mux7~0_combout\))))) # (!r_phase(1) & (((\Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~4_combout\,
	datab => r_phase(1),
	datac => \Mux7~0_combout\,
	datad => \Mux7~3_combout\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X77_Y40_N16
\Mux7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (r_phase(5) & (((r_phase(4) & !r_phase(2))))) # (!r_phase(5) & (r_phase(3) & (!r_phase(4) & r_phase(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(3),
	datab => r_phase(5),
	datac => r_phase(4),
	datad => r_phase(2),
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X77_Y40_N2
\Mux7~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (r_phase(0) & ((r_phase(1)) # ((\Mux7~6_combout\)))) # (!r_phase(0) & (!r_phase(1) & (\Mux7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(0),
	datab => r_phase(1),
	datac => \Mux7~2_combout\,
	datad => \Mux7~6_combout\,
	combout => \Mux7~7_combout\);

-- Location: LCCOMB_X77_Y40_N20
\Mux7~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~8_combout\ = (r_phase(1) & ((\Mux7~7_combout\ & (\Mux7~4_combout\)) # (!\Mux7~7_combout\ & ((!\Mux7~0_combout\))))) # (!r_phase(1) & (((\Mux7~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~4_combout\,
	datab => r_phase(1),
	datac => \Mux7~0_combout\,
	datad => \Mux7~7_combout\,
	combout => \Mux7~8_combout\);

-- Location: LCCOMB_X77_Y40_N18
\Mux7~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~9_combout\ = (!r_phase(6) & ((r_phase(7) & (\Mux7~5_combout\)) # (!r_phase(7) & ((\Mux7~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(7),
	datab => r_phase(6),
	datac => \Mux7~5_combout\,
	datad => \Mux7~8_combout\,
	combout => \Mux7~9_combout\);

-- Location: LCCOMB_X77_Y40_N4
\Mux7~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~16_combout\ = (\Mux7~9_combout\) # ((r_phase(6) & (r_phase(7) $ (\Mux7~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(7),
	datab => r_phase(6),
	datac => \Mux7~15_combout\,
	datad => \Mux7~9_combout\,
	combout => \Mux7~16_combout\);

-- Location: FF_X77_Y40_N5
\o_nco[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Mux7~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_nco[0]~reg0_q\);

-- Location: LCCOMB_X72_Y40_N12
\Mux6~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~13_combout\ = (r_phase(1) & ((r_phase(2) & (r_phase(0) & !r_phase(5))) # (!r_phase(2) & (!r_phase(0))))) # (!r_phase(1) & ((r_phase(0)) # ((r_phase(2) & !r_phase(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(1),
	datab => r_phase(2),
	datac => r_phase(0),
	datad => r_phase(5),
	combout => \Mux6~13_combout\);

-- Location: LCCOMB_X72_Y40_N4
\Mux6~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~17_combout\ = (r_phase(1) & (((!r_phase(0))))) # (!r_phase(1) & ((r_phase(0) & ((r_phase(5)))) # (!r_phase(0) & (r_phase(2) & !r_phase(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(1),
	datab => r_phase(2),
	datac => r_phase(0),
	datad => r_phase(5),
	combout => \Mux6~17_combout\);

-- Location: LCCOMB_X72_Y40_N14
\Mux6~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~14_combout\ = (r_phase(0) & (r_phase(2) $ (r_phase(5) $ (r_phase(1))))) # (!r_phase(0) & (r_phase(2) & ((!r_phase(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(2),
	datab => r_phase(0),
	datac => r_phase(5),
	datad => r_phase(1),
	combout => \Mux6~14_combout\);

-- Location: LCCOMB_X72_Y40_N16
\Mux6~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~15_combout\ = (r_phase(5) & ((r_phase(0) & (r_phase(1) $ (r_phase(2)))) # (!r_phase(0) & (!r_phase(1) & !r_phase(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(5),
	datab => r_phase(0),
	datac => r_phase(1),
	datad => r_phase(2),
	combout => \Mux6~15_combout\);

-- Location: LCCOMB_X72_Y40_N10
\Mux6~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~16_combout\ = (r_phase(3) & ((r_phase(4)) # ((\Mux6~14_combout\)))) # (!r_phase(3) & (!r_phase(4) & ((!\Mux6~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(3),
	datab => r_phase(4),
	datac => \Mux6~14_combout\,
	datad => \Mux6~15_combout\,
	combout => \Mux6~16_combout\);

-- Location: LCCOMB_X72_Y40_N2
\Mux6~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~18_combout\ = (r_phase(4) & ((\Mux6~16_combout\ & ((!\Mux6~17_combout\))) # (!\Mux6~16_combout\ & (!\Mux6~13_combout\)))) # (!r_phase(4) & (((\Mux6~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~13_combout\,
	datab => r_phase(4),
	datac => \Mux6~17_combout\,
	datad => \Mux6~16_combout\,
	combout => \Mux6~18_combout\);

-- Location: LCCOMB_X70_Y40_N10
\Mux6~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~10_combout\ = (r_phase(0) & (r_phase(4) & !r_phase(5))) # (!r_phase(0) & (!r_phase(4) & r_phase(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_phase(0),
	datac => r_phase(4),
	datad => r_phase(5),
	combout => \Mux6~10_combout\);

-- Location: LCCOMB_X70_Y40_N22
\Mux6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (r_phase(5) & (r_phase(3) $ (r_phase(0) $ (!r_phase(4))))) # (!r_phase(5) & (r_phase(3) & (!r_phase(0) & r_phase(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(3),
	datab => r_phase(0),
	datac => r_phase(4),
	datad => r_phase(5),
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X70_Y40_N30
\Mux6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~8_combout\ = (r_phase(3) & (r_phase(0) & (r_phase(5) $ (r_phase(4))))) # (!r_phase(3) & (r_phase(5) & ((!r_phase(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(5),
	datab => r_phase(0),
	datac => r_phase(4),
	datad => r_phase(3),
	combout => \Mux6~8_combout\);

-- Location: LCCOMB_X70_Y40_N28
\Mux6~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (r_phase(0) & (r_phase(5) & ((r_phase(4)) # (!r_phase(3))))) # (!r_phase(0) & (((r_phase(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(4),
	datab => r_phase(0),
	datac => r_phase(3),
	datad => r_phase(5),
	combout => \Mux6~7_combout\);

-- Location: LCCOMB_X70_Y40_N12
\Mux6~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~9_combout\ = (r_phase(2) & ((r_phase(1)) # ((\Mux6~7_combout\)))) # (!r_phase(2) & (!r_phase(1) & (\Mux6~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(2),
	datab => r_phase(1),
	datac => \Mux6~8_combout\,
	datad => \Mux6~7_combout\,
	combout => \Mux6~9_combout\);

-- Location: LCCOMB_X70_Y40_N4
\Mux6~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~11_combout\ = (r_phase(1) & ((\Mux6~9_combout\ & (!\Mux6~10_combout\)) # (!\Mux6~9_combout\ & ((!\Mux6~6_combout\))))) # (!r_phase(1) & (((\Mux6~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~10_combout\,
	datab => r_phase(1),
	datac => \Mux6~6_combout\,
	datad => \Mux6~9_combout\,
	combout => \Mux6~11_combout\);

-- Location: LCCOMB_X70_Y40_N14
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (r_phase(3) & (r_phase(2) $ (((!r_phase(5) & r_phase(0)))))) # (!r_phase(3) & (r_phase(5) & (r_phase(0) & r_phase(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(3),
	datab => r_phase(5),
	datac => r_phase(0),
	datad => r_phase(2),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X70_Y40_N26
\Mux6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (r_phase(0) & ((r_phase(5) & (!r_phase(3) & !r_phase(2))) # (!r_phase(5) & ((r_phase(2)))))) # (!r_phase(0) & (r_phase(3) & ((!r_phase(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(3),
	datab => r_phase(5),
	datac => r_phase(0),
	datad => r_phase(2),
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X70_Y40_N8
\Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (r_phase(5) & (r_phase(0) $ (((r_phase(2)) # (!r_phase(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(3),
	datab => r_phase(0),
	datac => r_phase(2),
	datad => r_phase(5),
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X70_Y40_N2
\Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (r_phase(0) & ((r_phase(5) & ((!r_phase(2)) # (!r_phase(3)))) # (!r_phase(5) & (!r_phase(3) & !r_phase(2))))) # (!r_phase(0) & ((r_phase(3) & ((r_phase(2)))) # (!r_phase(3) & (r_phase(5) & !r_phase(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(5),
	datab => r_phase(0),
	datac => r_phase(3),
	datad => r_phase(2),
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X70_Y40_N16
\Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (r_phase(4) & (r_phase(1))) # (!r_phase(4) & ((r_phase(1) & (\Mux6~1_combout\)) # (!r_phase(1) & ((!\Mux6~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(4),
	datab => r_phase(1),
	datac => \Mux6~1_combout\,
	datad => \Mux6~2_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X70_Y40_N20
\Mux6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (r_phase(4) & ((\Mux6~3_combout\ & ((\Mux6~4_combout\))) # (!\Mux6~3_combout\ & (!\Mux6~0_combout\)))) # (!r_phase(4) & (((\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(4),
	datab => \Mux6~0_combout\,
	datac => \Mux6~4_combout\,
	datad => \Mux6~3_combout\,
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X70_Y40_N6
\Mux6~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~12_combout\ = (!r_phase(6) & ((r_phase(7) & ((\Mux6~5_combout\))) # (!r_phase(7) & (\Mux6~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(6),
	datab => r_phase(7),
	datac => \Mux6~11_combout\,
	datad => \Mux6~5_combout\,
	combout => \Mux6~12_combout\);

-- Location: LCCOMB_X70_Y40_N24
\Mux6~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~19_combout\ = (\Mux6~12_combout\) # ((r_phase(6) & (r_phase(7) $ (\Mux6~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(6),
	datab => r_phase(7),
	datac => \Mux6~18_combout\,
	datad => \Mux6~12_combout\,
	combout => \Mux6~19_combout\);

-- Location: FF_X70_Y40_N25
\o_nco[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Mux6~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_nco[1]~reg0_q\);

-- Location: LCCOMB_X70_Y40_N0
\Mux5~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~17_combout\ = (r_phase(1) & (r_phase(0) $ (((!r_phase(2) & r_phase(5)))))) # (!r_phase(1) & (r_phase(2) & ((r_phase(5)) # (!r_phase(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(2),
	datab => r_phase(1),
	datac => r_phase(0),
	datad => r_phase(5),
	combout => \Mux5~17_combout\);

-- Location: LCCOMB_X76_Y40_N14
\Mux5~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~14_combout\ = (r_phase(0) & ((r_phase(2) & ((!r_phase(5)))) # (!r_phase(2) & (r_phase(1))))) # (!r_phase(0) & (r_phase(2) $ (((!r_phase(1) & r_phase(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(0),
	datab => r_phase(2),
	datac => r_phase(1),
	datad => r_phase(5),
	combout => \Mux5~14_combout\);

-- Location: LCCOMB_X76_Y40_N16
\Mux5~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~15_combout\ = (r_phase(5) & ((r_phase(0) & ((r_phase(2)) # (!r_phase(1)))) # (!r_phase(0) & (r_phase(2) & !r_phase(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(0),
	datab => r_phase(2),
	datac => r_phase(1),
	datad => r_phase(5),
	combout => \Mux5~15_combout\);

-- Location: LCCOMB_X76_Y40_N6
\Mux5~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~16_combout\ = (r_phase(3) & ((r_phase(4)) # ((!\Mux5~14_combout\)))) # (!r_phase(3) & (!r_phase(4) & ((!\Mux5~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(3),
	datab => r_phase(4),
	datac => \Mux5~14_combout\,
	datad => \Mux5~15_combout\,
	combout => \Mux5~16_combout\);

-- Location: LCCOMB_X72_Y40_N24
\Mux5~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~13_combout\ = (r_phase(1) & ((r_phase(2) & (!r_phase(0) & r_phase(5))) # (!r_phase(2) & (r_phase(0))))) # (!r_phase(1) & (r_phase(2) $ (((r_phase(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(1),
	datab => r_phase(2),
	datac => r_phase(0),
	datad => r_phase(5),
	combout => \Mux5~13_combout\);

-- Location: LCCOMB_X71_Y40_N14
\Mux5~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~18_combout\ = (r_phase(4) & ((\Mux5~16_combout\ & (\Mux5~17_combout\)) # (!\Mux5~16_combout\ & ((!\Mux5~13_combout\))))) # (!r_phase(4) & (((\Mux5~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~17_combout\,
	datab => r_phase(4),
	datac => \Mux5~16_combout\,
	datad => \Mux5~13_combout\,
	combout => \Mux5~18_combout\);

-- Location: LCCOMB_X71_Y40_N26
\Mux5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = r_phase(3) $ (((!r_phase(5) & (r_phase(1) $ (r_phase(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(1),
	datab => r_phase(3),
	datac => r_phase(5),
	datad => r_phase(0),
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X75_Y40_N30
\Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (r_phase(0) & (!r_phase(1) & ((r_phase(3)) # (r_phase(5))))) # (!r_phase(0) & ((r_phase(5) & (r_phase(3))) # (!r_phase(5) & ((r_phase(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(3),
	datab => r_phase(1),
	datac => r_phase(0),
	datad => r_phase(5),
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X75_Y40_N0
\Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (r_phase(5) & ((r_phase(3) & (!r_phase(0) & !r_phase(1))) # (!r_phase(3) & ((r_phase(1)))))) # (!r_phase(5) & ((r_phase(0) $ (r_phase(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(3),
	datab => r_phase(5),
	datac => r_phase(0),
	datad => r_phase(1),
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X75_Y40_N12
\Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (r_phase(4) & (r_phase(2))) # (!r_phase(4) & ((r_phase(2) & ((!\Mux5~1_combout\))) # (!r_phase(2) & (\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(4),
	datab => r_phase(2),
	datac => \Mux5~2_combout\,
	datad => \Mux5~1_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X71_Y40_N16
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (r_phase(1) & (r_phase(5) $ (((r_phase(3)) # (!r_phase(0)))))) # (!r_phase(1) & (!r_phase(3) & (!r_phase(5) & r_phase(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(1),
	datab => r_phase(3),
	datac => r_phase(5),
	datad => r_phase(0),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X71_Y40_N4
\Mux5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (r_phase(4) & ((\Mux5~3_combout\ & (!\Mux5~4_combout\)) # (!\Mux5~3_combout\ & ((\Mux5~0_combout\))))) # (!r_phase(4) & (((\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~4_combout\,
	datab => r_phase(4),
	datac => \Mux5~3_combout\,
	datad => \Mux5~0_combout\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X75_Y40_N8
\Mux5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~10_combout\ = (!r_phase(3) & ((r_phase(2)) # ((r_phase(1) & r_phase(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(3),
	datab => r_phase(1),
	datac => r_phase(0),
	datad => r_phase(2),
	combout => \Mux5~10_combout\);

-- Location: LCCOMB_X75_Y40_N10
\Mux5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = r_phase(1) $ (((r_phase(3) & (r_phase(0) & r_phase(2))) # (!r_phase(3) & (r_phase(0) $ (r_phase(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(3),
	datab => r_phase(1),
	datac => r_phase(0),
	datad => r_phase(2),
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X76_Y40_N22
\Mux5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~8_combout\ = (r_phase(0) & ((r_phase(1) $ (r_phase(2))))) # (!r_phase(0) & ((r_phase(1) & ((r_phase(2)))) # (!r_phase(1) & (r_phase(3) & !r_phase(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(0),
	datab => r_phase(3),
	datac => r_phase(1),
	datad => r_phase(2),
	combout => \Mux5~8_combout\);

-- Location: LCCOMB_X76_Y40_N24
\Mux5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (r_phase(0) & (((r_phase(2) & r_phase(3))) # (!r_phase(1)))) # (!r_phase(0) & (r_phase(3) $ (((r_phase(2) & !r_phase(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(0),
	datab => r_phase(2),
	datac => r_phase(1),
	datad => r_phase(3),
	combout => \Mux5~7_combout\);

-- Location: LCCOMB_X76_Y40_N0
\Mux5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~9_combout\ = (r_phase(5) & ((r_phase(4)) # ((!\Mux5~7_combout\)))) # (!r_phase(5) & (!r_phase(4) & (\Mux5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(5),
	datab => r_phase(4),
	datac => \Mux5~8_combout\,
	datad => \Mux5~7_combout\,
	combout => \Mux5~9_combout\);

-- Location: LCCOMB_X71_Y40_N18
\Mux5~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~11_combout\ = (r_phase(4) & ((\Mux5~9_combout\ & (!\Mux5~10_combout\)) # (!\Mux5~9_combout\ & ((!\Mux5~6_combout\))))) # (!r_phase(4) & (((\Mux5~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~10_combout\,
	datab => r_phase(4),
	datac => \Mux5~6_combout\,
	datad => \Mux5~9_combout\,
	combout => \Mux5~11_combout\);

-- Location: LCCOMB_X71_Y40_N20
\Mux5~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~12_combout\ = (!r_phase(6) & ((r_phase(7) & (\Mux5~5_combout\)) # (!r_phase(7) & ((\Mux5~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(6),
	datab => r_phase(7),
	datac => \Mux5~5_combout\,
	datad => \Mux5~11_combout\,
	combout => \Mux5~12_combout\);

-- Location: LCCOMB_X71_Y40_N0
\Mux5~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~19_combout\ = (\Mux5~12_combout\) # ((r_phase(6) & (r_phase(7) $ (\Mux5~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(6),
	datab => r_phase(7),
	datac => \Mux5~18_combout\,
	datad => \Mux5~12_combout\,
	combout => \Mux5~19_combout\);

-- Location: FF_X71_Y40_N1
\o_nco[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Mux5~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_nco[2]~reg0_q\);

-- Location: LCCOMB_X75_Y40_N2
\Mux4~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~11_combout\ = (r_phase(3) & ((r_phase(1) & ((r_phase(0)) # (!r_phase(2)))) # (!r_phase(1) & (r_phase(0) & !r_phase(2))))) # (!r_phase(3) & (r_phase(1) $ (((r_phase(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(3),
	datab => r_phase(1),
	datac => r_phase(0),
	datad => r_phase(2),
	combout => \Mux4~11_combout\);

-- Location: LCCOMB_X74_Y40_N6
\Mux4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~10_combout\ = r_phase(3) $ (((r_phase(1) & ((r_phase(0)) # (!r_phase(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(3),
	datab => r_phase(1),
	datac => r_phase(0),
	datad => r_phase(2),
	combout => \Mux4~10_combout\);

-- Location: LCCOMB_X75_Y40_N4
\Mux4~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~13_combout\ = (r_phase(3) & (r_phase(2) $ (((!r_phase(0)) # (!r_phase(1)))))) # (!r_phase(3) & (r_phase(1) & ((r_phase(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(3),
	datab => r_phase(1),
	datac => r_phase(0),
	datad => r_phase(2),
	combout => \Mux4~13_combout\);

-- Location: LCCOMB_X74_Y40_N20
\Mux4~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~16_combout\ = (r_phase(5) & (((!r_phase(4))) # (!\Mux4~10_combout\))) # (!r_phase(5) & (((r_phase(4) & !\Mux4~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~10_combout\,
	datab => r_phase(5),
	datac => r_phase(4),
	datad => \Mux4~13_combout\,
	combout => \Mux4~16_combout\);

-- Location: LCCOMB_X74_Y40_N10
\Mux4~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~17_combout\ = (r_phase(7) & (\Mux4~16_combout\ & ((\Mux4~11_combout\) # (r_phase(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~11_combout\,
	datab => r_phase(7),
	datac => r_phase(4),
	datad => \Mux4~16_combout\,
	combout => \Mux4~17_combout\);

-- Location: LCCOMB_X74_Y40_N8
\Mux4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~12_combout\ = (r_phase(5) & ((r_phase(4) & (\Mux4~10_combout\)) # (!r_phase(4) & ((!\Mux4~11_combout\))))) # (!r_phase(5) & (((!r_phase(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~10_combout\,
	datab => r_phase(5),
	datac => r_phase(4),
	datad => \Mux4~11_combout\,
	combout => \Mux4~12_combout\);

-- Location: LCCOMB_X74_Y40_N14
\Mux4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~14_combout\ = (!r_phase(7) & ((\Mux4~12_combout\) # ((\Mux4~13_combout\ & !r_phase(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~13_combout\,
	datab => r_phase(7),
	datac => \Mux4~12_combout\,
	datad => r_phase(5),
	combout => \Mux4~14_combout\);

-- Location: LCCOMB_X74_Y40_N18
\Mux4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (r_phase(3)) # ((r_phase(2)) # ((r_phase(1) & r_phase(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(3),
	datab => r_phase(1),
	datac => r_phase(0),
	datad => r_phase(2),
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X74_Y40_N26
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (r_phase(3) & ((r_phase(1) & ((r_phase(2)))) # (!r_phase(1) & ((r_phase(0)) # (!r_phase(2)))))) # (!r_phase(3) & ((r_phase(1) & ((r_phase(0)) # (!r_phase(2)))) # (!r_phase(1) & (r_phase(0) & !r_phase(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(3),
	datab => r_phase(1),
	datac => r_phase(0),
	datad => r_phase(2),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X74_Y40_N30
\Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (r_phase(1) & (r_phase(3) $ (((r_phase(0)) # (!r_phase(2)))))) # (!r_phase(1) & (r_phase(3) & ((r_phase(2)) # (!r_phase(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(3),
	datab => r_phase(1),
	datac => r_phase(0),
	datad => r_phase(2),
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X74_Y40_N24
\Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (r_phase(1) & (((!r_phase(2))))) # (!r_phase(1) & ((r_phase(0) & ((!r_phase(2)))) # (!r_phase(0) & (r_phase(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(3),
	datab => r_phase(1),
	datac => r_phase(0),
	datad => r_phase(2),
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X74_Y40_N16
\Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (r_phase(4) & (r_phase(5))) # (!r_phase(4) & ((r_phase(5) & ((!\Mux4~1_combout\))) # (!r_phase(5) & (\Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(4),
	datab => r_phase(5),
	datac => \Mux4~2_combout\,
	datad => \Mux4~1_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X74_Y40_N4
\Mux4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (r_phase(4) & ((\Mux4~3_combout\ & (!\Mux4~4_combout\)) # (!\Mux4~3_combout\ & ((\Mux4~0_combout\))))) # (!r_phase(4) & (((\Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(4),
	datab => \Mux4~4_combout\,
	datac => \Mux4~0_combout\,
	datad => \Mux4~3_combout\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X74_Y40_N22
\Mux4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (r_phase(2) & (r_phase(3) $ (((!r_phase(0)) # (!r_phase(1)))))) # (!r_phase(2) & (r_phase(3) & ((r_phase(1)) # (r_phase(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(3),
	datab => r_phase(1),
	datac => r_phase(0),
	datad => r_phase(2),
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X74_Y40_N12
\Mux4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (r_phase(4) & (r_phase(5))) # (!r_phase(4) & ((r_phase(5) & ((\Mux4~1_combout\))) # (!r_phase(5) & (\Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(4),
	datab => r_phase(5),
	datac => \Mux4~6_combout\,
	datad => \Mux4~1_combout\,
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X74_Y40_N2
\Mux4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = (r_phase(4) & ((\Mux4~7_combout\ & (\Mux4~4_combout\)) # (!\Mux4~7_combout\ & ((!\Mux4~0_combout\))))) # (!r_phase(4) & (((\Mux4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(4),
	datab => \Mux4~4_combout\,
	datac => \Mux4~0_combout\,
	datad => \Mux4~7_combout\,
	combout => \Mux4~8_combout\);

-- Location: LCCOMB_X74_Y40_N28
\Mux4~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~9_combout\ = (!r_phase(6) & ((r_phase(7) & (\Mux4~5_combout\)) # (!r_phase(7) & ((\Mux4~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(6),
	datab => r_phase(7),
	datac => \Mux4~5_combout\,
	datad => \Mux4~8_combout\,
	combout => \Mux4~9_combout\);

-- Location: LCCOMB_X74_Y40_N0
\Mux4~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~15_combout\ = (\Mux4~9_combout\) # ((r_phase(6) & ((\Mux4~17_combout\) # (\Mux4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~17_combout\,
	datab => r_phase(6),
	datac => \Mux4~14_combout\,
	datad => \Mux4~9_combout\,
	combout => \Mux4~15_combout\);

-- Location: FF_X74_Y40_N1
\o_nco[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Mux4~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_nco[3]~reg0_q\);

-- Location: LCCOMB_X72_Y40_N22
\Mux3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~12_combout\ = ((r_phase(3) & (r_phase(2))) # (!r_phase(3) & ((!r_phase(1)) # (!r_phase(2))))) # (!r_phase(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(3),
	datab => r_phase(2),
	datac => r_phase(1),
	datad => r_phase(5),
	combout => \Mux3~12_combout\);

-- Location: LCCOMB_X72_Y40_N26
\Mux3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~10_combout\ = (r_phase(1) & ((r_phase(2) & ((!r_phase(3)) # (!r_phase(0)))) # (!r_phase(2) & ((r_phase(3)))))) # (!r_phase(1) & (((r_phase(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(1),
	datab => r_phase(2),
	datac => r_phase(0),
	datad => r_phase(3),
	combout => \Mux3~10_combout\);

-- Location: LCCOMB_X71_Y40_N24
\Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (r_phase(2) & ((r_phase(3)) # ((!r_phase(0)) # (!r_phase(1))))) # (!r_phase(2) & (!r_phase(3) & (r_phase(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(2),
	datab => r_phase(3),
	datac => r_phase(1),
	datad => r_phase(0),
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X72_Y40_N28
\Mux3~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~11_combout\ = (r_phase(5) & (r_phase(4) & ((!\Mux3~3_combout\)))) # (!r_phase(5) & (((!\Mux3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(5),
	datab => r_phase(4),
	datac => \Mux3~10_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux3~11_combout\);

-- Location: LCCOMB_X72_Y40_N20
\Mux3~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~13_combout\ = (\Mux3~11_combout\) # ((!r_phase(4) & \Mux3~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_phase(4),
	datac => \Mux3~12_combout\,
	datad => \Mux3~11_combout\,
	combout => \Mux3~13_combout\);

-- Location: LCCOMB_X71_Y40_N8
\Mux3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (r_phase(3) & (r_phase(2) & ((r_phase(1)) # (r_phase(0))))) # (!r_phase(3) & ((r_phase(1) & ((!r_phase(0)) # (!r_phase(2)))) # (!r_phase(1) & ((r_phase(2)) # (r_phase(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(1),
	datab => r_phase(3),
	datac => r_phase(2),
	datad => r_phase(0),
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X75_Y40_N6
\Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (r_phase(3) & (((!r_phase(1) & !r_phase(0))) # (!r_phase(2)))) # (!r_phase(3) & (((r_phase(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(1),
	datab => r_phase(3),
	datac => r_phase(0),
	datad => r_phase(2),
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X71_Y40_N6
\Mux3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (r_phase(2) & (!r_phase(3) & (r_phase(1) & r_phase(0)))) # (!r_phase(2) & (r_phase(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(2),
	datab => r_phase(3),
	datac => r_phase(1),
	datad => r_phase(0),
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X71_Y40_N28
\Mux3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (r_phase(5) & ((r_phase(4)) # ((!\Mux3~2_combout\)))) # (!r_phase(5) & (!r_phase(4) & ((\Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(5),
	datab => r_phase(4),
	datac => \Mux3~2_combout\,
	datad => \Mux3~6_combout\,
	combout => \Mux3~7_combout\);

-- Location: LCCOMB_X71_Y40_N30
\Mux3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~8_combout\ = (\Mux3~7_combout\) # ((r_phase(4) & \Mux3~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_phase(4),
	datac => \Mux3~5_combout\,
	datad => \Mux3~7_combout\,
	combout => \Mux3~8_combout\);

-- Location: LCCOMB_X71_Y40_N2
\Mux3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (!r_phase(4) & ((r_phase(5) & (\Mux3~2_combout\)) # (!r_phase(5) & ((\Mux3~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(5),
	datab => r_phase(4),
	datac => \Mux3~2_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X71_Y40_N10
\Mux3~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~15_combout\ = (\Mux3~4_combout\) # ((!r_phase(5) & (r_phase(4) & !\Mux3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(5),
	datab => r_phase(4),
	datac => \Mux3~5_combout\,
	datad => \Mux3~4_combout\,
	combout => \Mux3~15_combout\);

-- Location: LCCOMB_X71_Y40_N12
\Mux3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~9_combout\ = (!r_phase(6) & ((r_phase(7) & ((\Mux3~15_combout\))) # (!r_phase(7) & (\Mux3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(6),
	datab => r_phase(7),
	datac => \Mux3~8_combout\,
	datad => \Mux3~15_combout\,
	combout => \Mux3~9_combout\);

-- Location: LCCOMB_X71_Y40_N22
\Mux3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~14_combout\ = (\Mux3~9_combout\) # ((r_phase(6) & (r_phase(7) $ (\Mux3~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(6),
	datab => r_phase(7),
	datac => \Mux3~13_combout\,
	datad => \Mux3~9_combout\,
	combout => \Mux3~14_combout\);

-- Location: FF_X71_Y40_N23
\o_nco[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Mux3~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_nco[4]~reg0_q\);

-- Location: LCCOMB_X76_Y40_N30
\Mux2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (r_phase(3) & ((r_phase(5)) # ((r_phase(2) & !r_phase(4))))) # (!r_phase(3) & (r_phase(5) & ((r_phase(2)) # (r_phase(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(3),
	datab => r_phase(2),
	datac => r_phase(5),
	datad => r_phase(4),
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X76_Y40_N8
\Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (r_phase(3)) # ((r_phase(0) & (r_phase(1) & r_phase(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(0),
	datab => r_phase(3),
	datac => r_phase(1),
	datad => r_phase(2),
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X76_Y40_N12
\Mux2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (\Mux2~5_combout\) # ((!\Mux2~2_combout\ & r_phase(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~5_combout\,
	datac => \Mux2~2_combout\,
	datad => r_phase(4),
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X76_Y40_N4
\Mux2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~9_combout\ = (r_phase(2) & (((!r_phase(4)) # (!r_phase(1))) # (!r_phase(0)))) # (!r_phase(2) & (((r_phase(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(0),
	datab => r_phase(2),
	datac => r_phase(1),
	datad => r_phase(4),
	combout => \Mux2~9_combout\);

-- Location: LCCOMB_X76_Y40_N10
\Mux2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~10_combout\ = (r_phase(5) & (\Mux2~9_combout\ & (r_phase(4) $ (r_phase(3))))) # (!r_phase(5) & (((\Mux2~9_combout\) # (!r_phase(3))) # (!r_phase(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(5),
	datab => r_phase(4),
	datac => \Mux2~9_combout\,
	datad => r_phase(3),
	combout => \Mux2~10_combout\);

-- Location: LCCOMB_X76_Y40_N2
\Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (r_phase(2) & (((!r_phase(3) & !r_phase(5))))) # (!r_phase(2) & ((r_phase(3) & ((!r_phase(5)))) # (!r_phase(3) & ((r_phase(1)) # (r_phase(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(1),
	datab => r_phase(2),
	datac => r_phase(3),
	datad => r_phase(5),
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X76_Y40_N18
\Mux2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (r_phase(4) & (!r_phase(5) & (\Mux2~2_combout\))) # (!r_phase(4) & (((\Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(5),
	datab => r_phase(4),
	datac => \Mux2~2_combout\,
	datad => \Mux2~3_combout\,
	combout => \Mux2~8_combout\);

-- Location: LCCOMB_X76_Y40_N28
\Mux2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (r_phase(6) & (r_phase(7) $ ((\Mux2~10_combout\)))) # (!r_phase(6) & (r_phase(7) & ((\Mux2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(6),
	datab => r_phase(7),
	datac => \Mux2~10_combout\,
	datad => \Mux2~8_combout\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X76_Y40_N20
\Mux2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\Mux2~4_combout\) # ((\Mux2~6_combout\ & (!r_phase(7) & !r_phase(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~6_combout\,
	datab => r_phase(7),
	datac => r_phase(6),
	datad => \Mux2~4_combout\,
	combout => \Mux2~7_combout\);

-- Location: FF_X76_Y40_N21
\o_nco[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Mux2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_nco[5]~reg0_q\);

-- Location: LCCOMB_X72_Y40_N30
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!r_phase(1) & (!r_phase(4) & (!r_phase(2) & !r_phase(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(1),
	datab => r_phase(4),
	datac => r_phase(2),
	datad => r_phase(3),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X72_Y40_N8
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (r_phase(4)) # ((r_phase(3) & (r_phase(2) & r_phase(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(3),
	datab => r_phase(4),
	datac => r_phase(2),
	datad => r_phase(5),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X72_Y40_N18
\Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (r_phase(6) & (((\Mux1~0_combout\ & r_phase(5))))) # (!r_phase(6) & ((r_phase(5)) # ((\Mux2~2_combout\ & \Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => r_phase(6),
	datac => \Mux1~0_combout\,
	datad => r_phase(5),
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X72_Y40_N0
\Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (r_phase(6) & ((r_phase(7) $ (!\Mux1~1_combout\)))) # (!r_phase(6) & ((r_phase(7) & (!\Mux0~0_combout\ & !\Mux1~1_combout\)) # (!r_phase(7) & ((\Mux1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => r_phase(6),
	datac => r_phase(7),
	datad => \Mux1~1_combout\,
	combout => \Mux1~2_combout\);

-- Location: FF_X72_Y40_N1
\o_nco[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_nco[6]~reg0_q\);

-- Location: LCCOMB_X72_Y40_N6
\Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = ((!r_phase(5) & (\Mux0~0_combout\ & !r_phase(6)))) # (!r_phase(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_phase(7),
	datab => r_phase(5),
	datac => \Mux0~0_combout\,
	datad => r_phase(6),
	combout => \Mux0~1_combout\);

-- Location: FF_X72_Y40_N7
\o_nco[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_nco[7]~reg0_q\);

-- Location: IOIBUF_X36_Y0_N8
\i_clk_rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_clk_rst,
	o => \i_clk_rst~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_o_nco(0) <= \o_nco[0]~output_o\;

ww_o_nco(1) <= \o_nco[1]~output_o\;

ww_o_nco(2) <= \o_nco[2]~output_o\;

ww_o_nco(3) <= \o_nco[3]~output_o\;

ww_o_nco(4) <= \o_nco[4]~output_o\;

ww_o_nco(5) <= \o_nco[5]~output_o\;

ww_o_nco(6) <= \o_nco[6]~output_o\;

ww_o_nco(7) <= \o_nco[7]~output_o\;
END structure;


