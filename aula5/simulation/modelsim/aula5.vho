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

-- DATE "04/14/2022 17:09:16"

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
	SAIDARAM : OUT std_logic_vector(7 DOWNTO 0);
	LEDB : OUT std_logic_vector(11 DOWNTO 0);
	LED_SAIDAULA : OUT std_logic_vector(7 DOWNTO 0);
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
-- CLOCK_50	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDARAM[0]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDARAM[1]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDARAM[2]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDARAM[3]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDARAM[4]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDARAM[5]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDARAM[6]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDARAM[7]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDB[0]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDB[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDB[2]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDB[3]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDB[4]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDB[5]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDB[6]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDB[7]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDB[8]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDB[9]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDB[10]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDB[11]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_SAIDAULA[0]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_SAIDAULA[1]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_SAIDAULA[2]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_SAIDAULA[3]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_SAIDAULA[4]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_SAIDAULA[5]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_SAIDAULA[6]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_SAIDAULA[7]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDIMED[0]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDIMED[1]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDIMED[2]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDIMED[3]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDIMED[4]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDIMED[5]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDIMED[6]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDIMED[7]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDIMED[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDFLAGEQ	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDFLAG0	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_OUTMUX1[0]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_OUTMUX1[1]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_OUTMUX1[2]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_OUTMUX1[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_OUTMUX1[4]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_OUTMUX1[5]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_OUTMUX1[6]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_OUTMUX1[7]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_OP_ULAMUX[0]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_OP_ULAMUX[1]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_SEL_MUX1	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_SAIDARAM : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDB : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_LED_SAIDAULA : std_logic_vector(7 DOWNTO 0);
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
SIGNAL \incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~2\ : std_logic;
SIGNAL \incrementaPC|Add0~6\ : std_logic;
SIGNAL \incrementaPC|Add0~10\ : std_logic;
SIGNAL \incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \ROM1|memROM~16_combout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \DECODER1|selMuxPC~0_combout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \DECODER1|Equal9~1_combout\ : std_logic;
SIGNAL \DECODER1|Equal9~2_combout\ : std_logic;
SIGNAL \DECODER1|Operacao_ULA~0_combout\ : std_logic;
SIGNAL \DECODER1|Habilita_A~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \ULA1|Add0~34_cout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[3]~0_combout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|Equal2~1_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \ULA1|Equal2~0_combout\ : std_logic;
SIGNAL \DECODER1|Equal9~2_wirecell_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|Equal2~2_combout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \REG_FLAG_EQ|DOUT~0_combout\ : std_logic;
SIGNAL \REG_FLAG_EQ|DOUT~q\ : std_logic;
SIGNAL \incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \ROM1|memROM~15_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \DECODER1|Equal9~3_combout\ : std_logic;
SIGNAL \PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~14\ : std_logic;
SIGNAL \incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[4]~8_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~34\ : std_logic;
SIGNAL \incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[5]~7_combout\ : std_logic;
SIGNAL \PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~30\ : std_logic;
SIGNAL \incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~26\ : std_logic;
SIGNAL \incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[7]~5_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~22\ : std_logic;
SIGNAL \incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[8]~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \DECODER1|Equal9~0_combout\ : std_logic;
SIGNAL \DECODER1|Equal9~4_combout\ : std_logic;
SIGNAL \ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \ULA1|Equal2~3_combout\ : std_logic;
SIGNAL \DECODER1|saida\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[3]~0_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_selMuxPC~0_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[7]~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_Equal9~3_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_saida\ : std_logic_vector(7 DOWNTO 7);
SIGNAL \REG_FLAG_EQ|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \DECODER1|ALT_INV_Equal9~2_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_Operacao_ULA~0_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_Habilita_A~0_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_Equal9~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
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

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
SAIDARAM <= ww_SAIDARAM;
LEDB <= ww_LEDB;
LED_SAIDAULA <= ww_LED_SAIDAULA;
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
\PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \PC|DOUT[5]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \PC|DOUT[6]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \PC|DOUT[8]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \PC|DOUT[3]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \PC|DOUT[2]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \PC|DOUT[1]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \PC|DOUT[0]~DUPLICATE_q\;
\MUX1|ALT_INV_saida_MUX[0]~1_combout\ <= NOT \MUX1|saida_MUX[0]~1_combout\;
\MUX1|ALT_INV_saida_MUX[3]~0_combout\ <= NOT \MUX1|saida_MUX[3]~0_combout\;
\DECODER1|ALT_INV_selMuxPC~0_combout\ <= NOT \DECODER1|selMuxPC~0_combout\;
\ULA1|ALT_INV_Equal2~2_combout\ <= NOT \ULA1|Equal2~2_combout\;
\ULA1|ALT_INV_Equal2~1_combout\ <= NOT \ULA1|Equal2~1_combout\;
\ULA1|ALT_INV_Equal2~0_combout\ <= NOT \ULA1|Equal2~0_combout\;
\ROM1|ALT_INV_memROM~16_combout\ <= NOT \ROM1|memROM~16_combout\;
\ROM1|ALT_INV_memROM~15_combout\ <= NOT \ROM1|memROM~15_combout\;
\ROM1|ALT_INV_memROM~14_combout\ <= NOT \ROM1|memROM~14_combout\;
\ROM1|ALT_INV_memROM~13_combout\ <= NOT \ROM1|memROM~13_combout\;
\ULA1|ALT_INV_saida[7]~7_combout\ <= NOT \ULA1|saida[7]~7_combout\;
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\DECODER1|ALT_INV_Equal9~3_combout\ <= NOT \DECODER1|Equal9~3_combout\;
\DECODER1|ALT_INV_saida\(7) <= NOT \DECODER1|saida\(7);
\REG_FLAG_EQ|ALT_INV_DOUT~q\ <= NOT \REG_FLAG_EQ|DOUT~q\;
\DECODER1|ALT_INV_Equal9~2_combout\ <= NOT \DECODER1|Equal9~2_combout\;
\DECODER1|ALT_INV_Operacao_ULA~0_combout\ <= NOT \DECODER1|Operacao_ULA~0_combout\;
\DECODER1|ALT_INV_Habilita_A~0_combout\ <= NOT \DECODER1|Habilita_A~0_combout\;
\DECODER1|ALT_INV_Equal9~1_combout\ <= NOT \DECODER1|Equal9~1_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
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

-- Location: IOOBUF_X0_Y20_N22
\SAIDARAM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_SAIDARAM(0));

-- Location: IOOBUF_X29_Y0_N36
\SAIDARAM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_SAIDARAM(1));

-- Location: IOOBUF_X43_Y0_N53
\SAIDARAM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_SAIDARAM(2));

