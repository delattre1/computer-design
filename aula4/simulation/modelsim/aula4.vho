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

-- DATE "03/29/2022 23:25:13"

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

ENTITY 	Aula4 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0);
	LEDB : OUT std_logic_vector(5 DOWNTO 0);
	LEDIMED : OUT std_logic_vector(8 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0)
	);
END Aula4;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDB[0]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDB[1]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDB[2]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDB[3]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDB[4]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDB[5]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDIMED[0]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDIMED[1]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDIMED[2]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDIMED[3]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDIMED[4]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDIMED[5]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDIMED[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDIMED[7]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDIMED[8]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Aula4 IS
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
SIGNAL ww_LEDB : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_LEDIMED : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
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
SIGNAL \PC|DOUT[0]~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~6\ : std_logic;
SIGNAL \incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~10\ : std_logic;
SIGNAL \incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~2\ : std_logic;
SIGNAL \incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~30\ : std_logic;
SIGNAL \incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~26\ : std_logic;
SIGNAL \incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~22\ : std_logic;
SIGNAL \incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~18\ : std_logic;
SIGNAL \incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \DECODER1|Equal5~1_combout\ : std_logic;
SIGNAL \RAM1|dado_out~8_combout\ : std_logic;
SIGNAL \RAM1|dado_out[0]~9_combout\ : std_logic;
SIGNAL \DECODER1|saida[5]~4_combout\ : std_logic;
SIGNAL \DECODER1|saida[2]~1_combout\ : std_logic;
SIGNAL \ULA1|Add0~34_cout\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \DECODER1|saida[3]~2_combout\ : std_logic;
SIGNAL \DECODER1|saida[4]~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \DECODER1|Equal5~0_combout\ : std_logic;
SIGNAL \RAM1|ram~155_combout\ : std_logic;
SIGNAL \RAM1|ram~97_q\ : std_logic;
SIGNAL \RAM1|ram~154_combout\ : std_logic;
SIGNAL \RAM1|ram~49_q\ : std_logic;
SIGNAL \RAM1|ram~153_combout\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~145_combout\ : std_logic;
SIGNAL \RAM1|dado_out[1]~10_combout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \RAM1|ram~50_q\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~98_q\ : std_logic;
SIGNAL \RAM1|ram~146_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \RAM1|dado_out[2]~11_combout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \REG1|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~51_q\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~99_q\ : std_logic;
SIGNAL \RAM1|ram~147_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \REG1|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~52_q\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~100_q\ : std_logic;
SIGNAL \RAM1|ram~148_combout\ : std_logic;
SIGNAL \RAM1|dado_out[4]~12_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~101_q\ : std_logic;
SIGNAL \RAM1|ram~53_q\ : std_logic;
SIGNAL \RAM1|ram~149_combout\ : std_logic;
SIGNAL \RAM1|dado_out[5]~13_combout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \RAM1|ram~102_q\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~54_q\ : std_logic;
SIGNAL \RAM1|ram~150_combout\ : std_logic;
SIGNAL \RAM1|dado_out[6]~14_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \RAM1|ram~55_q\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \RAM1|ram~103_q\ : std_logic;
SIGNAL \RAM1|ram~151_combout\ : std_logic;
SIGNAL \RAM1|dado_out[7]~15_combout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \RAM1|ram~104_q\ : std_logic;
SIGNAL \RAM1|ram~56feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~56_q\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~152_combout\ : std_logic;
SIGNAL \DECODER1|saida~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DECODER1|ALT_INV_saida[5]~4_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[7]~15_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[6]~14_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[5]~13_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[4]~12_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[2]~11_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[1]~10_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[0]~9_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_Equal5~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~104_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~103_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~102_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~101_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~100_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~99_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~98_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~97_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_saida[2]~1_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \REG1|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
LEDB <= ww_LEDB;
LEDIMED <= ww_LEDIMED;
PC_OUT <= ww_PC_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\DECODER1|ALT_INV_saida[5]~4_combout\ <= NOT \DECODER1|saida[5]~4_combout\;
\RAM1|ALT_INV_dado_out[7]~15_combout\ <= NOT \RAM1|dado_out[7]~15_combout\;
\RAM1|ALT_INV_dado_out[6]~14_combout\ <= NOT \RAM1|dado_out[6]~14_combout\;
\RAM1|ALT_INV_dado_out[5]~13_combout\ <= NOT \RAM1|dado_out[5]~13_combout\;
\RAM1|ALT_INV_dado_out[4]~12_combout\ <= NOT \RAM1|dado_out[4]~12_combout\;
\RAM1|ALT_INV_dado_out[2]~11_combout\ <= NOT \RAM1|dado_out[2]~11_combout\;
\RAM1|ALT_INV_dado_out[1]~10_combout\ <= NOT \RAM1|dado_out[1]~10_combout\;
\RAM1|ALT_INV_dado_out[0]~9_combout\ <= NOT \RAM1|dado_out[0]~9_combout\;
\DECODER1|ALT_INV_Equal5~1_combout\ <= NOT \DECODER1|Equal5~1_combout\;
\RAM1|ALT_INV_ram~152_combout\ <= NOT \RAM1|ram~152_combout\;
\RAM1|ALT_INV_ram~104_q\ <= NOT \RAM1|ram~104_q\;
\RAM1|ALT_INV_ram~56_q\ <= NOT \RAM1|ram~56_q\;
\RAM1|ALT_INV_ram~24_q\ <= NOT \RAM1|ram~24_q\;
\RAM1|ALT_INV_ram~151_combout\ <= NOT \RAM1|ram~151_combout\;
\RAM1|ALT_INV_ram~103_q\ <= NOT \RAM1|ram~103_q\;
\RAM1|ALT_INV_ram~55_q\ <= NOT \RAM1|ram~55_q\;
\RAM1|ALT_INV_ram~23_q\ <= NOT \RAM1|ram~23_q\;
\RAM1|ALT_INV_ram~150_combout\ <= NOT \RAM1|ram~150_combout\;
\RAM1|ALT_INV_ram~102_q\ <= NOT \RAM1|ram~102_q\;
\RAM1|ALT_INV_ram~54_q\ <= NOT \RAM1|ram~54_q\;
\RAM1|ALT_INV_ram~22_q\ <= NOT \RAM1|ram~22_q\;
\RAM1|ALT_INV_ram~149_combout\ <= NOT \RAM1|ram~149_combout\;
\RAM1|ALT_INV_ram~101_q\ <= NOT \RAM1|ram~101_q\;
\RAM1|ALT_INV_ram~53_q\ <= NOT \RAM1|ram~53_q\;
\RAM1|ALT_INV_ram~21_q\ <= NOT \RAM1|ram~21_q\;
\MUX1|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \MUX1|saida_MUX[3]~3_combout\;
\RAM1|ALT_INV_ram~148_combout\ <= NOT \RAM1|ram~148_combout\;
\RAM1|ALT_INV_ram~100_q\ <= NOT \RAM1|ram~100_q\;
\RAM1|ALT_INV_ram~52_q\ <= NOT \RAM1|ram~52_q\;
\RAM1|ALT_INV_ram~20_q\ <= NOT \RAM1|ram~20_q\;
\RAM1|ALT_INV_ram~147_combout\ <= NOT \RAM1|ram~147_combout\;
\RAM1|ALT_INV_ram~99_q\ <= NOT \RAM1|ram~99_q\;
\RAM1|ALT_INV_ram~51_q\ <= NOT \RAM1|ram~51_q\;
\RAM1|ALT_INV_ram~19_q\ <= NOT \RAM1|ram~19_q\;
\RAM1|ALT_INV_ram~146_combout\ <= NOT \RAM1|ram~146_combout\;
\RAM1|ALT_INV_ram~98_q\ <= NOT \RAM1|ram~98_q\;
\RAM1|ALT_INV_ram~50_q\ <= NOT \RAM1|ram~50_q\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\RAM1|ALT_INV_ram~145_combout\ <= NOT \RAM1|ram~145_combout\;
\RAM1|ALT_INV_ram~97_q\ <= NOT \RAM1|ram~97_q\;
\RAM1|ALT_INV_ram~49_q\ <= NOT \RAM1|ram~49_q\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\RAM1|ALT_INV_dado_out~8_combout\ <= NOT \RAM1|dado_out~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\DECODER1|ALT_INV_saida[2]~1_combout\ <= NOT \DECODER1|saida[2]~1_combout\;
\DECODER1|ALT_INV_Equal5~0_combout\ <= NOT \DECODER1|Equal5~0_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\REG1|ALT_INV_DOUT\(7) <= NOT \REG1|DOUT\(7);
\REG1|ALT_INV_DOUT\(6) <= NOT \REG1|DOUT\(6);
\REG1|ALT_INV_DOUT\(5) <= NOT \REG1|DOUT\(5);
\REG1|ALT_INV_DOUT\(4) <= NOT \REG1|DOUT\(4);
\REG1|ALT_INV_DOUT\(3) <= NOT \REG1|DOUT\(3);
\REG1|ALT_INV_DOUT\(2) <= NOT \REG1|DOUT\(2);
\REG1|ALT_INV_DOUT\(1) <= NOT \REG1|DOUT\(1);
\REG1|ALT_INV_DOUT\(0) <= NOT \REG1|DOUT\(0);
\PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \PC|DOUT[8]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \PC|DOUT[2]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \PC|DOUT[1]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \PC|DOUT[3]~DUPLICATE_q\;

-- Location: IOOBUF_X18_Y0_N36
\LEDG[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~145_combout\,
	oe => \RAM1|dado_out~8_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(0));

-- Location: IOOBUF_X14_Y0_N2
\LEDG[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~146_combout\,
	oe => \RAM1|dado_out~8_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(1));

-- Location: IOOBUF_X19_Y0_N53
\LEDG[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~147_combout\,
	oe => \RAM1|dado_out~8_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(2));

-- Location: IOOBUF_X14_Y0_N36
\LEDG[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~148_combout\,
	oe => \RAM1|dado_out~8_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(3));

-- Location: IOOBUF_X14_Y0_N19
\LEDG[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~149_combout\,
	oe => \RAM1|dado_out~8_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(4));

-- Location: IOOBUF_X19_Y0_N19
\LEDG[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~150_combout\,
	oe => \RAM1|dado_out~8_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(5));

-- Location: IOOBUF_X19_Y0_N36
\LEDG[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~151_combout\,
	oe => \RAM1|dado_out~8_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(6));

-- Location: IOOBUF_X19_Y0_N2
\LEDG[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~152_combout\,
	oe => \RAM1|dado_out~8_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(7));

-- Location: IOOBUF_X10_Y0_N76
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

-- Location: IOOBUF_X11_Y0_N19
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

-- Location: IOOBUF_X12_Y0_N53
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

-- Location: IOOBUF_X11_Y0_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X11_Y0_N53
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

-- Location: IOOBUF_X10_Y0_N42
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

-- Location: IOOBUF_X16_Y0_N93
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

-- Location: IOOBUF_X12_Y0_N19
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

-- Location: IOOBUF_X23_Y0_N59
\LEDB[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Equal5~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDB(0));

-- Location: IOOBUF_X22_Y0_N36
\LEDB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|saida~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDB(1));

