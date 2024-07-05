-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "07/01/2024 22:01:29"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
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

ENTITY 	Debounce_Project_Top IS
    PORT (
	i_Clk : IN std_logic;
	i_Swtich_1 : IN std_logic;
	o_LED_1 : BUFFER std_logic
	);
END Debounce_Project_Top;

-- Design Ports Information
-- o_LED_1	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Clk	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_Swtich_1	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Debounce_Project_Top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_Clk : std_logic;
SIGNAL ww_i_Swtich_1 : std_logic;
SIGNAL ww_o_LED_1 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \i_Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \o_LED_1~output_o\ : std_logic;
SIGNAL \i_Clk~input_o\ : std_logic;
SIGNAL \i_Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_Swtich_1~input_o\ : std_logic;
SIGNAL \Debounce_Inst|r_Count[0]~19_combout\ : std_logic;
SIGNAL \Debounce_Inst|r_Count[8]~36\ : std_logic;
SIGNAL \Debounce_Inst|r_Count[9]~37_combout\ : std_logic;
SIGNAL \Debounce_Inst|r_Count[9]~38\ : std_logic;
SIGNAL \Debounce_Inst|r_Count[10]~39_combout\ : std_logic;
SIGNAL \Debounce_Inst|r_Count[10]~40\ : std_logic;
SIGNAL \Debounce_Inst|r_Count[11]~41_combout\ : std_logic;
SIGNAL \Debounce_Inst|r_Count[11]~42\ : std_logic;
SIGNAL \Debounce_Inst|r_Count[12]~43_combout\ : std_logic;
SIGNAL \Debounce_Inst|r_Count[12]~44\ : std_logic;
SIGNAL \Debounce_Inst|r_Count[13]~45_combout\ : std_logic;
SIGNAL \Debounce_Inst|process_0~0_combout\ : std_logic;
SIGNAL \Debounce_Inst|r_Count[13]~46\ : std_logic;
SIGNAL \Debounce_Inst|r_Count[14]~47_combout\ : std_logic;
SIGNAL \Debounce_Inst|process_0~3_combout\ : std_logic;
SIGNAL \Debounce_Inst|r_State~1_combout\ : std_logic;
SIGNAL \Debounce_Inst|r_Count[14]~48\ : std_logic;
SIGNAL \Debounce_Inst|r_Count[15]~49_combout\ : std_logic;
SIGNAL \Debounce_Inst|r_Count[15]~50\ : std_logic;
SIGNAL \Debounce_Inst|r_Count[16]~51_combout\ : std_logic;
SIGNAL \Debounce_Inst|r_Count[16]~52\ : std_logic;
SIGNAL \Debounce_Inst|r_Count[17]~53_combout\ : std_logic;
SIGNAL \Debounce_Inst|r_Count[17]~54\ : std_logic;
SIGNAL \Debounce_Inst|r_Count[18]~55_combout\ : std_logic;
SIGNAL \Debounce_Inst|r_State~0_combout\ : std_logic;
SIGNAL \Debounce_Inst|process_0~1_combout\ : std_logic;
SIGNAL \Debounce_Inst|process_0~2_combout\ : std_logic;
SIGNAL \Debounce_Inst|process_0~4_combout\ : std_logic;
SIGNAL \Debounce_Inst|process_0~5_combout\ : std_logic;
SIGNAL \Debounce_Inst|r_Count[0]~20\ : std_logic;
SIGNAL \Debounce_Inst|r_Count[1]~21_combout\ : std_logic;
SIGNAL \Debounce_Inst|r_Count[1]~22\ : std_logic;
SIGNAL \Debounce_Inst|r_Count[2]~23_combout\ : std_logic;
SIGNAL \Debounce_Inst|r_Count[2]~24\ : std_logic;
SIGNAL \Debounce_Inst|r_Count[3]~25_combout\ : std_logic;
SIGNAL \Debounce_Inst|r_Count[3]~26\ : std_logic;
SIGNAL \Debounce_Inst|r_Count[4]~27_combout\ : std_logic;
SIGNAL \Debounce_Inst|r_Count[4]~28\ : std_logic;
SIGNAL \Debounce_Inst|r_Count[5]~29_combout\ : std_logic;
SIGNAL \Debounce_Inst|r_Count[5]~30\ : std_logic;
SIGNAL \Debounce_Inst|r_Count[6]~31_combout\ : std_logic;
SIGNAL \Debounce_Inst|r_Count[6]~32\ : std_logic;
SIGNAL \Debounce_Inst|r_Count[7]~33_combout\ : std_logic;
SIGNAL \Debounce_Inst|r_Count[7]~34\ : std_logic;
SIGNAL \Debounce_Inst|r_Count[8]~35_combout\ : std_logic;
SIGNAL \Debounce_Inst|r_State~2_combout\ : std_logic;
SIGNAL \Debounce_Inst|r_State~3_combout\ : std_logic;
SIGNAL \Debounce_Inst|r_State~4_combout\ : std_logic;
SIGNAL \Debounce_Inst|r_State~q\ : std_logic;
SIGNAL \LED_Toggle_Inst|r_Switch_1~feeder_combout\ : std_logic;
SIGNAL \LED_Toggle_Inst|r_Switch_1~q\ : std_logic;
SIGNAL \LED_Toggle_Inst|r_LED_1~0_combout\ : std_logic;
SIGNAL \LED_Toggle_Inst|r_LED_1~q\ : std_logic;
SIGNAL \Debounce_Inst|r_Count\ : std_logic_vector(18 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_Clk <= i_Clk;
ww_i_Swtich_1 <= i_Swtich_1;
o_LED_1 <= ww_o_LED_1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\i_Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_Clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y44_N20
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

-- Location: IOOBUF_X46_Y54_N2
\o_LED_1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_Toggle_Inst|r_LED_1~q\,
	devoe => ww_devoe,
	o => \o_LED_1~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\i_Clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Clk,
	o => \i_Clk~input_o\);