-- Location: IOOBUF_X52_Y45_N2
\SAIDARAM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_SAIDARAM(3));

-- Location: IOOBUF_X54_Y20_N22
\SAIDARAM[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_SAIDARAM(4));

-- Location: IOOBUF_X32_Y45_N93
\SAIDARAM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_SAIDARAM(5));

-- Location: IOOBUF_X44_Y0_N2
\SAIDARAM[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_SAIDARAM(6));

-- Location: IOOBUF_X11_Y0_N2
\SAIDARAM[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_SAIDARAM(7));

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

-- Location: IOOBUF_X14_Y0_N19
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

-- Location: IOOBUF_X25_Y0_N36
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

-- Location: IOOBUF_X25_Y0_N53
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

-- Location: IOOBUF_X25_Y0_N19
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

-- Location: IOOBUF_X23_Y0_N59
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

-- Location: IOOBUF_X23_Y0_N76
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

-- Location: IOOBUF_X23_Y0_N42
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

-- Location: IOOBUF_X12_Y0_N19
\LEDB[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Equal9~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDB(0));

-- Location: IOOBUF_X14_Y0_N2
\LEDB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|saida\(1),
	devoe => ww_devoe,
	o => ww_LEDB(1));

-- Location: IOOBUF_X18_Y0_N19
\LEDB[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Equal9~1_combout\,
	devoe => ww_devoe,
	o => ww_LEDB(2));

-- Location: IOOBUF_X40_Y0_N76
\LEDB[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_LEDB(3));

-- Location: IOOBUF_X19_Y0_N53
\LEDB[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Operacao_ULA~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDB(4));

-- Location: IOOBUF_X22_Y0_N19
\LEDB[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|saida\(5),
	devoe => ww_devoe,
	o => ww_LEDB(5));

-- Location: IOOBUF_X36_Y0_N19
\LEDB[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Equal9~2_combout\,
	devoe => ww_devoe,
	o => ww_LEDB(6));

-- Location: IOOBUF_X22_Y0_N53
\LEDB[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|saida\(7),
	devoe => ww_devoe,
	o => ww_LEDB(7));

-- Location: IOOBUF_X51_Y0_N36
\LEDB[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDB(8));

-- Location: IOOBUF_X22_Y0_N2
\LEDB[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Equal9~3_combout\,
	devoe => ww_devoe,
	o => ww_LEDB(9));

-- Location: IOOBUF_X11_Y0_N36
\LEDB[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Equal9~4_combout\,
	devoe => ww_devoe,
	o => ww_LEDB(10));

-- Location: IOOBUF_X10_Y0_N42
\LEDB[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDB(11));

-- Location: IOOBUF_X14_Y0_N36
\LED_SAIDAULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_LED_SAIDAULA(0));

-- Location: IOOBUF_X12_Y0_N2
\LED_SAIDAULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_LED_SAIDAULA(1));

-- Location: IOOBUF_X14_Y0_N53
\LED_SAIDAULA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_LED_SAIDAULA(2));

-- Location: IOOBUF_X18_Y45_N53
\LED_SAIDAULA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_LED_SAIDAULA(3));

-- Location: IOOBUF_X16_Y0_N42
\LED_SAIDAULA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_LED_SAIDAULA(4));

-- Location: IOOBUF_X12_Y0_N53
\LED_SAIDAULA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_LED_SAIDAULA(5));

-- Location: IOOBUF_X12_Y0_N36
\LED_SAIDAULA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_LED_SAIDAULA(6));

-- Location: IOOBUF_X25_Y0_N2
\LED_SAIDAULA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_LED_SAIDAULA(7));

-- Location: IOOBUF_X19_Y0_N2
\LEDIMED[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~13_combout\,
	devoe => ww_devoe,
	o => ww_LEDIMED(0));

-- Location: IOOBUF_X24_Y0_N36
\LEDIMED[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~14_combout\,
	devoe => ww_devoe,
	o => ww_LEDIMED(1));

-- Location: IOOBUF_X24_Y0_N2
\LEDIMED[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~15_combout\,
	devoe => ww_devoe,
	o => ww_LEDIMED(2));

-- Location: IOOBUF_X16_Y0_N93
\LEDIMED[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~16_combout\,
	devoe => ww_devoe,
	o => ww_LEDIMED(3));

-- Location: IOOBUF_X22_Y45_N19
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

-- Location: IOOBUF_X50_Y45_N19
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

-- Location: IOOBUF_X54_Y17_N56
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

-- Location: IOOBUF_X40_Y45_N42
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

-- Location: IOOBUF_X50_Y0_N36
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

-- Location: IOOBUF_X19_Y0_N36
\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(0));

-- Location: IOOBUF_X18_Y0_N53
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

-- Location: IOOBUF_X19_Y0_N19
\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(2),
	devoe => ww_devoe,
	o => ww_PC_OUT(2));

-- Location: IOOBUF_X18_Y0_N2
\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(3));

-- Location: IOOBUF_X29_Y0_N2
\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(4),
	devoe => ww_devoe,
	o => ww_PC_OUT(4));

-- Location: IOOBUF_X24_Y0_N19
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

-- Location: IOOBUF_X29_Y0_N19
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

-- Location: IOOBUF_X34_Y0_N19
\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(7),
	devoe => ww_devoe,
	o => ww_PC_OUT(7));

-- Location: IOOBUF_X24_Y0_N53
\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[8]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(8));

-- Location: IOOBUF_X22_Y0_N36
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

-- Location: IOOBUF_X16_Y0_N76
\LEDFLAG0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Equal2~3_combout\,
	devoe => ww_devoe,
	o => ww_LEDFLAG0);

-- Location: IOOBUF_X16_Y0_N59
\LED_OUTMUX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_LED_OUTMUX1(0));

-- Location: IOOBUF_X18_Y45_N2
\LED_OUTMUX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[3]~0_combout\,
	devoe => ww_devoe,
	o => ww_LED_OUTMUX1(1));

-- Location: IOOBUF_X48_Y45_N2
\LED_OUTMUX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_LED_OUTMUX1(2));

-- Location: IOOBUF_X18_Y45_N36
\LED_OUTMUX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[3]~0_combout\,
	devoe => ww_devoe,
	o => ww_LED_OUTMUX1(3));