-- Location: IOOBUF_X12_Y0_N2
\LEDB[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|saida[2]~1_combout\,
	devoe => ww_devoe,
	o => ww_LEDB(2));

-- Location: IOOBUF_X22_Y0_N2
\LEDB[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|saida[3]~2_combout\,
	devoe => ww_devoe,
	o => ww_LEDB(3));

-- Location: IOOBUF_X16_Y0_N76
\LEDB[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|saida[4]~3_combout\,
	devoe => ww_devoe,
	o => ww_LEDB(4));

-- Location: IOOBUF_X16_Y0_N59
\LEDB[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|saida[5]~4_combout\,
	devoe => ww_devoe,
	o => ww_LEDB(5));

-- Location: IOOBUF_X8_Y45_N42
\LEDIMED[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDIMED(0));

-- Location: IOOBUF_X12_Y0_N36
\LEDIMED[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~6_combout\,
	devoe => ww_devoe,
	o => ww_LEDIMED(1));

-- Location: IOOBUF_X10_Y0_N59
\LEDIMED[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~7_combout\,
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
	i => \ROM1|memROM~6_combout\,
	devoe => ww_devoe,
	o => ww_LEDIMED(3));

-- Location: IOOBUF_X52_Y45_N53
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

-- Location: IOOBUF_X50_Y0_N19
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

-- Location: IOOBUF_X40_Y45_N42
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

-- Location: IOOBUF_X14_Y45_N2
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

-- Location: IOOBUF_X22_Y0_N53
\LEDIMED[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~8_combout\,
	devoe => ww_devoe,
	o => ww_LEDIMED(8));

-- Location: IOOBUF_X18_Y0_N2
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

-- Location: IOOBUF_X16_Y0_N42
\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(1),
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
	i => \PC|DOUT\(2),
	devoe => ww_devoe,
	o => ww_PC_OUT(2));

-- Location: IOOBUF_X18_Y0_N53
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

-- Location: IOOBUF_X24_Y0_N2
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

-- Location: IOOBUF_X10_Y0_N93
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

