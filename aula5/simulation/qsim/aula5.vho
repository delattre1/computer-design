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

-- DATE "03/31/2022 02:46:50"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Aula5 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0);
	LEDB : OUT std_logic_vector(11 DOWNTO 0);
	LEDIMED : OUT std_logic_vector(8 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	LEDFLAGEQ : OUT std_logic;
	LEDFLAG0 : OUT std_logic;
	LED_OUTMUX1 : OUT std_logic_vector(7 DOWNTO 0);
	LED_OP_ULAMUX : OUT std_logic_vector(1 DOWNTO 0);
	LED_SEL_MUX1 : OUT std_logic
	);
END Aula5;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDB[0]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDB[1]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDB[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDB[3]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDB[4]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDB[5]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDB[6]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDB[7]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDB[8]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDB[9]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDB[10]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDB[11]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDIMED[0]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDIMED[1]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDIMED[2]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDIMED[3]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDIMED[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDIMED[5]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDIMED[6]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDIMED[7]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDIMED[8]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDFLAGEQ	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDFLAG0	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_OUTMUX1[0]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_OUTMUX1[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_OUTMUX1[2]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_OUTMUX1[3]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_OUTMUX1[4]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_OUTMUX1[5]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_OUTMUX1[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_OUTMUX1[7]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_OP_ULAMUX[0]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_OP_ULAMUX[1]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_SEL_MUX1	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Aula5 IS
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
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDB : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_LEDIMED : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_LEDFLAGEQ : std_logic;
SIGNAL ww_LEDFLAG0 : std_logic;
SIGNAL ww_LED_OUTMUX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LED_OP_ULAMUX : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LED_SEL_MUX1 : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~6\ : std_logic;
SIGNAL \incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \DECODER1|Equal0~0_combout\ : std_logic;
SIGNAL \PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~26\ : std_logic;
SIGNAL \incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[7]~5_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~10\ : std_logic;
SIGNAL \incrementaPC|Add0~14\ : std_logic;
SIGNAL \incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[4]~8_combout\ : std_logic;
SIGNAL \PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~22\ : std_logic;
SIGNAL \incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[8]~4_combout\ : std_logic;
SIGNAL \DECODER1|saida~7_combout\ : std_logic;
SIGNAL \PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~2\ : std_logic;
SIGNAL \incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \DECODER1|saida[3]~3_combout\ : std_logic;
SIGNAL \DECODER1|Equal6~0_combout\ : std_logic;
SIGNAL \DECODER1|saida[4]~4_combout\ : std_logic;
SIGNAL \DECODER1|Equal6~0_wirecell_combout\ : std_logic;
SIGNAL \DECODER1|saida[5]~5_combout\ : std_logic;
SIGNAL \DECODER1|saida[4]~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \DECODER1|Equal10~0_combout\ : std_logic;
SIGNAL \ULA1|Add0~34_cout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|Add0~30\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|Equal2~1_combout\ : std_logic;
SIGNAL \DECODER1|saida~1_combout\ : std_logic;
SIGNAL \ULA1|Equal2~3_combout\ : std_logic;
SIGNAL \REG_FLAG_EQ|DOUT~0_combout\ : std_logic;
SIGNAL \REG_FLAG_EQ|DOUT~q\ : std_logic;
SIGNAL \MUXPC|Equal1~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \PC|DOUT[3]~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~34\ : std_logic;
SIGNAL \incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[5]~7_combout\ : std_logic;
SIGNAL \PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~30\ : std_logic;
SIGNAL \incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \DECODER1|saida[0]~0_combout\ : std_logic;
SIGNAL \DECODER1|saida[1]~2_combout\ : std_logic;
SIGNAL \DECODER1|saida~6_combout\ : std_logic;
SIGNAL \DECODER1|saida[10]~8_combout\ : std_logic;
SIGNAL \ULA1|Equal2~0_combout\ : std_logic;
SIGNAL \ULA1|Equal2~2_combout\ : std_logic;
SIGNAL \REG_ADDR_RET|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REG_ADDR_RET|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \MUXPC|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[3]~0_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \REG_FLAG_EQ|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_saida[4]~4_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_saida[3]~3_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_Equal10~0_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \REG1|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_saida[4]~9_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Equal2~3_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
LEDB <= ww_LEDB;
LEDIMED <= ww_LEDIMED;
PC_OUT <= ww_PC_OUT;
LEDFLAGEQ <= ww_LEDFLAGEQ;
LEDFLAG0 <= ww_LEDFLAG0;
LED_OUTMUX1 <= ww_LED_OUTMUX1;
LED_OP_ULAMUX <= ww_LED_OP_ULAMUX;
LED_SEL_MUX1 <= ww_LED_SEL_MUX1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\REG_ADDR_RET|ALT_INV_DOUT\(4) <= NOT \REG_ADDR_RET|DOUT\(4);
\REG_ADDR_RET|ALT_INV_DOUT\(5) <= NOT \REG_ADDR_RET|DOUT\(5);
\REG_ADDR_RET|ALT_INV_DOUT\(6) <= NOT \REG_ADDR_RET|DOUT\(6);
\REG_ADDR_RET|ALT_INV_DOUT\(7) <= NOT \REG_ADDR_RET|DOUT\(7);
\REG_ADDR_RET|ALT_INV_DOUT\(8) <= NOT \REG_ADDR_RET|DOUT\(8);
\REG_ADDR_RET|ALT_INV_DOUT\(3) <= NOT \REG_ADDR_RET|DOUT\(3);
\REG_ADDR_RET|ALT_INV_DOUT\(2) <= NOT \REG_ADDR_RET|DOUT\(2);
\REG_ADDR_RET|ALT_INV_DOUT\(1) <= NOT \REG_ADDR_RET|DOUT\(1);
\REG_ADDR_RET|ALT_INV_DOUT\(0) <= NOT \REG_ADDR_RET|DOUT\(0);
\MUXPC|ALT_INV_Equal1~0_combout\ <= NOT \MUXPC|Equal1~0_combout\;
\PC|ALT_INV_DOUT[3]~0_combout\ <= NOT \PC|DOUT[3]~0_combout\;
\MUX1|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \MUX1|saida_MUX[3]~3_combout\;
\MUX1|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \MUX1|saida_MUX[2]~2_combout\;
\MUX1|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \MUX1|saida_MUX[1]~1_combout\;
\MUX1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \MUX1|saida_MUX[0]~0_combout\;
\ULA1|ALT_INV_Equal2~1_combout\ <= NOT \ULA1|Equal2~1_combout\;
\ULA1|ALT_INV_Equal2~0_combout\ <= NOT \ULA1|Equal2~0_combout\;
\ROM1|ALT_INV_memROM~13_combout\ <= NOT \ROM1|memROM~13_combout\;
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\DECODER1|ALT_INV_Equal0~0_combout\ <= NOT \DECODER1|Equal0~0_combout\;
\REG_FLAG_EQ|ALT_INV_DOUT~q\ <= NOT \REG_FLAG_EQ|DOUT~q\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\DECODER1|ALT_INV_Equal6~0_combout\ <= NOT \DECODER1|Equal6~0_combout\;
\DECODER1|ALT_INV_saida[4]~4_combout\ <= NOT \DECODER1|saida[4]~4_combout\;
\DECODER1|ALT_INV_saida[3]~3_combout\ <= NOT \DECODER1|saida[3]~3_combout\;
\DECODER1|ALT_INV_Equal10~0_combout\ <= NOT \DECODER1|Equal10~0_combout\;
\DECODER1|ALT_INV_saida~1_combout\ <= NOT \DECODER1|saida~1_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \incrementaPC|Add0~33_sumout\;
\incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \incrementaPC|Add0~29_sumout\;
\incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \incrementaPC|Add0~25_sumout\;
\incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \incrementaPC|Add0~21_sumout\;
\incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \incrementaPC|Add0~17_sumout\;
\incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \incrementaPC|Add0~13_sumout\;
\incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \incrementaPC|Add0~9_sumout\;
\incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \incrementaPC|Add0~5_sumout\;
\incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \incrementaPC|Add0~1_sumout\;
\ULA1|ALT_INV_Add0~29_sumout\ <= NOT \ULA1|Add0~29_sumout\;
\ULA1|ALT_INV_Add0~25_sumout\ <= NOT \ULA1|Add0~25_sumout\;
\ULA1|ALT_INV_Add0~21_sumout\ <= NOT \ULA1|Add0~21_sumout\;
\ULA1|ALT_INV_Add0~17_sumout\ <= NOT \ULA1|Add0~17_sumout\;
\ULA1|ALT_INV_Add0~13_sumout\ <= NOT \ULA1|Add0~13_sumout\;
\ULA1|ALT_INV_Add0~9_sumout\ <= NOT \ULA1|Add0~9_sumout\;
\ULA1|ALT_INV_Add0~5_sumout\ <= NOT \ULA1|Add0~5_sumout\;
\ULA1|ALT_INV_Add0~1_sumout\ <= NOT \ULA1|Add0~1_sumout\;
\REG1|ALT_INV_DOUT\(7) <= NOT \REG1|DOUT\(7);
\REG1|ALT_INV_DOUT\(6) <= NOT \REG1|DOUT\(6);
\REG1|ALT_INV_DOUT\(5) <= NOT \REG1|DOUT\(5);
\REG1|ALT_INV_DOUT\(4) <= NOT \REG1|DOUT\(4);
\REG1|ALT_INV_DOUT\(3) <= NOT \REG1|DOUT\(3);
\REG1|ALT_INV_DOUT\(2) <= NOT \REG1|DOUT\(2);
\REG1|ALT_INV_DOUT\(1) <= NOT \REG1|DOUT\(1);
\REG1|ALT_INV_DOUT\(0) <= NOT \REG1|DOUT\(0);
\PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \PC|DOUT[4]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \PC|DOUT[5]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \PC|DOUT[6]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \PC|DOUT[7]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \PC|DOUT[8]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \PC|DOUT[2]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \PC|DOUT[1]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \PC|DOUT[0]~DUPLICATE_q\;
\ROM1|ALT_INV_memROM~14_combout\ <= NOT \ROM1|memROM~14_combout\;
\DECODER1|ALT_INV_saida[4]~9_combout\ <= NOT \DECODER1|saida[4]~9_combout\;
\ULA1|ALT_INV_Equal2~3_combout\ <= NOT \ULA1|Equal2~3_combout\;

-- Location: IOOBUF_X54_Y18_N96
\LEDG[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_LEDG(0));

-- Location: IOOBUF_X46_Y45_N42
\LEDG[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_LEDG(1));

-- Location: IOOBUF_X46_Y45_N59
\LEDG[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_LEDG(2));

-- Location: IOOBUF_X10_Y45_N53
\LEDG[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_LEDG(3));

-- Location: IOOBUF_X10_Y45_N19
\LEDG[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_LEDG(4));

-- Location: IOOBUF_X48_Y0_N42
\LEDG[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_LEDG(5));

-- Location: IOOBUF_X40_Y45_N59
\LEDG[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_LEDG(6));

-- Location: IOOBUF_X50_Y45_N2
\LEDG[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_LEDG(7));

-- Location: IOOBUF_X23_Y0_N93
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(0),
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X24_Y0_N19
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(1),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X18_Y0_N2
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X12_Y0_N19
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(3),
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X18_Y0_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(4),
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X23_Y0_N76
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(5),
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X18_Y0_N36
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(6),
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X22_Y0_N19
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(7),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X25_Y0_N53
\LEDB[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|saida[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDB(0));

-- Location: IOOBUF_X25_Y0_N19
\LEDB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|saida[1]~2_combout\,
	devoe => ww_devoe,
	o => ww_LEDB(1));

-- Location: IOOBUF_X22_Y0_N53
\LEDB[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|saida~1_combout\,
	devoe => ww_devoe,
	o => ww_LEDB(2));

-- Location: IOOBUF_X24_Y0_N53
\LEDB[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|saida[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_LEDB(3));

-- Location: IOOBUF_X23_Y0_N59
\LEDB[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|saida[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_LEDB(4));

-- Location: IOOBUF_X19_Y0_N2
\LEDB[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|saida[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_LEDB(5));

-- Location: IOOBUF_X34_Y0_N36
\LEDB[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Equal6~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDB(6));

-- Location: IOOBUF_X22_Y0_N2
\LEDB[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|saida~6_combout\,
	devoe => ww_devoe,
	o => ww_LEDB(7));

-- Location: IOOBUF_X10_Y0_N42
\LEDB[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|saida~7_combout\,
	devoe => ww_devoe,
	o => ww_LEDB(8));

-- Location: IOOBUF_X19_Y0_N19
\LEDB[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDB(9));

-- Location: IOOBUF_X22_Y0_N36
\LEDB[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|saida[10]~8_combout\,
	devoe => ww_devoe,
	o => ww_LEDB(10));

-- Location: IOOBUF_X10_Y0_N93
\LEDB[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|saida~7_combout\,
	devoe => ww_devoe,
	o => ww_LEDB(11));

-- Location: IOOBUF_X16_Y0_N76
\LEDIMED[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~10_combout\,
	devoe => ww_devoe,
	o => ww_LEDIMED(0));

-- Location: IOOBUF_X14_Y0_N19
\LEDIMED[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|ALT_INV_memROM~11_combout\,
	devoe => ww_devoe,
	o => ww_LEDIMED(1));

-- Location: IOOBUF_X19_Y0_N53
\LEDIMED[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|ALT_INV_memROM~12_combout\,
	devoe => ww_devoe,
	o => ww_LEDIMED(2));

-- Location: IOOBUF_X14_Y0_N53
\LEDIMED[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|ALT_INV_memROM~13_combout\,
	devoe => ww_devoe,
	o => ww_LEDIMED(3));

-- Location: IOOBUF_X50_Y45_N19
\LEDIMED[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDIMED(4));

-- Location: IOOBUF_X54_Y17_N5
\LEDIMED[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDIMED(5));

-- Location: IOOBUF_X40_Y0_N42
\LEDIMED[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDIMED(6));

-- Location: IOOBUF_X36_Y45_N53
\LEDIMED[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDIMED(7));

-- Location: IOOBUF_X38_Y0_N53
\LEDIMED[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDIMED(8));

-- Location: IOOBUF_X11_Y0_N53
\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(0),
	devoe => ww_devoe,
	o => ww_PC_OUT(0));

-- Location: IOOBUF_X11_Y0_N2
\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(1));

-- Location: IOOBUF_X11_Y0_N36
\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(2));

-- Location: IOOBUF_X12_Y0_N2
\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(3),
	devoe => ww_devoe,
	o => ww_PC_OUT(3));

-- Location: IOOBUF_X11_Y0_N19
\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(4));

-- Location: IOOBUF_X12_Y0_N53
\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[5]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(5));

-- Location: IOOBUF_X16_Y0_N93
\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(6));

