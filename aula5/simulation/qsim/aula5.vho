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

-- DATE "04/14/2022 17:52:59"

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
SIGNAL \SAIDARAM[0]~output_o\ : std_logic;
SIGNAL \SAIDARAM[1]~output_o\ : std_logic;
SIGNAL \SAIDARAM[2]~output_o\ : std_logic;
SIGNAL \SAIDARAM[3]~output_o\ : std_logic;
SIGNAL \SAIDARAM[4]~output_o\ : std_logic;
SIGNAL \SAIDARAM[5]~output_o\ : std_logic;
SIGNAL \SAIDARAM[6]~output_o\ : std_logic;
SIGNAL \SAIDARAM[7]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDB[0]~output_o\ : std_logic;
SIGNAL \LEDB[1]~output_o\ : std_logic;
SIGNAL \LEDB[2]~output_o\ : std_logic;
SIGNAL \LEDB[3]~output_o\ : std_logic;
SIGNAL \LEDB[4]~output_o\ : std_logic;
SIGNAL \LEDB[5]~output_o\ : std_logic;
SIGNAL \LEDB[6]~output_o\ : std_logic;
SIGNAL \LEDB[7]~output_o\ : std_logic;
SIGNAL \LEDB[8]~output_o\ : std_logic;
SIGNAL \LEDB[9]~output_o\ : std_logic;
SIGNAL \LEDB[10]~output_o\ : std_logic;
SIGNAL \LEDB[11]~output_o\ : std_logic;
SIGNAL \LED_SAIDAULA[0]~output_o\ : std_logic;
SIGNAL \LED_SAIDAULA[1]~output_o\ : std_logic;
SIGNAL \LED_SAIDAULA[2]~output_o\ : std_logic;
SIGNAL \LED_SAIDAULA[3]~output_o\ : std_logic;
SIGNAL \LED_SAIDAULA[4]~output_o\ : std_logic;
SIGNAL \LED_SAIDAULA[5]~output_o\ : std_logic;
SIGNAL \LED_SAIDAULA[6]~output_o\ : std_logic;
SIGNAL \LED_SAIDAULA[7]~output_o\ : std_logic;
SIGNAL \LEDIMED[0]~output_o\ : std_logic;
SIGNAL \LEDIMED[1]~output_o\ : std_logic;
SIGNAL \LEDIMED[2]~output_o\ : std_logic;
SIGNAL \LEDIMED[3]~output_o\ : std_logic;
SIGNAL \LEDIMED[4]~output_o\ : std_logic;
SIGNAL \LEDIMED[5]~output_o\ : std_logic;
SIGNAL \LEDIMED[6]~output_o\ : std_logic;
SIGNAL \LEDIMED[7]~output_o\ : std_logic;
SIGNAL \LEDIMED[8]~output_o\ : std_logic;
SIGNAL \PC_OUT[0]~output_o\ : std_logic;
SIGNAL \PC_OUT[1]~output_o\ : std_logic;
SIGNAL \PC_OUT[2]~output_o\ : std_logic;
SIGNAL \PC_OUT[3]~output_o\ : std_logic;
SIGNAL \PC_OUT[4]~output_o\ : std_logic;
SIGNAL \PC_OUT[5]~output_o\ : std_logic;
SIGNAL \PC_OUT[6]~output_o\ : std_logic;
SIGNAL \PC_OUT[7]~output_o\ : std_logic;
SIGNAL \PC_OUT[8]~output_o\ : std_logic;
SIGNAL \LEDFLAGEQ~output_o\ : std_logic;
SIGNAL \LEDFLAG0~output_o\ : std_logic;
SIGNAL \LED_OUTMUX1[0]~output_o\ : std_logic;
SIGNAL \LED_OUTMUX1[1]~output_o\ : std_logic;
SIGNAL \LED_OUTMUX1[2]~output_o\ : std_logic;
SIGNAL \LED_OUTMUX1[3]~output_o\ : std_logic;
SIGNAL \LED_OUTMUX1[4]~output_o\ : std_logic;
SIGNAL \LED_OUTMUX1[5]~output_o\ : std_logic;
SIGNAL \LED_OUTMUX1[6]~output_o\ : std_logic;
SIGNAL \LED_OUTMUX1[7]~output_o\ : std_logic;
SIGNAL \LED_OP_ULAMUX[0]~output_o\ : std_logic;
SIGNAL \LED_OP_ULAMUX[1]~output_o\ : std_logic;
SIGNAL \LED_SEL_MUX1~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \DECODER1|Equal9~1_combout\ : std_logic;
SIGNAL \DECODER1|Equal9~2_combout\ : std_logic;
SIGNAL \DECODER1|saida[4]~0_combout\ : std_logic;
SIGNAL \RAM1|dado_out~8_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \DECODER1|Equal9~0_combout\ : std_logic;
SIGNAL \RAM1|ram~173_combout\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~147_combout\ : std_logic;
SIGNAL \RAM1|ram~174_combout\ : std_logic;
SIGNAL \RAM1|ram~26_q\ : std_logic;
SIGNAL \RAM1|ram~148_combout\ : std_logic;
SIGNAL \RAM1|ram~175_combout\ : std_logic;
SIGNAL \RAM1|ram~34_q\ : std_logic;
SIGNAL \RAM1|ram~149_combout\ : std_logic;
SIGNAL \RAM1|ram~176_combout\ : std_logic;
SIGNAL \RAM1|ram~42_q\ : std_logic;
SIGNAL \RAM1|ram~150_combout\ : std_logic;
SIGNAL \RAM1|ram~151_combout\ : std_logic;
SIGNAL \RAM1|dado_out[1]~10_combout\ : std_logic;
SIGNAL \RAM1|dado_out[0]~9_combout\ : std_logic;
SIGNAL \ULA1|Add0~34_cout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|Equal2~0_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~29_q\ : std_logic;
SIGNAL \RAM1|ram~37_q\ : std_logic;
SIGNAL \RAM1|ram~45_q\ : std_logic;
SIGNAL \RAM1|ram~159_combout\ : std_logic;
SIGNAL \RAM1|ram~160_combout\ : std_logic;
SIGNAL \RAM1|dado_out[4]~13_combout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~27_q\ : std_logic;
SIGNAL \RAM1|ram~35_q\ : std_logic;
SIGNAL \RAM1|ram~43_q\ : std_logic;
SIGNAL \RAM1|ram~152_combout\ : std_logic;
SIGNAL \RAM1|ram~153_combout\ : std_logic;
SIGNAL \RAM1|dado_out[2]~11_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~154_combout\ : std_logic;
SIGNAL \RAM1|ram~28_q\ : std_logic;
SIGNAL \RAM1|ram~155_combout\ : std_logic;
SIGNAL \RAM1|ram~36_q\ : std_logic;
SIGNAL \RAM1|ram~156_combout\ : std_logic;
SIGNAL \RAM1|ram~44_q\ : std_logic;
SIGNAL \RAM1|ram~157_combout\ : std_logic;
SIGNAL \RAM1|ram~158_combout\ : std_logic;
SIGNAL \RAM1|dado_out[3]~12_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~161_combout\ : std_logic;
SIGNAL \RAM1|ram~30_q\ : std_logic;
SIGNAL \RAM1|ram~162_combout\ : std_logic;
SIGNAL \RAM1|ram~38_q\ : std_logic;
SIGNAL \RAM1|ram~163_combout\ : std_logic;
SIGNAL \RAM1|ram~46_q\ : std_logic;
SIGNAL \RAM1|ram~164_combout\ : std_logic;
SIGNAL \RAM1|ram~165_combout\ : std_logic;
SIGNAL \RAM1|dado_out[5]~14_combout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|Equal2~1_combout\ : std_logic;
SIGNAL \ULA1|Equal2~2_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \RAM1|ram~31_q\ : std_logic;
SIGNAL \RAM1|ram~39_q\ : std_logic;
SIGNAL \RAM1|ram~47_q\ : std_logic;
SIGNAL \RAM1|ram~166_combout\ : std_logic;
SIGNAL \RAM1|ram~167_combout\ : std_logic;
SIGNAL \RAM1|dado_out[6]~15_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~168_combout\ : std_logic;
SIGNAL \RAM1|ram~32_q\ : std_logic;
SIGNAL \RAM1|ram~169_combout\ : std_logic;
SIGNAL \RAM1|ram~40_q\ : std_logic;
SIGNAL \RAM1|ram~170_combout\ : std_logic;
SIGNAL \RAM1|ram~48_q\ : std_logic;
SIGNAL \RAM1|ram~171_combout\ : std_logic;
SIGNAL \RAM1|ram~172_combout\ : std_logic;
SIGNAL \RAM1|dado_out[7]~16_combout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|Equal2~3_combout\ : std_logic;
SIGNAL \REG_FLAG_EQ|DOUT~0_combout\ : std_logic;
SIGNAL \REG_FLAG_EQ|DOUT~q\ : std_logic;
SIGNAL \MUXPC|Equal1~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~2\ : std_logic;
SIGNAL \incrementaPC|Add0~6\ : std_logic;
SIGNAL \incrementaPC|Add0~10\ : std_logic;
SIGNAL \incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \DECODER1|Equal9~4_combout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \DECODER1|selMuxPC~0_combout\ : std_logic;
SIGNAL \PC|DOUT[8]~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~14\ : std_logic;
SIGNAL \incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[4]~8_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~34\ : std_logic;
SIGNAL \incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[5]~7_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~30\ : std_logic;
SIGNAL \incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \DECODER1|Equal9~5_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~26\ : std_logic;
SIGNAL \incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[7]~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~15_combout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~22\ : std_logic;
SIGNAL \incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[8]~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \MUXPC|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \DECODER1|Equal9~3_combout\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~25_q\ : std_logic;
SIGNAL \RAM1|ram~33_q\ : std_logic;
SIGNAL \RAM1|ram~41_q\ : std_logic;
SIGNAL \RAM1|ram~145_combout\ : std_logic;
SIGNAL \RAM1|ram~146_combout\ : std_logic;
SIGNAL \DECODER1|Equal9~6_combout\ : std_logic;
SIGNAL \ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \ULA1|Equal2~4_combout\ : std_logic;
SIGNAL \DECODER1|saida\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \REG_ADDR_RET|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM1|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_Equal9~5_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_saida\ : std_logic_vector(7 DOWNTO 7);
SIGNAL \REG_FLAG_EQ|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \DECODER1|ALT_INV_Equal9~3_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_saida[4]~0_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_Equal9~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_Equal9~1_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_Equal9~0_combout\ : std_logic;
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
SIGNAL \ROM1|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[7]~16_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[6]~15_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[5]~14_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[4]~13_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[3]~12_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[2]~11_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[1]~10_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[0]~9_combout\ : std_logic;
SIGNAL \REG_ADDR_RET|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \MUXPC|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[8]~0_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_selMuxPC~0_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Equal2~3_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~172_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~171_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~170_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~169_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~168_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~167_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~166_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~165_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~164_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~163_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~162_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~161_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~158_combout\ : std_logic;

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
\RAM1|ALT_INV_ram~157_combout\ <= NOT \RAM1|ram~157_combout\;
\RAM1|ALT_INV_ram~44_q\ <= NOT \RAM1|ram~44_q\;
\RAM1|ALT_INV_ram~156_combout\ <= NOT \RAM1|ram~156_combout\;
\RAM1|ALT_INV_ram~36_q\ <= NOT \RAM1|ram~36_q\;
\RAM1|ALT_INV_ram~155_combout\ <= NOT \RAM1|ram~155_combout\;
\RAM1|ALT_INV_ram~28_q\ <= NOT \RAM1|ram~28_q\;
\RAM1|ALT_INV_ram~154_combout\ <= NOT \RAM1|ram~154_combout\;
\RAM1|ALT_INV_ram~20_q\ <= NOT \RAM1|ram~20_q\;
\MUX1|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \MUX1|saida_MUX[2]~2_combout\;
\RAM1|ALT_INV_ram~153_combout\ <= NOT \RAM1|ram~153_combout\;
\RAM1|ALT_INV_ram~152_combout\ <= NOT \RAM1|ram~152_combout\;
\RAM1|ALT_INV_ram~43_q\ <= NOT \RAM1|ram~43_q\;
\RAM1|ALT_INV_ram~35_q\ <= NOT \RAM1|ram~35_q\;
\RAM1|ALT_INV_ram~27_q\ <= NOT \RAM1|ram~27_q\;
\RAM1|ALT_INV_ram~19_q\ <= NOT \RAM1|ram~19_q\;
\MUX1|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \MUX1|saida_MUX[1]~1_combout\;
\RAM1|ALT_INV_ram~151_combout\ <= NOT \RAM1|ram~151_combout\;
\RAM1|ALT_INV_ram~150_combout\ <= NOT \RAM1|ram~150_combout\;
\RAM1|ALT_INV_ram~42_q\ <= NOT \RAM1|ram~42_q\;
\RAM1|ALT_INV_ram~149_combout\ <= NOT \RAM1|ram~149_combout\;
\RAM1|ALT_INV_ram~34_q\ <= NOT \RAM1|ram~34_q\;
\RAM1|ALT_INV_ram~148_combout\ <= NOT \RAM1|ram~148_combout\;
\RAM1|ALT_INV_ram~26_q\ <= NOT \RAM1|ram~26_q\;
\RAM1|ALT_INV_ram~147_combout\ <= NOT \RAM1|ram~147_combout\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\MUX1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \MUX1|saida_MUX[0]~0_combout\;
\RAM1|ALT_INV_ram~146_combout\ <= NOT \RAM1|ram~146_combout\;
\ROM1|ALT_INV_memROM~13_combout\ <= NOT \ROM1|memROM~13_combout\;
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\RAM1|ALT_INV_ram~145_combout\ <= NOT \RAM1|ram~145_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\RAM1|ALT_INV_ram~41_q\ <= NOT \RAM1|ram~41_q\;
\RAM1|ALT_INV_ram~33_q\ <= NOT \RAM1|ram~33_q\;
\RAM1|ALT_INV_ram~25_q\ <= NOT \RAM1|ram~25_q\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\RAM1|ALT_INV_dado_out~8_combout\ <= NOT \RAM1|dado_out~8_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\DECODER1|ALT_INV_Equal9~5_combout\ <= NOT \DECODER1|Equal9~5_combout\;
\DECODER1|ALT_INV_saida\(7) <= NOT \DECODER1|saida\(7);
\REG_FLAG_EQ|ALT_INV_DOUT~q\ <= NOT \REG_FLAG_EQ|DOUT~q\;
\DECODER1|ALT_INV_Equal9~3_combout\ <= NOT \DECODER1|Equal9~3_combout\;
\DECODER1|ALT_INV_saida[4]~0_combout\ <= NOT \DECODER1|saida[4]~0_combout\;
\DECODER1|ALT_INV_Equal9~2_combout\ <= NOT \DECODER1|Equal9~2_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\DECODER1|ALT_INV_Equal9~1_combout\ <= NOT \DECODER1|Equal9~1_combout\;
\DECODER1|ALT_INV_Equal9~0_combout\ <= NOT \DECODER1|Equal9~0_combout\;
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
\ROM1|ALT_INV_memROM~15_combout\ <= NOT \ROM1|memROM~15_combout\;
\ROM1|ALT_INV_memROM~14_combout\ <= NOT \ROM1|memROM~14_combout\;
\RAM1|ALT_INV_dado_out[7]~16_combout\ <= NOT \RAM1|dado_out[7]~16_combout\;
\RAM1|ALT_INV_dado_out[6]~15_combout\ <= NOT \RAM1|dado_out[6]~15_combout\;
\RAM1|ALT_INV_dado_out[5]~14_combout\ <= NOT \RAM1|dado_out[5]~14_combout\;
\RAM1|ALT_INV_dado_out[4]~13_combout\ <= NOT \RAM1|dado_out[4]~13_combout\;
\RAM1|ALT_INV_dado_out[3]~12_combout\ <= NOT \RAM1|dado_out[3]~12_combout\;
\RAM1|ALT_INV_dado_out[2]~11_combout\ <= NOT \RAM1|dado_out[2]~11_combout\;
\RAM1|ALT_INV_dado_out[1]~10_combout\ <= NOT \RAM1|dado_out[1]~10_combout\;
\RAM1|ALT_INV_dado_out[0]~9_combout\ <= NOT \RAM1|dado_out[0]~9_combout\;
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
\PC|ALT_INV_DOUT[8]~0_combout\ <= NOT \PC|DOUT[8]~0_combout\;
\DECODER1|ALT_INV_selMuxPC~0_combout\ <= NOT \DECODER1|selMuxPC~0_combout\;
\ULA1|ALT_INV_Equal2~3_combout\ <= NOT \ULA1|Equal2~3_combout\;
\ULA1|ALT_INV_Equal2~2_combout\ <= NOT \ULA1|Equal2~2_combout\;
\ULA1|ALT_INV_Equal2~1_combout\ <= NOT \ULA1|Equal2~1_combout\;
\ULA1|ALT_INV_Equal2~0_combout\ <= NOT \ULA1|Equal2~0_combout\;
\MUX1|ALT_INV_saida_MUX[7]~7_combout\ <= NOT \MUX1|saida_MUX[7]~7_combout\;
\RAM1|ALT_INV_ram~172_combout\ <= NOT \RAM1|ram~172_combout\;
\RAM1|ALT_INV_ram~171_combout\ <= NOT \RAM1|ram~171_combout\;
\RAM1|ALT_INV_ram~48_q\ <= NOT \RAM1|ram~48_q\;
\RAM1|ALT_INV_ram~170_combout\ <= NOT \RAM1|ram~170_combout\;
\RAM1|ALT_INV_ram~40_q\ <= NOT \RAM1|ram~40_q\;
\RAM1|ALT_INV_ram~169_combout\ <= NOT \RAM1|ram~169_combout\;
\RAM1|ALT_INV_ram~32_q\ <= NOT \RAM1|ram~32_q\;
\RAM1|ALT_INV_ram~168_combout\ <= NOT \RAM1|ram~168_combout\;
\RAM1|ALT_INV_ram~24_q\ <= NOT \RAM1|ram~24_q\;
\MUX1|ALT_INV_saida_MUX[6]~6_combout\ <= NOT \MUX1|saida_MUX[6]~6_combout\;
\RAM1|ALT_INV_ram~167_combout\ <= NOT \RAM1|ram~167_combout\;
\RAM1|ALT_INV_ram~166_combout\ <= NOT \RAM1|ram~166_combout\;
\RAM1|ALT_INV_ram~47_q\ <= NOT \RAM1|ram~47_q\;
\RAM1|ALT_INV_ram~39_q\ <= NOT \RAM1|ram~39_q\;
\RAM1|ALT_INV_ram~31_q\ <= NOT \RAM1|ram~31_q\;
\RAM1|ALT_INV_ram~23_q\ <= NOT \RAM1|ram~23_q\;
\MUX1|ALT_INV_saida_MUX[5]~5_combout\ <= NOT \MUX1|saida_MUX[5]~5_combout\;
\RAM1|ALT_INV_ram~165_combout\ <= NOT \RAM1|ram~165_combout\;
\RAM1|ALT_INV_ram~164_combout\ <= NOT \RAM1|ram~164_combout\;
\RAM1|ALT_INV_ram~46_q\ <= NOT \RAM1|ram~46_q\;
\RAM1|ALT_INV_ram~163_combout\ <= NOT \RAM1|ram~163_combout\;
\RAM1|ALT_INV_ram~38_q\ <= NOT \RAM1|ram~38_q\;
\RAM1|ALT_INV_ram~162_combout\ <= NOT \RAM1|ram~162_combout\;
\RAM1|ALT_INV_ram~30_q\ <= NOT \RAM1|ram~30_q\;
\RAM1|ALT_INV_ram~161_combout\ <= NOT \RAM1|ram~161_combout\;
\RAM1|ALT_INV_ram~22_q\ <= NOT \RAM1|ram~22_q\;
\MUX1|ALT_INV_saida_MUX[4]~4_combout\ <= NOT \MUX1|saida_MUX[4]~4_combout\;
\RAM1|ALT_INV_ram~160_combout\ <= NOT \RAM1|ram~160_combout\;
\RAM1|ALT_INV_ram~159_combout\ <= NOT \RAM1|ram~159_combout\;
\RAM1|ALT_INV_ram~45_q\ <= NOT \RAM1|ram~45_q\;
\RAM1|ALT_INV_ram~37_q\ <= NOT \RAM1|ram~37_q\;
\RAM1|ALT_INV_ram~29_q\ <= NOT \RAM1|ram~29_q\;
\RAM1|ALT_INV_ram~21_q\ <= NOT \RAM1|ram~21_q\;
\MUX1|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \MUX1|saida_MUX[3]~3_combout\;
\RAM1|ALT_INV_ram~158_combout\ <= NOT \RAM1|ram~158_combout\;