-- Location: IOOBUF_X22_Y0_N19
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

-- Location: IOOBUF_X23_Y0_N42
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

-- Location: IOOBUF_X18_Y0_N19
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

-- Location: FF_X13_Y3_N52
\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

-- Location: LABCELL_X14_Y3_N3
\PC|DOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[0]~0_combout\ = !\PC|DOUT\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(0),
	combout => \PC|DOUT[0]~0_combout\);

-- Location: FF_X13_Y3_N26
\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \PC|DOUT[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

-- Location: MLABCELL_X13_Y3_N30
\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \PC|DOUT\(1) ) + ( \PC|DOUT\(0) ) + ( !VCC ))
-- \incrementaPC|Add0~6\ = CARRY(( \PC|DOUT\(1) ) + ( \PC|DOUT\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT\(1),
	cin => GND,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

-- Location: FF_X13_Y3_N31
\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

-- Location: MLABCELL_X13_Y3_N33
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

-- Location: FF_X13_Y3_N34
\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

-- Location: MLABCELL_X13_Y3_N36
\incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~1_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))
-- \incrementaPC|Add0~2\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \incrementaPC|Add0~10\,
	sumout => \incrementaPC|Add0~1_sumout\,
	cout => \incrementaPC|Add0~2\);

-- Location: FF_X13_Y3_N37
\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

-- Location: MLABCELL_X13_Y3_N39
\incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~29_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))
-- \incrementaPC|Add0~30\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \incrementaPC|Add0~2\,
	sumout => \incrementaPC|Add0~29_sumout\,
	cout => \incrementaPC|Add0~30\);

-- Location: FF_X13_Y3_N41
\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

-- Location: MLABCELL_X13_Y3_N42
\incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~25_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~30\ ))
-- \incrementaPC|Add0~26\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \incrementaPC|Add0~30\,
	sumout => \incrementaPC|Add0~25_sumout\,
	cout => \incrementaPC|Add0~26\);

-- Location: FF_X13_Y3_N44
\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

-- Location: MLABCELL_X13_Y3_N45
\incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~21_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))
-- \incrementaPC|Add0~22\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \incrementaPC|Add0~26\,
	sumout => \incrementaPC|Add0~21_sumout\,
	cout => \incrementaPC|Add0~22\);

-- Location: FF_X13_Y3_N47
\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

-- Location: MLABCELL_X13_Y3_N48
\incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~17_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))
-- \incrementaPC|Add0~18\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \incrementaPC|Add0~22\,
	sumout => \incrementaPC|Add0~17_sumout\,
	cout => \incrementaPC|Add0~18\);

-- Location: FF_X13_Y3_N50
\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

-- Location: MLABCELL_X13_Y3_N51
\incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~13_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \incrementaPC|Add0~18\,
	sumout => \incrementaPC|Add0~13_sumout\);

-- Location: FF_X13_Y3_N53
\PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[8]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y3_N18
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\PC|DOUT\(4) & ( (!\PC|DOUT[8]~DUPLICATE_q\ & (!\PC|DOUT\(5) & (!\PC|DOUT\(7) & !\PC|DOUT\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \PC|ALT_INV_DOUT\(6),
	dataf => \PC|ALT_INV_DOUT\(4),
	combout => \ROM1|memROM~1_combout\);

-- Location: FF_X13_Y3_N32
\PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[1]~DUPLICATE_q\);

-- Location: FF_X13_Y3_N38
\PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[3]~DUPLICATE_q\);

-- Location: FF_X13_Y3_N35
\PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[2]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y3_N15
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \PC|DOUT[2]~DUPLICATE_q\ & ( (!\PC|DOUT\(0) & (!\PC|DOUT[1]~DUPLICATE_q\ & !\PC|DOUT[3]~DUPLICATE_q\)) ) ) # ( !\PC|DOUT[2]~DUPLICATE_q\ & ( (!\PC|DOUT\(0) & (\PC|DOUT[1]~DUPLICATE_q\ & !\PC|DOUT[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM1|memROM~2_combout\);