-- Location: IOOBUF_X16_Y0_N59
\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(7));

-- Location: IOOBUF_X16_Y0_N42
\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(8),
	devoe => ww_devoe,
	o => ww_PC_OUT(8));

-- Location: IOOBUF_X19_Y0_N36
\LEDFLAGEQ~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_FLAG_EQ|DOUT~q\,
	devoe => ww_devoe,
	o => ww_LEDFLAGEQ);

-- Location: IOOBUF_X24_Y0_N36
\LEDFLAG0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Equal2~2_combout\,
	devoe => ww_devoe,
	o => ww_LEDFLAG0);

-- Location: IOOBUF_X18_Y0_N53
\LED_OUTMUX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_LED_OUTMUX1(0));

-- Location: IOOBUF_X14_Y0_N2
\LED_OUTMUX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_LED_OUTMUX1(1));

-- Location: IOOBUF_X12_Y0_N36
\LED_OUTMUX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_LED_OUTMUX1(2));

-- Location: IOOBUF_X14_Y0_N36
\LED_OUTMUX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_LED_OUTMUX1(3));

-- Location: IOOBUF_X25_Y0_N36
\LED_OUTMUX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|ALT_INV_Equal6~0_combout\,
	devoe => ww_devoe,
	o => ww_LED_OUTMUX1(4));