\SAIDARAM[0]~output\ : cyclonev_io_obuf
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
	o => \SAIDARAM[0]~output_o\);

\SAIDARAM[1]~output\ : cyclonev_io_obuf
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
	o => \SAIDARAM[1]~output_o\);

\SAIDARAM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~153_combout\,
	oe => \RAM1|dado_out~8_combout\,
	devoe => ww_devoe,
	o => \SAIDARAM[2]~output_o\);

\SAIDARAM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~158_combout\,
	oe => \RAM1|dado_out~8_combout\,
	devoe => ww_devoe,
	o => \SAIDARAM[3]~output_o\);

\SAIDARAM[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~160_combout\,
	oe => \RAM1|dado_out~8_combout\,
	devoe => ww_devoe,
	o => \SAIDARAM[4]~output_o\);

\SAIDARAM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~165_combout\,
	oe => \RAM1|dado_out~8_combout\,
	devoe => ww_devoe,
	o => \SAIDARAM[5]~output_o\);

\SAIDARAM[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~167_combout\,
	oe => \RAM1|dado_out~8_combout\,
	devoe => ww_devoe,
	o => \SAIDARAM[6]~output_o\);

\SAIDARAM[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~172_combout\,
	oe => \RAM1|dado_out~8_combout\,
	devoe => ww_devoe,
	o => \SAIDARAM[7]~output_o\);

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
	o => \LEDR[0]~output_o\);

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
	o => \LEDR[1]~output_o\);

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
	o => \LEDR[2]~output_o\);

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
	o => \LEDR[3]~output_o\);

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
	o => \LEDR[4]~output_o\);

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
	o => \LEDR[5]~output_o\);

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
	o => \LEDR[6]~output_o\);

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
	o => \LEDR[7]~output_o\);

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
	o => \LEDB[0]~output_o\);