-- Location: MLABCELL_X13_Y3_N6
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( !\PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT\(0) & \PC|DOUT[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~3_combout\);

-- Location: MLABCELL_X13_Y3_N9
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( !\PC|DOUT[2]~DUPLICATE_q\ & ( (!\PC|DOUT[3]~DUPLICATE_q\ & ((\PC|DOUT[1]~DUPLICATE_q\) # (\PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000000010111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM1|memROM~0_combout\);

-- Location: MLABCELL_X13_Y3_N27
\DECODER1|Equal5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Equal5~1_combout\ = ( \ROM1|memROM~0_combout\ & ( !\ROM1|memROM~1_combout\ ) ) # ( !\ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~1_combout\) # ((!\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~3_combout\) # (\PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101011101110111010101110111010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \DECODER1|Equal5~1_combout\);

-- Location: MLABCELL_X13_Y3_N12
\RAM1|dado_out~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out~8_combout\ = ( !\ROM1|memROM~0_combout\ & ( (\ROM1|memROM~2_combout\ & \ROM1|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM1|dado_out~8_combout\);

-- Location: LABCELL_X12_Y3_N9
\RAM1|dado_out[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[0]~9_combout\ = ( \RAM1|ram~145_combout\ ) # ( !\RAM1|ram~145_combout\ & ( !\RAM1|dado_out~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_dado_out~8_combout\,
	dataf => \RAM1|ALT_INV_ram~145_combout\,
	combout => \RAM1|dado_out[0]~9_combout\);

-- Location: LABCELL_X14_Y3_N57
\DECODER1|saida[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|saida[5]~4_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\PC|DOUT\(3) & (\PC|DOUT\(0) & !\PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \DECODER1|saida[5]~4_combout\);

-- Location: MLABCELL_X13_Y3_N0
\DECODER1|saida[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|saida[2]~1_combout\ = ( \ROM1|memROM~0_combout\ & ( (\ROM1|memROM~1_combout\ & ((!\ROM1|memROM~3_combout\) # (\PC|DOUT[3]~DUPLICATE_q\))) ) ) # ( !\ROM1|memROM~0_combout\ & ( (\ROM1|memROM~2_combout\ & \ROM1|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000111101010000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \DECODER1|saida[2]~1_combout\);

-- Location: LABCELL_X12_Y3_N30
\ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~34_cout\ = CARRY(( (!\DECODER1|Equal5~1_combout\ & \DECODER1|saida[2]~1_combout\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DECODER1|ALT_INV_Equal5~1_combout\,
	datad => \DECODER1|ALT_INV_saida[2]~1_combout\,
	cin => GND,
	cout => \ULA1|Add0~34_cout\);

-- Location: LABCELL_X12_Y3_N33
\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( \REG1|DOUT\(0) ) + ( (!\DECODER1|Equal5~1_combout\ & (!\DECODER1|saida[2]~1_combout\ $ (((!\RAM1|dado_out[0]~9_combout\) # (\DECODER1|saida[5]~4_combout\))))) # (\DECODER1|Equal5~1_combout\ & (\RAM1|dado_out[0]~9_combout\ & 
-- (!\DECODER1|saida[5]~4_combout\))) ) + ( \ULA1|Add0~34_cout\ ))
-- \ULA1|Add0~2\ = CARRY(( \REG1|DOUT\(0) ) + ( (!\DECODER1|Equal5~1_combout\ & (!\DECODER1|saida[2]~1_combout\ $ (((!\RAM1|dado_out[0]~9_combout\) # (\DECODER1|saida[5]~4_combout\))))) # (\DECODER1|Equal5~1_combout\ & (\RAM1|dado_out[0]~9_combout\ & 
-- (!\DECODER1|saida[5]~4_combout\))) ) + ( \ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011110110010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal5~1_combout\,
	datab => \RAM1|ALT_INV_dado_out[0]~9_combout\,
	datac => \DECODER1|ALT_INV_saida[5]~4_combout\,
	datad => \REG1|ALT_INV_DOUT\(0),
	dataf => \DECODER1|ALT_INV_saida[2]~1_combout\,
	cin => \ULA1|Add0~34_cout\,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

-- Location: LABCELL_X12_Y3_N15
\MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[0]~0_combout\ = ( \RAM1|ram~145_combout\ & ( !\DECODER1|saida[5]~4_combout\ ) ) # ( !\RAM1|ram~145_combout\ & ( (!\RAM1|dado_out~8_combout\ & !\DECODER1|saida[5]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_dado_out~8_combout\,
	datad => \DECODER1|ALT_INV_saida[5]~4_combout\,
	dataf => \RAM1|ALT_INV_ram~145_combout\,
	combout => \MUX1|saida_MUX[0]~0_combout\);

-- Location: LABCELL_X16_Y3_N15
\DECODER1|saida[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|saida[3]~2_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~0_combout\ & ( (\ROM1|memROM~1_combout\ & ((!\ROM1|memROM~3_combout\) # (\PC|DOUT\(3)))) ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~0_combout\ & ( (\ROM1|memROM~1_combout\ 
-- & ((!\ROM1|memROM~3_combout\) # (\PC|DOUT\(3)))) ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~0_combout\ & ( (\ROM1|memROM~1_combout\ & ((!\ROM1|memROM~3_combout\) # (\PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000111100001100000011110000110000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \DECODER1|saida[3]~2_combout\);

-- Location: LABCELL_X16_Y3_N24
\DECODER1|saida[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|saida[4]~3_combout\ = ( \ROM1|memROM~0_combout\ & ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~3_combout\) # (\PC|DOUT\(3)))) ) ) ) # ( !\ROM1|memROM~0_combout\ & ( \ROM1|memROM~1_combout\ & ( ((!\PC|DOUT\(3) & 
-- \ROM1|memROM~3_combout\)) # (\ROM1|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111101011111111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \DECODER1|saida[4]~3_combout\);

-- Location: FF_X12_Y3_N34
\REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~1_sumout\,
	asdata => \MUX1|saida_MUX[0]~0_combout\,
	sload => \DECODER1|saida[3]~2_combout\,
	ena => \DECODER1|saida[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(0));

-- Location: MLABCELL_X13_Y3_N3
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \PC|DOUT\(0) & ( !\PC|DOUT\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~5_combout\);

-- Location: MLABCELL_X13_Y3_N57
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( !\PC|DOUT\(6) & ( !\PC|DOUT[8]~DUPLICATE_q\ & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(5) & (!\PC|DOUT\(4) & !\PC|DOUT[3]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT\(6),
	dataf => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	combout => \ROM1|memROM~4_combout\);

-- Location: LABCELL_X14_Y3_N30
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \ROM1|memROM~4_combout\ & ( (\ROM1|memROM~5_combout\ & !\PC|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \PC|ALT_INV_DOUT\(1),
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \ROM1|memROM~6_combout\);

-- Location: LABCELL_X14_Y3_N0
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \ROM1|memROM~4_combout\ & ( (\ROM1|memROM~5_combout\ & \PC|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \PC|ALT_INV_DOUT\(1),
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \ROM1|memROM~7_combout\);

-- Location: LABCELL_X14_Y3_N48
\DECODER1|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Equal5~0_combout\ = ( \ROM1|memROM~1_combout\ & ( (\ROM1|memROM~2_combout\ & (\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~3_combout\) # (\PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000110000000000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \DECODER1|Equal5~0_combout\);

-- Location: LABCELL_X14_Y3_N45
\RAM1|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~155_combout\ = ( \DECODER1|Equal5~0_combout\ & ( (\ROM1|memROM~6_combout\ & !\ROM1|memROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \DECODER1|ALT_INV_Equal5~0_combout\,
	combout => \RAM1|ram~155_combout\);

-- Location: FF_X12_Y3_N1
\RAM1|ram~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REG1|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~97_q\);

-- Location: LABCELL_X14_Y3_N33
\RAM1|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~154_combout\ = ( \DECODER1|Equal5~0_combout\ & ( (!\ROM1|memROM~6_combout\ & \ROM1|memROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \DECODER1|ALT_INV_Equal5~0_combout\,
	combout => \RAM1|ram~154_combout\);

-- Location: FF_X13_Y3_N56
\RAM1|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REG1|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~49_q\);

-- Location: LABCELL_X14_Y3_N39
\RAM1|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~153_combout\ = ( !\ROM1|memROM~7_combout\ & ( \DECODER1|Equal5~0_combout\ & ( !\ROM1|memROM~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \DECODER1|ALT_INV_Equal5~0_combout\,
	combout => \RAM1|ram~153_combout\);

-- Location: FF_X12_Y3_N22
\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REG1|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~153_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

-- Location: LABCELL_X12_Y3_N18
\RAM1|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~145_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~4_combout\ & ( (!\PC|DOUT[1]~DUPLICATE_q\ & (\RAM1|ram~97_q\)) # (\PC|DOUT[1]~DUPLICATE_q\ & ((\RAM1|ram~49_q\))) ) ) ) # ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~4_combout\ & ( 
-- \RAM1|ram~17_q\ ) ) ) # ( \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~4_combout\ & ( \RAM1|ram~17_q\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~4_combout\ & ( \RAM1|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~97_q\,
	datab => \RAM1|ALT_INV_ram~49_q\,
	datac => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \RAM1|ALT_INV_ram~17_q\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~145_combout\);

-- Location: LABCELL_X12_Y3_N12
\RAM1|dado_out[1]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[1]~10_combout\ = ( \RAM1|dado_out~8_combout\ & ( \RAM1|ram~146_combout\ ) ) # ( !\RAM1|dado_out~8_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~146_combout\,
	dataf => \RAM1|ALT_INV_dado_out~8_combout\,
	combout => \RAM1|dado_out[1]~10_combout\);

-- Location: LABCELL_X12_Y3_N36
\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( \REG1|DOUT\(1) ) + ( !\DECODER1|saida[2]~1_combout\ $ (((!\DECODER1|saida[5]~4_combout\ & ((!\RAM1|dado_out[1]~10_combout\))) # (\DECODER1|saida[5]~4_combout\ & (!\ROM1|memROM~6_combout\)))) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( \REG1|DOUT\(1) ) + ( !\DECODER1|saida[2]~1_combout\ $ (((!\DECODER1|saida[5]~4_combout\ & ((!\RAM1|dado_out[1]~10_combout\))) # (\DECODER1|saida[5]~4_combout\ & (!\ROM1|memROM~6_combout\)))) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010010110010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_saida[2]~1_combout\,
	datab => \DECODER1|ALT_INV_saida[5]~4_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \REG1|ALT_INV_DOUT\(1),
	dataf => \RAM1|ALT_INV_dado_out[1]~10_combout\,
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

-- Location: LABCELL_X12_Y3_N6
\MUX1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[1]~1_combout\ = (!\DECODER1|saida[5]~4_combout\ & (((!\RAM1|dado_out~8_combout\)) # (\RAM1|ram~146_combout\))) # (\DECODER1|saida[5]~4_combout\ & (((\ROM1|memROM~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110100001111110111010000111111011101000011111101110100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~146_combout\,
	datab => \RAM1|ALT_INV_dado_out~8_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \DECODER1|ALT_INV_saida[5]~4_combout\,
	combout => \MUX1|saida_MUX[1]~1_combout\);

-- Location: FF_X12_Y3_N38
\REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~5_sumout\,
	asdata => \MUX1|saida_MUX[1]~1_combout\,
	sload => \DECODER1|saida[3]~2_combout\,
	ena => \DECODER1|saida[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(1));

-- Location: FF_X13_Y3_N8
\RAM1|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REG1|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~50_q\);

-- Location: FF_X14_Y3_N55
\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REG1|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~153_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

-- Location: FF_X14_Y3_N19
\RAM1|ram~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REG1|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~98_q\);

-- Location: LABCELL_X12_Y3_N3
\RAM1|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~146_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~4_combout\ & ( (!\PC|DOUT[1]~DUPLICATE_q\ & ((\RAM1|ram~98_q\))) # (\PC|DOUT[1]~DUPLICATE_q\ & (\RAM1|ram~50_q\)) ) ) ) # ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~4_combout\ & ( 
-- \RAM1|ram~18_q\ ) ) ) # ( \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~4_combout\ & ( \RAM1|ram~18_q\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~4_combout\ & ( \RAM1|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \RAM1|ALT_INV_ram~50_q\,
	datac => \RAM1|ALT_INV_ram~18_q\,
	datad => \RAM1|ALT_INV_ram~98_q\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~146_combout\);

-- Location: LABCELL_X14_Y3_N12
\MUX1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[2]~2_combout\ = ( \RAM1|ram~147_combout\ & ( (!\DECODER1|saida[5]~4_combout\) # (\ROM1|memROM~7_combout\) ) ) # ( !\RAM1|ram~147_combout\ & ( (!\DECODER1|saida[5]~4_combout\ & (!\RAM1|dado_out~8_combout\)) # (\DECODER1|saida[5]~4_combout\ 
-- & ((\ROM1|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101110001011100010111000101111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~8_combout\,
	datab => \DECODER1|ALT_INV_saida[5]~4_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \RAM1|ALT_INV_ram~147_combout\,
	combout => \MUX1|saida_MUX[2]~2_combout\);

-- Location: FF_X12_Y3_N41
\REG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~9_sumout\,
	asdata => \MUX1|saida_MUX[2]~2_combout\,
	sload => \DECODER1|saida[3]~2_combout\,
	ena => \DECODER1|saida[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(2));

-- Location: MLABCELL_X13_Y3_N21
\RAM1|dado_out[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[2]~11_combout\ = ( \RAM1|ram~147_combout\ ) # ( !\RAM1|ram~147_combout\ & ( !\RAM1|dado_out~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_dado_out~8_combout\,
	dataf => \RAM1|ALT_INV_ram~147_combout\,
	combout => \RAM1|dado_out[2]~11_combout\);

-- Location: LABCELL_X12_Y3_N39
\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( \REG1|DOUT\(2) ) + ( !\DECODER1|saida[2]~1_combout\ $ (((!\DECODER1|saida[5]~4_combout\ & ((!\RAM1|dado_out[2]~11_combout\))) # (\DECODER1|saida[5]~4_combout\ & (!\ROM1|memROM~7_combout\)))) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( \REG1|DOUT\(2) ) + ( !\DECODER1|saida[2]~1_combout\ $ (((!\DECODER1|saida[5]~4_combout\ & ((!\RAM1|dado_out[2]~11_combout\))) # (\DECODER1|saida[5]~4_combout\ & (!\ROM1|memROM~7_combout\)))) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010010110010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_saida[2]~1_combout\,
	datab => \DECODER1|ALT_INV_saida[5]~4_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \REG1|ALT_INV_DOUT\(2),
	dataf => \RAM1|ALT_INV_dado_out[2]~11_combout\,
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

-- Location: FF_X12_Y3_N40
\REG1|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~9_sumout\,
	asdata => \MUX1|saida_MUX[2]~2_combout\,
	sload => \DECODER1|saida[3]~2_combout\,
	ena => \DECODER1|saida[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT[2]~DUPLICATE_q\);

-- Location: FF_X14_Y3_N2
\RAM1|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REG1|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~51_q\);

-- Location: FF_X14_Y3_N11
\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REG1|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~153_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

-- Location: FF_X14_Y3_N26
\RAM1|ram~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REG1|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~99_q\);

-- Location: LABCELL_X14_Y3_N24
\RAM1|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~147_combout\ = ( \RAM1|ram~99_q\ & ( \ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~5_combout\ & (((\RAM1|ram~19_q\)))) # (\ROM1|memROM~5_combout\ & (((!\PC|DOUT\(1))) # (\RAM1|ram~51_q\))) ) ) ) # ( !\RAM1|ram~99_q\ & ( \ROM1|memROM~4_combout\ & ( 
-- (!\ROM1|memROM~5_combout\ & (((\RAM1|ram~19_q\)))) # (\ROM1|memROM~5_combout\ & (\RAM1|ram~51_q\ & (\PC|DOUT\(1)))) ) ) ) # ( \RAM1|ram~99_q\ & ( !\ROM1|memROM~4_combout\ & ( \RAM1|ram~19_q\ ) ) ) # ( !\RAM1|ram~99_q\ & ( !\ROM1|memROM~4_combout\ & ( 
-- \RAM1|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~51_q\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \PC|ALT_INV_DOUT\(1),
	datad => \RAM1|ALT_INV_ram~19_q\,
	datae => \RAM1|ALT_INV_ram~99_q\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~147_combout\);

-- Location: LABCELL_X12_Y3_N24
\MUX1|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[3]~3_combout\ = ( \RAM1|ram~148_combout\ & ( (!\DECODER1|saida[5]~4_combout\) # (\ROM1|memROM~6_combout\) ) ) # ( !\RAM1|ram~148_combout\ & ( (!\DECODER1|saida[5]~4_combout\ & (!\RAM1|dado_out~8_combout\)) # (\DECODER1|saida[5]~4_combout\ 
-- & ((\ROM1|memROM~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000001111110011000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_dado_out~8_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \DECODER1|ALT_INV_saida[5]~4_combout\,
	dataf => \RAM1|ALT_INV_ram~148_combout\,
	combout => \MUX1|saida_MUX[3]~3_combout\);

-- Location: FF_X12_Y3_N44
\REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~13_sumout\,
	asdata => \MUX1|saida_MUX[3]~3_combout\,
	sload => \DECODER1|saida[3]~2_combout\,
	ena => \DECODER1|saida[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(3));

-- Location: LABCELL_X12_Y3_N42
\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( !\MUX1|saida_MUX[3]~3_combout\ $ (((!\DECODER1|saida[2]~1_combout\) # (\DECODER1|Equal5~1_combout\))) ) + ( \REG1|DOUT\(3) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( !\MUX1|saida_MUX[3]~3_combout\ $ (((!\DECODER1|saida[2]~1_combout\) # (\DECODER1|Equal5~1_combout\))) ) + ( \REG1|DOUT\(3) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000101011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal5~1_combout\,
	datac => \DECODER1|ALT_INV_saida[2]~1_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[3]~3_combout\,
	dataf => \REG1|ALT_INV_DOUT\(3),
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

-- Location: FF_X12_Y3_N43
\REG1|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~13_sumout\,
	asdata => \MUX1|saida_MUX[3]~3_combout\,
	sload => \DECODER1|saida[3]~2_combout\,
	ena => \DECODER1|saida[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT[3]~DUPLICATE_q\);

-- Location: FF_X14_Y3_N4
\RAM1|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REG1|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~52_q\);

-- Location: FF_X14_Y3_N37
\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REG1|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~153_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

-- Location: FF_X14_Y3_N22
\RAM1|ram~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REG1|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~100_q\);

-- Location: LABCELL_X16_Y3_N48
\RAM1|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~148_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~4_combout\ & ( (!\PC|DOUT\(1) & ((\RAM1|ram~100_q\))) # (\PC|DOUT\(1) & (\RAM1|ram~52_q\)) ) ) ) # ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~4_combout\ & ( \RAM1|ram~20_q\ ) ) ) # ( 
-- \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~4_combout\ & ( \RAM1|ram~20_q\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~4_combout\ & ( \RAM1|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~52_q\,
	datab => \RAM1|ALT_INV_ram~20_q\,
	datac => \PC|ALT_INV_DOUT\(1),
	datad => \RAM1|ALT_INV_ram~100_q\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~148_combout\);

-- Location: LABCELL_X12_Y3_N27
\RAM1|dado_out[4]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[4]~12_combout\ = ( \RAM1|ram~149_combout\ ) # ( !\RAM1|ram~149_combout\ & ( !\RAM1|dado_out~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_dado_out~8_combout\,
	dataf => \RAM1|ALT_INV_ram~149_combout\,
	combout => \RAM1|dado_out[4]~12_combout\);

-- Location: LABCELL_X12_Y3_N45
\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( \REG1|DOUT\(4) ) + ( (!\DECODER1|Equal5~1_combout\ & (!\DECODER1|saida[2]~1_combout\ $ (((!\RAM1|dado_out[4]~12_combout\) # (\DECODER1|saida[5]~4_combout\))))) # (\DECODER1|Equal5~1_combout\ & 
-- (((!\DECODER1|saida[5]~4_combout\ & \RAM1|dado_out[4]~12_combout\)))) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~18\ = CARRY(( \REG1|DOUT\(4) ) + ( (!\DECODER1|Equal5~1_combout\ & (!\DECODER1|saida[2]~1_combout\ $ (((!\RAM1|dado_out[4]~12_combout\) # (\DECODER1|saida[5]~4_combout\))))) # (\DECODER1|Equal5~1_combout\ & (((!\DECODER1|saida[5]~4_combout\ & 
-- \RAM1|dado_out[4]~12_combout\)))) ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110111010010110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal5~1_combout\,
	datab => \DECODER1|ALT_INV_saida[2]~1_combout\,
	datac => \DECODER1|ALT_INV_saida[5]~4_combout\,
	datad => \REG1|ALT_INV_DOUT\(4),
	dataf => \RAM1|ALT_INV_dado_out[4]~12_combout\,
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

-- Location: LABCELL_X16_Y3_N54
\MUX1|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[4]~4_combout\ = ( \RAM1|dado_out~8_combout\ & ( (\RAM1|ram~149_combout\ & !\DECODER1|saida[5]~4_combout\) ) ) # ( !\RAM1|dado_out~8_combout\ & ( !\DECODER1|saida[5]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~149_combout\,
	datac => \DECODER1|ALT_INV_saida[5]~4_combout\,
	dataf => \RAM1|ALT_INV_dado_out~8_combout\,
	combout => \MUX1|saida_MUX[4]~4_combout\);

-- Location: FF_X12_Y3_N46
\REG1|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~17_sumout\,
	asdata => \MUX1|saida_MUX[4]~4_combout\,
	sload => \DECODER1|saida[3]~2_combout\,
	ena => \DECODER1|saida[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(4));

-- Location: FF_X16_Y3_N50
\RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REG1|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~153_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

-- Location: FF_X14_Y3_N28
\RAM1|ram~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REG1|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~101_q\);

-- Location: FF_X14_Y3_N43
\RAM1|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REG1|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~53_q\);

-- Location: LABCELL_X16_Y3_N18
\RAM1|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~149_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~4_combout\ & ( (!\PC|DOUT\(1) & (\RAM1|ram~101_q\)) # (\PC|DOUT\(1) & ((\RAM1|ram~53_q\))) ) ) ) # ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~4_combout\ & ( \RAM1|ram~21_q\ ) ) ) # ( 
-- \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~4_combout\ & ( \RAM1|ram~21_q\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~4_combout\ & ( \RAM1|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~21_q\,
	datab => \RAM1|ALT_INV_ram~101_q\,
	datac => \PC|ALT_INV_DOUT\(1),
	datad => \RAM1|ALT_INV_ram~53_q\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~149_combout\);

-- Location: MLABCELL_X13_Y3_N24
\RAM1|dado_out[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[5]~13_combout\ = ( \RAM1|ram~150_combout\ ) # ( !\RAM1|ram~150_combout\ & ( !\RAM1|dado_out~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_dado_out~8_combout\,
	dataf => \RAM1|ALT_INV_ram~150_combout\,
	combout => \RAM1|dado_out[5]~13_combout\);

-- Location: LABCELL_X12_Y3_N48
\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( \REG1|DOUT\(5) ) + ( (!\DECODER1|Equal5~1_combout\ & (!\DECODER1|saida[2]~1_combout\ $ (((!\RAM1|dado_out[5]~13_combout\) # (\DECODER1|saida[5]~4_combout\))))) # (\DECODER1|Equal5~1_combout\ & 
-- (((!\DECODER1|saida[5]~4_combout\ & \RAM1|dado_out[5]~13_combout\)))) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( \REG1|DOUT\(5) ) + ( (!\DECODER1|Equal5~1_combout\ & (!\DECODER1|saida[2]~1_combout\ $ (((!\RAM1|dado_out[5]~13_combout\) # (\DECODER1|saida[5]~4_combout\))))) # (\DECODER1|Equal5~1_combout\ & (((!\DECODER1|saida[5]~4_combout\ & 
-- \RAM1|dado_out[5]~13_combout\)))) ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110111010010110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal5~1_combout\,
	datab => \DECODER1|ALT_INV_saida[2]~1_combout\,
	datac => \DECODER1|ALT_INV_saida[5]~4_combout\,
	datad => \REG1|ALT_INV_DOUT\(5),
	dataf => \RAM1|ALT_INV_dado_out[5]~13_combout\,
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

-- Location: LABCELL_X14_Y3_N54
\MUX1|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[5]~5_combout\ = ( \RAM1|ram~150_combout\ & ( !\DECODER1|saida[5]~4_combout\ ) ) # ( !\RAM1|ram~150_combout\ & ( (!\DECODER1|saida[5]~4_combout\ & !\RAM1|dado_out~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DECODER1|ALT_INV_saida[5]~4_combout\,
	datac => \RAM1|ALT_INV_dado_out~8_combout\,
	dataf => \RAM1|ALT_INV_ram~150_combout\,
	combout => \MUX1|saida_MUX[5]~5_combout\);

-- Location: FF_X12_Y3_N49
\REG1|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~21_sumout\,
	asdata => \MUX1|saida_MUX[5]~5_combout\,
	sload => \DECODER1|saida[3]~2_combout\,
	ena => \DECODER1|saida[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(5));

-- Location: FF_X14_Y3_N14
\RAM1|ram~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REG1|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~102_q\);

-- Location: FF_X14_Y3_N31
\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REG1|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~153_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

-- Location: FF_X14_Y3_N46
\RAM1|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REG1|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~54_q\);

-- Location: LABCELL_X14_Y3_N18
\RAM1|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~150_combout\ = ( \RAM1|ram~54_q\ & ( \ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~5_combout\ & (((\RAM1|ram~22_q\)))) # (\ROM1|memROM~5_combout\ & (((\RAM1|ram~102_q\)) # (\PC|DOUT\(1)))) ) ) ) # ( !\RAM1|ram~54_q\ & ( \ROM1|memROM~4_combout\ & ( 
-- (!\ROM1|memROM~5_combout\ & (((\RAM1|ram~22_q\)))) # (\ROM1|memROM~5_combout\ & (!\PC|DOUT\(1) & (\RAM1|ram~102_q\))) ) ) ) # ( \RAM1|ram~54_q\ & ( !\ROM1|memROM~4_combout\ & ( \RAM1|ram~22_q\ ) ) ) # ( !\RAM1|ram~54_q\ & ( !\ROM1|memROM~4_combout\ & ( 
-- \RAM1|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111001000100000111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datab => \RAM1|ALT_INV_ram~102_q\,
	datac => \RAM1|ALT_INV_ram~22_q\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \RAM1|ALT_INV_ram~54_q\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~150_combout\);

-- Location: LABCELL_X16_Y3_N36
\RAM1|dado_out[6]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[6]~14_combout\ = ( \RAM1|ram~151_combout\ ) # ( !\RAM1|ram~151_combout\ & ( !\RAM1|dado_out~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_dado_out~8_combout\,
	dataf => \RAM1|ALT_INV_ram~151_combout\,
	combout => \RAM1|dado_out[6]~14_combout\);

-- Location: LABCELL_X12_Y3_N51
\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( \REG1|DOUT\(6) ) + ( (!\DECODER1|Equal5~1_combout\ & (!\DECODER1|saida[2]~1_combout\ $ (((!\RAM1|dado_out[6]~14_combout\) # (\DECODER1|saida[5]~4_combout\))))) # (\DECODER1|Equal5~1_combout\ & 
-- (((!\DECODER1|saida[5]~4_combout\ & \RAM1|dado_out[6]~14_combout\)))) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( \REG1|DOUT\(6) ) + ( (!\DECODER1|Equal5~1_combout\ & (!\DECODER1|saida[2]~1_combout\ $ (((!\RAM1|dado_out[6]~14_combout\) # (\DECODER1|saida[5]~4_combout\))))) # (\DECODER1|Equal5~1_combout\ & (((!\DECODER1|saida[5]~4_combout\ & 
-- \RAM1|dado_out[6]~14_combout\)))) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110111010010110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal5~1_combout\,
	datab => \DECODER1|ALT_INV_saida[2]~1_combout\,
	datac => \DECODER1|ALT_INV_saida[5]~4_combout\,
	datad => \REG1|ALT_INV_DOUT\(6),
	dataf => \RAM1|ALT_INV_dado_out[6]~14_combout\,
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

-- Location: LABCELL_X16_Y3_N33
\MUX1|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[6]~6_combout\ = ( \RAM1|ram~151_combout\ & ( !\DECODER1|saida[5]~4_combout\ ) ) # ( !\RAM1|ram~151_combout\ & ( (!\RAM1|dado_out~8_combout\ & !\DECODER1|saida[5]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_dado_out~8_combout\,
	datad => \DECODER1|ALT_INV_saida[5]~4_combout\,
	dataf => \RAM1|ALT_INV_ram~151_combout\,
	combout => \MUX1|saida_MUX[6]~6_combout\);

-- Location: FF_X12_Y3_N52
\REG1|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~25_sumout\,
	asdata => \MUX1|saida_MUX[6]~6_combout\,
	sload => \DECODER1|saida[3]~2_combout\,
	ena => \DECODER1|saida[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(6));

-- Location: FF_X13_Y3_N13
\RAM1|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REG1|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~55_q\);

-- Location: FF_X14_Y3_N40
\RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REG1|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~153_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

-- Location: FF_X16_Y3_N8
\RAM1|ram~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REG1|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~103_q\);

-- Location: LABCELL_X16_Y3_N6
\RAM1|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~151_combout\ = ( \RAM1|ram~103_q\ & ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~4_combout\ & (((\RAM1|ram~23_q\)))) # (\ROM1|memROM~4_combout\ & (((!\PC|DOUT\(1))) # (\RAM1|ram~55_q\))) ) ) ) # ( !\RAM1|ram~103_q\ & ( \ROM1|memROM~5_combout\ & 
-- ( (!\ROM1|memROM~4_combout\ & (((\RAM1|ram~23_q\)))) # (\ROM1|memROM~4_combout\ & (\RAM1|ram~55_q\ & ((\PC|DOUT\(1))))) ) ) ) # ( \RAM1|ram~103_q\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~23_q\ ) ) ) # ( !\RAM1|ram~103_q\ & ( !\ROM1|memROM~5_combout\ & 
-- ( \RAM1|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011000001010011001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~55_q\,
	datab => \RAM1|ALT_INV_ram~23_q\,
	datac => \PC|ALT_INV_DOUT\(1),
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \RAM1|ALT_INV_ram~103_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~151_combout\);

-- Location: LABCELL_X14_Y3_N51
\RAM1|dado_out[7]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[7]~15_combout\ = (!\RAM1|dado_out~8_combout\) # (\RAM1|ram~152_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~152_combout\,
	datad => \RAM1|ALT_INV_dado_out~8_combout\,
	combout => \RAM1|dado_out[7]~15_combout\);

-- Location: LABCELL_X12_Y3_N54
\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( \REG1|DOUT\(7) ) + ( (!\DECODER1|Equal5~1_combout\ & (!\DECODER1|saida[2]~1_combout\ $ (((!\RAM1|dado_out[7]~15_combout\) # (\DECODER1|saida[5]~4_combout\))))) # (\DECODER1|Equal5~1_combout\ & 
-- (((!\DECODER1|saida[5]~4_combout\ & \RAM1|dado_out[7]~15_combout\)))) ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110111010010110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal5~1_combout\,
	datab => \DECODER1|ALT_INV_saida[2]~1_combout\,
	datac => \DECODER1|ALT_INV_saida[5]~4_combout\,
	datad => \REG1|ALT_INV_DOUT\(7),
	dataf => \RAM1|ALT_INV_dado_out[7]~15_combout\,
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\);

-- Location: LABCELL_X14_Y3_N15
\MUX1|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[7]~7_combout\ = ( \RAM1|ram~152_combout\ & ( !\DECODER1|saida[5]~4_combout\ ) ) # ( !\RAM1|ram~152_combout\ & ( (!\DECODER1|saida[5]~4_combout\ & !\RAM1|dado_out~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DECODER1|ALT_INV_saida[5]~4_combout\,
	datad => \RAM1|ALT_INV_dado_out~8_combout\,
	dataf => \RAM1|ALT_INV_ram~152_combout\,
	combout => \MUX1|saida_MUX[7]~7_combout\);

-- Location: FF_X12_Y3_N55
\REG1|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~29_sumout\,
	asdata => \MUX1|saida_MUX[7]~7_combout\,
	sload => \DECODER1|saida[3]~2_combout\,
	ena => \DECODER1|saida[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(7));

-- Location: FF_X14_Y3_N49
\RAM1|ram~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REG1|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~104_q\);

-- Location: LABCELL_X14_Y3_N42
\RAM1|ram~56feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~56feeder_combout\ = \REG1|DOUT\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG1|ALT_INV_DOUT\(7),
	combout => \RAM1|ram~56feeder_combout\);

-- Location: FF_X14_Y3_N44
\RAM1|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM1|ram~56feeder_combout\,
	ena => \RAM1|ram~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~56_q\);

-- Location: FF_X14_Y3_N8
\RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REG1|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~153_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

-- Location: LABCELL_X14_Y3_N6
\RAM1|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~152_combout\ = ( \RAM1|ram~24_q\ & ( \ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~5_combout\) # ((!\PC|DOUT\(1) & (\RAM1|ram~104_q\)) # (\PC|DOUT\(1) & ((\RAM1|ram~56_q\)))) ) ) ) # ( !\RAM1|ram~24_q\ & ( \ROM1|memROM~4_combout\ & ( 
-- (\ROM1|memROM~5_combout\ & ((!\PC|DOUT\(1) & (\RAM1|ram~104_q\)) # (\PC|DOUT\(1) & ((\RAM1|ram~56_q\))))) ) ) ) # ( \RAM1|ram~24_q\ & ( !\ROM1|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000001001111111111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datab => \RAM1|ALT_INV_ram~104_q\,
	datac => \RAM1|ALT_INV_ram~56_q\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \RAM1|ALT_INV_ram~24_q\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~152_combout\);

-- Location: LABCELL_X16_Y3_N39
\DECODER1|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|saida~0_combout\ = ( !\ROM1|memROM~0_combout\ & ( (\ROM1|memROM~1_combout\ & (((\ROM1|memROM~3_combout\ & !\PC|DOUT\(3))) # (\ROM1|memROM~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010001000100110001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \DECODER1|saida~0_combout\);

-- Location: LABCELL_X16_Y3_N45
\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~8_combout\);

-- Location: FF_X13_Y3_N40
\PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[4]~DUPLICATE_q\);

-- Location: FF_X13_Y3_N43
\PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[5]~DUPLICATE_q\);

-- Location: FF_X13_Y3_N46
\PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[6]~DUPLICATE_q\);

-- Location: FF_X13_Y3_N49
\PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[7]~DUPLICATE_q\);

-- Location: IOIBUF_X54_Y18_N95
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: IOIBUF_X38_Y45_N35
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X34_Y45_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X50_Y45_N35
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X46_Y45_N92
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X46_Y0_N52
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X10_Y45_N1
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X22_Y45_N1
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X18_Y45_N1
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X36_Y45_N52
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X36_Y45_N1
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X0_Y21_N4
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X54_Y21_N4
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: MLABCELL_X28_Y21_N0
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