-- Location: CLKCTRL_G19
\i_Clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_Clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X46_Y54_N29
\i_Swtich_1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Swtich_1,
	o => \i_Swtich_1~input_o\);

-- Location: LCCOMB_X47_Y51_N14
\Debounce_Inst|r_Count[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Debounce_Inst|r_Count[0]~19_combout\ = \Debounce_Inst|r_Count\(0) $ (VCC)
-- \Debounce_Inst|r_Count[0]~20\ = CARRY(\Debounce_Inst|r_Count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Debounce_Inst|r_Count\(0),
	datad => VCC,
	combout => \Debounce_Inst|r_Count[0]~19_combout\,
	cout => \Debounce_Inst|r_Count[0]~20\);

-- Location: LCCOMB_X47_Y51_N30
\Debounce_Inst|r_Count[8]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Debounce_Inst|r_Count[8]~35_combout\ = (\Debounce_Inst|r_Count\(8) & (\Debounce_Inst|r_Count[7]~34\ $ (GND))) # (!\Debounce_Inst|r_Count\(8) & (!\Debounce_Inst|r_Count[7]~34\ & VCC))
-- \Debounce_Inst|r_Count[8]~36\ = CARRY((\Debounce_Inst|r_Count\(8) & !\Debounce_Inst|r_Count[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debounce_Inst|r_Count\(8),
	datad => VCC,
	cin => \Debounce_Inst|r_Count[7]~34\,
	combout => \Debounce_Inst|r_Count[8]~35_combout\,
	cout => \Debounce_Inst|r_Count[8]~36\);

-- Location: LCCOMB_X47_Y50_N0
\Debounce_Inst|r_Count[9]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Debounce_Inst|r_Count[9]~37_combout\ = (\Debounce_Inst|r_Count\(9) & (!\Debounce_Inst|r_Count[8]~36\)) # (!\Debounce_Inst|r_Count\(9) & ((\Debounce_Inst|r_Count[8]~36\) # (GND)))
-- \Debounce_Inst|r_Count[9]~38\ = CARRY((!\Debounce_Inst|r_Count[8]~36\) # (!\Debounce_Inst|r_Count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debounce_Inst|r_Count\(9),
	datad => VCC,
	cin => \Debounce_Inst|r_Count[8]~36\,
	combout => \Debounce_Inst|r_Count[9]~37_combout\,
	cout => \Debounce_Inst|r_Count[9]~38\);

-- Location: FF_X47_Y50_N1
\Debounce_Inst|r_Count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Debounce_Inst|r_Count[9]~37_combout\,
	sclr => \Debounce_Inst|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debounce_Inst|r_Count\(9));

-- Location: LCCOMB_X47_Y50_N2
\Debounce_Inst|r_Count[10]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Debounce_Inst|r_Count[10]~39_combout\ = (\Debounce_Inst|r_Count\(10) & (\Debounce_Inst|r_Count[9]~38\ $ (GND))) # (!\Debounce_Inst|r_Count\(10) & (!\Debounce_Inst|r_Count[9]~38\ & VCC))
-- \Debounce_Inst|r_Count[10]~40\ = CARRY((\Debounce_Inst|r_Count\(10) & !\Debounce_Inst|r_Count[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Debounce_Inst|r_Count\(10),
	datad => VCC,
	cin => \Debounce_Inst|r_Count[9]~38\,
	combout => \Debounce_Inst|r_Count[10]~39_combout\,
	cout => \Debounce_Inst|r_Count[10]~40\);

-- Location: FF_X47_Y50_N3
\Debounce_Inst|r_Count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Debounce_Inst|r_Count[10]~39_combout\,
	sclr => \Debounce_Inst|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debounce_Inst|r_Count\(10));

-- Location: LCCOMB_X47_Y50_N4
\Debounce_Inst|r_Count[11]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Debounce_Inst|r_Count[11]~41_combout\ = (\Debounce_Inst|r_Count\(11) & (!\Debounce_Inst|r_Count[10]~40\)) # (!\Debounce_Inst|r_Count\(11) & ((\Debounce_Inst|r_Count[10]~40\) # (GND)))
-- \Debounce_Inst|r_Count[11]~42\ = CARRY((!\Debounce_Inst|r_Count[10]~40\) # (!\Debounce_Inst|r_Count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debounce_Inst|r_Count\(11),
	datad => VCC,
	cin => \Debounce_Inst|r_Count[10]~40\,
	combout => \Debounce_Inst|r_Count[11]~41_combout\,
	cout => \Debounce_Inst|r_Count[11]~42\);

-- Location: FF_X47_Y50_N5
\Debounce_Inst|r_Count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Debounce_Inst|r_Count[11]~41_combout\,
	sclr => \Debounce_Inst|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debounce_Inst|r_Count\(11));

-- Location: LCCOMB_X47_Y50_N6
\Debounce_Inst|r_Count[12]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Debounce_Inst|r_Count[12]~43_combout\ = (\Debounce_Inst|r_Count\(12) & (\Debounce_Inst|r_Count[11]~42\ $ (GND))) # (!\Debounce_Inst|r_Count\(12) & (!\Debounce_Inst|r_Count[11]~42\ & VCC))
-- \Debounce_Inst|r_Count[12]~44\ = CARRY((\Debounce_Inst|r_Count\(12) & !\Debounce_Inst|r_Count[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Debounce_Inst|r_Count\(12),
	datad => VCC,
	cin => \Debounce_Inst|r_Count[11]~42\,
	combout => \Debounce_Inst|r_Count[12]~43_combout\,
	cout => \Debounce_Inst|r_Count[12]~44\);

-- Location: FF_X47_Y50_N7
\Debounce_Inst|r_Count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Debounce_Inst|r_Count[12]~43_combout\,
	sclr => \Debounce_Inst|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debounce_Inst|r_Count\(12));

-- Location: LCCOMB_X47_Y50_N8
\Debounce_Inst|r_Count[13]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Debounce_Inst|r_Count[13]~45_combout\ = (\Debounce_Inst|r_Count\(13) & (!\Debounce_Inst|r_Count[12]~44\)) # (!\Debounce_Inst|r_Count\(13) & ((\Debounce_Inst|r_Count[12]~44\) # (GND)))
-- \Debounce_Inst|r_Count[13]~46\ = CARRY((!\Debounce_Inst|r_Count[12]~44\) # (!\Debounce_Inst|r_Count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Debounce_Inst|r_Count\(13),
	datad => VCC,
	cin => \Debounce_Inst|r_Count[12]~44\,
	combout => \Debounce_Inst|r_Count[13]~45_combout\,
	cout => \Debounce_Inst|r_Count[13]~46\);

-- Location: FF_X47_Y50_N9
\Debounce_Inst|r_Count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Debounce_Inst|r_Count[13]~45_combout\,
	sclr => \Debounce_Inst|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debounce_Inst|r_Count\(13));

-- Location: LCCOMB_X47_Y50_N30
\Debounce_Inst|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Debounce_Inst|process_0~0_combout\ = (!\Debounce_Inst|r_Count\(12) & (!\Debounce_Inst|r_Count\(9) & (!\Debounce_Inst|r_Count\(11) & !\Debounce_Inst|r_Count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debounce_Inst|r_Count\(12),
	datab => \Debounce_Inst|r_Count\(9),
	datac => \Debounce_Inst|r_Count\(11),
	datad => \Debounce_Inst|r_Count\(10),
	combout => \Debounce_Inst|process_0~0_combout\);

-- Location: LCCOMB_X47_Y50_N10
\Debounce_Inst|r_Count[14]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Debounce_Inst|r_Count[14]~47_combout\ = (\Debounce_Inst|r_Count\(14) & (\Debounce_Inst|r_Count[13]~46\ $ (GND))) # (!\Debounce_Inst|r_Count\(14) & (!\Debounce_Inst|r_Count[13]~46\ & VCC))
-- \Debounce_Inst|r_Count[14]~48\ = CARRY((\Debounce_Inst|r_Count\(14) & !\Debounce_Inst|r_Count[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debounce_Inst|r_Count\(14),
	datad => VCC,
	cin => \Debounce_Inst|r_Count[13]~46\,
	combout => \Debounce_Inst|r_Count[14]~47_combout\,
	cout => \Debounce_Inst|r_Count[14]~48\);

-- Location: FF_X47_Y50_N11
\Debounce_Inst|r_Count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Debounce_Inst|r_Count[14]~47_combout\,
	sclr => \Debounce_Inst|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debounce_Inst|r_Count\(14));

-- Location: LCCOMB_X47_Y50_N22
\Debounce_Inst|process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Debounce_Inst|process_0~3_combout\ = (\Debounce_Inst|r_Count\(14)) # ((\Debounce_Inst|r_Count\(13) & ((\Debounce_Inst|r_Count\(8)) # (!\Debounce_Inst|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debounce_Inst|r_Count\(8),
	datab => \Debounce_Inst|r_Count\(13),
	datac => \Debounce_Inst|process_0~0_combout\,
	datad => \Debounce_Inst|r_Count\(14),
	combout => \Debounce_Inst|process_0~3_combout\);

-- Location: LCCOMB_X47_Y51_N12
\Debounce_Inst|r_State~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Debounce_Inst|r_State~1_combout\ = (\Debounce_Inst|r_Count\(3) & (\Debounce_Inst|r_Count\(1) & (\Debounce_Inst|r_Count\(0) & \Debounce_Inst|r_Count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debounce_Inst|r_Count\(3),
	datab => \Debounce_Inst|r_Count\(1),
	datac => \Debounce_Inst|r_Count\(0),
	datad => \Debounce_Inst|r_Count\(2),
	combout => \Debounce_Inst|r_State~1_combout\);

-- Location: LCCOMB_X47_Y50_N12
\Debounce_Inst|r_Count[15]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Debounce_Inst|r_Count[15]~49_combout\ = (\Debounce_Inst|r_Count\(15) & (!\Debounce_Inst|r_Count[14]~48\)) # (!\Debounce_Inst|r_Count\(15) & ((\Debounce_Inst|r_Count[14]~48\) # (GND)))
-- \Debounce_Inst|r_Count[15]~50\ = CARRY((!\Debounce_Inst|r_Count[14]~48\) # (!\Debounce_Inst|r_Count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debounce_Inst|r_Count\(15),
	datad => VCC,
	cin => \Debounce_Inst|r_Count[14]~48\,
	combout => \Debounce_Inst|r_Count[15]~49_combout\,
	cout => \Debounce_Inst|r_Count[15]~50\);

-- Location: FF_X47_Y50_N13
\Debounce_Inst|r_Count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Debounce_Inst|r_Count[15]~49_combout\,
	sclr => \Debounce_Inst|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debounce_Inst|r_Count\(15));

-- Location: LCCOMB_X47_Y50_N14
\Debounce_Inst|r_Count[16]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Debounce_Inst|r_Count[16]~51_combout\ = (\Debounce_Inst|r_Count\(16) & (\Debounce_Inst|r_Count[15]~50\ $ (GND))) # (!\Debounce_Inst|r_Count\(16) & (!\Debounce_Inst|r_Count[15]~50\ & VCC))
-- \Debounce_Inst|r_Count[16]~52\ = CARRY((\Debounce_Inst|r_Count\(16) & !\Debounce_Inst|r_Count[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Debounce_Inst|r_Count\(16),
	datad => VCC,
	cin => \Debounce_Inst|r_Count[15]~50\,
	combout => \Debounce_Inst|r_Count[16]~51_combout\,
	cout => \Debounce_Inst|r_Count[16]~52\);

-- Location: FF_X47_Y50_N15
\Debounce_Inst|r_Count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Debounce_Inst|r_Count[16]~51_combout\,
	sclr => \Debounce_Inst|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debounce_Inst|r_Count\(16));

-- Location: LCCOMB_X47_Y50_N16
\Debounce_Inst|r_Count[17]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Debounce_Inst|r_Count[17]~53_combout\ = (\Debounce_Inst|r_Count\(17) & (!\Debounce_Inst|r_Count[16]~52\)) # (!\Debounce_Inst|r_Count\(17) & ((\Debounce_Inst|r_Count[16]~52\) # (GND)))
-- \Debounce_Inst|r_Count[17]~54\ = CARRY((!\Debounce_Inst|r_Count[16]~52\) # (!\Debounce_Inst|r_Count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Debounce_Inst|r_Count\(17),
	datad => VCC,
	cin => \Debounce_Inst|r_Count[16]~52\,
	combout => \Debounce_Inst|r_Count[17]~53_combout\,
	cout => \Debounce_Inst|r_Count[17]~54\);

-- Location: FF_X47_Y50_N17
\Debounce_Inst|r_Count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Debounce_Inst|r_Count[17]~53_combout\,
	sclr => \Debounce_Inst|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debounce_Inst|r_Count\(17));

-- Location: LCCOMB_X47_Y50_N18
\Debounce_Inst|r_Count[18]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Debounce_Inst|r_Count[18]~55_combout\ = \Debounce_Inst|r_Count[17]~54\ $ (!\Debounce_Inst|r_Count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Debounce_Inst|r_Count\(18),
	cin => \Debounce_Inst|r_Count[17]~54\,
	combout => \Debounce_Inst|r_Count[18]~55_combout\);

-- Location: FF_X47_Y50_N19
\Debounce_Inst|r_Count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Debounce_Inst|r_Count[18]~55_combout\,
	sclr => \Debounce_Inst|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debounce_Inst|r_Count\(18));

-- Location: LCCOMB_X47_Y50_N24
\Debounce_Inst|r_State~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Debounce_Inst|r_State~0_combout\ = (\Debounce_Inst|r_Count\(15) & (\Debounce_Inst|r_Count\(18) & (\Debounce_Inst|r_Count\(16) & \Debounce_Inst|r_Count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debounce_Inst|r_Count\(15),
	datab => \Debounce_Inst|r_Count\(18),
	datac => \Debounce_Inst|r_Count\(16),
	datad => \Debounce_Inst|r_Count\(17),
	combout => \Debounce_Inst|r_State~0_combout\);

-- Location: LCCOMB_X47_Y51_N4
\Debounce_Inst|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Debounce_Inst|process_0~1_combout\ = (!\Debounce_Inst|r_Count\(7) & (!\Debounce_Inst|r_Count\(6) & !\Debounce_Inst|r_Count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Debounce_Inst|r_Count\(7),
	datac => \Debounce_Inst|r_Count\(6),
	datad => \Debounce_Inst|r_Count\(5),
	combout => \Debounce_Inst|process_0~1_combout\);

-- Location: LCCOMB_X47_Y51_N2
\Debounce_Inst|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Debounce_Inst|process_0~2_combout\ = (!\Debounce_Inst|r_Count\(14) & (\Debounce_Inst|process_0~1_combout\ & \Debounce_Inst|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debounce_Inst|r_Count\(14),
	datac => \Debounce_Inst|process_0~1_combout\,
	datad => \Debounce_Inst|process_0~0_combout\,
	combout => \Debounce_Inst|process_0~2_combout\);

-- Location: LCCOMB_X47_Y51_N6
\Debounce_Inst|process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Debounce_Inst|process_0~4_combout\ = (\Debounce_Inst|r_State~0_combout\ & (((\Debounce_Inst|r_Count\(4) & \Debounce_Inst|r_State~1_combout\)) # (!\Debounce_Inst|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debounce_Inst|r_Count\(4),
	datab => \Debounce_Inst|r_State~1_combout\,
	datac => \Debounce_Inst|r_State~0_combout\,
	datad => \Debounce_Inst|process_0~2_combout\,
	combout => \Debounce_Inst|process_0~4_combout\);

-- Location: LCCOMB_X47_Y51_N8
\Debounce_Inst|process_0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Debounce_Inst|process_0~5_combout\ = (\Debounce_Inst|process_0~3_combout\ & ((\Debounce_Inst|process_0~4_combout\) # (\i_Swtich_1~input_o\ $ (!\Debounce_Inst|r_State~q\)))) # (!\Debounce_Inst|process_0~3_combout\ & (\i_Swtich_1~input_o\ $ 
-- ((!\Debounce_Inst|r_State~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Swtich_1~input_o\,
	datab => \Debounce_Inst|r_State~q\,
	datac => \Debounce_Inst|process_0~3_combout\,
	datad => \Debounce_Inst|process_0~4_combout\,
	combout => \Debounce_Inst|process_0~5_combout\);

-- Location: FF_X47_Y51_N15
\Debounce_Inst|r_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Debounce_Inst|r_Count[0]~19_combout\,
	sclr => \Debounce_Inst|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debounce_Inst|r_Count\(0));

-- Location: LCCOMB_X47_Y51_N16
\Debounce_Inst|r_Count[1]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Debounce_Inst|r_Count[1]~21_combout\ = (\Debounce_Inst|r_Count\(1) & (!\Debounce_Inst|r_Count[0]~20\)) # (!\Debounce_Inst|r_Count\(1) & ((\Debounce_Inst|r_Count[0]~20\) # (GND)))
-- \Debounce_Inst|r_Count[1]~22\ = CARRY((!\Debounce_Inst|r_Count[0]~20\) # (!\Debounce_Inst|r_Count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Debounce_Inst|r_Count\(1),
	datad => VCC,
	cin => \Debounce_Inst|r_Count[0]~20\,
	combout => \Debounce_Inst|r_Count[1]~21_combout\,
	cout => \Debounce_Inst|r_Count[1]~22\);

-- Location: FF_X47_Y51_N17
\Debounce_Inst|r_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Debounce_Inst|r_Count[1]~21_combout\,
	sclr => \Debounce_Inst|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debounce_Inst|r_Count\(1));

-- Location: LCCOMB_X47_Y51_N18
\Debounce_Inst|r_Count[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Debounce_Inst|r_Count[2]~23_combout\ = (\Debounce_Inst|r_Count\(2) & (\Debounce_Inst|r_Count[1]~22\ $ (GND))) # (!\Debounce_Inst|r_Count\(2) & (!\Debounce_Inst|r_Count[1]~22\ & VCC))
-- \Debounce_Inst|r_Count[2]~24\ = CARRY((\Debounce_Inst|r_Count\(2) & !\Debounce_Inst|r_Count[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Debounce_Inst|r_Count\(2),
	datad => VCC,
	cin => \Debounce_Inst|r_Count[1]~22\,
	combout => \Debounce_Inst|r_Count[2]~23_combout\,
	cout => \Debounce_Inst|r_Count[2]~24\);

-- Location: FF_X47_Y51_N19
\Debounce_Inst|r_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Debounce_Inst|r_Count[2]~23_combout\,
	sclr => \Debounce_Inst|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debounce_Inst|r_Count\(2));

-- Location: LCCOMB_X47_Y51_N20
\Debounce_Inst|r_Count[3]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Debounce_Inst|r_Count[3]~25_combout\ = (\Debounce_Inst|r_Count\(3) & (!\Debounce_Inst|r_Count[2]~24\)) # (!\Debounce_Inst|r_Count\(3) & ((\Debounce_Inst|r_Count[2]~24\) # (GND)))
-- \Debounce_Inst|r_Count[3]~26\ = CARRY((!\Debounce_Inst|r_Count[2]~24\) # (!\Debounce_Inst|r_Count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Debounce_Inst|r_Count\(3),
	datad => VCC,
	cin => \Debounce_Inst|r_Count[2]~24\,
	combout => \Debounce_Inst|r_Count[3]~25_combout\,
	cout => \Debounce_Inst|r_Count[3]~26\);

-- Location: FF_X47_Y51_N21
\Debounce_Inst|r_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Debounce_Inst|r_Count[3]~25_combout\,
	sclr => \Debounce_Inst|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debounce_Inst|r_Count\(3));

-- Location: LCCOMB_X47_Y51_N22
\Debounce_Inst|r_Count[4]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Debounce_Inst|r_Count[4]~27_combout\ = (\Debounce_Inst|r_Count\(4) & (\Debounce_Inst|r_Count[3]~26\ $ (GND))) # (!\Debounce_Inst|r_Count\(4) & (!\Debounce_Inst|r_Count[3]~26\ & VCC))
-- \Debounce_Inst|r_Count[4]~28\ = CARRY((\Debounce_Inst|r_Count\(4) & !\Debounce_Inst|r_Count[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debounce_Inst|r_Count\(4),
	datad => VCC,
	cin => \Debounce_Inst|r_Count[3]~26\,
	combout => \Debounce_Inst|r_Count[4]~27_combout\,
	cout => \Debounce_Inst|r_Count[4]~28\);

-- Location: FF_X47_Y51_N23
\Debounce_Inst|r_Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Debounce_Inst|r_Count[4]~27_combout\,
	sclr => \Debounce_Inst|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debounce_Inst|r_Count\(4));

-- Location: LCCOMB_X47_Y51_N24
\Debounce_Inst|r_Count[5]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Debounce_Inst|r_Count[5]~29_combout\ = (\Debounce_Inst|r_Count\(5) & (!\Debounce_Inst|r_Count[4]~28\)) # (!\Debounce_Inst|r_Count\(5) & ((\Debounce_Inst|r_Count[4]~28\) # (GND)))
-- \Debounce_Inst|r_Count[5]~30\ = CARRY((!\Debounce_Inst|r_Count[4]~28\) # (!\Debounce_Inst|r_Count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Debounce_Inst|r_Count\(5),
	datad => VCC,
	cin => \Debounce_Inst|r_Count[4]~28\,
	combout => \Debounce_Inst|r_Count[5]~29_combout\,
	cout => \Debounce_Inst|r_Count[5]~30\);

-- Location: FF_X47_Y51_N25
\Debounce_Inst|r_Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Debounce_Inst|r_Count[5]~29_combout\,
	sclr => \Debounce_Inst|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debounce_Inst|r_Count\(5));

-- Location: LCCOMB_X47_Y51_N26
\Debounce_Inst|r_Count[6]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Debounce_Inst|r_Count[6]~31_combout\ = (\Debounce_Inst|r_Count\(6) & (\Debounce_Inst|r_Count[5]~30\ $ (GND))) # (!\Debounce_Inst|r_Count\(6) & (!\Debounce_Inst|r_Count[5]~30\ & VCC))
-- \Debounce_Inst|r_Count[6]~32\ = CARRY((\Debounce_Inst|r_Count\(6) & !\Debounce_Inst|r_Count[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Debounce_Inst|r_Count\(6),
	datad => VCC,
	cin => \Debounce_Inst|r_Count[5]~30\,
	combout => \Debounce_Inst|r_Count[6]~31_combout\,
	cout => \Debounce_Inst|r_Count[6]~32\);

-- Location: FF_X47_Y51_N27
\Debounce_Inst|r_Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Debounce_Inst|r_Count[6]~31_combout\,
	sclr => \Debounce_Inst|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debounce_Inst|r_Count\(6));

-- Location: LCCOMB_X47_Y51_N28
\Debounce_Inst|r_Count[7]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Debounce_Inst|r_Count[7]~33_combout\ = (\Debounce_Inst|r_Count\(7) & (!\Debounce_Inst|r_Count[6]~32\)) # (!\Debounce_Inst|r_Count\(7) & ((\Debounce_Inst|r_Count[6]~32\) # (GND)))
-- \Debounce_Inst|r_Count[7]~34\ = CARRY((!\Debounce_Inst|r_Count[6]~32\) # (!\Debounce_Inst|r_Count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Debounce_Inst|r_Count\(7),
	datad => VCC,
	cin => \Debounce_Inst|r_Count[6]~32\,
	combout => \Debounce_Inst|r_Count[7]~33_combout\,
	cout => \Debounce_Inst|r_Count[7]~34\);

-- Location: FF_X47_Y51_N29
\Debounce_Inst|r_Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Debounce_Inst|r_Count[7]~33_combout\,
	sclr => \Debounce_Inst|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debounce_Inst|r_Count\(7));

-- Location: FF_X47_Y51_N31
\Debounce_Inst|r_Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Debounce_Inst|r_Count[8]~35_combout\,
	sclr => \Debounce_Inst|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debounce_Inst|r_Count\(8));

-- Location: LCCOMB_X47_Y50_N26
\Debounce_Inst|r_State~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Debounce_Inst|r_State~2_combout\ = (\Debounce_Inst|r_Count\(8) & (\Debounce_Inst|r_Count\(13) & (\Debounce_Inst|r_Count\(4) & \Debounce_Inst|r_State~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debounce_Inst|r_Count\(8),
	datab => \Debounce_Inst|r_Count\(13),
	datac => \Debounce_Inst|r_Count\(4),
	datad => \Debounce_Inst|r_State~1_combout\,
	combout => \Debounce_Inst|r_State~2_combout\);

-- Location: LCCOMB_X47_Y50_N28
\Debounce_Inst|r_State~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Debounce_Inst|r_State~3_combout\ = (\Debounce_Inst|r_State~2_combout\ & (\Debounce_Inst|process_0~2_combout\ & \Debounce_Inst|r_State~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Debounce_Inst|r_State~2_combout\,
	datac => \Debounce_Inst|process_0~2_combout\,
	datad => \Debounce_Inst|r_State~0_combout\,
	combout => \Debounce_Inst|r_State~3_combout\);

-- Location: LCCOMB_X47_Y50_N20
\Debounce_Inst|r_State~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Debounce_Inst|r_State~4_combout\ = (\Debounce_Inst|r_State~3_combout\ & (\i_Swtich_1~input_o\)) # (!\Debounce_Inst|r_State~3_combout\ & ((\Debounce_Inst|r_State~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_Swtich_1~input_o\,
	datac => \Debounce_Inst|r_State~q\,
	datad => \Debounce_Inst|r_State~3_combout\,
	combout => \Debounce_Inst|r_State~4_combout\);

-- Location: FF_X47_Y50_N21
\Debounce_Inst|r_State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \Debounce_Inst|r_State~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Debounce_Inst|r_State~q\);

-- Location: LCCOMB_X47_Y51_N10
\LED_Toggle_Inst|r_Switch_1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED_Toggle_Inst|r_Switch_1~feeder_combout\ = \Debounce_Inst|r_State~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Debounce_Inst|r_State~q\,
	combout => \LED_Toggle_Inst|r_Switch_1~feeder_combout\);

-- Location: FF_X47_Y51_N11
\LED_Toggle_Inst|r_Switch_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \LED_Toggle_Inst|r_Switch_1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED_Toggle_Inst|r_Switch_1~q\);

-- Location: LCCOMB_X47_Y51_N0
\LED_Toggle_Inst|r_LED_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED_Toggle_Inst|r_LED_1~0_combout\ = \LED_Toggle_Inst|r_LED_1~q\ $ (((!\Debounce_Inst|r_State~q\ & \LED_Toggle_Inst|r_Switch_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Debounce_Inst|r_State~q\,
	datac => \LED_Toggle_Inst|r_LED_1~q\,
	datad => \LED_Toggle_Inst|r_Switch_1~q\,
	combout => \LED_Toggle_Inst|r_LED_1~0_combout\);

-- Location: FF_X47_Y51_N1
\LED_Toggle_Inst|r_LED_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_Clk~inputclkctrl_outclk\,
	d => \LED_Toggle_Inst|r_LED_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED_Toggle_Inst|r_LED_1~q\);

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

ww_o_LED_1 <= \o_LED_1~output_o\;
END structure;