\LEDB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Equal9~1_combout\,
	devoe => ww_devoe,
	o => \LEDB[1]~output_o\);

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
	o => \LEDB[2]~output_o\);

\LEDB[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|ALT_INV_Equal9~2_combout\,
	devoe => ww_devoe,
	o => \LEDB[3]~output_o\);

\LEDB[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|saida[4]~0_combout\,
	devoe => ww_devoe,
	o => \LEDB[4]~output_o\);

\LEDB[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Equal9~3_combout\,
	devoe => ww_devoe,
	o => \LEDB[5]~output_o\);

\LEDB[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Equal9~3_combout\,
	devoe => ww_devoe,
	o => \LEDB[6]~output_o\);

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
	o => \LEDB[7]~output_o\);

\LEDB[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Equal9~4_combout\,
	devoe => ww_devoe,
	o => \LEDB[8]~output_o\);

\LEDB[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Equal9~5_combout\,
	devoe => ww_devoe,
	o => \LEDB[9]~output_o\);

\LEDB[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Equal9~6_combout\,
	devoe => ww_devoe,
	o => \LEDB[10]~output_o\);

\LEDB[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Equal9~4_combout\,
	devoe => ww_devoe,
	o => \LEDB[11]~output_o\);

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
	o => \LED_SAIDAULA[0]~output_o\);

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
	o => \LED_SAIDAULA[1]~output_o\);

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
	o => \LED_SAIDAULA[2]~output_o\);

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
	o => \LED_SAIDAULA[3]~output_o\);

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
	o => \LED_SAIDAULA[4]~output_o\);

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
	o => \LED_SAIDAULA[5]~output_o\);

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
	o => \LED_SAIDAULA[6]~output_o\);

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
	o => \LED_SAIDAULA[7]~output_o\);

\LEDIMED[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~9_combout\,
	devoe => ww_devoe,
	o => \LEDIMED[0]~output_o\);

\LEDIMED[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~11_combout\,
	devoe => ww_devoe,
	o => \LEDIMED[1]~output_o\);

\LEDIMED[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~12_combout\,
	devoe => ww_devoe,
	o => \LEDIMED[2]~output_o\);

\LEDIMED[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~13_combout\,
	devoe => ww_devoe,
	o => \LEDIMED[3]~output_o\);

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
	o => \LEDIMED[4]~output_o\);

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
	o => \LEDIMED[5]~output_o\);

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
	o => \LEDIMED[6]~output_o\);

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
	o => \LEDIMED[7]~output_o\);

\LEDIMED[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~10_combout\,
	devoe => ww_devoe,
	o => \LEDIMED[8]~output_o\);

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
	o => \PC_OUT[0]~output_o\);

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
	o => \PC_OUT[1]~output_o\);

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
	o => \PC_OUT[2]~output_o\);

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
	o => \PC_OUT[3]~output_o\);

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
	o => \PC_OUT[4]~output_o\);

\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(5),
	devoe => ww_devoe,
	o => \PC_OUT[5]~output_o\);

\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(6),
	devoe => ww_devoe,
	o => \PC_OUT[6]~output_o\);

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
	o => \PC_OUT[7]~output_o\);

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
	o => \PC_OUT[8]~output_o\);

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
	o => \LEDFLAGEQ~output_o\);

\LEDFLAG0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Equal2~4_combout\,
	devoe => ww_devoe,
	o => \LEDFLAG0~output_o\);

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
	o => \LED_OUTMUX1[0]~output_o\);

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
	o => \LED_OUTMUX1[1]~output_o\);

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
	o => \LED_OUTMUX1[2]~output_o\);

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
	o => \LED_OUTMUX1[3]~output_o\);

\LED_OUTMUX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[4]~4_combout\,
	devoe => ww_devoe,
	o => \LED_OUTMUX1[4]~output_o\);

\LED_OUTMUX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[5]~5_combout\,
	devoe => ww_devoe,
	o => \LED_OUTMUX1[5]~output_o\);

\LED_OUTMUX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[6]~6_combout\,
	devoe => ww_devoe,
	o => \LED_OUTMUX1[6]~output_o\);

\LED_OUTMUX1[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[7]~7_combout\,
	devoe => ww_devoe,
	o => \LED_OUTMUX1[7]~output_o\);

\LED_OP_ULAMUX[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|ALT_INV_Equal9~2_combout\,
	devoe => ww_devoe,
	o => \LED_OP_ULAMUX[0]~output_o\);

\LED_OP_ULAMUX[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|saida[4]~0_combout\,
	devoe => ww_devoe,
	o => \LED_OP_ULAMUX[1]~output_o\);