-- Location: IOOBUF_X38_Y0_N53
\LED_OUTMUX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|ALT_INV_Equal9~2_combout\,
	devoe => ww_devoe,
	o => ww_LED_OUTMUX1(4));

-- Location: IOOBUF_X38_Y0_N2
\LED_OUTMUX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|ALT_INV_Equal9~2_combout\,
	devoe => ww_devoe,
	o => ww_LED_OUTMUX1(5));

-- Location: IOOBUF_X38_Y0_N36
\LED_OUTMUX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|ALT_INV_Equal9~2_combout\,
	devoe => ww_devoe,
	o => ww_LED_OUTMUX1(6));

-- Location: IOOBUF_X33_Y0_N76
\LED_OUTMUX1[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|ALT_INV_Equal9~2_combout\,
	devoe => ww_devoe,
	o => ww_LED_OUTMUX1(7));

-- Location: IOOBUF_X8_Y45_N42
\LED_OP_ULAMUX[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_LED_OP_ULAMUX(0));

-- Location: IOOBUF_X18_Y0_N36
\LED_OP_ULAMUX[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Operacao_ULA~0_combout\,
	devoe => ww_devoe,
	o => ww_LED_OP_ULAMUX(1));

-- Location: IOOBUF_X38_Y0_N19
\LED_SEL_MUX1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Equal9~2_combout\,
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

-- Location: FF_X19_Y3_N20
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

-- Location: LABCELL_X21_Y3_N30
\incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~1_sumout\ = SUM(( \PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \incrementaPC|Add0~2\ = CARRY(( \PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \incrementaPC|Add0~1_sumout\,
	cout => \incrementaPC|Add0~2\);

-- Location: FF_X19_Y3_N44
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

-- Location: LABCELL_X21_Y3_N33
\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \PC|DOUT\(1) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))
-- \incrementaPC|Add0~6\ = CARRY(( \PC|DOUT\(1) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	cin => \incrementaPC|Add0~2\,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

-- Location: LABCELL_X21_Y3_N36
\incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~9_sumout\ = SUM(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))
-- \incrementaPC|Add0~10\ = CARRY(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => \incrementaPC|Add0~6\,
	sumout => \incrementaPC|Add0~9_sumout\,
	cout => \incrementaPC|Add0~10\);

-- Location: LABCELL_X21_Y3_N39
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

-- Location: FF_X19_Y3_N47
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

-- Location: LABCELL_X19_Y3_N51
\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = ( \PC|DOUT\(3) & ( (\PC|DOUT\(2) & (!\PC|DOUT[1]~DUPLICATE_q\ & \PC|DOUT[0]~DUPLICATE_q\)) ) ) # ( !\PC|DOUT\(3) & ( (!\PC|DOUT\(2) & (\PC|DOUT[1]~DUPLICATE_q\ & !\PC|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~12_combout\);

-- Location: LABCELL_X19_Y3_N54
\ROM1|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~16_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~16_combout\);

-- Location: LABCELL_X19_Y3_N42
\MUXPC|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[3]~3_combout\ = ( \DECODER1|selMuxPC~0_combout\ & ( (!\DECODER1|Equal9~3_combout\ & \ROM1|memROM~16_combout\) ) ) # ( !\DECODER1|selMuxPC~0_combout\ & ( (!\DECODER1|Equal9~3_combout\ & ((!\DECODER1|saida\(7) & 
-- (\incrementaPC|Add0~13_sumout\)) # (\DECODER1|saida\(7) & ((\ROM1|memROM~16_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_saida\(7),
	datab => \DECODER1|ALT_INV_Equal9~3_combout\,
	datac => \incrementaPC|ALT_INV_Add0~13_sumout\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \DECODER1|ALT_INV_selMuxPC~0_combout\,
	combout => \MUXPC|saida_MUX[3]~3_combout\);

-- Location: FF_X19_Y3_N43
\PC|DOUT[3]~DUPLICATE\ : dffeas
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
	q => \PC|DOUT[3]~DUPLICATE_q\);

-- Location: FF_X19_Y3_N4
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

-- Location: LABCELL_X20_Y3_N0
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \PC|DOUT\(0) & ( (!\PC|DOUT\(1) & (!\PC|DOUT[2]~DUPLICATE_q\ $ (\PC|DOUT[3]~DUPLICATE_q\))) ) ) # ( !\PC|DOUT\(0) & ( (!\PC|DOUT\(1) & ((\PC|DOUT[3]~DUPLICATE_q\))) # (\PC|DOUT\(1) & (!\PC|DOUT[2]~DUPLICATE_q\ & 
-- !\PC|DOUT[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011110000000011001111000011000000001100001100000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(1),
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~7_combout\);

-- Location: LABCELL_X19_Y3_N21
\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~8_combout\);

-- Location: LABCELL_X19_Y3_N12
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( \PC|DOUT\(3) & ( (!\PC|DOUT\(2) & (\PC|DOUT[0]~DUPLICATE_q\ & \PC|DOUT[1]~DUPLICATE_q\)) ) ) # ( !\PC|DOUT\(3) & ( (\PC|DOUT\(2) & (\PC|DOUT[0]~DUPLICATE_q\ & \PC|DOUT[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~3_combout\);

-- Location: LABCELL_X19_Y3_N39
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \ROM1|memROM~3_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~4_combout\);

-- Location: LABCELL_X19_Y3_N15
\DECODER1|selMuxPC~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|selMuxPC~0_combout\ = ( \ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~8_combout\ & (\ROM1|memROM~4_combout\ & !\ROM1|memROM~2_combout\)) ) ) # ( !\ROM1|memROM~6_combout\ & ( (\ROM1|memROM~8_combout\ & (!\ROM1|memROM~4_combout\ & 
-- \ROM1|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \DECODER1|selMuxPC~0_combout\);