-- Location: IOOBUF_X25_Y0_N2
\LED_OUTMUX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|ALT_INV_Equal6~0_combout\,
	devoe => ww_devoe,
	o => ww_LED_OUTMUX1(5));

-- Location: IOOBUF_X34_Y0_N53
\LED_OUTMUX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|ALT_INV_Equal6~0_combout\,
	devoe => ww_devoe,
	o => ww_LED_OUTMUX1(6));

-- Location: IOOBUF_X29_Y0_N36
\LED_OUTMUX1[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|ALT_INV_Equal6~0_combout\,
	devoe => ww_devoe,
	o => ww_LED_OUTMUX1(7));

-- Location: IOOBUF_X24_Y0_N2
\LED_OP_ULAMUX[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|saida[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_LED_OP_ULAMUX(0));

-- Location: IOOBUF_X23_Y0_N42
\LED_OP_ULAMUX[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|saida[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_LED_OP_ULAMUX(1));

-- Location: IOOBUF_X29_Y0_N53
\LED_SEL_MUX1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Equal6~0_combout\,
	devoe => ww_devoe,
	o => ww_LED_SEL_MUX1);

-- Location: IOIBUF_X54_Y18_N61
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G10
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: FF_X16_Y2_N16
\PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXPC|saida_MUX[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y2_N30
\incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~1_sumout\ = SUM(( \PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \incrementaPC|Add0~2\ = CARRY(( \PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \incrementaPC|Add0~1_sumout\,
	cout => \incrementaPC|Add0~2\);

-- Location: FF_X17_Y2_N58
\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXPC|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

-- Location: FF_X17_Y2_N49
\PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXPC|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[1]~DUPLICATE_q\);

-- Location: FF_X17_Y2_N19
\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXPC|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

-- Location: LABCELL_X17_Y2_N33
\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = ( \ROM1|memROM~5_combout\ & ( (!\PC|DOUT\(0) & ((!\PC|DOUT[1]~DUPLICATE_q\ $ (!\PC|DOUT\(3))) # (\PC|DOUT\(2)))) # (\PC|DOUT\(0) & (((!\PC|DOUT\(2) & \PC|DOUT\(3))) # (\PC|DOUT[1]~DUPLICATE_q\))) ) ) # ( !\ROM1|memROM~5_combout\ 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100111011110110110011101111011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \ROM1|memROM~12_combout\);

-- Location: LABCELL_X16_Y2_N33
\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \PC|DOUT\(1) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))
-- \incrementaPC|Add0~6\ = CARRY(( \PC|DOUT\(1) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(1),
	cin => \incrementaPC|Add0~2\,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

-- Location: LABCELL_X16_Y2_N36
\incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~9_sumout\ = SUM(( \PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~6\ ))
-- \incrementaPC|Add0~10\ = CARRY(( \PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~6\,
	sumout => \incrementaPC|Add0~9_sumout\,
	cout => \incrementaPC|Add0~10\);

-- Location: FF_X16_Y2_N37
\REG_ADDR_RET|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~9_sumout\,
	ena => \DECODER1|saida~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ADDR_RET|DOUT\(2));

-- Location: LABCELL_X17_Y2_N18
\MUXPC|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[2]~2_combout\ = ( \REG_ADDR_RET|DOUT\(2) & ( (!\PC|DOUT[3]~0_combout\ & (((\incrementaPC|Add0~9_sumout\)))) # (\PC|DOUT[3]~0_combout\ & ((!\MUXPC|Equal1~0_combout\) # ((!\ROM1|memROM~12_combout\)))) ) ) # ( !\REG_ADDR_RET|DOUT\(2) & ( 
-- (!\PC|DOUT[3]~0_combout\ & (((\incrementaPC|Add0~9_sumout\)))) # (\PC|DOUT[3]~0_combout\ & (\MUXPC|Equal1~0_combout\ & (!\ROM1|memROM~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010111010000100001011101001010100111111100101010011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[3]~0_combout\,
	datab => \MUXPC|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \incrementaPC|ALT_INV_Add0~9_sumout\,
	dataf => \REG_ADDR_RET|ALT_INV_DOUT\(2),
	combout => \MUXPC|saida_MUX[2]~2_combout\);

-- Location: FF_X17_Y2_N20
\PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXPC|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y2_N42
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( \PC|DOUT\(1) & ( (!\PC|DOUT\(3) & !\PC|DOUT[0]~DUPLICATE_q\) ) ) # ( !\PC|DOUT\(1) & ( (!\PC|DOUT[0]~DUPLICATE_q\ & (!\PC|DOUT\(3) $ (\PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100000000101001010000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~0_combout\);

-- Location: LABCELL_X19_Y2_N21
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \ROM1|memROM~6_combout\);

-- Location: LABCELL_X19_Y2_N24
\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \ROM1|memROM~8_combout\);

-- Location: LABCELL_X19_Y2_N27
\DECODER1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Equal0~0_combout\ = ( \ROM1|memROM~8_combout\ & ( (\ROM1|memROM~9_combout\ & (!\ROM1|memROM~7_combout\ & !\ROM1|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \DECODER1|Equal0~0_combout\);

-- Location: FF_X16_Y2_N10
\PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXPC|saida_MUX[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y2_N48
\incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~25_sumout\ = SUM(( \PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~30\ ))
-- \incrementaPC|Add0~26\ = CARRY(( \PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~30\,
	sumout => \incrementaPC|Add0~25_sumout\,
	cout => \incrementaPC|Add0~26\);

-- Location: LABCELL_X16_Y2_N51
\incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~21_sumout\ = SUM(( \PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~26\ ))
-- \incrementaPC|Add0~22\ = CARRY(( \PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~26\,
	sumout => \incrementaPC|Add0~21_sumout\,
	cout => \incrementaPC|Add0~22\);

-- Location: FF_X16_Y2_N52
\REG_ADDR_RET|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~21_sumout\,
	ena => \DECODER1|saida~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ADDR_RET|DOUT\(7));

-- Location: LABCELL_X16_Y2_N9
\MUXPC|saida_MUX[7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[7]~5_combout\ = ( \REG_ADDR_RET|DOUT\(7) & ( ((!\PC|DOUT[3]~0_combout\ & \incrementaPC|Add0~21_sumout\)) # (\DECODER1|Equal0~0_combout\) ) ) # ( !\REG_ADDR_RET|DOUT\(7) & ( (!\PC|DOUT[3]~0_combout\ & \incrementaPC|Add0~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110001011101010111010101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal0~0_combout\,
	datab => \PC|ALT_INV_DOUT[3]~0_combout\,
	datac => \incrementaPC|ALT_INV_Add0~21_sumout\,
	dataf => \REG_ADDR_RET|ALT_INV_DOUT\(7),
	combout => \MUXPC|saida_MUX[7]~5_combout\);

-- Location: FF_X16_Y2_N11
\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXPC|saida_MUX[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

-- Location: FF_X16_Y2_N20
\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXPC|saida_MUX[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

-- Location: LABCELL_X16_Y2_N39
\incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~13_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))
-- \incrementaPC|Add0~14\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \incrementaPC|Add0~10\,
	sumout => \incrementaPC|Add0~13_sumout\,
	cout => \incrementaPC|Add0~14\);

-- Location: LABCELL_X16_Y2_N42
\incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~33_sumout\ = SUM(( \PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~14\ ))
-- \incrementaPC|Add0~34\ = CARRY(( \PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~14\,
	sumout => \incrementaPC|Add0~33_sumout\,
	cout => \incrementaPC|Add0~34\);

-- Location: FF_X16_Y2_N43
\REG_ADDR_RET|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~33_sumout\,
	ena => \DECODER1|saida~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ADDR_RET|DOUT\(4));

-- Location: LABCELL_X16_Y2_N21
\MUXPC|saida_MUX[4]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[4]~8_combout\ = ( \REG_ADDR_RET|DOUT\(4) & ( ((!\PC|DOUT[3]~0_combout\ & \incrementaPC|Add0~33_sumout\)) # (\DECODER1|Equal0~0_combout\) ) ) # ( !\REG_ADDR_RET|DOUT\(4) & ( (!\PC|DOUT[3]~0_combout\ & \incrementaPC|Add0~33_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100111111110000110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[3]~0_combout\,
	datac => \incrementaPC|ALT_INV_Add0~33_sumout\,
	datad => \DECODER1|ALT_INV_Equal0~0_combout\,
	dataf => \REG_ADDR_RET|ALT_INV_DOUT\(4),
	combout => \MUXPC|saida_MUX[4]~8_combout\);

-- Location: FF_X16_Y2_N23
\PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXPC|saida_MUX[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[4]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y2_N12
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\PC|DOUT\(6) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(5) & !\PC|DOUT[4]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~1_combout\);

-- Location: LABCELL_X17_Y2_N9
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \PC|DOUT\(0) & ( (\PC|DOUT[1]~DUPLICATE_q\ & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))) ) ) # ( !\PC|DOUT\(0) & ( (!\PC|DOUT\(2) & (!\PC|DOUT[1]~DUPLICATE_q\ & !\PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000011000011110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~4_combout\);

-- Location: LABCELL_X16_Y2_N54
\incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~17_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(8),
	cin => \incrementaPC|Add0~22\,
	sumout => \incrementaPC|Add0~17_sumout\);

-- Location: FF_X16_Y2_N55
\REG_ADDR_RET|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~17_sumout\,
	ena => \DECODER1|saida~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ADDR_RET|DOUT\(8));

-- Location: LABCELL_X16_Y2_N6
\MUXPC|saida_MUX[8]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[8]~4_combout\ = ( \PC|DOUT[3]~0_combout\ & ( (\DECODER1|Equal0~0_combout\ & \REG_ADDR_RET|DOUT\(8)) ) ) # ( !\PC|DOUT[3]~0_combout\ & ( ((\DECODER1|Equal0~0_combout\ & \REG_ADDR_RET|DOUT\(8))) # (\incrementaPC|Add0~17_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal0~0_combout\,
	datac => \incrementaPC|ALT_INV_Add0~17_sumout\,
	datad => \REG_ADDR_RET|ALT_INV_DOUT\(8),
	dataf => \PC|ALT_INV_DOUT[3]~0_combout\,
	combout => \MUXPC|saida_MUX[8]~4_combout\);

-- Location: FF_X16_Y2_N8
\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXPC|saida_MUX[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

-- Location: LABCELL_X19_Y2_N15
\DECODER1|saida~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|saida~7_combout\ = ( \ROM1|memROM~0_combout\ & ( !\PC|DOUT\(8) & ( (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~1_combout\ & \ROM1|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \PC|ALT_INV_DOUT\(8),
	combout => \DECODER1|saida~7_combout\);

-- Location: FF_X16_Y2_N31
\REG_ADDR_RET|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~1_sumout\,
	ena => \DECODER1|saida~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ADDR_RET|DOUT\(0));

-- Location: FF_X16_Y2_N22
\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXPC|saida_MUX[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

-- Location: FF_X16_Y2_N7
\PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXPC|saida_MUX[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[8]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y2_N3
\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = ( \PC|DOUT\(1) & ( (!\PC|DOUT[2]~DUPLICATE_q\ & (!\PC|DOUT[0]~DUPLICATE_q\ & !\PC|DOUT\(3))) ) ) # ( !\PC|DOUT\(1) & ( (!\PC|DOUT\(3) & ((\PC|DOUT[0]~DUPLICATE_q\))) # (\PC|DOUT\(3) & (\PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010110100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~14_combout\);

-- Location: LABCELL_X17_Y2_N12
\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( \ROM1|memROM~14_combout\ & ( !\PC|DOUT[7]~DUPLICATE_q\ & ( (!\PC|DOUT\(4) & (!\PC|DOUT[6]~DUPLICATE_q\ & (!\PC|DOUT[8]~DUPLICATE_q\ & !\PC|DOUT[5]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	combout => \ROM1|memROM~10_combout\);

-- Location: LABCELL_X17_Y2_N57
\MUXPC|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[0]~0_combout\ = ( \ROM1|memROM~10_combout\ & ( (!\PC|DOUT[3]~0_combout\ & (((\incrementaPC|Add0~1_sumout\)))) # (\PC|DOUT[3]~0_combout\ & (((\MUXPC|Equal1~0_combout\)) # (\REG_ADDR_RET|DOUT\(0)))) ) ) # ( !\ROM1|memROM~10_combout\ & ( 
-- (!\PC|DOUT[3]~0_combout\ & (((\incrementaPC|Add0~1_sumout\)))) # (\PC|DOUT[3]~0_combout\ & (\REG_ADDR_RET|DOUT\(0) & ((!\MUXPC|Equal1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010000001100110101000000110011010111110011001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ADDR_RET|ALT_INV_DOUT\(0),
	datab => \incrementaPC|ALT_INV_Add0~1_sumout\,
	datac => \MUXPC|ALT_INV_Equal1~0_combout\,
	datad => \PC|ALT_INV_DOUT[3]~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \MUXPC|saida_MUX[0]~0_combout\);

-- Location: FF_X17_Y2_N59
\PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXPC|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[0]~DUPLICATE_q\);

-- Location: FF_X16_Y2_N34
\REG_ADDR_RET|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~5_sumout\,
	ena => \DECODER1|saida~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ADDR_RET|DOUT\(1));

-- Location: LABCELL_X16_Y2_N0
\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ( \ROM1|memROM~5_combout\ & ( (((!\PC|DOUT\(3) & \PC|DOUT[2]~DUPLICATE_q\)) # (\PC|DOUT\(1))) # (\PC|DOUT[0]~DUPLICATE_q\) ) ) # ( !\ROM1|memROM~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100101111111111110010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(1),
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \ROM1|memROM~11_combout\);

-- Location: LABCELL_X17_Y2_N48
\MUXPC|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[1]~1_combout\ = ( \ROM1|memROM~11_combout\ & ( (!\PC|DOUT[3]~0_combout\ & (((\incrementaPC|Add0~5_sumout\)))) # (\PC|DOUT[3]~0_combout\ & (\REG_ADDR_RET|DOUT\(1) & ((!\MUXPC|Equal1~0_combout\)))) ) ) # ( !\ROM1|memROM~11_combout\ & ( 
-- (!\PC|DOUT[3]~0_combout\ & (((\incrementaPC|Add0~5_sumout\)))) # (\PC|DOUT[3]~0_combout\ & (((\MUXPC|Equal1~0_combout\)) # (\REG_ADDR_RET|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100111111001101010011111100110101001100000011010100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ADDR_RET|ALT_INV_DOUT\(1),
	datab => \incrementaPC|ALT_INV_Add0~5_sumout\,
	datac => \PC|ALT_INV_DOUT[3]~0_combout\,
	datad => \MUXPC|ALT_INV_Equal1~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \MUXPC|saida_MUX[1]~1_combout\);

-- Location: FF_X17_Y2_N50
\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXPC|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

-- Location: LABCELL_X17_Y2_N6
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( \PC|DOUT[2]~DUPLICATE_q\ & ( (\PC|DOUT\(3) & ((!\PC|DOUT\(1)) # (\PC|DOUT[0]~DUPLICATE_q\))) ) ) # ( !\PC|DOUT[2]~DUPLICATE_q\ & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(1) $ (!\PC|DOUT[0]~DUPLICATE_q\))) # (\PC|DOUT\(3) & (!\PC|DOUT\(1) 
-- & !\PC|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100000010110101010000001010000010101010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(1),
	datad => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM1|memROM~3_combout\);

-- Location: MLABCELL_X18_Y2_N18
\DECODER1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|saida[3]~3_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~0_combout\ & (!\ROM1|memROM~2_combout\ & !\PC|DOUT\(8)))) ) ) ) # ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~4_combout\ & 
-- ( (!\PC|DOUT\(8) & ((!\ROM1|memROM~2_combout\ & ((\ROM1|memROM~0_combout\))) # (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001110100000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \PC|ALT_INV_DOUT\(8),
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DECODER1|saida[3]~3_combout\);

-- Location: LABCELL_X17_Y2_N24
\DECODER1|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Equal6~0_combout\ = ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~4_combout\ & ( (!\PC|DOUT[8]~DUPLICATE_q\ & (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DECODER1|Equal6~0_combout\);

-- Location: LABCELL_X17_Y2_N36
\DECODER1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|saida[4]~4_combout\ = ( \ROM1|memROM~0_combout\ & ( !\ROM1|memROM~4_combout\ & ( (\ROM1|memROM~1_combout\ & (!\PC|DOUT[8]~DUPLICATE_q\ & !\ROM1|memROM~3_combout\)) ) ) ) # ( !\ROM1|memROM~0_combout\ & ( !\ROM1|memROM~4_combout\ & ( 
-- (\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & (!\PC|DOUT[8]~DUPLICATE_q\ & !\ROM1|memROM~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000010100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DECODER1|saida[4]~4_combout\);

-- Location: LABCELL_X19_Y2_N9
\DECODER1|Equal6~0_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Equal6~0_wirecell_combout\ = ( !\DECODER1|Equal6~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DECODER1|ALT_INV_Equal6~0_combout\,
	combout => \DECODER1|Equal6~0_wirecell_combout\);

-- Location: LABCELL_X19_Y2_N48
\DECODER1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|saida[5]~5_combout\ = ( !\ROM1|memROM~0_combout\ & ( \ROM1|memROM~2_combout\ & ( (!\PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~4_combout\ & !\ROM1|memROM~3_combout\))) ) ) ) # ( \ROM1|memROM~0_combout\ & ( !\ROM1|memROM~2_combout\ & 
-- ( (!\PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~4_combout\)) ) ) ) # ( !\ROM1|memROM~0_combout\ & ( !\ROM1|memROM~2_combout\ & ( (!\PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~4_combout\ $ (!\ROM1|memROM~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100000001000000010000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \DECODER1|saida[5]~5_combout\);

-- Location: FF_X18_Y2_N56
\REG1|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~13_sumout\,
	asdata => \DECODER1|Equal6~0_wirecell_combout\,
	sload => \DECODER1|saida[4]~4_combout\,
	ena => \DECODER1|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(7));

-- Location: MLABCELL_X18_Y2_N9
\DECODER1|saida[4]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|saida[4]~9_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\PC|DOUT\(8) & (!\ROM1|memROM~3_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110000000000000111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \PC|ALT_INV_DOUT\(8),
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \DECODER1|saida[4]~9_combout\);

-- Location: LABCELL_X16_Y2_N3
\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = ( \ROM1|memROM~5_combout\ & ( (!\PC|DOUT\(3) & (((\PC|DOUT[0]~DUPLICATE_q\)) # (\PC|DOUT[2]~DUPLICATE_q\))) # (\PC|DOUT\(3) & ((!\PC|DOUT[2]~DUPLICATE_q\) # ((!\PC|DOUT[0]~DUPLICATE_q\) # (\PC|DOUT\(1))))) ) ) # ( 
-- !\ROM1|memROM~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101111110011111110111111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(1),
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \ROM1|memROM~13_combout\);

-- Location: LABCELL_X17_Y2_N51
\MUX1|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[3]~3_combout\ = ( \DECODER1|Equal6~0_combout\ & ( !\ROM1|memROM~13_combout\ ) ) # ( !\DECODER1|Equal6~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \DECODER1|ALT_INV_Equal6~0_combout\,
	combout => \MUX1|saida_MUX[3]~3_combout\);

-- Location: MLABCELL_X18_Y2_N6
\MUX1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[2]~2_combout\ = ( \DECODER1|Equal6~0_combout\ & ( !\ROM1|memROM~12_combout\ ) ) # ( !\DECODER1|Equal6~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \DECODER1|ALT_INV_Equal6~0_combout\,
	combout => \MUX1|saida_MUX[2]~2_combout\);

-- Location: LABCELL_X17_Y2_N30
\MUX1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[1]~1_combout\ = ( \DECODER1|Equal6~0_combout\ & ( !\ROM1|memROM~11_combout\ ) ) # ( !\DECODER1|Equal6~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \DECODER1|ALT_INV_Equal6~0_combout\,
	combout => \MUX1|saida_MUX[1]~1_combout\);

-- Location: LABCELL_X17_Y2_N0
\MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[0]~0_combout\ = ( \DECODER1|Equal6~0_combout\ & ( \ROM1|memROM~10_combout\ ) ) # ( !\DECODER1|Equal6~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \DECODER1|ALT_INV_Equal6~0_combout\,
	combout => \MUX1|saida_MUX[0]~0_combout\);

-- Location: MLABCELL_X18_Y2_N0
\DECODER1|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Equal10~0_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~4_combout\ & ( !\PC|DOUT\(8) ) ) ) # ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~4_combout\ & ( (!\PC|DOUT\(8) & (((\ROM1|memROM~2_combout\) # (\ROM1|memROM~0_combout\)) # 
-- (\ROM1|memROM~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \PC|ALT_INV_DOUT\(8),
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DECODER1|Equal10~0_combout\);

-- Location: MLABCELL_X18_Y2_N30
\ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~34_cout\ = CARRY(( (!\ROM1|memROM~9_combout\ & (((\DECODER1|saida[3]~3_combout\ & \DECODER1|Equal10~0_combout\)) # (\DECODER1|saida[4]~9_combout\))) # (\ROM1|memROM~9_combout\ & (((\DECODER1|saida[3]~3_combout\ & 
-- \DECODER1|Equal10~0_combout\)))) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010001000101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \DECODER1|ALT_INV_saida[4]~9_combout\,
	datac => \DECODER1|ALT_INV_saida[3]~3_combout\,
	datad => \DECODER1|ALT_INV_Equal10~0_combout\,
	cin => GND,
	cout => \ULA1|Add0~34_cout\);

-- Location: MLABCELL_X18_Y2_N33
\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( \REG1|DOUT\(0) ) + ( !\MUX1|saida_MUX[0]~0_combout\ $ (((!\DECODER1|saida[3]~3_combout\ & ((!\DECODER1|saida[4]~9_combout\) # (\ROM1|memROM~9_combout\))))) ) + ( \ULA1|Add0~34_cout\ ))
-- \ULA1|Add0~18\ = CARRY(( \REG1|DOUT\(0) ) + ( !\MUX1|saida_MUX[0]~0_combout\ $ (((!\DECODER1|saida[3]~3_combout\ & ((!\DECODER1|saida[4]~9_combout\) # (\ROM1|memROM~9_combout\))))) ) + ( \ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110100100000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \DECODER1|ALT_INV_saida[4]~9_combout\,
	datac => \MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \REG1|ALT_INV_DOUT\(0),
	dataf => \DECODER1|ALT_INV_saida[3]~3_combout\,
	cin => \ULA1|Add0~34_cout\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

-- Location: MLABCELL_X18_Y2_N36
\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( \REG1|DOUT\(1) ) + ( !\MUX1|saida_MUX[1]~1_combout\ $ (((!\DECODER1|saida[3]~3_combout\ & ((!\DECODER1|saida[4]~9_combout\) # (\ROM1|memROM~9_combout\))))) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( \REG1|DOUT\(1) ) + ( !\MUX1|saida_MUX[1]~1_combout\ $ (((!\DECODER1|saida[3]~3_combout\ & ((!\DECODER1|saida[4]~9_combout\) # (\ROM1|memROM~9_combout\))))) ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000110100101100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \DECODER1|ALT_INV_saida[3]~3_combout\,
	datac => \MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	datad => \REG1|ALT_INV_DOUT\(1),
	dataf => \DECODER1|ALT_INV_saida[4]~9_combout\,
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

-- Location: FF_X18_Y2_N37
\REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~21_sumout\,
	asdata => \MUX1|saida_MUX[1]~1_combout\,
	sload => \DECODER1|saida[4]~4_combout\,
	ena => \DECODER1|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(1));

-- Location: MLABCELL_X18_Y2_N39
\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( \REG1|DOUT\(2) ) + ( !\MUX1|saida_MUX[2]~2_combout\ $ (((!\DECODER1|saida[3]~3_combout\ & ((!\DECODER1|saida[4]~9_combout\) # (\ROM1|memROM~9_combout\))))) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( \REG1|DOUT\(2) ) + ( !\MUX1|saida_MUX[2]~2_combout\ $ (((!\DECODER1|saida[3]~3_combout\ & ((!\DECODER1|saida[4]~9_combout\) # (\ROM1|memROM~9_combout\))))) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000110100101100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \DECODER1|ALT_INV_saida[3]~3_combout\,
	datac => \MUX1|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \REG1|ALT_INV_DOUT\(2),
	dataf => \DECODER1|ALT_INV_saida[4]~9_combout\,
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

-- Location: FF_X18_Y2_N40
\REG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~25_sumout\,
	asdata => \MUX1|saida_MUX[2]~2_combout\,
	sload => \DECODER1|saida[4]~4_combout\,
	ena => \DECODER1|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(2));

-- Location: MLABCELL_X18_Y2_N42
\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( !\MUX1|saida_MUX[3]~3_combout\ $ (((!\DECODER1|saida[3]~3_combout\ & ((!\DECODER1|saida[4]~9_combout\) # (\ROM1|memROM~9_combout\))))) ) + ( \REG1|DOUT\(3) ) + ( \ULA1|Add0~26\ ))
-- \ULA1|Add0~30\ = CARRY(( !\MUX1|saida_MUX[3]~3_combout\ $ (((!\DECODER1|saida[3]~3_combout\ & ((!\DECODER1|saida[4]~9_combout\) # (\ROM1|memROM~9_combout\))))) ) + ( \REG1|DOUT\(3) ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000111010110001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_saida[3]~3_combout\,
	datab => \DECODER1|ALT_INV_saida[4]~9_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[3]~3_combout\,
	dataf => \REG1|ALT_INV_DOUT\(3),
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\,
	cout => \ULA1|Add0~30\);

-- Location: FF_X18_Y2_N44
\REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~29_sumout\,
	asdata => \MUX1|saida_MUX[3]~3_combout\,
	sload => \DECODER1|saida[4]~4_combout\,
	ena => \DECODER1|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(3));

-- Location: MLABCELL_X18_Y2_N45
\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( \REG1|DOUT\(4) ) + ( !\DECODER1|Equal6~0_combout\ $ ((((\DECODER1|saida[4]~9_combout\ & !\ROM1|memROM~9_combout\)) # (\DECODER1|saida[3]~3_combout\))) ) + ( \ULA1|Add0~30\ ))
-- \ULA1|Add0~2\ = CARRY(( \REG1|DOUT\(4) ) + ( !\DECODER1|Equal6~0_combout\ $ ((((\DECODER1|saida[4]~9_combout\ & !\ROM1|memROM~9_combout\)) # (\DECODER1|saida[3]~3_combout\))) ) + ( \ULA1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101011000101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_saida[3]~3_combout\,
	datab => \DECODER1|ALT_INV_saida[4]~9_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \REG1|ALT_INV_DOUT\(4),
	dataf => \DECODER1|ALT_INV_Equal6~0_combout\,
	cin => \ULA1|Add0~30\,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

-- Location: FF_X18_Y2_N46
\REG1|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~1_sumout\,
	asdata => \DECODER1|Equal6~0_wirecell_combout\,
	sload => \DECODER1|saida[4]~4_combout\,
	ena => \DECODER1|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(4));

-- Location: MLABCELL_X18_Y2_N48
\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( \REG1|DOUT\(5) ) + ( !\DECODER1|Equal6~0_combout\ $ (((\DECODER1|saida[3]~3_combout\) # (\DECODER1|saida[4]~4_combout\))) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( \REG1|DOUT\(5) ) + ( !\DECODER1|Equal6~0_combout\ $ (((\DECODER1|saida[3]~3_combout\) # (\DECODER1|saida[4]~4_combout\))) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011011000110110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_saida[4]~4_combout\,
	datab => \DECODER1|ALT_INV_Equal6~0_combout\,
	datac => \DECODER1|ALT_INV_saida[3]~3_combout\,
	datad => \REG1|ALT_INV_DOUT\(5),
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

-- Location: FF_X18_Y2_N50
\REG1|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~5_sumout\,
	asdata => \DECODER1|Equal6~0_wirecell_combout\,
	sload => \DECODER1|saida[4]~4_combout\,
	ena => \DECODER1|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(5));

-- Location: MLABCELL_X18_Y2_N51
\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( \REG1|DOUT\(6) ) + ( !\DECODER1|Equal6~0_combout\ $ (((\DECODER1|saida[3]~3_combout\) # (\DECODER1|saida[4]~4_combout\))) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( \REG1|DOUT\(6) ) + ( !\DECODER1|Equal6~0_combout\ $ (((\DECODER1|saida[3]~3_combout\) # (\DECODER1|saida[4]~4_combout\))) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011011000110110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_saida[4]~4_combout\,
	datab => \DECODER1|ALT_INV_Equal6~0_combout\,
	datac => \DECODER1|ALT_INV_saida[3]~3_combout\,
	datad => \REG1|ALT_INV_DOUT\(6),
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

-- Location: FF_X18_Y2_N52
\REG1|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~9_sumout\,
	asdata => \DECODER1|Equal6~0_wirecell_combout\,
	sload => \DECODER1|saida[4]~4_combout\,
	ena => \DECODER1|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(6));

-- Location: MLABCELL_X18_Y2_N54
\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( \REG1|DOUT\(7) ) + ( !\DECODER1|Equal6~0_combout\ $ (((\DECODER1|saida[4]~4_combout\) # (\DECODER1|saida[3]~3_combout\))) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011011000110110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_saida[3]~3_combout\,
	datab => \DECODER1|ALT_INV_Equal6~0_combout\,
	datac => \DECODER1|ALT_INV_saida[4]~4_combout\,
	datad => \REG1|ALT_INV_DOUT\(7),
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\);

-- Location: LABCELL_X19_Y2_N30
\ULA1|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Equal2~1_combout\ = ( \ROM1|memROM~11_combout\ & ( \DECODER1|Equal6~0_combout\ & ( (\ROM1|memROM~13_combout\ & (!\ROM1|memROM~10_combout\ & (\DECODER1|saida[4]~4_combout\ & \ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \DECODER1|ALT_INV_saida[4]~4_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \DECODER1|ALT_INV_Equal6~0_combout\,
	combout => \ULA1|Equal2~1_combout\);

-- Location: LABCELL_X17_Y2_N27
\DECODER1|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|saida~1_combout\ = ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~2_combout\ & ( (!\PC|DOUT[8]~DUPLICATE_q\ & (!\ROM1|memROM~0_combout\ & (!\ROM1|memROM~3_combout\ & \ROM1|memROM~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \DECODER1|saida~1_combout\);

-- Location: MLABCELL_X18_Y2_N24
\ULA1|Equal2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Equal2~3_combout\ = ( !\ULA1|Add0~1_sumout\ & ( !\ULA1|Add0~17_sumout\ & ( (!\DECODER1|saida[4]~4_combout\ & (!\ULA1|Add0~25_sumout\ & (!\ULA1|Add0~21_sumout\ & !\ULA1|Add0~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_saida[4]~4_combout\,
	datab => \ULA1|ALT_INV_Add0~25_sumout\,
	datac => \ULA1|ALT_INV_Add0~21_sumout\,
	datad => \ULA1|ALT_INV_Add0~29_sumout\,
	datae => \ULA1|ALT_INV_Add0~1_sumout\,
	dataf => \ULA1|ALT_INV_Add0~17_sumout\,
	combout => \ULA1|Equal2~3_combout\);

-- Location: MLABCELL_X18_Y2_N12
\REG_FLAG_EQ|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_FLAG_EQ|DOUT~0_combout\ = ( !\DECODER1|saida~1_combout\ & ( (((\REG_FLAG_EQ|DOUT~q\))) ) ) # ( \DECODER1|saida~1_combout\ & ( ((!\ULA1|Add0~13_sumout\ & (!\ULA1|Add0~9_sumout\ & (!\ULA1|Add0~5_sumout\ & \ULA1|Equal2~3_combout\)))) # 
-- (\ULA1|Equal2~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111001100110011001100001111000011111011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~13_sumout\,
	datab => \ULA1|ALT_INV_Equal2~1_combout\,
	datac => \ULA1|ALT_INV_Add0~9_sumout\,
	datad => \ULA1|ALT_INV_Add0~5_sumout\,
	datae => \DECODER1|ALT_INV_saida~1_combout\,
	dataf => \ULA1|ALT_INV_Equal2~3_combout\,
	datag => \REG_FLAG_EQ|ALT_INV_DOUT~q\,
	combout => \REG_FLAG_EQ|DOUT~0_combout\);

-- Location: FF_X18_Y2_N13
\REG_FLAG_EQ|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \REG_FLAG_EQ|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_FLAG_EQ|DOUT~q\);

-- Location: LABCELL_X19_Y2_N54
\MUXPC|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|Equal1~0_combout\ = ( \ROM1|memROM~8_combout\ & ( (\ROM1|memROM~7_combout\ & (!\ROM1|memROM~9_combout\ & ((!\ROM1|memROM~6_combout\) # (\REG_FLAG_EQ|DOUT~q\)))) ) ) # ( !\ROM1|memROM~8_combout\ & ( (!\ROM1|memROM~7_combout\ & 
-- (\ROM1|memROM~9_combout\ & \ROM1|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000110000000100000011000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_FLAG_EQ|ALT_INV_DOUT~q\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \MUXPC|Equal1~0_combout\);

-- Location: FF_X16_Y2_N40
\REG_ADDR_RET|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~13_sumout\,
	ena => \DECODER1|saida~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ADDR_RET|DOUT\(3));

-- Location: LABCELL_X17_Y2_N21
\MUXPC|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[3]~3_combout\ = ( \REG_ADDR_RET|DOUT\(3) & ( (!\PC|DOUT[3]~0_combout\ & (((\incrementaPC|Add0~13_sumout\)))) # (\PC|DOUT[3]~0_combout\ & ((!\MUXPC|Equal1~0_combout\) # ((!\ROM1|memROM~13_combout\)))) ) ) # ( !\REG_ADDR_RET|DOUT\(3) & ( 
-- (!\PC|DOUT[3]~0_combout\ & (((\incrementaPC|Add0~13_sumout\)))) # (\PC|DOUT[3]~0_combout\ & (\MUXPC|Equal1~0_combout\ & (!\ROM1|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010111010000100001011101001010100111111100101010011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[3]~0_combout\,
	datab => \MUXPC|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \incrementaPC|ALT_INV_Add0~13_sumout\,
	dataf => \REG_ADDR_RET|ALT_INV_DOUT\(3),
	combout => \MUXPC|saida_MUX[3]~3_combout\);

-- Location: FF_X17_Y2_N23
\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXPC|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

-- Location: LABCELL_X17_Y2_N45
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \PC|DOUT\(1) & ( (!\PC|DOUT[0]~DUPLICATE_q\ & ((!\PC|DOUT\(3)) # (!\PC|DOUT\(2)))) ) ) # ( !\PC|DOUT\(1) & ( (!\PC|DOUT\(3) & ((\PC|DOUT[0]~DUPLICATE_q\))) # (\PC|DOUT\(3) & ((!\PC|DOUT[0]~DUPLICATE_q\) # (\PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101111010101011010111111111010000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~2_combout\);

-- Location: LABCELL_X19_Y2_N45
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \ROM1|memROM~1_combout\ & ( (\ROM1|memROM~2_combout\ & !\PC|DOUT\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \PC|ALT_INV_DOUT\(8),
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~7_combout\);

-- Location: LABCELL_X19_Y2_N6
\PC|DOUT[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[3]~0_combout\ = ( \ROM1|memROM~8_combout\ & ( (!\ROM1|memROM~9_combout\ & (\ROM1|memROM~7_combout\ & ((!\ROM1|memROM~6_combout\) # (\REG_FLAG_EQ|DOUT~q\)))) # (\ROM1|memROM~9_combout\ & (!\ROM1|memROM~7_combout\ & ((!\ROM1|memROM~6_combout\)))) ) 
-- ) # ( !\ROM1|memROM~8_combout\ & ( (\ROM1|memROM~9_combout\ & (!\ROM1|memROM~7_combout\ & \ROM1|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010001100110000000100110011000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \REG_FLAG_EQ|ALT_INV_DOUT~q\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \PC|DOUT[3]~0_combout\);

-- Location: LABCELL_X16_Y2_N45
\incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~29_sumout\ = SUM(( \PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~34\ ))
-- \incrementaPC|Add0~30\ = CARRY(( \PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~34\,
	sumout => \incrementaPC|Add0~29_sumout\,
	cout => \incrementaPC|Add0~30\);

-- Location: FF_X16_Y2_N46
\REG_ADDR_RET|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~29_sumout\,
	ena => \DECODER1|saida~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ADDR_RET|DOUT\(5));

-- Location: LABCELL_X16_Y2_N18
\MUXPC|saida_MUX[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[5]~7_combout\ = ( \REG_ADDR_RET|DOUT\(5) & ( ((!\PC|DOUT[3]~0_combout\ & \incrementaPC|Add0~29_sumout\)) # (\DECODER1|Equal0~0_combout\) ) ) # ( !\REG_ADDR_RET|DOUT\(5) & ( (!\PC|DOUT[3]~0_combout\ & \incrementaPC|Add0~29_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000001111110011110000111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[3]~0_combout\,
	datac => \DECODER1|ALT_INV_Equal0~0_combout\,
	datad => \incrementaPC|ALT_INV_Add0~29_sumout\,
	dataf => \REG_ADDR_RET|ALT_INV_DOUT\(5),
	combout => \MUXPC|saida_MUX[5]~7_combout\);

-- Location: FF_X16_Y2_N19
\PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXPC|saida_MUX[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[5]~DUPLICATE_q\);

-- Location: FF_X16_Y2_N50
\REG_ADDR_RET|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~25_sumout\,
	ena => \DECODER1|saida~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ADDR_RET|DOUT\(6));

-- Location: LABCELL_X16_Y2_N15
\MUXPC|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[6]~6_combout\ = ( \REG_ADDR_RET|DOUT\(6) & ( ((\incrementaPC|Add0~25_sumout\ & !\PC|DOUT[3]~0_combout\)) # (\DECODER1|Equal0~0_combout\) ) ) # ( !\REG_ADDR_RET|DOUT\(6) & ( (\incrementaPC|Add0~25_sumout\ & !\PC|DOUT[3]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000111111110101000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \incrementaPC|ALT_INV_Add0~25_sumout\,
	datac => \PC|ALT_INV_DOUT[3]~0_combout\,
	datad => \DECODER1|ALT_INV_Equal0~0_combout\,
	dataf => \REG_ADDR_RET|ALT_INV_DOUT\(6),
	combout => \MUXPC|saida_MUX[6]~6_combout\);

-- Location: FF_X16_Y2_N17
\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXPC|saida_MUX[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

-- Location: LABCELL_X16_Y2_N24
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( !\PC|DOUT[4]~DUPLICATE_q\ & ( !\PC|DOUT\(8) & ( (!\PC|DOUT\(6) & (!\PC|DOUT\(5) & !\PC|DOUT\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(8),
	combout => \ROM1|memROM~5_combout\);

-- Location: LABCELL_X17_Y2_N54
\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \ROM1|memROM~9_combout\);

-- Location: FF_X18_Y2_N34
\REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~17_sumout\,
	asdata => \MUX1|saida_MUX[0]~0_combout\,
	sload => \DECODER1|saida[4]~4_combout\,
	ena => \DECODER1|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(0));

-- Location: LABCELL_X19_Y2_N39
\DECODER1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|saida[0]~0_combout\ = ( !\ROM1|memROM~3_combout\ & ( \ROM1|memROM~0_combout\ & ( (!\PC|DOUT\(8) & (\ROM1|memROM~2_combout\ & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \DECODER1|saida[0]~0_combout\);

-- Location: LABCELL_X19_Y2_N18
\DECODER1|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|saida[1]~2_combout\ = ( \ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~5_combout\ & (\DECODER1|Equal10~0_combout\)) # (\ROM1|memROM~5_combout\ & ((\DECODER1|saida~1_combout\))) ) ) # ( !\ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~5_combout\ & 
-- (\DECODER1|Equal10~0_combout\)) # (\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~4_combout\ & (\DECODER1|Equal10~0_combout\)) # (\ROM1|memROM~4_combout\ & ((\DECODER1|saida~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010111010101000101011101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal10~0_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \DECODER1|ALT_INV_saida~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \DECODER1|saida[1]~2_combout\);

-- Location: LABCELL_X19_Y2_N57
\DECODER1|saida~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|saida~6_combout\ = ( \ROM1|memROM~8_combout\ & ( (\REG_FLAG_EQ|DOUT~q\ & (\ROM1|memROM~7_combout\ & (!\ROM1|memROM~9_combout\ & \ROM1|memROM~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_FLAG_EQ|ALT_INV_DOUT~q\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \DECODER1|saida~6_combout\);

-- Location: LABCELL_X19_Y2_N36
\DECODER1|saida[10]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|saida[10]~8_combout\ = ( !\ROM1|memROM~0_combout\ & ( \ROM1|memROM~3_combout\ & ( (!\PC|DOUT\(8) & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~4_combout\ & \ROM1|memROM~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \DECODER1|saida[10]~8_combout\);

-- Location: LABCELL_X19_Y2_N42
\ULA1|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Equal2~0_combout\ = ( !\ULA1|Add0~21_sumout\ & ( (!\ULA1|Add0~25_sumout\ & (!\ULA1|Add0~29_sumout\ & (!\DECODER1|saida[4]~4_combout\ & !\ULA1|Add0~17_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~25_sumout\,
	datab => \ULA1|ALT_INV_Add0~29_sumout\,
	datac => \DECODER1|ALT_INV_saida[4]~4_combout\,
	datad => \ULA1|ALT_INV_Add0~17_sumout\,
	dataf => \ULA1|ALT_INV_Add0~21_sumout\,
	combout => \ULA1|Equal2~0_combout\);

-- Location: LABCELL_X19_Y2_N0
\ULA1|Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Equal2~2_combout\ = ( \ULA1|Add0~13_sumout\ & ( \ULA1|Equal2~1_combout\ ) ) # ( !\ULA1|Add0~13_sumout\ & ( \ULA1|Equal2~1_combout\ ) ) # ( !\ULA1|Add0~13_sumout\ & ( !\ULA1|Equal2~1_combout\ & ( (!\ULA1|Add0~9_sumout\ & (\ULA1|Equal2~0_combout\ & 
-- (!\ULA1|Add0~1_sumout\ & !\ULA1|Add0~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~9_sumout\,
	datab => \ULA1|ALT_INV_Equal2~0_combout\,
	datac => \ULA1|ALT_INV_Add0~1_sumout\,
	datad => \ULA1|ALT_INV_Add0~5_sumout\,
	datae => \ULA1|ALT_INV_Add0~13_sumout\,
	dataf => \ULA1|ALT_INV_Equal2~1_combout\,
	combout => \ULA1|Equal2~2_combout\);

-- Location: IOIBUF_X50_Y0_N18
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: IOIBUF_X48_Y45_N35
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X40_Y45_N41
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X0_Y20_N21
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X51_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X38_Y45_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X38_Y0_N18
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X51_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X20_Y45_N35
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X16_Y45_N58
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X54_Y21_N38
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X50_Y45_N35
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X10_Y45_N1
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X51_Y0_N35
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LABCELL_X5_Y11_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