\LED_SEL_MUX1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Equal9~3_combout\,
	devoe => ww_devoe,
	o => \LED_SEL_MUX1~output_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\PC|DOUT\(0) & (((!\PC|DOUT\(2) & !\PC|DOUT\(3))))) # (\PC|DOUT\(0) & (!\PC|DOUT\(1) & (\PC|DOUT\(2) & \PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000000000010000000000000000001010000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~13_combout\);

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = (!\PC|DOUT\(0) & (!\PC|DOUT\(3) $ (((!\PC|DOUT\(1) & \PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001000001000101000100000100010100010000010001010001000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~3_combout\);

\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~8_combout\);

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = (!\PC|DOUT\(0) & (!\PC|DOUT\(1) & (!\PC|DOUT\(2) & !\PC|DOUT\(3)))) # (\PC|DOUT\(0) & (\PC|DOUT\(1) & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000100010001100000010001000110000001000100011000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~2_combout\);

\DECODER1|Equal9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Equal9~1_combout\ = ( !\ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DECODER1|Equal9~1_combout\);

\DECODER1|Equal9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Equal9~2_combout\ = (!\ROM1|memROM~6_combout\ & (!\ROM1|memROM~5_combout\ & (!\ROM1|memROM~8_combout\ & \ROM1|memROM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \DECODER1|Equal9~2_combout\);

\DECODER1|saida[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|saida[4]~0_combout\ = ( !\DECODER1|Equal9~2_combout\ & ( ((!\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~7_combout\) # (!\ROM1|memROM~8_combout\))) # (\ROM1|memROM~5_combout\ & ((\ROM1|memROM~8_combout\) # (\ROM1|memROM~7_combout\)))) # 
-- (\ROM1|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111110111000000000000000010111111111101110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \DECODER1|ALT_INV_Equal9~2_combout\,
	combout => \DECODER1|saida[4]~0_combout\);

\RAM1|dado_out~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out~8_combout\ = (\DECODER1|Equal9~1_combout\ & \ROM1|memROM~10_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal9~1_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|dado_out~8_combout\);

\MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[0]~0_combout\ = (!\DECODER1|Equal9~3_combout\ & (((!\RAM1|dado_out~8_combout\) # (\RAM1|ram~146_combout\)))) # (\DECODER1|Equal9~3_combout\ & (\ROM1|memROM~9_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000110111011101100011011101110110001101110111011000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal9~3_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \RAM1|ALT_INV_dado_out~8_combout\,
	datad => \RAM1|ALT_INV_ram~146_combout\,
	combout => \MUX1|saida_MUX[0]~0_combout\);

\MUX1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[1]~1_combout\ = (!\DECODER1|Equal9~3_combout\ & ((!\RAM1|dado_out~8_combout\) # ((\RAM1|ram~151_combout\)))) # (\DECODER1|Equal9~3_combout\ & (((\ROM1|memROM~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110101111100011011010111110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal9~3_combout\,
	datab => \RAM1|ALT_INV_dado_out~8_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \RAM1|ALT_INV_ram~151_combout\,
	combout => \MUX1|saida_MUX[1]~1_combout\);

\REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~5_sumout\,
	asdata => \MUX1|saida_MUX[1]~1_combout\,
	sload => \DECODER1|saida[4]~0_combout\,
	ena => \DECODER1|Equal9~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(1));

\DECODER1|Equal9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Equal9~0_combout\ = ( !\ROM1|memROM~4_combout\ & ( (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & \ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DECODER1|Equal9~0_combout\);

\RAM1|ram~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~173_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~13_combout\ & ( (\DECODER1|Equal9~0_combout\ & (!\ROM1|memROM~9_combout\ & (\ROM1|memROM~10_combout\ & !\ROM1|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal9~0_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM1|ram~173_combout\);

\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(1),
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

\RAM1|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~147_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~13_combout\ & ( \RAM1|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~18_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM1|ram~147_combout\);

\RAM1|ram~174\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~174_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~13_combout\ & ( (\DECODER1|Equal9~0_combout\ & (\ROM1|memROM~9_combout\ & (\ROM1|memROM~10_combout\ & !\ROM1|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal9~0_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM1|ram~174_combout\);

\RAM1|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(1),
	ena => \RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~26_q\);

\RAM1|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~148_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~13_combout\ & ( \RAM1|ram~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~26_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM1|ram~148_combout\);

\RAM1|ram~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~175_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~13_combout\ & ( (\DECODER1|Equal9~0_combout\ & (!\ROM1|memROM~9_combout\ & (\ROM1|memROM~10_combout\ & \ROM1|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal9~0_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM1|ram~175_combout\);

\RAM1|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(1),
	ena => \RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~34_q\);

\RAM1|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~149_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~13_combout\ & ( \RAM1|ram~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~34_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM1|ram~149_combout\);

\RAM1|ram~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~176_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~13_combout\ & ( (\DECODER1|Equal9~0_combout\ & (\ROM1|memROM~9_combout\ & (\ROM1|memROM~10_combout\ & \ROM1|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal9~0_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM1|ram~176_combout\);

\RAM1|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(1),
	ena => \RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~42_q\);

\RAM1|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~150_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~13_combout\ & ( \RAM1|ram~42_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~42_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM1|ram~150_combout\);

\RAM1|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~151_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~150_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~149_combout\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( 
-- !\ROM1|memROM~11_combout\ & ( \RAM1|ram~148_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~147_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~147_combout\,
	datab => \RAM1|ALT_INV_ram~148_combout\,
	datac => \RAM1|ALT_INV_ram~149_combout\,
	datad => \RAM1|ALT_INV_ram~150_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~151_combout\);

\RAM1|dado_out[1]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[1]~10_combout\ = (!\RAM1|dado_out~8_combout\) # (\RAM1|ram~151_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~8_combout\,
	datab => \RAM1|ALT_INV_ram~151_combout\,
	combout => \RAM1|dado_out[1]~10_combout\);

\RAM1|dado_out[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[0]~9_combout\ = (!\RAM1|dado_out~8_combout\) # (\RAM1|ram~146_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~8_combout\,
	datab => \RAM1|ALT_INV_ram~146_combout\,
	combout => \RAM1|dado_out[0]~9_combout\);

\ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~34_cout\ = CARRY(( !\DECODER1|Equal9~2_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DECODER1|ALT_INV_Equal9~2_combout\,
	cin => GND,
	cout => \ULA1|Add0~34_cout\);

\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( !\DECODER1|Equal9~2_combout\ $ (((!\DECODER1|Equal9~3_combout\ & ((\RAM1|dado_out[0]~9_combout\))) # (\DECODER1|Equal9~3_combout\ & (\ROM1|memROM~9_combout\)))) ) + ( \REG1|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))
-- \ULA1|Add0~2\ = CARRY(( !\DECODER1|Equal9~2_combout\ $ (((!\DECODER1|Equal9~3_combout\ & ((\RAM1|dado_out[0]~9_combout\))) # (\DECODER1|Equal9~3_combout\ & (\ROM1|memROM~9_combout\)))) ) + ( \REG1|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000101001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal9~3_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \DECODER1|ALT_INV_Equal9~2_combout\,
	datad => \RAM1|ALT_INV_dado_out[0]~9_combout\,
	dataf => \REG1|ALT_INV_DOUT\(0),
	cin => \ULA1|Add0~34_cout\,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( !\DECODER1|Equal9~2_combout\ $ (((!\DECODER1|Equal9~3_combout\ & ((\RAM1|dado_out[1]~10_combout\))) # (\DECODER1|Equal9~3_combout\ & (\ROM1|memROM~11_combout\)))) ) + ( \REG1|DOUT\(1) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( !\DECODER1|Equal9~2_combout\ $ (((!\DECODER1|Equal9~3_combout\ & ((\RAM1|dado_out[1]~10_combout\))) # (\DECODER1|Equal9~3_combout\ & (\ROM1|memROM~11_combout\)))) ) + ( \REG1|DOUT\(1) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal9~3_combout\,
	datab => \DECODER1|ALT_INV_Equal9~2_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \RAM1|ALT_INV_dado_out[1]~10_combout\,
	dataf => \REG1|ALT_INV_DOUT\(1),
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

\ULA1|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Equal2~0_combout\ = ( \MUX1|saida_MUX[1]~1_combout\ & ( (!\DECODER1|saida[4]~0_combout\ & (!\ULA1|Add0~1_sumout\ & !\ULA1|Add0~5_sumout\)) ) ) # ( !\MUX1|saida_MUX[1]~1_combout\ & ( (!\DECODER1|saida[4]~0_combout\ & (!\ULA1|Add0~1_sumout\ & 
-- ((!\ULA1|Add0~5_sumout\)))) # (\DECODER1|saida[4]~0_combout\ & (((!\MUX1|saida_MUX[0]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101100001010000100010000000000011011000010100001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_saida[4]~0_combout\,
	datab => \ULA1|ALT_INV_Add0~1_sumout\,
	datac => \MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \ULA1|ALT_INV_Add0~5_sumout\,
	datae => \MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \ULA1|Equal2~0_combout\);

\MUX1|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[4]~4_combout\ = (!\DECODER1|Equal9~3_combout\ & ((!\RAM1|dado_out~8_combout\) # (\RAM1|ram~160_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101010001010100010101000101010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal9~3_combout\,
	datab => \RAM1|ALT_INV_dado_out~8_combout\,
	datac => \RAM1|ALT_INV_ram~160_combout\,
	combout => \MUX1|saida_MUX[4]~4_combout\);

\REG1|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~17_sumout\,
	asdata => \MUX1|saida_MUX[4]~4_combout\,
	sload => \DECODER1|saida[4]~0_combout\,
	ena => \DECODER1|Equal9~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(4));

\RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(4),
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

\RAM1|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(4),
	ena => \RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~29_q\);

\RAM1|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(4),
	ena => \RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~37_q\);

\RAM1|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(4),
	ena => \RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~45_q\);

\RAM1|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~159_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~45_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~37_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~11_combout\ & ( 
-- \RAM1|ram~29_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~21_q\,
	datab => \RAM1|ALT_INV_ram~29_q\,
	datac => \RAM1|ALT_INV_ram~37_q\,
	datad => \RAM1|ALT_INV_ram~45_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~159_combout\);

\RAM1|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~160_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~13_combout\ & ( \RAM1|ram~159_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~159_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM1|ram~160_combout\);

\RAM1|dado_out[4]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[4]~13_combout\ = (!\RAM1|dado_out~8_combout\) # (\RAM1|ram~160_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~8_combout\,
	datab => \RAM1|ALT_INV_ram~160_combout\,
	combout => \RAM1|dado_out[4]~13_combout\);

\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( !\DECODER1|Equal9~2_combout\ $ (((!\DECODER1|Equal9~3_combout\ & ((\RAM1|dado_out[2]~11_combout\))) # (\DECODER1|Equal9~3_combout\ & (\ROM1|memROM~12_combout\)))) ) + ( \REG1|DOUT\(2) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( !\DECODER1|Equal9~2_combout\ $ (((!\DECODER1|Equal9~3_combout\ & ((\RAM1|dado_out[2]~11_combout\))) # (\DECODER1|Equal9~3_combout\ & (\ROM1|memROM~12_combout\)))) ) + ( \REG1|DOUT\(2) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal9~3_combout\,
	datab => \DECODER1|ALT_INV_Equal9~2_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \RAM1|ALT_INV_dado_out[2]~11_combout\,
	dataf => \REG1|ALT_INV_DOUT\(2),
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

\MUX1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[2]~2_combout\ = (!\DECODER1|Equal9~3_combout\ & ((!\RAM1|dado_out~8_combout\) # ((\RAM1|ram~153_combout\)))) # (\DECODER1|Equal9~3_combout\ & (((\ROM1|memROM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110101111100011011010111110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal9~3_combout\,
	datab => \RAM1|ALT_INV_dado_out~8_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \RAM1|ALT_INV_ram~153_combout\,
	combout => \MUX1|saida_MUX[2]~2_combout\);

\REG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~9_sumout\,
	asdata => \MUX1|saida_MUX[2]~2_combout\,
	sload => \DECODER1|saida[4]~0_combout\,
	ena => \DECODER1|Equal9~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(2));

\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(2),
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

\RAM1|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(2),
	ena => \RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~27_q\);

\RAM1|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(2),
	ena => \RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~35_q\);

\RAM1|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(2),
	ena => \RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~43_q\);

\RAM1|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~152_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~43_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~35_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~11_combout\ & ( 
-- \RAM1|ram~27_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~19_q\,
	datab => \RAM1|ALT_INV_ram~27_q\,
	datac => \RAM1|ALT_INV_ram~35_q\,
	datad => \RAM1|ALT_INV_ram~43_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~152_combout\);

\RAM1|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~153_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~13_combout\ & ( \RAM1|ram~152_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~152_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM1|ram~153_combout\);

\RAM1|dado_out[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[2]~11_combout\ = (!\RAM1|dado_out~8_combout\) # (\RAM1|ram~153_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~8_combout\,
	datab => \RAM1|ALT_INV_ram~153_combout\,
	combout => \RAM1|dado_out[2]~11_combout\);

\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( !\DECODER1|Equal9~2_combout\ $ (((!\DECODER1|Equal9~3_combout\ & ((\RAM1|dado_out[3]~12_combout\))) # (\DECODER1|Equal9~3_combout\ & (\ROM1|memROM~13_combout\)))) ) + ( \REG1|DOUT\(3) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( !\DECODER1|Equal9~2_combout\ $ (((!\DECODER1|Equal9~3_combout\ & ((\RAM1|dado_out[3]~12_combout\))) # (\DECODER1|Equal9~3_combout\ & (\ROM1|memROM~13_combout\)))) ) + ( \REG1|DOUT\(3) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal9~2_combout\,
	datab => \DECODER1|ALT_INV_Equal9~3_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \RAM1|ALT_INV_dado_out[3]~12_combout\,
	dataf => \REG1|ALT_INV_DOUT\(3),
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

\MUX1|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[3]~3_combout\ = (!\DECODER1|Equal9~3_combout\ & ((!\RAM1|dado_out~8_combout\) # ((\RAM1|ram~158_combout\)))) # (\DECODER1|Equal9~3_combout\ & (((\ROM1|memROM~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110101111100011011010111110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal9~3_combout\,
	datab => \RAM1|ALT_INV_dado_out~8_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \RAM1|ALT_INV_ram~158_combout\,
	combout => \MUX1|saida_MUX[3]~3_combout\);

\REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~13_sumout\,
	asdata => \MUX1|saida_MUX[3]~3_combout\,
	sload => \DECODER1|saida[4]~0_combout\,
	ena => \DECODER1|Equal9~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(3));

\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(3),
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

\RAM1|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~154_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~13_combout\ & ( \RAM1|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~20_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM1|ram~154_combout\);

\RAM1|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(3),
	ena => \RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~28_q\);

\RAM1|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~155_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~13_combout\ & ( \RAM1|ram~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~28_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM1|ram~155_combout\);

\RAM1|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(3),
	ena => \RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~36_q\);

\RAM1|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~156_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~13_combout\ & ( \RAM1|ram~36_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~36_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM1|ram~156_combout\);

\RAM1|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(3),
	ena => \RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~44_q\);

\RAM1|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~157_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~13_combout\ & ( \RAM1|ram~44_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~44_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM1|ram~157_combout\);

\RAM1|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~158_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~157_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~156_combout\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( 
-- !\ROM1|memROM~11_combout\ & ( \RAM1|ram~155_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~154_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~154_combout\,
	datab => \RAM1|ALT_INV_ram~155_combout\,
	datac => \RAM1|ALT_INV_ram~156_combout\,
	datad => \RAM1|ALT_INV_ram~157_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~158_combout\);

\RAM1|dado_out[3]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[3]~12_combout\ = (!\RAM1|dado_out~8_combout\) # (\RAM1|ram~158_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~8_combout\,
	datab => \RAM1|ALT_INV_ram~158_combout\,
	combout => \RAM1|dado_out[3]~12_combout\);

\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( !\DECODER1|Equal9~2_combout\ $ (((!\DECODER1|Equal9~3_combout\ & \RAM1|dado_out[4]~13_combout\))) ) + ( \REG1|DOUT\(4) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~18\ = CARRY(( !\DECODER1|Equal9~2_combout\ $ (((!\DECODER1|Equal9~3_combout\ & \RAM1|dado_out[4]~13_combout\))) ) + ( \REG1|DOUT\(4) ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal9~2_combout\,
	datab => \DECODER1|ALT_INV_Equal9~3_combout\,
	datad => \RAM1|ALT_INV_dado_out[4]~13_combout\,
	dataf => \REG1|ALT_INV_DOUT\(4),
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

\MUX1|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[5]~5_combout\ = (!\DECODER1|Equal9~3_combout\ & ((!\RAM1|dado_out~8_combout\) # (\RAM1|ram~165_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101010001010100010101000101010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal9~3_combout\,
	datab => \RAM1|ALT_INV_dado_out~8_combout\,
	datac => \RAM1|ALT_INV_ram~165_combout\,
	combout => \MUX1|saida_MUX[5]~5_combout\);

\REG1|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~21_sumout\,
	asdata => \MUX1|saida_MUX[5]~5_combout\,
	sload => \DECODER1|saida[4]~0_combout\,
	ena => \DECODER1|Equal9~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(5));

\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(5),
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

\RAM1|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~161_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~13_combout\ & ( \RAM1|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~22_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM1|ram~161_combout\);

\RAM1|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(5),
	ena => \RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~30_q\);

\RAM1|ram~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~162_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~13_combout\ & ( \RAM1|ram~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~30_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM1|ram~162_combout\);

\RAM1|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(5),
	ena => \RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~38_q\);

\RAM1|ram~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~163_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~13_combout\ & ( \RAM1|ram~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~38_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM1|ram~163_combout\);

\RAM1|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(5),
	ena => \RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~46_q\);

\RAM1|ram~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~164_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~13_combout\ & ( \RAM1|ram~46_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~46_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM1|ram~164_combout\);

\RAM1|ram~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~165_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~164_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~163_combout\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( 
-- !\ROM1|memROM~11_combout\ & ( \RAM1|ram~162_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~161_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~161_combout\,
	datab => \RAM1|ALT_INV_ram~162_combout\,
	datac => \RAM1|ALT_INV_ram~163_combout\,
	datad => \RAM1|ALT_INV_ram~164_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~165_combout\);

\RAM1|dado_out[5]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[5]~14_combout\ = (!\RAM1|dado_out~8_combout\) # (\RAM1|ram~165_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~8_combout\,
	datab => \RAM1|ALT_INV_ram~165_combout\,
	combout => \RAM1|dado_out[5]~14_combout\);

\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( !\DECODER1|Equal9~2_combout\ $ (((!\DECODER1|Equal9~3_combout\ & \RAM1|dado_out[5]~14_combout\))) ) + ( \REG1|DOUT\(5) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( !\DECODER1|Equal9~2_combout\ $ (((!\DECODER1|Equal9~3_combout\ & \RAM1|dado_out[5]~14_combout\))) ) + ( \REG1|DOUT\(5) ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal9~2_combout\,
	datab => \DECODER1|ALT_INV_Equal9~3_combout\,
	datad => \RAM1|ALT_INV_dado_out[5]~14_combout\,
	dataf => \REG1|ALT_INV_DOUT\(5),
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

\ULA1|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Equal2~1_combout\ = ( \MUX1|saida_MUX[5]~5_combout\ & ( (!\DECODER1|saida[4]~0_combout\ & (!\ULA1|Add0~17_sumout\ & !\ULA1|Add0~21_sumout\)) ) ) # ( !\MUX1|saida_MUX[5]~5_combout\ & ( (!\DECODER1|saida[4]~0_combout\ & (!\ULA1|Add0~17_sumout\ & 
-- ((!\ULA1|Add0~21_sumout\)))) # (\DECODER1|saida[4]~0_combout\ & (((!\MUX1|saida_MUX[4]~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101100001010000100010000000000011011000010100001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_saida[4]~0_combout\,
	datab => \ULA1|ALT_INV_Add0~17_sumout\,
	datac => \MUX1|ALT_INV_saida_MUX[4]~4_combout\,
	datad => \ULA1|ALT_INV_Add0~21_sumout\,
	datae => \MUX1|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \ULA1|Equal2~1_combout\);

\ULA1|Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Equal2~2_combout\ = ( \MUX1|saida_MUX[3]~3_combout\ & ( (!\DECODER1|saida[4]~0_combout\ & (!\ULA1|Add0~9_sumout\ & !\ULA1|Add0~13_sumout\)) ) ) # ( !\MUX1|saida_MUX[3]~3_combout\ & ( (!\DECODER1|saida[4]~0_combout\ & (!\ULA1|Add0~9_sumout\ & 
-- ((!\ULA1|Add0~13_sumout\)))) # (\DECODER1|saida[4]~0_combout\ & (((!\MUX1|saida_MUX[2]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101100001010000100010000000000011011000010100001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_saida[4]~0_combout\,
	datab => \ULA1|ALT_INV_Add0~9_sumout\,
	datac => \MUX1|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \ULA1|ALT_INV_Add0~13_sumout\,
	datae => \MUX1|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \ULA1|Equal2~2_combout\);

\MUX1|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[6]~6_combout\ = (!\DECODER1|Equal9~3_combout\ & ((!\RAM1|dado_out~8_combout\) # (\RAM1|ram~167_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101010001010100010101000101010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal9~3_combout\,
	datab => \RAM1|ALT_INV_dado_out~8_combout\,
	datac => \RAM1|ALT_INV_ram~167_combout\,
	combout => \MUX1|saida_MUX[6]~6_combout\);

\REG1|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~25_sumout\,
	asdata => \MUX1|saida_MUX[6]~6_combout\,
	sload => \DECODER1|saida[4]~0_combout\,
	ena => \DECODER1|Equal9~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(6));

\RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(6),
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

\RAM1|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(6),
	ena => \RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~31_q\);

\RAM1|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(6),
	ena => \RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~39_q\);

\RAM1|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(6),
	ena => \RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~47_q\);

\RAM1|ram~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~166_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~47_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~39_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~11_combout\ & ( 
-- \RAM1|ram~31_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~23_q\,
	datab => \RAM1|ALT_INV_ram~31_q\,
	datac => \RAM1|ALT_INV_ram~39_q\,
	datad => \RAM1|ALT_INV_ram~47_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~166_combout\);

\RAM1|ram~167\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~167_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~13_combout\ & ( \RAM1|ram~166_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~166_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM1|ram~167_combout\);

\RAM1|dado_out[6]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[6]~15_combout\ = (!\RAM1|dado_out~8_combout\) # (\RAM1|ram~167_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~8_combout\,
	datab => \RAM1|ALT_INV_ram~167_combout\,
	combout => \RAM1|dado_out[6]~15_combout\);

\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( !\DECODER1|Equal9~2_combout\ $ (((!\DECODER1|Equal9~3_combout\ & \RAM1|dado_out[6]~15_combout\))) ) + ( \REG1|DOUT\(6) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( !\DECODER1|Equal9~2_combout\ $ (((!\DECODER1|Equal9~3_combout\ & \RAM1|dado_out[6]~15_combout\))) ) + ( \REG1|DOUT\(6) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal9~2_combout\,
	datab => \DECODER1|ALT_INV_Equal9~3_combout\,
	datad => \RAM1|ALT_INV_dado_out[6]~15_combout\,
	dataf => \REG1|ALT_INV_DOUT\(6),
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

\MUX1|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[7]~7_combout\ = (!\DECODER1|Equal9~3_combout\ & ((!\RAM1|dado_out~8_combout\) # (\RAM1|ram~172_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101010001010100010101000101010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal9~3_combout\,
	datab => \RAM1|ALT_INV_dado_out~8_combout\,
	datac => \RAM1|ALT_INV_ram~172_combout\,
	combout => \MUX1|saida_MUX[7]~7_combout\);

\REG1|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~29_sumout\,
	asdata => \MUX1|saida_MUX[7]~7_combout\,
	sload => \DECODER1|saida[4]~0_combout\,
	ena => \DECODER1|Equal9~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(7));

\RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(7),
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

\RAM1|ram~168\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~168_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~13_combout\ & ( \RAM1|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~24_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM1|ram~168_combout\);

\RAM1|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(7),
	ena => \RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~32_q\);

\RAM1|ram~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~169_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~13_combout\ & ( \RAM1|ram~32_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~32_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM1|ram~169_combout\);

\RAM1|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(7),
	ena => \RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~40_q\);

\RAM1|ram~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~170_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~13_combout\ & ( \RAM1|ram~40_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~40_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM1|ram~170_combout\);

\RAM1|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(7),
	ena => \RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~48_q\);

\RAM1|ram~171\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~171_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~13_combout\ & ( \RAM1|ram~48_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~48_q\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM1|ram~171_combout\);

\RAM1|ram~172\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~172_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~171_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~170_combout\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( 
-- !\ROM1|memROM~11_combout\ & ( \RAM1|ram~169_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~168_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~168_combout\,
	datab => \RAM1|ALT_INV_ram~169_combout\,
	datac => \RAM1|ALT_INV_ram~170_combout\,
	datad => \RAM1|ALT_INV_ram~171_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~172_combout\);

\RAM1|dado_out[7]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[7]~16_combout\ = (!\RAM1|dado_out~8_combout\) # (\RAM1|ram~172_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out~8_combout\,
	datab => \RAM1|ALT_INV_ram~172_combout\,
	combout => \RAM1|dado_out[7]~16_combout\);

\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( !\DECODER1|Equal9~2_combout\ $ (((!\DECODER1|Equal9~3_combout\ & \RAM1|dado_out[7]~16_combout\))) ) + ( \REG1|DOUT\(7) ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal9~2_combout\,
	datab => \DECODER1|ALT_INV_Equal9~3_combout\,
	datad => \RAM1|ALT_INV_dado_out[7]~16_combout\,
	dataf => \REG1|ALT_INV_DOUT\(7),
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\);

\ULA1|Equal2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Equal2~3_combout\ = ( \MUX1|saida_MUX[7]~7_combout\ & ( (!\DECODER1|saida[4]~0_combout\ & (!\ULA1|Add0~25_sumout\ & !\ULA1|Add0~29_sumout\)) ) ) # ( !\MUX1|saida_MUX[7]~7_combout\ & ( (!\DECODER1|saida[4]~0_combout\ & (!\ULA1|Add0~25_sumout\ & 
-- ((!\ULA1|Add0~29_sumout\)))) # (\DECODER1|saida[4]~0_combout\ & (((!\MUX1|saida_MUX[6]~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101100001010000100010000000000011011000010100001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_saida[4]~0_combout\,
	datab => \ULA1|ALT_INV_Add0~25_sumout\,
	datac => \MUX1|ALT_INV_saida_MUX[6]~6_combout\,
	datad => \ULA1|ALT_INV_Add0~29_sumout\,
	datae => \MUX1|ALT_INV_saida_MUX[7]~7_combout\,
	combout => \ULA1|Equal2~3_combout\);

\REG_FLAG_EQ|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_FLAG_EQ|DOUT~0_combout\ = ( \ULA1|Equal2~2_combout\ & ( \ULA1|Equal2~3_combout\ & ( (!\DECODER1|Equal9~1_combout\ & (\REG_FLAG_EQ|DOUT~q\)) # (\DECODER1|Equal9~1_combout\ & (((\ULA1|Equal2~0_combout\ & \ULA1|Equal2~1_combout\)))) ) ) ) # ( 
-- !\ULA1|Equal2~2_combout\ & ( \ULA1|Equal2~3_combout\ & ( (!\DECODER1|Equal9~1_combout\ & \REG_FLAG_EQ|DOUT~q\) ) ) ) # ( \ULA1|Equal2~2_combout\ & ( !\ULA1|Equal2~3_combout\ & ( (!\DECODER1|Equal9~1_combout\ & \REG_FLAG_EQ|DOUT~q\) ) ) ) # ( 
-- !\ULA1|Equal2~2_combout\ & ( !\ULA1|Equal2~3_combout\ & ( (!\DECODER1|Equal9~1_combout\ & \REG_FLAG_EQ|DOUT~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal9~1_combout\,
	datab => \REG_FLAG_EQ|ALT_INV_DOUT~q\,
	datac => \ULA1|ALT_INV_Equal2~0_combout\,
	datad => \ULA1|ALT_INV_Equal2~1_combout\,
	datae => \ULA1|ALT_INV_Equal2~2_combout\,
	dataf => \ULA1|ALT_INV_Equal2~3_combout\,
	combout => \REG_FLAG_EQ|DOUT~0_combout\);

\REG_FLAG_EQ|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_FLAG_EQ|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_FLAG_EQ|DOUT~q\);

\DECODER1|saida[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|saida\(7) = ( \REG_FLAG_EQ|DOUT~q\ & ( (\ROM1|memROM~6_combout\ & (!\ROM1|memROM~5_combout\ & (\ROM1|memROM~8_combout\ & \ROM1|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	datae => \REG_FLAG_EQ|ALT_INV_DOUT~q\,
	combout => \DECODER1|saida\(7));

\MUXPC|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|Equal1~0_combout\ = (!\DECODER1|Equal9~5_combout\ & ((\DECODER1|saida\(7)) # (\DECODER1|selMuxPC~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000101010001010100010101000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal9~5_combout\,
	datab => \DECODER1|ALT_INV_selMuxPC~0_combout\,
	datac => \DECODER1|ALT_INV_saida\(7),
	combout => \MUXPC|Equal1~0_combout\);

\incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~1_sumout\ = SUM(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \incrementaPC|Add0~2\ = CARRY(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \incrementaPC|Add0~1_sumout\,
	cout => \incrementaPC|Add0~2\);

\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \PC|DOUT\(1) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))
-- \incrementaPC|Add0~6\ = CARRY(( \PC|DOUT\(1) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(1),
	cin => \incrementaPC|Add0~2\,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

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

\DECODER1|Equal9~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Equal9~4_combout\ = ( !\ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & \ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DECODER1|Equal9~4_combout\);

\REG_ADDR_RET|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~13_sumout\,
	ena => \DECODER1|Equal9~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ADDR_RET|DOUT\(3));

\MUXPC|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[3]~3_combout\ = ( \REG_ADDR_RET|DOUT\(3) & ( (!\PC|DOUT[8]~0_combout\ & (((!\MUXPC|Equal1~0_combout\)) # (\ROM1|memROM~13_combout\))) # (\PC|DOUT[8]~0_combout\ & (((\incrementaPC|Add0~13_sumout\)))) ) ) # ( !\REG_ADDR_RET|DOUT\(3) & ( 
-- (!\PC|DOUT[8]~0_combout\ & (\ROM1|memROM~13_combout\ & (\MUXPC|Equal1~0_combout\))) # (\PC|DOUT[8]~0_combout\ & (((\incrementaPC|Add0~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111110001001111011100000100001101111100010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \PC|ALT_INV_DOUT[8]~0_combout\,
	datac => \MUXPC|ALT_INV_Equal1~0_combout\,
	datad => \incrementaPC|ALT_INV_Add0~13_sumout\,
	datae => \REG_ADDR_RET|ALT_INV_DOUT\(3),
	combout => \MUXPC|saida_MUX[3]~3_combout\);

\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUXPC|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\PC|DOUT\(0) & (!\PC|DOUT\(2) & (!\PC|DOUT\(1) $ (\PC|DOUT\(3))))) # (\PC|DOUT\(0) & (!\PC|DOUT\(1) & ((!\PC|DOUT\(3)) # (\PC|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110001000010010000000000000000001100010000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~12_combout\);

\REG_ADDR_RET|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~9_sumout\,
	ena => \DECODER1|Equal9~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ADDR_RET|DOUT\(2));

\MUXPC|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[2]~2_combout\ = ( \REG_ADDR_RET|DOUT\(2) & ( (!\PC|DOUT[8]~0_combout\ & (((!\MUXPC|Equal1~0_combout\)) # (\ROM1|memROM~12_combout\))) # (\PC|DOUT[8]~0_combout\ & (((\incrementaPC|Add0~9_sumout\)))) ) ) # ( !\REG_ADDR_RET|DOUT\(2) & ( 
-- (!\PC|DOUT[8]~0_combout\ & (\ROM1|memROM~12_combout\ & (\MUXPC|Equal1~0_combout\))) # (\PC|DOUT[8]~0_combout\ & (((\incrementaPC|Add0~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111110001001111011100000100001101111100010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \PC|ALT_INV_DOUT[8]~0_combout\,
	datac => \MUXPC|ALT_INV_Equal1~0_combout\,
	datad => \incrementaPC|ALT_INV_Add0~9_sumout\,
	datae => \REG_ADDR_RET|ALT_INV_DOUT\(2),
	combout => \MUXPC|saida_MUX[2]~2_combout\);

\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUXPC|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = (!\PC|DOUT\(3) & (!\PC|DOUT\(2) & (!\PC|DOUT\(0) $ (!\PC|DOUT\(1))))) # (\PC|DOUT\(3) & ((!\PC|DOUT\(0) & (!\PC|DOUT\(1))) # (\PC|DOUT\(0) & ((\PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000010001101011000001000110101100000100011010110000010001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~4_combout\);

\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \ROM1|memROM~7_combout\);

\DECODER1|selMuxPC~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|selMuxPC~0_combout\ = (!\ROM1|memROM~5_combout\ & (\ROM1|memROM~6_combout\ & (\ROM1|memROM~7_combout\ & !\ROM1|memROM~8_combout\))) # (\ROM1|memROM~5_combout\ & (!\ROM1|memROM~6_combout\ & (!\ROM1|memROM~7_combout\ & \ROM1|memROM~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000000000000100100000000000010010000000000001001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \DECODER1|selMuxPC~0_combout\);

\PC|DOUT[8]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[8]~0_combout\ = (!\DECODER1|Equal9~5_combout\ & (!\DECODER1|selMuxPC~0_combout\ & !\DECODER1|saida\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal9~5_combout\,
	datab => \DECODER1|ALT_INV_selMuxPC~0_combout\,
	datac => \DECODER1|ALT_INV_saida\(7),
	combout => \PC|DOUT[8]~0_combout\);

\incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~33_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))
-- \incrementaPC|Add0~34\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \incrementaPC|Add0~14\,
	sumout => \incrementaPC|Add0~33_sumout\,
	cout => \incrementaPC|Add0~34\);

\REG_ADDR_RET|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~33_sumout\,
	ena => \DECODER1|Equal9~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ADDR_RET|DOUT\(4));

\MUXPC|saida_MUX[4]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[4]~8_combout\ = (!\DECODER1|Equal9~5_combout\ & (\PC|DOUT[8]~0_combout\ & ((\incrementaPC|Add0~33_sumout\)))) # (\DECODER1|Equal9~5_combout\ & (((\PC|DOUT[8]~0_combout\ & \incrementaPC|Add0~33_sumout\)) # (\REG_ADDR_RET|DOUT\(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101001101110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal9~5_combout\,
	datab => \PC|ALT_INV_DOUT[8]~0_combout\,
	datac => \REG_ADDR_RET|ALT_INV_DOUT\(4),
	datad => \incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \MUXPC|saida_MUX[4]~8_combout\);

\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUXPC|saida_MUX[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

\incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~29_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~34\ ))
-- \incrementaPC|Add0~30\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \incrementaPC|Add0~34\,
	sumout => \incrementaPC|Add0~29_sumout\,
	cout => \incrementaPC|Add0~30\);

\REG_ADDR_RET|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~29_sumout\,
	ena => \DECODER1|Equal9~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ADDR_RET|DOUT\(5));

\MUXPC|saida_MUX[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[5]~7_combout\ = (!\DECODER1|Equal9~5_combout\ & (\PC|DOUT[8]~0_combout\ & ((\incrementaPC|Add0~29_sumout\)))) # (\DECODER1|Equal9~5_combout\ & (((\PC|DOUT[8]~0_combout\ & \incrementaPC|Add0~29_sumout\)) # (\REG_ADDR_RET|DOUT\(5))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101001101110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal9~5_combout\,
	datab => \PC|ALT_INV_DOUT[8]~0_combout\,
	datac => \REG_ADDR_RET|ALT_INV_DOUT\(5),
	datad => \incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \MUXPC|saida_MUX[5]~7_combout\);

\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUXPC|saida_MUX[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

\incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~25_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~30\ ))
-- \incrementaPC|Add0~26\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \incrementaPC|Add0~30\,
	sumout => \incrementaPC|Add0~25_sumout\,
	cout => \incrementaPC|Add0~26\);

\REG_ADDR_RET|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~25_sumout\,
	ena => \DECODER1|Equal9~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ADDR_RET|DOUT\(6));

\MUXPC|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[6]~6_combout\ = (!\DECODER1|Equal9~5_combout\ & (\PC|DOUT[8]~0_combout\ & ((\incrementaPC|Add0~25_sumout\)))) # (\DECODER1|Equal9~5_combout\ & (((\PC|DOUT[8]~0_combout\ & \incrementaPC|Add0~25_sumout\)) # (\REG_ADDR_RET|DOUT\(6))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101001101110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal9~5_combout\,
	datab => \PC|ALT_INV_DOUT[8]~0_combout\,
	datac => \REG_ADDR_RET|ALT_INV_DOUT\(6),
	datad => \incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \MUXPC|saida_MUX[6]~6_combout\);

\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUXPC|saida_MUX[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\PC|DOUT\(4) & ( (!\PC|DOUT\(8) & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\PC|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(4),
	combout => \ROM1|memROM~1_combout\);

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \ROM1|memROM~5_combout\);

\DECODER1|Equal9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Equal9~5_combout\ = (!\ROM1|memROM~6_combout\ & (\ROM1|memROM~5_combout\ & (!\ROM1|memROM~8_combout\ & \ROM1|memROM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \DECODER1|Equal9~5_combout\);

\incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~21_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))
-- \incrementaPC|Add0~22\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \incrementaPC|Add0~26\,
	sumout => \incrementaPC|Add0~21_sumout\,
	cout => \incrementaPC|Add0~22\);

\REG_ADDR_RET|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~21_sumout\,
	ena => \DECODER1|Equal9~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ADDR_RET|DOUT\(7));

\MUXPC|saida_MUX[7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[7]~5_combout\ = (!\DECODER1|Equal9~5_combout\ & (\PC|DOUT[8]~0_combout\ & ((\incrementaPC|Add0~21_sumout\)))) # (\DECODER1|Equal9~5_combout\ & (((\PC|DOUT[8]~0_combout\ & \incrementaPC|Add0~21_sumout\)) # (\REG_ADDR_RET|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101001101110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal9~5_combout\,
	datab => \PC|ALT_INV_DOUT[8]~0_combout\,
	datac => \REG_ADDR_RET|ALT_INV_DOUT\(7),
	datad => \incrementaPC|ALT_INV_Add0~21_sumout\,
	combout => \MUXPC|saida_MUX[7]~5_combout\);

\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUXPC|saida_MUX[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

\ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~15_combout\ = (!\PC|DOUT\(0) & (!\PC|DOUT\(1) & ((!\PC|DOUT\(2)) # (\PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010001000100000001000100010000000100010001000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~15_combout\);

\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ( !\PC|DOUT\(4) & ( \ROM1|memROM~15_combout\ & ( (!\PC|DOUT\(8) & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \ROM1|memROM~11_combout\);

\REG_ADDR_RET|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~5_sumout\,
	ena => \DECODER1|Equal9~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ADDR_RET|DOUT\(1));

\MUXPC|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[1]~1_combout\ = ( \REG_ADDR_RET|DOUT\(1) & ( (!\PC|DOUT[8]~0_combout\ & (((!\MUXPC|Equal1~0_combout\)) # (\ROM1|memROM~11_combout\))) # (\PC|DOUT[8]~0_combout\ & (((\incrementaPC|Add0~5_sumout\)))) ) ) # ( !\REG_ADDR_RET|DOUT\(1) & ( 
-- (!\PC|DOUT[8]~0_combout\ & (\ROM1|memROM~11_combout\ & (\MUXPC|Equal1~0_combout\))) # (\PC|DOUT[8]~0_combout\ & (((\incrementaPC|Add0~5_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111110001001111011100000100001101111100010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \PC|ALT_INV_DOUT[8]~0_combout\,
	datac => \MUXPC|ALT_INV_Equal1~0_combout\,
	datad => \incrementaPC|ALT_INV_Add0~5_sumout\,
	datae => \REG_ADDR_RET|ALT_INV_DOUT\(1),
	combout => \MUXPC|saida_MUX[1]~1_combout\);

\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUXPC|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( \ROM1|memROM~1_combout\ & ( (\PC|DOUT\(1) & ((!\PC|DOUT\(2) & (\PC|DOUT\(0) & \PC|DOUT\(3))) # (\PC|DOUT\(2) & ((!\PC|DOUT\(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110001000000000000000000000000001100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~10_combout\);

\incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~17_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \incrementaPC|Add0~22\,
	sumout => \incrementaPC|Add0~17_sumout\);

\REG_ADDR_RET|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~17_sumout\,
	ena => \DECODER1|Equal9~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ADDR_RET|DOUT\(8));

\MUXPC|saida_MUX[8]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[8]~4_combout\ = ( \REG_ADDR_RET|DOUT\(8) & ( (!\PC|DOUT[8]~0_combout\ & (((!\MUXPC|Equal1~0_combout\)) # (\ROM1|memROM~10_combout\))) # (\PC|DOUT[8]~0_combout\ & (((\incrementaPC|Add0~17_sumout\)))) ) ) # ( !\REG_ADDR_RET|DOUT\(8) & ( 
-- (!\PC|DOUT[8]~0_combout\ & (\ROM1|memROM~10_combout\ & (\MUXPC|Equal1~0_combout\))) # (\PC|DOUT[8]~0_combout\ & (((\incrementaPC|Add0~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111110001001111011100000100001101111100010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \PC|ALT_INV_DOUT[8]~0_combout\,
	datac => \MUXPC|ALT_INV_Equal1~0_combout\,
	datad => \incrementaPC|ALT_INV_Add0~17_sumout\,
	datae => \REG_ADDR_RET|ALT_INV_DOUT\(8),
	combout => \MUXPC|saida_MUX[8]~4_combout\);

\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUXPC|saida_MUX[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = (!\PC|DOUT\(1) & ((!\PC|DOUT\(3) & (\PC|DOUT\(0))) # (\PC|DOUT\(3) & ((\PC|DOUT\(2)))))) # (\PC|DOUT\(1) & (!\PC|DOUT\(0) & (!\PC|DOUT\(2) & !\PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010000001100011001000000110001100100000011000110010000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~14_combout\);

\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( !\PC|DOUT\(4) & ( \ROM1|memROM~14_combout\ & ( (!\PC|DOUT\(8) & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \ROM1|memROM~9_combout\);

\REG_ADDR_RET|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~1_sumout\,
	ena => \DECODER1|Equal9~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_ADDR_RET|DOUT\(0));

\MUXPC|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXPC|saida_MUX[0]~0_combout\ = ( \REG_ADDR_RET|DOUT\(0) & ( (!\PC|DOUT[8]~0_combout\ & (((!\MUXPC|Equal1~0_combout\)) # (\ROM1|memROM~9_combout\))) # (\PC|DOUT[8]~0_combout\ & (((\incrementaPC|Add0~1_sumout\)))) ) ) # ( !\REG_ADDR_RET|DOUT\(0) & ( 
-- (!\PC|DOUT[8]~0_combout\ & (\ROM1|memROM~9_combout\ & ((\MUXPC|Equal1~0_combout\)))) # (\PC|DOUT[8]~0_combout\ & (((\incrementaPC|Add0~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010011111100110101001100000011010100111111001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \incrementaPC|ALT_INV_Add0~1_sumout\,
	datac => \PC|ALT_INV_DOUT[8]~0_combout\,
	datad => \MUXPC|ALT_INV_Equal1~0_combout\,
	datae => \REG_ADDR_RET|ALT_INV_DOUT\(0),
	combout => \MUXPC|saida_MUX[0]~0_combout\);

\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUXPC|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = (!\PC|DOUT\(3) & (!\PC|DOUT\(0) $ ((!\PC|DOUT\(1))))) # (\PC|DOUT\(3) & ((!\PC|DOUT\(2) & (!\PC|DOUT\(0))) # (\PC|DOUT\(2) & ((!\PC|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010101100011001101010110001100110101011000110011010101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~0_combout\);

\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~6_combout\);

\DECODER1|Equal9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Equal9~3_combout\ = (\ROM1|memROM~6_combout\ & (!\ROM1|memROM~5_combout\ & (!\ROM1|memROM~8_combout\ & !\ROM1|memROM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \DECODER1|Equal9~3_combout\);

\REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~1_sumout\,
	asdata => \MUX1|saida_MUX[0]~0_combout\,
	sload => \DECODER1|saida[4]~0_combout\,
	ena => \DECODER1|Equal9~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(0));

\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(0),
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

\RAM1|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(0),
	ena => \RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~25_q\);

\RAM1|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(0),
	ena => \RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~33_q\);

\RAM1|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(0),
	ena => \RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~41_q\);

\RAM1|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~145_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~41_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~33_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~11_combout\ & ( 
-- \RAM1|ram~25_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~17_q\,
	datab => \RAM1|ALT_INV_ram~25_q\,
	datac => \RAM1|ALT_INV_ram~33_q\,
	datad => \RAM1|ALT_INV_ram~41_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~145_combout\);

\RAM1|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~146_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~13_combout\ & ( \RAM1|ram~145_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~145_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM1|ram~146_combout\);

\DECODER1|Equal9~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Equal9~6_combout\ = (\ROM1|memROM~6_combout\ & (!\ROM1|memROM~5_combout\ & (!\ROM1|memROM~8_combout\ & \ROM1|memROM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \DECODER1|Equal9~6_combout\);

\ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~0_combout\ = (!\DECODER1|saida[4]~0_combout\ & (\ULA1|Add0~1_sumout\)) # (\DECODER1|saida[4]~0_combout\ & ((\MUX1|saida_MUX[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_saida[4]~0_combout\,
	datab => \ULA1|ALT_INV_Add0~1_sumout\,
	datac => \MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA1|saida[0]~0_combout\);

\ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~1_combout\ = (!\DECODER1|saida[4]~0_combout\ & (\ULA1|Add0~5_sumout\)) # (\DECODER1|saida[4]~0_combout\ & ((\MUX1|saida_MUX[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_saida[4]~0_combout\,
	datab => \ULA1|ALT_INV_Add0~5_sumout\,
	datac => \MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \ULA1|saida[1]~1_combout\);

\ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~2_combout\ = (!\DECODER1|saida[4]~0_combout\ & (\ULA1|Add0~9_sumout\)) # (\DECODER1|saida[4]~0_combout\ & ((\MUX1|saida_MUX[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_saida[4]~0_combout\,
	datab => \ULA1|ALT_INV_Add0~9_sumout\,
	datac => \MUX1|ALT_INV_saida_MUX[2]~2_combout\,
	combout => \ULA1|saida[2]~2_combout\);

\ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~3_combout\ = (!\DECODER1|saida[4]~0_combout\ & (\ULA1|Add0~13_sumout\)) # (\DECODER1|saida[4]~0_combout\ & ((\MUX1|saida_MUX[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_saida[4]~0_combout\,
	datab => \ULA1|ALT_INV_Add0~13_sumout\,
	datac => \MUX1|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \ULA1|saida[3]~3_combout\);

\ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~4_combout\ = (!\DECODER1|saida[4]~0_combout\ & (\ULA1|Add0~17_sumout\)) # (\DECODER1|saida[4]~0_combout\ & ((\MUX1|saida_MUX[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_saida[4]~0_combout\,
	datab => \ULA1|ALT_INV_Add0~17_sumout\,
	datac => \MUX1|ALT_INV_saida_MUX[4]~4_combout\,
	combout => \ULA1|saida[4]~4_combout\);

\ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~5_combout\ = (!\DECODER1|saida[4]~0_combout\ & (\ULA1|Add0~21_sumout\)) # (\DECODER1|saida[4]~0_combout\ & ((\MUX1|saida_MUX[5]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_saida[4]~0_combout\,
	datab => \ULA1|ALT_INV_Add0~21_sumout\,
	datac => \MUX1|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \ULA1|saida[5]~5_combout\);

\ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~6_combout\ = (!\DECODER1|saida[4]~0_combout\ & (\ULA1|Add0~25_sumout\)) # (\DECODER1|saida[4]~0_combout\ & ((\MUX1|saida_MUX[6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_saida[4]~0_combout\,
	datab => \ULA1|ALT_INV_Add0~25_sumout\,
	datac => \MUX1|ALT_INV_saida_MUX[6]~6_combout\,
	combout => \ULA1|saida[6]~6_combout\);

\ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~7_combout\ = (!\DECODER1|saida[4]~0_combout\ & (\ULA1|Add0~29_sumout\)) # (\DECODER1|saida[4]~0_combout\ & ((\MUX1|saida_MUX[7]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_saida[4]~0_combout\,
	datab => \ULA1|ALT_INV_Add0~29_sumout\,
	datac => \MUX1|ALT_INV_saida_MUX[7]~7_combout\,
	combout => \ULA1|saida[7]~7_combout\);

\ULA1|Equal2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Equal2~4_combout\ = (\ULA1|Equal2~0_combout\ & (\ULA1|Equal2~1_combout\ & (\ULA1|Equal2~2_combout\ & \ULA1|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Equal2~0_combout\,
	datab => \ULA1|ALT_INV_Equal2~1_combout\,
	datac => \ULA1|ALT_INV_Equal2~2_combout\,
	datad => \ULA1|ALT_INV_Equal2~3_combout\,
	combout => \ULA1|Equal2~4_combout\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_SAIDARAM(0) <= \SAIDARAM[0]~output_o\;

ww_SAIDARAM(1) <= \SAIDARAM[1]~output_o\;

ww_SAIDARAM(2) <= \SAIDARAM[2]~output_o\;

ww_SAIDARAM(3) <= \SAIDARAM[3]~output_o\;

ww_SAIDARAM(4) <= \SAIDARAM[4]~output_o\;

ww_SAIDARAM(5) <= \SAIDARAM[5]~output_o\;

ww_SAIDARAM(6) <= \SAIDARAM[6]~output_o\;

ww_SAIDARAM(7) <= \SAIDARAM[7]~output_o\;

ww_LEDB(0) <= \LEDB[0]~output_o\;

ww_LEDB(1) <= \LEDB[1]~output_o\;

ww_LEDB(2) <= \LEDB[2]~output_o\;

ww_LEDB(3) <= \LEDB[3]~output_o\;

ww_LEDB(4) <= \LEDB[4]~output_o\;

ww_LEDB(5) <= \LEDB[5]~output_o\;

ww_LEDB(6) <= \LEDB[6]~output_o\;

ww_LEDB(7) <= \LEDB[7]~output_o\;

ww_LEDB(8) <= \LEDB[8]~output_o\;

ww_LEDB(9) <= \LEDB[9]~output_o\;

ww_LEDB(10) <= \LEDB[10]~output_o\;

ww_LEDB(11) <= \LEDB[11]~output_o\;

ww_LED_SAIDAULA(0) <= \LED_SAIDAULA[0]~output_o\;

ww_LED_SAIDAULA(1) <= \LED_SAIDAULA[1]~output_o\;

ww_LED_SAIDAULA(2) <= \LED_SAIDAULA[2]~output_o\;

ww_LED_SAIDAULA(3) <= \LED_SAIDAULA[3]~output_o\;

ww_LED_SAIDAULA(4) <= \LED_SAIDAULA[4]~output_o\;

ww_LED_SAIDAULA(5) <= \LED_SAIDAULA[5]~output_o\;

ww_LED_SAIDAULA(6) <= \LED_SAIDAULA[6]~output_o\;

ww_LED_SAIDAULA(7) <= \LED_SAIDAULA[7]~output_o\;

ww_LEDIMED(0) <= \LEDIMED[0]~output_o\;

ww_LEDIMED(1) <= \LEDIMED[1]~output_o\;

ww_LEDIMED(2) <= \LEDIMED[2]~output_o\;

ww_LEDIMED(3) <= \LEDIMED[3]~output_o\;

ww_LEDIMED(4) <= \LEDIMED[4]~output_o\;

ww_LEDIMED(5) <= \LEDIMED[5]~output_o\;

ww_LEDIMED(6) <= \LEDIMED[6]~output_o\;

ww_LEDIMED(7) <= \LEDIMED[7]~output_o\;

ww_LEDIMED(8) <= \LEDIMED[8]~output_o\;

ww_PC_OUT(0) <= \PC_OUT[0]~output_o\;

ww_PC_OUT(1) <= \PC_OUT[1]~output_o\;

ww_PC_OUT(2) <= \PC_OUT[2]~output_o\;

ww_PC_OUT(3) <= \PC_OUT[3]~output_o\;

ww_PC_OUT(4) <= \PC_OUT[4]~output_o\;

ww_PC_OUT(5) <= \PC_OUT[5]~output_o\;

ww_PC_OUT(6) <= \PC_OUT[6]~output_o\;

ww_PC_OUT(7) <= \PC_OUT[7]~output_o\;

ww_PC_OUT(8) <= \PC_OUT[8]~output_o\;

ww_LEDFLAGEQ <= \LEDFLAGEQ~output_o\;

ww_LEDFLAG0 <= \LEDFLAG0~output_o\;

ww_LED_OUTMUX1(0) <= \LED_OUTMUX1[0]~output_o\;

ww_LED_OUTMUX1(1) <= \LED_OUTMUX1[1]~output_o\;

ww_LED_OUTMUX1(2) <= \LED_OUTMUX1[2]~output_o\;

ww_LED_OUTMUX1(3) <= \LED_OUTMUX1[3]~output_o\;

ww_LED_OUTMUX1(4) <= \LED_OUTMUX1[4]~output_o\;

ww_LED_OUTMUX1(5) <= \LED_OUTMUX1[5]~output_o\;

ww_LED_OUTMUX1(6) <= \LED_OUTMUX1[6]~output_o\;

ww_LED_OUTMUX1(7) <= \LED_OUTMUX1[7]~output_o\;

ww_LED_OP_ULAMUX(0) <= \LED_OP_ULAMUX[0]~output_o\;

ww_LED_OP_ULAMUX(1) <= \LED_OP_ULAMUX[1]~output_o\;

ww_LED_SEL_MUX1 <= \LED_SEL_MUX1~output_o\;
END structure;