-- Location: LABCELL_X19_Y3_N3
\MUXPC|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[0]~0_combout\ = ( !\DECODER1|Equal9~3_combout\ & ( (!\DECODER1|selMuxPC~0_combout\ & ((!\DECODER1|saida\(7) & (\incrementaPC|Add0~1_sumout\)) # (\DECODER1|saida\(7) & ((\ROM1|memROM~13_combout\))))) # (\DECODER1|selMuxPC~0_combout\ & 
-- (((\ROM1|memROM~13_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100110011010100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \incrementaPC|ALT_INV_Add0~1_sumout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \DECODER1|ALT_INV_selMuxPC~0_combout\,
	datad => \DECODER1|ALT_INV_saida\(7),
	dataf => \DECODER1|ALT_INV_Equal9~3_combout\,
	combout => \MUXPC|saida_MUX[0]~0_combout\);

-- Location: FF_X19_Y3_N5
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

-- Location: LABCELL_X19_Y3_N30
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \PC|DOUT\(3) & ( (!\PC|DOUT[0]~DUPLICATE_q\ & (\PC|DOUT\(2) & !\PC|DOUT[1]~DUPLICATE_q\)) ) ) # ( !\PC|DOUT\(3) & ( (!\PC|DOUT[0]~DUPLICATE_q\ & \PC|DOUT[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~5_combout\);

-- Location: LABCELL_X19_Y3_N24
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \ROM1|memROM~6_combout\);

-- Location: LABCELL_X19_Y3_N48
\DECODER1|Equal9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Equal9~1_combout\ = ( \ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~8_combout\ & (!\ROM1|memROM~6_combout\ & !\ROM1|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DECODER1|Equal9~1_combout\);

-- Location: LABCELL_X20_Y3_N6
\DECODER1|Equal9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Equal9~2_combout\ = ( !\ROM1|memROM~5_combout\ & ( (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~7_combout\ & \ROM1|memROM~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \DECODER1|Equal9~2_combout\);

-- Location: LABCELL_X19_Y3_N33
\DECODER1|Operacao_ULA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Operacao_ULA~0_combout\ = ( \ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~8_combout\) # ((\ROM1|memROM~2_combout\) # (\ROM1|memROM~4_combout\)) ) ) # ( !\ROM1|memROM~6_combout\ & ( ((!\ROM1|memROM~4_combout\) # (\ROM1|memROM~2_combout\)) # 
-- (\ROM1|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111111111111100111111111111001111111111111100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \DECODER1|Operacao_ULA~0_combout\);

-- Location: LABCELL_X19_Y3_N6
\DECODER1|Habilita_A~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Habilita_A~0_combout\ = ( !\ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~2_combout\ & ((\ROM1|memROM~6_combout\) # (\ROM1|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000000010111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DECODER1|Habilita_A~0_combout\);

-- Location: LABCELL_X19_Y3_N9
\DECODER1|saida[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|saida\(5) = ( \DECODER1|Habilita_A~0_combout\ ) # ( !\DECODER1|Habilita_A~0_combout\ & ( \DECODER1|Equal9~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DECODER1|ALT_INV_Equal9~2_combout\,
	dataf => \DECODER1|ALT_INV_Habilita_A~0_combout\,
	combout => \DECODER1|saida\(5));

-- Location: FF_X20_Y3_N40
\REG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~9_sumout\,
	asdata => VCC,
	sload => \DECODER1|Operacao_ULA~0_combout\,
	ena => \DECODER1|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(2));

-- Location: LABCELL_X21_Y3_N9
\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( !\PC|DOUT\(1) & ( (\PC|DOUT[3]~DUPLICATE_q\ & (!\PC|DOUT[0]~DUPLICATE_q\ & \PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~10_combout\);

-- Location: LABCELL_X21_Y3_N21
\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \ROM1|memROM~14_combout\);

-- Location: LABCELL_X20_Y3_N30
\ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \ULA1|Add0~34_cout\);

-- Location: LABCELL_X20_Y3_N33
\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( \REG1|DOUT\(0) ) + ( (!\ROM1|memROM~13_combout\ & \DECODER1|Equal9~2_combout\) ) + ( \ULA1|Add0~34_cout\ ))
-- \ULA1|Add0~2\ = CARRY(( \REG1|DOUT\(0) ) + ( (!\ROM1|memROM~13_combout\ & \DECODER1|Equal9~2_combout\) ) + ( \ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011111010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \DECODER1|ALT_INV_Equal9~2_combout\,
	datad => \REG1|ALT_INV_DOUT\(0),
	cin => \ULA1|Add0~34_cout\,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

-- Location: LABCELL_X20_Y3_N36
\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( \REG1|DOUT\(1) ) + ( (\DECODER1|Equal9~2_combout\ & !\ROM1|memROM~14_combout\) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( \REG1|DOUT\(1) ) + ( (\DECODER1|Equal9~2_combout\ & !\ROM1|memROM~14_combout\) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011111100111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DECODER1|ALT_INV_Equal9~2_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \REG1|ALT_INV_DOUT\(1),
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

-- Location: MLABCELL_X18_Y3_N33
\MUX1|saida_MUX[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[3]~0_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\PC|DOUT[0]~DUPLICATE_q\ & (((!\PC|DOUT[1]~DUPLICATE_q\) # (!\PC|DOUT[3]~DUPLICATE_q\)) # (\PC|DOUT\(2)))) # (\PC|DOUT[0]~DUPLICATE_q\ & ((!\PC|DOUT\(2)) # ((\PC|DOUT[3]~DUPLICATE_q\) # 
-- (\PC|DOUT[1]~DUPLICATE_q\)))) ) ) # ( !\ROM1|memROM~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111101111111101111110111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \MUX1|saida_MUX[3]~0_combout\);

-- Location: FF_X20_Y3_N38
\REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~5_sumout\,
	asdata => \MUX1|saida_MUX[3]~0_combout\,
	sload => \DECODER1|Operacao_ULA~0_combout\,
	ena => \DECODER1|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(1));

-- Location: LABCELL_X20_Y3_N39
\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( \REG1|DOUT\(2) ) + ( (\DECODER1|Equal9~2_combout\ & !\ROM1|memROM~15_combout\) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( \REG1|DOUT\(2) ) + ( (\DECODER1|Equal9~2_combout\ & !\ROM1|memROM~15_combout\) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011111100111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DECODER1|ALT_INV_Equal9~2_combout\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \REG1|ALT_INV_DOUT\(2),
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

-- Location: FF_X20_Y3_N44
\REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~13_sumout\,
	asdata => \MUX1|saida_MUX[3]~0_combout\,
	sload => \DECODER1|Operacao_ULA~0_combout\,
	ena => \DECODER1|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(3));

-- Location: LABCELL_X20_Y3_N42
\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( \REG1|DOUT\(3) ) + ( (\DECODER1|Equal9~2_combout\ & !\ROM1|memROM~16_combout\) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( \REG1|DOUT\(3) ) + ( (\DECODER1|Equal9~2_combout\ & !\ROM1|memROM~16_combout\) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011111100111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DECODER1|ALT_INV_Equal9~2_combout\,
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \REG1|ALT_INV_DOUT\(3),
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

-- Location: LABCELL_X20_Y3_N9
\ULA1|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Equal2~1_combout\ = ( !\ULA1|Add0~13_sumout\ & ( (!\ULA1|Add0~9_sumout\ & !\DECODER1|Operacao_ULA~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA1|ALT_INV_Add0~9_sumout\,
	datad => \DECODER1|ALT_INV_Operacao_ULA~0_combout\,
	dataf => \ULA1|ALT_INV_Add0~13_sumout\,
	combout => \ULA1|Equal2~1_combout\);

-- Location: MLABCELL_X18_Y3_N9
\MUX1|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[0]~1_combout\ = ( \ROM1|memROM~1_combout\ & ( ((!\PC|DOUT[3]~DUPLICATE_q\) # ((!\PC|DOUT[1]~DUPLICATE_q\) # (\PC|DOUT\(2)))) # (\PC|DOUT[0]~DUPLICATE_q\) ) ) # ( !\ROM1|memROM~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111110111111111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \MUX1|saida_MUX[0]~1_combout\);

-- Location: LABCELL_X20_Y3_N18
\ULA1|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Equal2~0_combout\ = ( \ULA1|Add0~1_sumout\ & ( (!\MUX1|saida_MUX[3]~0_combout\ & (\DECODER1|Operacao_ULA~0_combout\ & !\MUX1|saida_MUX[0]~1_combout\)) ) ) # ( !\ULA1|Add0~1_sumout\ & ( (!\DECODER1|Operacao_ULA~0_combout\ & 
-- (((!\ULA1|Add0~5_sumout\)))) # (\DECODER1|Operacao_ULA~0_combout\ & (!\MUX1|saida_MUX[3]~0_combout\ & (!\MUX1|saida_MUX[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110000100000111011000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[3]~0_combout\,
	datab => \DECODER1|ALT_INV_Operacao_ULA~0_combout\,
	datac => \MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	datad => \ULA1|ALT_INV_Add0~5_sumout\,
	dataf => \ULA1|ALT_INV_Add0~1_sumout\,
	combout => \ULA1|Equal2~0_combout\);

-- Location: MLABCELL_X18_Y3_N42
\DECODER1|Equal9~2_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Equal9~2_wirecell_combout\ = ( !\DECODER1|Equal9~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DECODER1|ALT_INV_Equal9~2_combout\,
	combout => \DECODER1|Equal9~2_wirecell_combout\);

-- Location: FF_X20_Y3_N49
\REG1|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~21_sumout\,
	asdata => \DECODER1|Equal9~2_wirecell_combout\,
	sload => \DECODER1|Operacao_ULA~0_combout\,
	ena => \DECODER1|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(5));

-- Location: LABCELL_X20_Y3_N45
\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( \REG1|DOUT\(4) ) + ( \DECODER1|Equal9~2_combout\ ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~18\ = CARRY(( \REG1|DOUT\(4) ) + ( \DECODER1|Equal9~2_combout\ ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DECODER1|ALT_INV_Equal9~2_combout\,
	datad => \REG1|ALT_INV_DOUT\(4),
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

-- Location: FF_X20_Y3_N47
\REG1|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~17_sumout\,
	asdata => \DECODER1|Equal9~2_wirecell_combout\,
	sload => \DECODER1|Operacao_ULA~0_combout\,
	ena => \DECODER1|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(4));

-- Location: LABCELL_X20_Y3_N48
\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( \REG1|DOUT\(5) ) + ( \DECODER1|Equal9~2_combout\ ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( \REG1|DOUT\(5) ) + ( \DECODER1|Equal9~2_combout\ ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DECODER1|ALT_INV_Equal9~2_combout\,
	datad => \REG1|ALT_INV_DOUT\(5),
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

-- Location: FF_X20_Y3_N52
\REG1|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~25_sumout\,
	asdata => \DECODER1|Equal9~2_wirecell_combout\,
	sload => \DECODER1|Operacao_ULA~0_combout\,
	ena => \DECODER1|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(6));

-- Location: LABCELL_X20_Y3_N51
\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( \REG1|DOUT\(6) ) + ( \DECODER1|Equal9~2_combout\ ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( \REG1|DOUT\(6) ) + ( \DECODER1|Equal9~2_combout\ ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DECODER1|ALT_INV_Equal9~2_combout\,
	datad => \REG1|ALT_INV_DOUT\(6),
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

-- Location: LABCELL_X20_Y3_N12
\ULA1|Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Equal2~2_combout\ = ( \ULA1|Add0~25_sumout\ & ( (\DECODER1|Equal9~2_combout\ & \DECODER1|Operacao_ULA~0_combout\) ) ) # ( !\ULA1|Add0~25_sumout\ & ( (!\DECODER1|Operacao_ULA~0_combout\ & (((!\ULA1|Add0~21_sumout\ & !\ULA1|Add0~17_sumout\)))) # 
-- (\DECODER1|Operacao_ULA~0_combout\ & (\DECODER1|Equal9~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000100010001110100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal9~2_combout\,
	datab => \DECODER1|ALT_INV_Operacao_ULA~0_combout\,
	datac => \ULA1|ALT_INV_Add0~21_sumout\,
	datad => \ULA1|ALT_INV_Add0~17_sumout\,
	dataf => \ULA1|ALT_INV_Add0~25_sumout\,
	combout => \ULA1|Equal2~2_combout\);

-- Location: FF_X20_Y3_N56
\REG1|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~29_sumout\,
	asdata => \DECODER1|Equal9~2_wirecell_combout\,
	sload => \DECODER1|Operacao_ULA~0_combout\,
	ena => \DECODER1|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(7));

-- Location: LABCELL_X20_Y3_N54
\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( \REG1|DOUT\(7) ) + ( \DECODER1|Equal9~2_combout\ ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DECODER1|ALT_INV_Equal9~2_combout\,
	datad => \REG1|ALT_INV_DOUT\(7),
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\);

-- Location: LABCELL_X20_Y3_N15
\ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~7_combout\ = ( \ULA1|Add0~29_sumout\ & ( (!\DECODER1|Equal9~2_combout\) # (!\DECODER1|Operacao_ULA~0_combout\) ) ) # ( !\ULA1|Add0~29_sumout\ & ( (!\DECODER1|Equal9~2_combout\ & \DECODER1|Operacao_ULA~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal9~2_combout\,
	datab => \DECODER1|ALT_INV_Operacao_ULA~0_combout\,
	dataf => \ULA1|ALT_INV_Add0~29_sumout\,
	combout => \ULA1|saida[7]~7_combout\);

-- Location: LABCELL_X20_Y3_N24
\REG_FLAG_EQ|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_FLAG_EQ|DOUT~0_combout\ = ( \REG_FLAG_EQ|DOUT~q\ & ( \ULA1|saida[7]~7_combout\ & ( !\DECODER1|Equal9~1_combout\ ) ) ) # ( \REG_FLAG_EQ|DOUT~q\ & ( !\ULA1|saida[7]~7_combout\ & ( (!\DECODER1|Equal9~1_combout\) # ((\ULA1|Equal2~1_combout\ & 
-- (\ULA1|Equal2~0_combout\ & \ULA1|Equal2~2_combout\))) ) ) ) # ( !\REG_FLAG_EQ|DOUT~q\ & ( !\ULA1|saida[7]~7_combout\ & ( (\DECODER1|Equal9~1_combout\ & (\ULA1|Equal2~1_combout\ & (\ULA1|Equal2~0_combout\ & \ULA1|Equal2~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001101010101010101100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal9~1_combout\,
	datab => \ULA1|ALT_INV_Equal2~1_combout\,
	datac => \ULA1|ALT_INV_Equal2~0_combout\,
	datad => \ULA1|ALT_INV_Equal2~2_combout\,
	datae => \REG_FLAG_EQ|ALT_INV_DOUT~q\,
	dataf => \ULA1|ALT_INV_saida[7]~7_combout\,
	combout => \REG_FLAG_EQ|DOUT~0_combout\);

-- Location: FF_X20_Y3_N26
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

-- Location: LABCELL_X19_Y3_N27
\DECODER1|saida[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|saida\(7) = ( \ROM1|memROM~8_combout\ & ( (\ROM1|memROM~6_combout\ & (\REG_FLAG_EQ|DOUT~q\ & (!\ROM1|memROM~4_combout\ & \ROM1|memROM~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \REG_FLAG_EQ|ALT_INV_DOUT~q\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \DECODER1|saida\(7));

-- Location: LABCELL_X19_Y3_N45
\MUXPC|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[1]~1_combout\ = ( \DECODER1|selMuxPC~0_combout\ & ( (!\DECODER1|Equal9~3_combout\ & \ROM1|memROM~14_combout\) ) ) # ( !\DECODER1|selMuxPC~0_combout\ & ( (!\DECODER1|Equal9~3_combout\ & ((!\DECODER1|saida\(7) & 
-- (\incrementaPC|Add0~5_sumout\)) # (\DECODER1|saida\(7) & ((\ROM1|memROM~14_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_saida\(7),
	datab => \DECODER1|ALT_INV_Equal9~3_combout\,
	datac => \incrementaPC|ALT_INV_Add0~5_sumout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \DECODER1|ALT_INV_selMuxPC~0_combout\,
	combout => \MUXPC|saida_MUX[1]~1_combout\);

-- Location: FF_X19_Y3_N46
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

-- Location: LABCELL_X21_Y3_N18
\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ( \PC|DOUT[0]~DUPLICATE_q\ & ( (!\PC|DOUT\(1) & ((!\PC|DOUT\(3)) # (\PC|DOUT\(2)))) ) ) # ( !\PC|DOUT[0]~DUPLICATE_q\ & ( (!\PC|DOUT\(2) & (\PC|DOUT\(1) & \PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011110000001100001111000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(1),
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~11_combout\);

-- Location: LABCELL_X21_Y3_N24
\ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~15_combout\ = ( \ROM1|memROM~11_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \ROM1|memROM~15_combout\);

-- Location: LABCELL_X19_Y3_N18
\MUXPC|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[2]~2_combout\ = ( \DECODER1|selMuxPC~0_combout\ & ( (\ROM1|memROM~15_combout\ & !\DECODER1|Equal9~3_combout\) ) ) # ( !\DECODER1|selMuxPC~0_combout\ & ( (!\DECODER1|Equal9~3_combout\ & ((!\DECODER1|saida\(7) & 
-- ((\incrementaPC|Add0~9_sumout\))) # (\DECODER1|saida\(7) & (\ROM1|memROM~15_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	datab => \incrementaPC|ALT_INV_Add0~9_sumout\,
	datac => \DECODER1|ALT_INV_saida\(7),
	datad => \DECODER1|ALT_INV_Equal9~3_combout\,
	dataf => \DECODER1|ALT_INV_selMuxPC~0_combout\,
	combout => \MUXPC|saida_MUX[2]~2_combout\);

-- Location: FF_X19_Y3_N19
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

-- Location: LABCELL_X20_Y3_N3
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( \PC|DOUT\(1) & ( (!\PC|DOUT\(0) & ((!\PC|DOUT[2]~DUPLICATE_q\) # (!\PC|DOUT[3]~DUPLICATE_q\))) ) ) # ( !\PC|DOUT\(1) & ( (!\PC|DOUT\(0) & ((\PC|DOUT[3]~DUPLICATE_q\))) # (\PC|DOUT\(0) & ((!\PC|DOUT[3]~DUPLICATE_q\) # 
-- (\PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110011000011111111001111110000110000001111000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~0_combout\);

-- Location: LABCELL_X19_Y3_N0
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~2_combout\);

-- Location: LABCELL_X19_Y3_N57
\DECODER1|Equal9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Equal9~3_combout\ = ( !\ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & \ROM1|memROM~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \DECODER1|Equal9~3_combout\);

-- Location: FF_X21_Y3_N1
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

-- Location: LABCELL_X21_Y3_N42
\incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~33_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))
-- \incrementaPC|Add0~34\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(4),
	cin => \incrementaPC|Add0~14\,
	sumout => \incrementaPC|Add0~33_sumout\,
	cout => \incrementaPC|Add0~34\);

-- Location: LABCELL_X21_Y3_N12
\MUXPC|saida_MUX[4]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[4]~8_combout\ = ( \incrementaPC|Add0~33_sumout\ & ( (!\DECODER1|Equal9~3_combout\ & (!\DECODER1|selMuxPC~0_combout\ & !\DECODER1|saida\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DECODER1|ALT_INV_Equal9~3_combout\,
	datac => \DECODER1|ALT_INV_selMuxPC~0_combout\,
	datad => \DECODER1|ALT_INV_saida\(7),
	dataf => \incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \MUXPC|saida_MUX[4]~8_combout\);

-- Location: FF_X21_Y3_N14
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

-- Location: LABCELL_X21_Y3_N45
\incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~29_sumout\ = SUM(( \PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~34\ ))
-- \incrementaPC|Add0~30\ = CARRY(( \PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~34\,
	sumout => \incrementaPC|Add0~29_sumout\,
	cout => \incrementaPC|Add0~30\);

-- Location: LABCELL_X21_Y3_N15
\MUXPC|saida_MUX[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[5]~7_combout\ = ( !\DECODER1|selMuxPC~0_combout\ & ( (!\DECODER1|saida\(7) & (!\DECODER1|Equal9~3_combout\ & \incrementaPC|Add0~29_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_saida\(7),
	datab => \DECODER1|ALT_INV_Equal9~3_combout\,
	datad => \incrementaPC|ALT_INV_Add0~29_sumout\,
	dataf => \DECODER1|ALT_INV_selMuxPC~0_combout\,
	combout => \MUXPC|saida_MUX[5]~7_combout\);

-- Location: FF_X21_Y3_N16
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

-- Location: LABCELL_X21_Y3_N48
\incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~25_sumout\ = SUM(( \PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~30\ ))
-- \incrementaPC|Add0~26\ = CARRY(( \PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~30\,
	sumout => \incrementaPC|Add0~25_sumout\,
	cout => \incrementaPC|Add0~26\);

-- Location: LABCELL_X21_Y3_N0
\MUXPC|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[6]~6_combout\ = ( \incrementaPC|Add0~25_sumout\ & ( (!\DECODER1|Equal9~3_combout\ & (!\DECODER1|saida\(7) & !\DECODER1|selMuxPC~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DECODER1|ALT_INV_Equal9~3_combout\,
	datac => \DECODER1|ALT_INV_saida\(7),
	datad => \DECODER1|ALT_INV_selMuxPC~0_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \MUXPC|saida_MUX[6]~6_combout\);

-- Location: FF_X21_Y3_N2
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

-- Location: FF_X21_Y3_N7
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

-- Location: LABCELL_X21_Y3_N51
\incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~21_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))
-- \incrementaPC|Add0~22\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(7),
	cin => \incrementaPC|Add0~26\,
	sumout => \incrementaPC|Add0~21_sumout\,
	cout => \incrementaPC|Add0~22\);

-- Location: LABCELL_X21_Y3_N3
\MUXPC|saida_MUX[7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[7]~5_combout\ = ( \incrementaPC|Add0~21_sumout\ & ( (!\DECODER1|selMuxPC~0_combout\ & (!\DECODER1|Equal9~3_combout\ & !\DECODER1|saida\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_selMuxPC~0_combout\,
	datac => \DECODER1|ALT_INV_Equal9~3_combout\,
	datad => \DECODER1|ALT_INV_saida\(7),
	dataf => \incrementaPC|ALT_INV_Add0~21_sumout\,
	combout => \MUXPC|saida_MUX[7]~5_combout\);

-- Location: FF_X21_Y3_N5
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

-- Location: LABCELL_X21_Y3_N54
\incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~17_sumout\ = SUM(( \PC|DOUT[8]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~22\,
	sumout => \incrementaPC|Add0~17_sumout\);

-- Location: LABCELL_X21_Y3_N6
\MUXPC|saida_MUX[8]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[8]~4_combout\ = ( !\DECODER1|selMuxPC~0_combout\ & ( (!\DECODER1|Equal9~3_combout\ & (!\DECODER1|saida\(7) & \incrementaPC|Add0~17_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DECODER1|ALT_INV_Equal9~3_combout\,
	datac => \DECODER1|ALT_INV_saida\(7),
	datad => \incrementaPC|ALT_INV_Add0~17_sumout\,
	dataf => \DECODER1|ALT_INV_selMuxPC~0_combout\,
	combout => \MUXPC|saida_MUX[8]~4_combout\);

-- Location: FF_X21_Y3_N8
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

-- Location: FF_X21_Y3_N17
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

-- Location: LABCELL_X21_Y3_N27
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(6) & (!\PC|DOUT\(8) & (!\PC|DOUT\(4) & !\PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(7),
	dataf => \PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~1_combout\);

-- Location: LABCELL_X19_Y3_N36
\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( \PC|DOUT\(3) & ( (!\PC|DOUT[0]~DUPLICATE_q\ & !\PC|DOUT[1]~DUPLICATE_q\) ) ) # ( !\PC|DOUT\(3) & ( (!\PC|DOUT[0]~DUPLICATE_q\ & (!\PC|DOUT\(2) & \PC|DOUT[1]~DUPLICATE_q\)) # (\PC|DOUT[0]~DUPLICATE_q\ & (\PC|DOUT\(2) & 
-- !\PC|DOUT[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110100000000001011010000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~9_combout\);

-- Location: LABCELL_X20_Y3_N21
\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \ROM1|memROM~13_combout\);

-- Location: FF_X20_Y3_N34
\REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~1_sumout\,
	asdata => \MUX1|saida_MUX[0]~1_combout\,
	sload => \DECODER1|Operacao_ULA~0_combout\,
	ena => \DECODER1|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(0));

-- Location: MLABCELL_X18_Y3_N12
\DECODER1|Equal9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Equal9~0_combout\ = ( !\ROM1|memROM~8_combout\ & ( !\ROM1|memROM~4_combout\ & ( (\ROM1|memROM~6_combout\ & \ROM1|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DECODER1|Equal9~0_combout\);

-- Location: MLABCELL_X18_Y3_N18
\DECODER1|saida[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|saida\(1) = ( \DECODER1|Habilita_A~0_combout\ ) # ( !\DECODER1|Habilita_A~0_combout\ & ( \DECODER1|Equal9~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DECODER1|ALT_INV_Equal9~1_combout\,
	datae => \DECODER1|ALT_INV_Habilita_A~0_combout\,
	combout => \DECODER1|saida\(1));

-- Location: MLABCELL_X18_Y3_N27
\DECODER1|Equal9~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Equal9~4_combout\ = ( \ROM1|memROM~8_combout\ & ( !\ROM1|memROM~4_combout\ & ( (\ROM1|memROM~2_combout\ & !\ROM1|memROM~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DECODER1|Equal9~4_combout\);

-- Location: MLABCELL_X18_Y3_N57
\ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~0_combout\ = ( \ULA1|Add0~1_sumout\ & ( (!\DECODER1|Operacao_ULA~0_combout\) # (\MUX1|saida_MUX[0]~1_combout\) ) ) # ( !\ULA1|Add0~1_sumout\ & ( (\DECODER1|Operacao_ULA~0_combout\ & \MUX1|saida_MUX[0]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Operacao_ULA~0_combout\,
	datac => \MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	dataf => \ULA1|ALT_INV_Add0~1_sumout\,
	combout => \ULA1|saida[0]~0_combout\);

-- Location: MLABCELL_X18_Y3_N36
\ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~1_combout\ = ( \MUX1|saida_MUX[3]~0_combout\ & ( (\ULA1|Add0~5_sumout\) # (\DECODER1|Operacao_ULA~0_combout\) ) ) # ( !\MUX1|saida_MUX[3]~0_combout\ & ( (!\DECODER1|Operacao_ULA~0_combout\ & \ULA1|Add0~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DECODER1|ALT_INV_Operacao_ULA~0_combout\,
	datac => \ULA1|ALT_INV_Add0~5_sumout\,
	dataf => \MUX1|ALT_INV_saida_MUX[3]~0_combout\,
	combout => \ULA1|saida[1]~1_combout\);

-- Location: MLABCELL_X18_Y3_N30
\ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~2_combout\ = ( \ULA1|Add0~9_sumout\ ) # ( !\ULA1|Add0~9_sumout\ & ( \DECODER1|Operacao_ULA~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DECODER1|ALT_INV_Operacao_ULA~0_combout\,
	dataf => \ULA1|ALT_INV_Add0~9_sumout\,
	combout => \ULA1|saida[2]~2_combout\);

-- Location: MLABCELL_X18_Y3_N39
\ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~3_combout\ = ( \ULA1|Add0~13_sumout\ & ( (!\DECODER1|Operacao_ULA~0_combout\) # (\MUX1|saida_MUX[3]~0_combout\) ) ) # ( !\ULA1|Add0~13_sumout\ & ( (\MUX1|saida_MUX[3]~0_combout\ & \DECODER1|Operacao_ULA~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[3]~0_combout\,
	datab => \DECODER1|ALT_INV_Operacao_ULA~0_combout\,
	dataf => \ULA1|ALT_INV_Add0~13_sumout\,
	combout => \ULA1|saida[3]~3_combout\);

-- Location: MLABCELL_X18_Y3_N0
\ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~4_combout\ = ( \ULA1|Add0~17_sumout\ & ( (!\DECODER1|Operacao_ULA~0_combout\) # (!\DECODER1|Equal9~2_combout\) ) ) # ( !\ULA1|Add0~17_sumout\ & ( (\DECODER1|Operacao_ULA~0_combout\ & !\DECODER1|Equal9~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Operacao_ULA~0_combout\,
	datab => \DECODER1|ALT_INV_Equal9~2_combout\,
	dataf => \ULA1|ALT_INV_Add0~17_sumout\,
	combout => \ULA1|saida[4]~4_combout\);

-- Location: MLABCELL_X18_Y3_N3
\ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~5_combout\ = ( \ULA1|Add0~21_sumout\ & ( (!\DECODER1|Operacao_ULA~0_combout\) # (!\DECODER1|Equal9~2_combout\) ) ) # ( !\ULA1|Add0~21_sumout\ & ( (\DECODER1|Operacao_ULA~0_combout\ & !\DECODER1|Equal9~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Operacao_ULA~0_combout\,
	datab => \DECODER1|ALT_INV_Equal9~2_combout\,
	dataf => \ULA1|ALT_INV_Add0~21_sumout\,
	combout => \ULA1|saida[5]~5_combout\);

-- Location: MLABCELL_X18_Y3_N6
\ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~6_combout\ = ( \DECODER1|Equal9~2_combout\ & ( (!\DECODER1|Operacao_ULA~0_combout\ & \ULA1|Add0~25_sumout\) ) ) # ( !\DECODER1|Equal9~2_combout\ & ( (\ULA1|Add0~25_sumout\) # (\DECODER1|Operacao_ULA~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DECODER1|ALT_INV_Operacao_ULA~0_combout\,
	datad => \ULA1|ALT_INV_Add0~25_sumout\,
	dataf => \DECODER1|ALT_INV_Equal9~2_combout\,
	combout => \ULA1|saida[6]~6_combout\);

-- Location: MLABCELL_X18_Y3_N48
\ULA1|Equal2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Equal2~3_combout\ = ( \ULA1|Add0~29_sumout\ & ( \DECODER1|Operacao_ULA~0_combout\ & ( (\ULA1|Equal2~1_combout\ & (\ULA1|Equal2~2_combout\ & (\ULA1|Equal2~0_combout\ & \DECODER1|Equal9~2_combout\))) ) ) ) # ( !\ULA1|Add0~29_sumout\ & ( 
-- \DECODER1|Operacao_ULA~0_combout\ & ( (\ULA1|Equal2~1_combout\ & (\ULA1|Equal2~2_combout\ & (\ULA1|Equal2~0_combout\ & \DECODER1|Equal9~2_combout\))) ) ) ) # ( !\ULA1|Add0~29_sumout\ & ( !\DECODER1|Operacao_ULA~0_combout\ & ( (\ULA1|Equal2~1_combout\ & 
-- (\ULA1|Equal2~2_combout\ & \ULA1|Equal2~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Equal2~1_combout\,
	datab => \ULA1|ALT_INV_Equal2~2_combout\,
	datac => \ULA1|ALT_INV_Equal2~0_combout\,
	datad => \DECODER1|ALT_INV_Equal9~2_combout\,
	datae => \ULA1|ALT_INV_Add0~29_sumout\,
	dataf => \DECODER1|ALT_INV_Operacao_ULA~0_combout\,
	combout => \ULA1|Equal2~3_combout\);

-- Location: IOIBUF_X44_Y0_N35
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: IOIBUF_X48_Y0_N41
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X40_Y45_N92
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X0_Y21_N4
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X50_Y45_N35
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X33_Y0_N41
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X38_Y45_N35
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X22_Y45_N52
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X54_Y17_N4
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X0_Y21_N55
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X50_Y45_N52
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X0_Y18_N44
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X16_Y45_N41
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LABCELL_X50_Y17_N0
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


