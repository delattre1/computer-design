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

-- DATE "04/17/2022 16:29:00"

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

ENTITY 	Aula7 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0)
	);
END Aula7;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Aula7 IS
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
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~2\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ROM1|memROM~7_combout\ : std_logic;
SIGNAL \CPU|ROM1|memROM~3_combout\ : std_logic;
SIGNAL \CPU|ROM1|memROM~5_combout\ : std_logic;
SIGNAL \CPU|DECODER1|Equal9~2_combout\ : std_logic;
SIGNAL \CPU|ROM1|memROM~8_combout\ : std_logic;
SIGNAL \CPU|ROM1|memROM~4_combout\ : std_logic;
SIGNAL \CPU|ROM1|memROM~6_combout\ : std_logic;
SIGNAL \CPU|DECODER1|Equal9~0_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUXPC|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~18\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MUXPC|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|MUXPC|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUXPC|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|ROM1|memROM~15_combout\ : std_logic;
SIGNAL \CPU|ROM1|memROM~10_combout\ : std_logic;
SIGNAL \CPU|MUXPC|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ROM1|memROM~11_combout\ : std_logic;
SIGNAL \CPU|MUXPC|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|ROM1|memROM~1_combout\ : std_logic;
SIGNAL \CPU|ROM1|memROM~2_combout\ : std_logic;
SIGNAL \CPU|DECODER1|saida[7]~0_combout\ : std_logic;
SIGNAL \CPU|DECODER1|selMuxPC~0_combout\ : std_logic;
SIGNAL \CPU|MUXPC|Equal1~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ROM1|memROM~12_combout\ : std_logic;
SIGNAL \CPU|MUXPC|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \CPU|ROM1|memROM~13_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|MUXPC|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \CPU|ROM1|memROM~0_combout\ : std_logic;
SIGNAL \CPU|DECODER1|Equal9~1_combout\ : std_logic;
SIGNAL \CPU|ROM1|memROM~14_combout\ : std_logic;
SIGNAL \CPU|ROM1|memROM~9_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \CPU|DECODER1|Operacao_ULA~0_combout\ : std_logic;
SIGNAL \CPU|DECODER1|saida[5]~1_combout\ : std_logic;
SIGNAL \CPU|RAM1|process_0~0_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~175_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~38_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~163_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~174_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~30_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~162_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~176_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~46_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~164_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~173_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~22_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~161_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~165_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~43_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~27_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~35_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~19_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~150_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~151_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[0]~3_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~33_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~41_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~17_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~25_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~157_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~158_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~34_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~154_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~42_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~155_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~26_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~153_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~18_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~152_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~156_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[3]~0_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~20_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~145_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~44_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~148_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~36_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~147_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~28_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~146_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~149_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~30\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~37_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~21_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~45_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~29_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~159_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~160_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|REG_FLAG_EQ|DOUT~2_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~39_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~47_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~23_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~31_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~166_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~167_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~48_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~171_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~40_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~170_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~32_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~169_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~24_q\ : std_logic;
SIGNAL \CPU|RAM1|ram~168_combout\ : std_logic;
SIGNAL \CPU|RAM1|ram~172_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|REG_FLAG_EQ|DOUT~0_combout\ : std_logic;
SIGNAL \CPU|REG_FLAG_EQ|DOUT~1_combout\ : std_logic;
SIGNAL \CPU|REG_FLAG_EQ|DOUT~3_combout\ : std_logic;
SIGNAL \CPU|REG_FLAG_EQ|DOUT~q\ : std_logic;
SIGNAL \CPU|PC|DOUT[0]~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|MUXPC|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REG_ADDR_RET|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|REG1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \CPU|DECODER1|ALT_INV_Equal9~1_combout\ : std_logic;
SIGNAL \CPU|REG_FLAG_EQ|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \CPU|REG_FLAG_EQ|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \CPU|DECODER1|ALT_INV_Operacao_ULA~0_combout\ : std_logic;
SIGNAL \CPU|ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \CPU|REG_ADDR_RET|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \CPU|ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \CPU|ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \CPU|MUXPC|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \CPU|ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[0]~0_combout\ : std_logic;
SIGNAL \CPU|DECODER1|ALT_INV_selMuxPC~0_combout\ : std_logic;
SIGNAL \CPU|DECODER1|ALT_INV_saida[7]~0_combout\ : std_logic;
SIGNAL \CPU|REG_FLAG_EQ|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|DECODER1|ALT_INV_Equal9~0_combout\ : std_logic;
SIGNAL \CPU|ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \CPU|ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \CPU|ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \CPU|ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \CPU|ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \CPU|ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \CPU|ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \CPU|ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \CPU|ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|REG1|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \CPU|ROM1|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \CPU|ROM1|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~172_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~171_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~170_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~169_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~168_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~167_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~166_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~165_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~164_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~163_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~162_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~161_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \CPU|REG_FLAG_EQ|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \CPU|RAM1|ALT_INV_ram~152_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
PC_OUT <= ww_PC_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\CPU|RAM1|ALT_INV_ram~18_q\ <= NOT \CPU|RAM1|ram~18_q\;
\CPU|RAM1|ALT_INV_ram~151_combout\ <= NOT \CPU|RAM1|ram~151_combout\;
\CPU|RAM1|ALT_INV_ram~150_combout\ <= NOT \CPU|RAM1|ram~150_combout\;
\CPU|RAM1|ALT_INV_ram~43_q\ <= NOT \CPU|RAM1|ram~43_q\;
\CPU|RAM1|ALT_INV_ram~35_q\ <= NOT \CPU|RAM1|ram~35_q\;
\CPU|RAM1|ALT_INV_ram~27_q\ <= NOT \CPU|RAM1|ram~27_q\;
\CPU|RAM1|ALT_INV_ram~19_q\ <= NOT \CPU|RAM1|ram~19_q\;
\CPU|RAM1|ALT_INV_ram~149_combout\ <= NOT \CPU|RAM1|ram~149_combout\;
\CPU|RAM1|ALT_INV_ram~148_combout\ <= NOT \CPU|RAM1|ram~148_combout\;
\CPU|RAM1|ALT_INV_ram~44_q\ <= NOT \CPU|RAM1|ram~44_q\;
\CPU|RAM1|ALT_INV_ram~147_combout\ <= NOT \CPU|RAM1|ram~147_combout\;
\CPU|RAM1|ALT_INV_ram~36_q\ <= NOT \CPU|RAM1|ram~36_q\;
\CPU|RAM1|ALT_INV_ram~146_combout\ <= NOT \CPU|RAM1|ram~146_combout\;
\CPU|RAM1|ALT_INV_ram~28_q\ <= NOT \CPU|RAM1|ram~28_q\;
\CPU|RAM1|ALT_INV_ram~145_combout\ <= NOT \CPU|RAM1|ram~145_combout\;
\CPU|RAM1|ALT_INV_ram~20_q\ <= NOT \CPU|RAM1|ram~20_q\;
\CPU|DECODER1|ALT_INV_Equal9~1_combout\ <= NOT \CPU|DECODER1|Equal9~1_combout\;
\CPU|REG_FLAG_EQ|ALT_INV_DOUT~1_combout\ <= NOT \CPU|REG_FLAG_EQ|DOUT~1_combout\;
\CPU|REG_FLAG_EQ|ALT_INV_DOUT~0_combout\ <= NOT \CPU|REG_FLAG_EQ|DOUT~0_combout\;
\CPU|DECODER1|ALT_INV_Operacao_ULA~0_combout\ <= NOT \CPU|DECODER1|Operacao_ULA~0_combout\;
\CPU|ROM1|ALT_INV_memROM~13_combout\ <= NOT \CPU|ROM1|memROM~13_combout\;
\CPU|REG_ADDR_RET|ALT_INV_DOUT\(8) <= NOT \CPU|REG_ADDR_RET|DOUT\(8);
\CPU|REG_ADDR_RET|ALT_INV_DOUT\(7) <= NOT \CPU|REG_ADDR_RET|DOUT\(7);
\CPU|REG_ADDR_RET|ALT_INV_DOUT\(6) <= NOT \CPU|REG_ADDR_RET|DOUT\(6);
\CPU|REG_ADDR_RET|ALT_INV_DOUT\(5) <= NOT \CPU|REG_ADDR_RET|DOUT\(5);
\CPU|REG_ADDR_RET|ALT_INV_DOUT\(4) <= NOT \CPU|REG_ADDR_RET|DOUT\(4);
\CPU|REG_ADDR_RET|ALT_INV_DOUT\(3) <= NOT \CPU|REG_ADDR_RET|DOUT\(3);
\CPU|ROM1|ALT_INV_memROM~12_combout\ <= NOT \CPU|ROM1|memROM~12_combout\;
\CPU|REG_ADDR_RET|ALT_INV_DOUT\(2) <= NOT \CPU|REG_ADDR_RET|DOUT\(2);
\CPU|ROM1|ALT_INV_memROM~11_combout\ <= NOT \CPU|ROM1|memROM~11_combout\;
\CPU|REG_ADDR_RET|ALT_INV_DOUT\(1) <= NOT \CPU|REG_ADDR_RET|DOUT\(1);
\CPU|ROM1|ALT_INV_memROM~10_combout\ <= NOT \CPU|ROM1|memROM~10_combout\;
\CPU|REG_ADDR_RET|ALT_INV_DOUT\(0) <= NOT \CPU|REG_ADDR_RET|DOUT\(0);
\CPU|MUXPC|ALT_INV_Equal1~0_combout\ <= NOT \CPU|MUXPC|Equal1~0_combout\;
\CPU|ROM1|ALT_INV_memROM~9_combout\ <= NOT \CPU|ROM1|memROM~9_combout\;
\CPU|PC|ALT_INV_DOUT[0]~0_combout\ <= NOT \CPU|PC|DOUT[0]~0_combout\;
\CPU|DECODER1|ALT_INV_selMuxPC~0_combout\ <= NOT \CPU|DECODER1|selMuxPC~0_combout\;
\CPU|DECODER1|ALT_INV_saida[7]~0_combout\ <= NOT \CPU|DECODER1|saida[7]~0_combout\;
\CPU|REG_FLAG_EQ|ALT_INV_DOUT~q\ <= NOT \CPU|REG_FLAG_EQ|DOUT~q\;
\CPU|DECODER1|ALT_INV_Equal9~0_combout\ <= NOT \CPU|DECODER1|Equal9~0_combout\;
\CPU|ROM1|ALT_INV_memROM~8_combout\ <= NOT \CPU|ROM1|memROM~8_combout\;
\CPU|ROM1|ALT_INV_memROM~7_combout\ <= NOT \CPU|ROM1|memROM~7_combout\;
\CPU|ROM1|ALT_INV_memROM~6_combout\ <= NOT \CPU|ROM1|memROM~6_combout\;
\CPU|ROM1|ALT_INV_memROM~5_combout\ <= NOT \CPU|ROM1|memROM~5_combout\;
\CPU|ROM1|ALT_INV_memROM~4_combout\ <= NOT \CPU|ROM1|memROM~4_combout\;
\CPU|ROM1|ALT_INV_memROM~3_combout\ <= NOT \CPU|ROM1|memROM~3_combout\;
\CPU|ROM1|ALT_INV_memROM~2_combout\ <= NOT \CPU|ROM1|memROM~2_combout\;
\CPU|ROM1|ALT_INV_memROM~1_combout\ <= NOT \CPU|ROM1|memROM~1_combout\;
\CPU|ROM1|ALT_INV_memROM~0_combout\ <= NOT \CPU|ROM1|memROM~0_combout\;
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\CPU|REG1|ALT_INV_DOUT\(3) <= NOT \CPU|REG1|DOUT\(3);
\CPU|REG1|ALT_INV_DOUT\(2) <= NOT \CPU|REG1|DOUT\(2);
\CPU|REG1|ALT_INV_DOUT\(1) <= NOT \CPU|REG1|DOUT\(1);
\CPU|REG1|ALT_INV_DOUT\(0) <= NOT \CPU|REG1|DOUT\(0);
\CPU|REG1|ALT_INV_DOUT\(7) <= NOT \CPU|REG1|DOUT\(7);
\CPU|REG1|ALT_INV_DOUT\(6) <= NOT \CPU|REG1|DOUT\(6);
\CPU|REG1|ALT_INV_DOUT\(5) <= NOT \CPU|REG1|DOUT\(5);
\CPU|REG1|ALT_INV_DOUT\(4) <= NOT \CPU|REG1|DOUT\(4);
\CPU|ULA1|ALT_INV_Add0~29_sumout\ <= NOT \CPU|ULA1|Add0~29_sumout\;
\CPU|ULA1|ALT_INV_Add0~25_sumout\ <= NOT \CPU|ULA1|Add0~25_sumout\;
\CPU|ULA1|ALT_INV_Add0~21_sumout\ <= NOT \CPU|ULA1|Add0~21_sumout\;
\CPU|ULA1|ALT_INV_Add0~17_sumout\ <= NOT \CPU|ULA1|Add0~17_sumout\;
\CPU|ULA1|ALT_INV_Add0~13_sumout\ <= NOT \CPU|ULA1|Add0~13_sumout\;
\CPU|ULA1|ALT_INV_Add0~9_sumout\ <= NOT \CPU|ULA1|Add0~9_sumout\;
\CPU|ULA1|ALT_INV_Add0~5_sumout\ <= NOT \CPU|ULA1|Add0~5_sumout\;
\CPU|ULA1|ALT_INV_Add0~1_sumout\ <= NOT \CPU|ULA1|Add0~1_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \CPU|incrementaPC|Add0~33_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \CPU|incrementaPC|Add0~29_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \CPU|incrementaPC|Add0~25_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \CPU|incrementaPC|Add0~21_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \CPU|incrementaPC|Add0~17_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \CPU|incrementaPC|Add0~13_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \CPU|incrementaPC|Add0~9_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \CPU|incrementaPC|Add0~5_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \CPU|incrementaPC|Add0~1_sumout\;
\CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[8]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[7]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[5]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[4]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[3]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[2]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[1]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[0]~DUPLICATE_q\;
\CPU|RAM1|ALT_INV_process_0~0_combout\ <= NOT \CPU|RAM1|process_0~0_combout\;
\CPU|ROM1|ALT_INV_memROM~15_combout\ <= NOT \CPU|ROM1|memROM~15_combout\;
\CPU|ROM1|ALT_INV_memROM~14_combout\ <= NOT \CPU|ROM1|memROM~14_combout\;
\CPU|RAM1|ALT_INV_ram~172_combout\ <= NOT \CPU|RAM1|ram~172_combout\;
\CPU|RAM1|ALT_INV_ram~171_combout\ <= NOT \CPU|RAM1|ram~171_combout\;
\CPU|RAM1|ALT_INV_ram~48_q\ <= NOT \CPU|RAM1|ram~48_q\;
\CPU|RAM1|ALT_INV_ram~170_combout\ <= NOT \CPU|RAM1|ram~170_combout\;
\CPU|RAM1|ALT_INV_ram~40_q\ <= NOT \CPU|RAM1|ram~40_q\;
\CPU|RAM1|ALT_INV_ram~169_combout\ <= NOT \CPU|RAM1|ram~169_combout\;
\CPU|RAM1|ALT_INV_ram~32_q\ <= NOT \CPU|RAM1|ram~32_q\;
\CPU|RAM1|ALT_INV_ram~168_combout\ <= NOT \CPU|RAM1|ram~168_combout\;
\CPU|RAM1|ALT_INV_ram~24_q\ <= NOT \CPU|RAM1|ram~24_q\;
\CPU|RAM1|ALT_INV_ram~167_combout\ <= NOT \CPU|RAM1|ram~167_combout\;
\CPU|RAM1|ALT_INV_ram~166_combout\ <= NOT \CPU|RAM1|ram~166_combout\;
\CPU|RAM1|ALT_INV_ram~47_q\ <= NOT \CPU|RAM1|ram~47_q\;
\CPU|RAM1|ALT_INV_ram~39_q\ <= NOT \CPU|RAM1|ram~39_q\;
\CPU|RAM1|ALT_INV_ram~31_q\ <= NOT \CPU|RAM1|ram~31_q\;
\CPU|RAM1|ALT_INV_ram~23_q\ <= NOT \CPU|RAM1|ram~23_q\;
\CPU|RAM1|ALT_INV_ram~165_combout\ <= NOT \CPU|RAM1|ram~165_combout\;
\CPU|RAM1|ALT_INV_ram~164_combout\ <= NOT \CPU|RAM1|ram~164_combout\;
\CPU|RAM1|ALT_INV_ram~46_q\ <= NOT \CPU|RAM1|ram~46_q\;
\CPU|RAM1|ALT_INV_ram~163_combout\ <= NOT \CPU|RAM1|ram~163_combout\;
\CPU|RAM1|ALT_INV_ram~38_q\ <= NOT \CPU|RAM1|ram~38_q\;
\CPU|RAM1|ALT_INV_ram~162_combout\ <= NOT \CPU|RAM1|ram~162_combout\;
\CPU|RAM1|ALT_INV_ram~30_q\ <= NOT \CPU|RAM1|ram~30_q\;
\CPU|RAM1|ALT_INV_ram~161_combout\ <= NOT \CPU|RAM1|ram~161_combout\;
\CPU|RAM1|ALT_INV_ram~22_q\ <= NOT \CPU|RAM1|ram~22_q\;
\CPU|RAM1|ALT_INV_ram~160_combout\ <= NOT \CPU|RAM1|ram~160_combout\;
\CPU|RAM1|ALT_INV_ram~159_combout\ <= NOT \CPU|RAM1|ram~159_combout\;
\CPU|RAM1|ALT_INV_ram~45_q\ <= NOT \CPU|RAM1|ram~45_q\;
\CPU|RAM1|ALT_INV_ram~37_q\ <= NOT \CPU|RAM1|ram~37_q\;
\CPU|RAM1|ALT_INV_ram~29_q\ <= NOT \CPU|RAM1|ram~29_q\;
\CPU|RAM1|ALT_INV_ram~21_q\ <= NOT \CPU|RAM1|ram~21_q\;
\CPU|REG_FLAG_EQ|ALT_INV_DOUT~2_combout\ <= NOT \CPU|REG_FLAG_EQ|DOUT~2_combout\;
\CPU|RAM1|ALT_INV_ram~158_combout\ <= NOT \CPU|RAM1|ram~158_combout\;
\CPU|RAM1|ALT_INV_ram~157_combout\ <= NOT \CPU|RAM1|ram~157_combout\;
\CPU|RAM1|ALT_INV_ram~41_q\ <= NOT \CPU|RAM1|ram~41_q\;
\CPU|RAM1|ALT_INV_ram~33_q\ <= NOT \CPU|RAM1|ram~33_q\;
\CPU|RAM1|ALT_INV_ram~25_q\ <= NOT \CPU|RAM1|ram~25_q\;
\CPU|RAM1|ALT_INV_ram~17_q\ <= NOT \CPU|RAM1|ram~17_q\;
\CPU|RAM1|ALT_INV_ram~156_combout\ <= NOT \CPU|RAM1|ram~156_combout\;
\CPU|RAM1|ALT_INV_ram~155_combout\ <= NOT \CPU|RAM1|ram~155_combout\;
\CPU|RAM1|ALT_INV_ram~42_q\ <= NOT \CPU|RAM1|ram~42_q\;
\CPU|RAM1|ALT_INV_ram~154_combout\ <= NOT \CPU|RAM1|ram~154_combout\;
\CPU|RAM1|ALT_INV_ram~34_q\ <= NOT \CPU|RAM1|ram~34_q\;
\CPU|RAM1|ALT_INV_ram~153_combout\ <= NOT \CPU|RAM1|ram~153_combout\;
\CPU|RAM1|ALT_INV_ram~26_q\ <= NOT \CPU|RAM1|ram~26_q\;
\CPU|RAM1|ALT_INV_ram~152_combout\ <= NOT \CPU|RAM1|ram~152_combout\;

-- Location: IOOBUF_X0_Y18_N96
\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(0));

-- Location: IOOBUF_X0_Y18_N62
\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(1));

-- Location: IOOBUF_X0_Y18_N45
\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(2));

-- Location: IOOBUF_X0_Y20_N5
\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(3),
	devoe => ww_devoe,
	o => ww_PC_OUT(3));

-- Location: IOOBUF_X0_Y19_N39
\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(4));

-- Location: IOOBUF_X0_Y18_N79
\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(5),
	devoe => ww_devoe,
	o => ww_PC_OUT(5));

-- Location: IOOBUF_X0_Y19_N5
\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(6),
	devoe => ww_devoe,
	o => ww_PC_OUT(6));

-- Location: IOOBUF_X0_Y19_N56
\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(7),
	devoe => ww_devoe,
	o => ww_PC_OUT(7));

-- Location: IOOBUF_X0_Y19_N22
\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[8]~DUPLICATE_q\,
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

-- Location: FF_X5_Y15_N16
\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUXPC|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

-- Location: MLABCELL_X4_Y15_N30
\CPU|incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~1_sumout\ = SUM(( \CPU|PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \CPU|incrementaPC|Add0~2\ = CARRY(( \CPU|PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \CPU|incrementaPC|Add0~1_sumout\,
	cout => \CPU|incrementaPC|Add0~2\);

-- Location: MLABCELL_X4_Y15_N33
\CPU|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))
-- \CPU|incrementaPC|Add0~6\ = CARRY(( \CPU|PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~2\,
	sumout => \CPU|incrementaPC|Add0~5_sumout\,
	cout => \CPU|incrementaPC|Add0~6\);

-- Location: FF_X5_Y15_N40
\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUXPC|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

-- Location: LABCELL_X6_Y15_N54
\CPU|ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ROM1|memROM~7_combout\ = ( \CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(3)) ) ) # ( !\CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) $ (\CPU|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \CPU|ROM1|memROM~7_combout\);

-- Location: LABCELL_X6_Y15_N3
\CPU|ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ROM1|memROM~3_combout\ = ( \CPU|PC|DOUT\(1) & ( (\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT[2]~DUPLICATE_q\) # (\CPU|PC|DOUT\(3)))) ) ) # ( !\CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000101000011110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \CPU|ROM1|memROM~3_combout\);

-- Location: LABCELL_X6_Y15_N42
\CPU|ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ROM1|memROM~5_combout\ = ( \CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(3)) # (!\CPU|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(3)) # 
-- (\CPU|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111111001111000011111111001100110000001100110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \CPU|ROM1|memROM~5_combout\);

-- Location: LABCELL_X6_Y15_N12
\CPU|DECODER1|Equal9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Equal9~2_combout\ = ( !\CPU|ROM1|memROM~5_combout\ & ( (\CPU|ROM1|memROM~7_combout\ & (\CPU|ROM1|memROM~0_combout\ & (\CPU|ROM1|memROM~3_combout\ & !\CPU|ROM1|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM1|ALT_INV_memROM~7_combout\,
	datab => \CPU|ROM1|ALT_INV_memROM~0_combout\,
	datac => \CPU|ROM1|ALT_INV_memROM~3_combout\,
	datad => \CPU|ROM1|ALT_INV_memROM~1_combout\,
	dataf => \CPU|ROM1|ALT_INV_memROM~5_combout\,
	combout => \CPU|DECODER1|Equal9~2_combout\);

-- Location: FF_X4_Y15_N34
\CPU|REG_ADDR_RET|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \CPU|DECODER1|Equal9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_ADDR_RET|DOUT\(1));

-- Location: LABCELL_X6_Y15_N15
\CPU|ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ROM1|memROM~8_combout\ = ( \CPU|ROM1|memROM~0_combout\ & ( \CPU|ROM1|memROM~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ROM1|ALT_INV_memROM~7_combout\,
	dataf => \CPU|ROM1|ALT_INV_memROM~0_combout\,
	combout => \CPU|ROM1|memROM~8_combout\);

-- Location: LABCELL_X6_Y15_N0
\CPU|ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ROM1|memROM~4_combout\ = ( \CPU|ROM1|memROM~0_combout\ & ( \CPU|ROM1|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ROM1|ALT_INV_memROM~3_combout\,
	dataf => \CPU|ROM1|ALT_INV_memROM~0_combout\,
	combout => \CPU|ROM1|memROM~4_combout\);

-- Location: LABCELL_X6_Y15_N51
\CPU|ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ROM1|memROM~6_combout\ = ( \CPU|ROM1|memROM~0_combout\ & ( \CPU|ROM1|memROM~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ROM1|ALT_INV_memROM~5_combout\,
	dataf => \CPU|ROM1|ALT_INV_memROM~0_combout\,
	combout => \CPU|ROM1|memROM~6_combout\);

-- Location: LABCELL_X6_Y15_N33
\CPU|DECODER1|Equal9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Equal9~0_combout\ = ( !\CPU|ROM1|memROM~6_combout\ & ( (\CPU|ROM1|memROM~2_combout\ & (!\CPU|ROM1|memROM~8_combout\ & \CPU|ROM1|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|ROM1|ALT_INV_memROM~2_combout\,
	datac => \CPU|ROM1|ALT_INV_memROM~8_combout\,
	datad => \CPU|ROM1|ALT_INV_memROM~4_combout\,
	dataf => \CPU|ROM1|ALT_INV_memROM~6_combout\,
	combout => \CPU|DECODER1|Equal9~0_combout\);

-- Location: FF_X5_Y15_N32
\CPU|PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUXPC|saida_MUX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[4]~DUPLICATE_q\);

-- Location: FF_X5_Y15_N38
\CPU|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUXPC|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[3]~DUPLICATE_q\);

-- Location: MLABCELL_X4_Y15_N36
\CPU|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~9_sumout\ = SUM(( \CPU|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))
-- \CPU|incrementaPC|Add0~10\ = CARRY(( \CPU|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~6\,
	sumout => \CPU|incrementaPC|Add0~9_sumout\,
	cout => \CPU|incrementaPC|Add0~10\);

-- Location: MLABCELL_X4_Y15_N39
\CPU|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~13_sumout\ = SUM(( \CPU|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))
-- \CPU|incrementaPC|Add0~14\ = CARRY(( \CPU|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~10\,
	sumout => \CPU|incrementaPC|Add0~13_sumout\,
	cout => \CPU|incrementaPC|Add0~14\);

-- Location: MLABCELL_X4_Y15_N42
\CPU|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))
-- \CPU|incrementaPC|Add0~18\ = CARRY(( \CPU|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~14\,
	sumout => \CPU|incrementaPC|Add0~17_sumout\,
	cout => \CPU|incrementaPC|Add0~18\);

-- Location: FF_X4_Y15_N43
\CPU|REG_ADDR_RET|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \CPU|DECODER1|Equal9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_ADDR_RET|DOUT\(4));

-- Location: LABCELL_X5_Y15_N30
\CPU|MUXPC|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXPC|saida_MUX[4]~4_combout\ = ( \CPU|incrementaPC|Add0~17_sumout\ & ( ((\CPU|DECODER1|Equal9~0_combout\ & \CPU|REG_ADDR_RET|DOUT\(4))) # (\CPU|PC|DOUT[0]~0_combout\) ) ) # ( !\CPU|incrementaPC|Add0~17_sumout\ & ( (\CPU|DECODER1|Equal9~0_combout\ & 
-- \CPU|REG_ADDR_RET|DOUT\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER1|ALT_INV_Equal9~0_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[0]~0_combout\,
	datad => \CPU|REG_ADDR_RET|ALT_INV_DOUT\(4),
	dataf => \CPU|incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \CPU|MUXPC|saida_MUX[4]~4_combout\);

-- Location: FF_X5_Y15_N31
\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUXPC|saida_MUX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

-- Location: MLABCELL_X4_Y15_N45
\CPU|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~21_sumout\ = SUM(( \CPU|PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))
-- \CPU|incrementaPC|Add0~22\ = CARRY(( \CPU|PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~18\,
	sumout => \CPU|incrementaPC|Add0~21_sumout\,
	cout => \CPU|incrementaPC|Add0~22\);

-- Location: FF_X4_Y15_N47
\CPU|REG_ADDR_RET|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \CPU|DECODER1|Equal9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_ADDR_RET|DOUT\(5));

-- Location: LABCELL_X5_Y15_N12
\CPU|MUXPC|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXPC|saida_MUX[5]~5_combout\ = ( \CPU|REG_ADDR_RET|DOUT\(5) & ( ((\CPU|PC|DOUT[0]~0_combout\ & \CPU|incrementaPC|Add0~21_sumout\)) # (\CPU|DECODER1|Equal9~0_combout\) ) ) # ( !\CPU|REG_ADDR_RET|DOUT\(5) & ( (\CPU|PC|DOUT[0]~0_combout\ & 
-- \CPU|incrementaPC|Add0~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~0_combout\,
	datac => \CPU|incrementaPC|ALT_INV_Add0~21_sumout\,
	datad => \CPU|DECODER1|ALT_INV_Equal9~0_combout\,
	dataf => \CPU|REG_ADDR_RET|ALT_INV_DOUT\(5),
	combout => \CPU|MUXPC|saida_MUX[5]~5_combout\);

-- Location: FF_X5_Y15_N14
\CPU|PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUXPC|saida_MUX[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[5]~DUPLICATE_q\);

-- Location: MLABCELL_X4_Y15_N48
\CPU|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))
-- \CPU|incrementaPC|Add0~26\ = CARRY(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	cin => \CPU|incrementaPC|Add0~22\,
	sumout => \CPU|incrementaPC|Add0~25_sumout\,
	cout => \CPU|incrementaPC|Add0~26\);

-- Location: FF_X4_Y15_N50
\CPU|REG_ADDR_RET|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \CPU|DECODER1|Equal9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_ADDR_RET|DOUT\(6));

-- Location: LABCELL_X5_Y15_N33
\CPU|MUXPC|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXPC|saida_MUX[6]~6_combout\ = ( \CPU|REG_ADDR_RET|DOUT\(6) & ( ((\CPU|incrementaPC|Add0~25_sumout\ & \CPU|PC|DOUT[0]~0_combout\)) # (\CPU|DECODER1|Equal9~0_combout\) ) ) # ( !\CPU|REG_ADDR_RET|DOUT\(6) & ( (\CPU|incrementaPC|Add0~25_sumout\ & 
-- \CPU|PC|DOUT[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER1|ALT_INV_Equal9~0_combout\,
	datac => \CPU|incrementaPC|ALT_INV_Add0~25_sumout\,
	datad => \CPU|PC|ALT_INV_DOUT[0]~0_combout\,
	dataf => \CPU|REG_ADDR_RET|ALT_INV_DOUT\(6),
	combout => \CPU|MUXPC|saida_MUX[6]~6_combout\);

-- Location: FF_X5_Y15_N35
\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUXPC|saida_MUX[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

-- Location: MLABCELL_X4_Y15_N51
\CPU|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))
-- \CPU|incrementaPC|Add0~30\ = CARRY(( \CPU|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~26\,
	sumout => \CPU|incrementaPC|Add0~29_sumout\,
	cout => \CPU|incrementaPC|Add0~30\);

-- Location: FF_X4_Y15_N53
\CPU|REG_ADDR_RET|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \CPU|DECODER1|Equal9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_ADDR_RET|DOUT\(7));

-- Location: LABCELL_X5_Y15_N45
\CPU|MUXPC|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXPC|saida_MUX[7]~7_combout\ = ( \CPU|REG_ADDR_RET|DOUT\(7) & ( ((\CPU|PC|DOUT[0]~0_combout\ & \CPU|incrementaPC|Add0~29_sumout\)) # (\CPU|DECODER1|Equal9~0_combout\) ) ) # ( !\CPU|REG_ADDR_RET|DOUT\(7) & ( (\CPU|PC|DOUT[0]~0_combout\ & 
-- \CPU|incrementaPC|Add0~29_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~0_combout\,
	datac => \CPU|DECODER1|ALT_INV_Equal9~0_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	dataf => \CPU|REG_ADDR_RET|ALT_INV_DOUT\(7),
	combout => \CPU|MUXPC|saida_MUX[7]~7_combout\);

-- Location: FF_X5_Y15_N47
\CPU|PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUXPC|saida_MUX[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[7]~DUPLICATE_q\);

-- Location: FF_X5_Y15_N44
\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUXPC|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

-- Location: LABCELL_X5_Y15_N51
\CPU|ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ROM1|memROM~15_combout\ = ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & ((!\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011110000110000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \CPU|ROM1|memROM~15_combout\);

-- Location: LABCELL_X5_Y15_N3
\CPU|ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ROM1|memROM~10_combout\ = ( !\CPU|PC|DOUT\(8) & ( \CPU|ROM1|memROM~15_combout\ & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & !\CPU|PC|DOUT\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	datae => \CPU|PC|ALT_INV_DOUT\(8),
	dataf => \CPU|ROM1|ALT_INV_memROM~15_combout\,
	combout => \CPU|ROM1|memROM~10_combout\);

-- Location: LABCELL_X5_Y15_N39
\CPU|MUXPC|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXPC|saida_MUX[1]~1_combout\ = ( \CPU|incrementaPC|Add0~5_sumout\ & ( ((!\CPU|MUXPC|Equal1~0_combout\ & (\CPU|REG_ADDR_RET|DOUT\(1))) # (\CPU|MUXPC|Equal1~0_combout\ & ((\CPU|ROM1|memROM~10_combout\)))) # (\CPU|PC|DOUT[0]~0_combout\) ) ) # ( 
-- !\CPU|incrementaPC|Add0~5_sumout\ & ( (!\CPU|PC|DOUT[0]~0_combout\ & ((!\CPU|MUXPC|Equal1~0_combout\ & (\CPU|REG_ADDR_RET|DOUT\(1))) # (\CPU|MUXPC|Equal1~0_combout\ & ((\CPU|ROM1|memROM~10_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~0_combout\,
	datab => \CPU|MUXPC|ALT_INV_Equal1~0_combout\,
	datac => \CPU|REG_ADDR_RET|ALT_INV_DOUT\(1),
	datad => \CPU|ROM1|ALT_INV_memROM~10_combout\,
	dataf => \CPU|incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \CPU|MUXPC|saida_MUX[1]~1_combout\);

-- Location: FF_X5_Y15_N41
\CPU|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUXPC|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[1]~DUPLICATE_q\);

-- Location: FF_X4_Y15_N37
\CPU|REG_ADDR_RET|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \CPU|DECODER1|Equal9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_ADDR_RET|DOUT\(2));

-- Location: LABCELL_X5_Y15_N27
\CPU|ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ROM1|memROM~11_combout\ = ( \CPU|ROM1|memROM~0_combout\ & ( (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ $ (\CPU|PC|DOUT[1]~DUPLICATE_q\)))) # (\CPU|PC|DOUT[0]~DUPLICATE_q\ & 
-- (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & ((!\CPU|PC|DOUT[3]~DUPLICATE_q\) # (\CPU|PC|DOUT[2]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100100001100001010010000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|ROM1|ALT_INV_memROM~0_combout\,
	combout => \CPU|ROM1|memROM~11_combout\);

-- Location: LABCELL_X5_Y15_N42
\CPU|MUXPC|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXPC|saida_MUX[2]~2_combout\ = ( \CPU|ROM1|memROM~11_combout\ & ( (!\CPU|PC|DOUT[0]~0_combout\ & (((\CPU|REG_ADDR_RET|DOUT\(2))) # (\CPU|MUXPC|Equal1~0_combout\))) # (\CPU|PC|DOUT[0]~0_combout\ & (((\CPU|incrementaPC|Add0~9_sumout\)))) ) ) # ( 
-- !\CPU|ROM1|memROM~11_combout\ & ( (!\CPU|PC|DOUT[0]~0_combout\ & (!\CPU|MUXPC|Equal1~0_combout\ & ((\CPU|REG_ADDR_RET|DOUT\(2))))) # (\CPU|PC|DOUT[0]~0_combout\ & (((\CPU|incrementaPC|Add0~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100100111101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~0_combout\,
	datab => \CPU|MUXPC|ALT_INV_Equal1~0_combout\,
	datac => \CPU|incrementaPC|ALT_INV_Add0~9_sumout\,
	datad => \CPU|REG_ADDR_RET|ALT_INV_DOUT\(2),
	dataf => \CPU|ROM1|ALT_INV_memROM~11_combout\,
	combout => \CPU|MUXPC|saida_MUX[2]~2_combout\);

-- Location: FF_X5_Y15_N43
\CPU|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUXPC|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X6_Y15_N39
\CPU|ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ROM1|memROM~1_combout\ = ( \CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT[2]~DUPLICATE_q\)) # (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(0) & \CPU|PC|DOUT[2]~DUPLICATE_q\)) ) ) # ( !\CPU|PC|DOUT\(1) & ( !\CPU|PC|DOUT\(3) $ 
-- (((!\CPU|PC|DOUT\(0)) # (\CPU|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001010101010110100101010110100000000001011010000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \CPU|ROM1|memROM~1_combout\);

-- Location: LABCELL_X6_Y15_N9
\CPU|ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ROM1|memROM~2_combout\ = ( \CPU|ROM1|memROM~0_combout\ & ( \CPU|ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ROM1|ALT_INV_memROM~1_combout\,
	dataf => \CPU|ROM1|ALT_INV_memROM~0_combout\,
	combout => \CPU|ROM1|memROM~2_combout\);

-- Location: LABCELL_X6_Y15_N57
\CPU|DECODER1|saida[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|saida[7]~0_combout\ = ( \CPU|ROM1|memROM~0_combout\ & ( (!\CPU|ROM1|memROM~3_combout\ & (\CPU|ROM1|memROM~5_combout\ & \CPU|ROM1|memROM~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM1|ALT_INV_memROM~3_combout\,
	datac => \CPU|ROM1|ALT_INV_memROM~5_combout\,
	datad => \CPU|ROM1|ALT_INV_memROM~7_combout\,
	dataf => \CPU|ROM1|ALT_INV_memROM~0_combout\,
	combout => \CPU|DECODER1|saida[7]~0_combout\);

-- Location: LABCELL_X6_Y15_N30
\CPU|DECODER1|selMuxPC~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|selMuxPC~0_combout\ = ( \CPU|ROM1|memROM~8_combout\ & ( (!\CPU|ROM1|memROM~2_combout\ & (!\CPU|ROM1|memROM~6_combout\ & \CPU|ROM1|memROM~4_combout\)) ) ) # ( !\CPU|ROM1|memROM~8_combout\ & ( (\CPU|ROM1|memROM~2_combout\ & 
-- (\CPU|ROM1|memROM~6_combout\ & !\CPU|ROM1|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|ROM1|ALT_INV_memROM~2_combout\,
	datac => \CPU|ROM1|ALT_INV_memROM~6_combout\,
	datad => \CPU|ROM1|ALT_INV_memROM~4_combout\,
	dataf => \CPU|ROM1|ALT_INV_memROM~8_combout\,
	combout => \CPU|DECODER1|selMuxPC~0_combout\);

-- Location: LABCELL_X6_Y15_N48
\CPU|MUXPC|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXPC|Equal1~0_combout\ = ( \CPU|DECODER1|selMuxPC~0_combout\ & ( !\CPU|DECODER1|Equal9~0_combout\ ) ) # ( !\CPU|DECODER1|selMuxPC~0_combout\ & ( (\CPU|REG_FLAG_EQ|DOUT~q\ & (\CPU|ROM1|memROM~2_combout\ & (!\CPU|DECODER1|Equal9~0_combout\ & 
-- \CPU|DECODER1|saida[7]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REG_FLAG_EQ|ALT_INV_DOUT~q\,
	datab => \CPU|ROM1|ALT_INV_memROM~2_combout\,
	datac => \CPU|DECODER1|ALT_INV_Equal9~0_combout\,
	datad => \CPU|DECODER1|ALT_INV_saida[7]~0_combout\,
	dataf => \CPU|DECODER1|ALT_INV_selMuxPC~0_combout\,
	combout => \CPU|MUXPC|Equal1~0_combout\);

-- Location: FF_X4_Y15_N41
\CPU|REG_ADDR_RET|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \CPU|DECODER1|Equal9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_ADDR_RET|DOUT\(3));

-- Location: LABCELL_X5_Y15_N6
\CPU|ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ROM1|memROM~12_combout\ = ( \CPU|ROM1|memROM~0_combout\ & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (((!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT[2]~DUPLICATE_q\)))) # (\CPU|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & (\CPU|PC|DOUT\(0) & 
-- \CPU|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000001001010000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|ROM1|ALT_INV_memROM~0_combout\,
	combout => \CPU|ROM1|memROM~12_combout\);

-- Location: LABCELL_X5_Y15_N36
\CPU|MUXPC|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXPC|saida_MUX[3]~3_combout\ = ( \CPU|ROM1|memROM~12_combout\ & ( (!\CPU|PC|DOUT[0]~0_combout\ & (((\CPU|REG_ADDR_RET|DOUT\(3))) # (\CPU|MUXPC|Equal1~0_combout\))) # (\CPU|PC|DOUT[0]~0_combout\ & (((\CPU|incrementaPC|Add0~13_sumout\)))) ) ) # ( 
-- !\CPU|ROM1|memROM~12_combout\ & ( (!\CPU|PC|DOUT[0]~0_combout\ & (!\CPU|MUXPC|Equal1~0_combout\ & ((\CPU|REG_ADDR_RET|DOUT\(3))))) # (\CPU|PC|DOUT[0]~0_combout\ & (((\CPU|incrementaPC|Add0~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100100111101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~0_combout\,
	datab => \CPU|MUXPC|ALT_INV_Equal1~0_combout\,
	datac => \CPU|incrementaPC|ALT_INV_Add0~13_sumout\,
	datad => \CPU|REG_ADDR_RET|ALT_INV_DOUT\(3),
	dataf => \CPU|ROM1|ALT_INV_memROM~12_combout\,
	combout => \CPU|MUXPC|saida_MUX[3]~3_combout\);

-- Location: FF_X5_Y15_N37
\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUXPC|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

-- Location: LABCELL_X5_Y15_N48
\CPU|ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ROM1|memROM~13_combout\ = ( \CPU|PC|DOUT\(0) & ( (\CPU|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(3) $ (!\CPU|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT[1]~DUPLICATE_q\ & \CPU|PC|DOUT[2]~DUPLICATE_q\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000101000010100000010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \CPU|ROM1|memROM~13_combout\);

-- Location: FF_X5_Y15_N55
\CPU|PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUXPC|saida_MUX[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[8]~DUPLICATE_q\);

-- Location: MLABCELL_X4_Y15_N54
\CPU|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT[8]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~30\,
	sumout => \CPU|incrementaPC|Add0~33_sumout\);

-- Location: FF_X4_Y15_N56
\CPU|REG_ADDR_RET|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \CPU|DECODER1|Equal9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_ADDR_RET|DOUT\(8));

-- Location: LABCELL_X5_Y15_N54
\CPU|MUXPC|saida_MUX[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXPC|saida_MUX[8]~8_combout\ = ( \CPU|PC|DOUT[0]~0_combout\ & ( \CPU|ROM1|memROM~0_combout\ & ( \CPU|incrementaPC|Add0~33_sumout\ ) ) ) # ( !\CPU|PC|DOUT[0]~0_combout\ & ( \CPU|ROM1|memROM~0_combout\ & ( (!\CPU|MUXPC|Equal1~0_combout\ & 
-- ((\CPU|REG_ADDR_RET|DOUT\(8)))) # (\CPU|MUXPC|Equal1~0_combout\ & (\CPU|ROM1|memROM~13_combout\)) ) ) ) # ( \CPU|PC|DOUT[0]~0_combout\ & ( !\CPU|ROM1|memROM~0_combout\ & ( \CPU|incrementaPC|Add0~33_sumout\ ) ) ) # ( !\CPU|PC|DOUT[0]~0_combout\ & ( 
-- !\CPU|ROM1|memROM~0_combout\ & ( (\CPU|REG_ADDR_RET|DOUT\(8) & !\CPU|MUXPC|Equal1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000000011110000111100110011010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM1|ALT_INV_memROM~13_combout\,
	datab => \CPU|REG_ADDR_RET|ALT_INV_DOUT\(8),
	datac => \CPU|incrementaPC|ALT_INV_Add0~33_sumout\,
	datad => \CPU|MUXPC|ALT_INV_Equal1~0_combout\,
	datae => \CPU|PC|ALT_INV_DOUT[0]~0_combout\,
	dataf => \CPU|ROM1|ALT_INV_memROM~0_combout\,
	combout => \CPU|MUXPC|saida_MUX[8]~8_combout\);

-- Location: FF_X5_Y15_N56
\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUXPC|saida_MUX[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

-- Location: LABCELL_X5_Y15_N18
\CPU|ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ROM1|memROM~0_combout\ = ( !\CPU|PC|DOUT[5]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT[7]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \CPU|ROM1|memROM~0_combout\);

-- Location: LABCELL_X6_Y15_N21
\CPU|DECODER1|Equal9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Equal9~1_combout\ = ( !\CPU|ROM1|memROM~3_combout\ & ( \CPU|ROM1|memROM~5_combout\ & ( (\CPU|ROM1|memROM~0_combout\ & (!\CPU|ROM1|memROM~1_combout\ & !\CPU|ROM1|memROM~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|ROM1|ALT_INV_memROM~0_combout\,
	datac => \CPU|ROM1|ALT_INV_memROM~1_combout\,
	datad => \CPU|ROM1|ALT_INV_memROM~7_combout\,
	datae => \CPU|ROM1|ALT_INV_memROM~3_combout\,
	dataf => \CPU|ROM1|ALT_INV_memROM~5_combout\,
	combout => \CPU|DECODER1|Equal9~1_combout\);

-- Location: LABCELL_X5_Y15_N24
\CPU|ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ROM1|memROM~14_combout\ = ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|PC|DOUT[2]~DUPLICATE_q\)) ) ) # ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & 
-- (\CPU|PC|DOUT[0]~DUPLICATE_q\)) # (\CPU|PC|DOUT[3]~DUPLICATE_q\ & ((\CPU|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111111000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \CPU|ROM1|memROM~14_combout\);

-- Location: LABCELL_X5_Y15_N0
\CPU|ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ROM1|memROM~9_combout\ = ( !\CPU|PC|DOUT\(8) & ( \CPU|ROM1|memROM~14_combout\ & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT[5]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT\(8),
	dataf => \CPU|ROM1|ALT_INV_memROM~14_combout\,
	combout => \CPU|ROM1|memROM~9_combout\);

-- Location: LABCELL_X5_Y16_N6
\CPU|MUX1|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[5]~5_combout\ = ( \CPU|RAM1|ram~165_combout\ & ( !\CPU|DECODER1|Equal9~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DECODER1|ALT_INV_Equal9~1_combout\,
	dataf => \CPU|RAM1|ALT_INV_ram~165_combout\,
	combout => \CPU|MUX1|saida_MUX[5]~5_combout\);

-- Location: LABCELL_X6_Y15_N36
\CPU|DECODER1|Operacao_ULA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Operacao_ULA~0_combout\ = ( \CPU|ROM1|memROM~2_combout\ & ( (!\CPU|ROM1|memROM~8_combout\) # ((\CPU|ROM1|memROM~4_combout\) # (\CPU|ROM1|memROM~6_combout\)) ) ) # ( !\CPU|ROM1|memROM~2_combout\ & ( ((!\CPU|ROM1|memROM~4_combout\) # 
-- (\CPU|ROM1|memROM~6_combout\)) # (\CPU|ROM1|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100111111111111110011111111001111111111111100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|ROM1|ALT_INV_memROM~8_combout\,
	datac => \CPU|ROM1|ALT_INV_memROM~6_combout\,
	datad => \CPU|ROM1|ALT_INV_memROM~4_combout\,
	dataf => \CPU|ROM1|ALT_INV_memROM~2_combout\,
	combout => \CPU|DECODER1|Operacao_ULA~0_combout\);

-- Location: LABCELL_X6_Y15_N45
\CPU|DECODER1|saida[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|saida[5]~1_combout\ = ( \CPU|ROM1|memROM~8_combout\ & ( (!\CPU|ROM1|memROM~4_combout\ & !\CPU|ROM1|memROM~6_combout\) ) ) # ( !\CPU|ROM1|memROM~8_combout\ & ( (!\CPU|ROM1|memROM~4_combout\ & (!\CPU|ROM1|memROM~2_combout\ $ 
-- (!\CPU|ROM1|memROM~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM1|ALT_INV_memROM~4_combout\,
	datac => \CPU|ROM1|ALT_INV_memROM~2_combout\,
	datad => \CPU|ROM1|ALT_INV_memROM~6_combout\,
	dataf => \CPU|ROM1|ALT_INV_memROM~8_combout\,
	combout => \CPU|DECODER1|saida[5]~1_combout\);

-- Location: FF_X6_Y16_N50
\CPU|REG1|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|MUX1|saida_MUX[5]~5_combout\,
	sload => \CPU|DECODER1|Operacao_ULA~0_combout\,
	ena => \CPU|DECODER1|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(5));

-- Location: MLABCELL_X4_Y15_N15
\CPU|RAM1|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|process_0~0_combout\ = ( \CPU|ROM1|memROM~0_combout\ & ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|PC|DOUT[2]~DUPLICATE_q\ & !\CPU|PC|DOUT[0]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \CPU|ROM1|ALT_INV_memROM~0_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \CPU|RAM1|process_0~0_combout\);

-- Location: MLABCELL_X4_Y16_N48
\CPU|RAM1|ram~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~175_combout\ = ( \CPU|RAM1|process_0~0_combout\ & ( \CPU|ROM1|memROM~10_combout\ & ( (!\CPU|ROM1|memROM~12_combout\ & (!\CPU|ROM1|memROM~11_combout\ & !\CPU|ROM1|memROM~9_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|ROM1|ALT_INV_memROM~12_combout\,
	datac => \CPU|ROM1|ALT_INV_memROM~11_combout\,
	datad => \CPU|ROM1|ALT_INV_memROM~9_combout\,
	datae => \CPU|RAM1|ALT_INV_process_0~0_combout\,
	dataf => \CPU|ROM1|ALT_INV_memROM~10_combout\,
	combout => \CPU|RAM1|ram~175_combout\);

-- Location: FF_X5_Y16_N29
\CPU|RAM1|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \CPU|RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~38_q\);

-- Location: LABCELL_X5_Y16_N9
\CPU|RAM1|ram~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~163_combout\ = ( !\CPU|ROM1|memROM~12_combout\ & ( (\CPU|RAM1|ram~38_q\ & !\CPU|ROM1|memROM~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM1|ALT_INV_ram~38_q\,
	datac => \CPU|ROM1|ALT_INV_memROM~11_combout\,
	dataf => \CPU|ROM1|ALT_INV_memROM~12_combout\,
	combout => \CPU|RAM1|ram~163_combout\);

-- Location: MLABCELL_X4_Y16_N6
\CPU|RAM1|ram~174\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~174_combout\ = ( \CPU|RAM1|process_0~0_combout\ & ( !\CPU|ROM1|memROM~10_combout\ & ( (!\CPU|ROM1|memROM~12_combout\ & (!\CPU|ROM1|memROM~11_combout\ & \CPU|ROM1|memROM~9_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|ROM1|ALT_INV_memROM~12_combout\,
	datac => \CPU|ROM1|ALT_INV_memROM~11_combout\,
	datad => \CPU|ROM1|ALT_INV_memROM~9_combout\,
	datae => \CPU|RAM1|ALT_INV_process_0~0_combout\,
	dataf => \CPU|ROM1|ALT_INV_memROM~10_combout\,
	combout => \CPU|RAM1|ram~174_combout\);

-- Location: FF_X4_Y16_N7
\CPU|RAM1|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \CPU|RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~30_q\);

-- Location: LABCELL_X5_Y16_N39
\CPU|RAM1|ram~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~162_combout\ = ( !\CPU|ROM1|memROM~12_combout\ & ( (\CPU|RAM1|ram~30_q\ & !\CPU|ROM1|memROM~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM1|ALT_INV_ram~30_q\,
	datad => \CPU|ROM1|ALT_INV_memROM~11_combout\,
	dataf => \CPU|ROM1|ALT_INV_memROM~12_combout\,
	combout => \CPU|RAM1|ram~162_combout\);

-- Location: LABCELL_X7_Y16_N39
\CPU|RAM1|ram~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~176_combout\ = ( \CPU|RAM1|process_0~0_combout\ & ( \CPU|ROM1|memROM~10_combout\ & ( (!\CPU|ROM1|memROM~12_combout\ & (\CPU|ROM1|memROM~9_combout\ & !\CPU|ROM1|memROM~11_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM1|ALT_INV_memROM~12_combout\,
	datac => \CPU|ROM1|ALT_INV_memROM~9_combout\,
	datad => \CPU|ROM1|ALT_INV_memROM~11_combout\,
	datae => \CPU|RAM1|ALT_INV_process_0~0_combout\,
	dataf => \CPU|ROM1|ALT_INV_memROM~10_combout\,
	combout => \CPU|RAM1|ram~176_combout\);

-- Location: FF_X5_Y16_N10
\CPU|RAM1|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \CPU|RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~46_q\);

-- Location: LABCELL_X5_Y16_N3
\CPU|RAM1|ram~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~164_combout\ = ( !\CPU|ROM1|memROM~12_combout\ & ( (!\CPU|ROM1|memROM~11_combout\ & \CPU|RAM1|ram~46_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM1|ALT_INV_memROM~11_combout\,
	datac => \CPU|RAM1|ALT_INV_ram~46_q\,
	dataf => \CPU|ROM1|ALT_INV_memROM~12_combout\,
	combout => \CPU|RAM1|ram~164_combout\);

-- Location: MLABCELL_X4_Y16_N45
\CPU|RAM1|ram~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~173_combout\ = ( \CPU|RAM1|process_0~0_combout\ & ( !\CPU|ROM1|memROM~10_combout\ & ( (!\CPU|ROM1|memROM~12_combout\ & (!\CPU|ROM1|memROM~9_combout\ & !\CPU|ROM1|memROM~11_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|ROM1|ALT_INV_memROM~12_combout\,
	datac => \CPU|ROM1|ALT_INV_memROM~9_combout\,
	datad => \CPU|ROM1|ALT_INV_memROM~11_combout\,
	datae => \CPU|RAM1|ALT_INV_process_0~0_combout\,
	dataf => \CPU|ROM1|ALT_INV_memROM~10_combout\,
	combout => \CPU|RAM1|ram~173_combout\);

-- Location: FF_X4_Y16_N2
\CPU|RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(5),
	sload => VCC,
	ena => \CPU|RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~22_q\);

-- Location: MLABCELL_X4_Y16_N0
\CPU|RAM1|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~161_combout\ = ( \CPU|RAM1|ram~22_q\ & ( !\CPU|ROM1|memROM~11_combout\ & ( !\CPU|ROM1|memROM~12_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ROM1|ALT_INV_memROM~12_combout\,
	datae => \CPU|RAM1|ALT_INV_ram~22_q\,
	dataf => \CPU|ROM1|ALT_INV_memROM~11_combout\,
	combout => \CPU|RAM1|ram~161_combout\);

-- Location: LABCELL_X5_Y16_N12
\CPU|RAM1|ram~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~165_combout\ = ( \CPU|RAM1|ram~164_combout\ & ( \CPU|RAM1|ram~161_combout\ & ( (!\CPU|ROM1|memROM~9_combout\ & (((!\CPU|ROM1|memROM~10_combout\)) # (\CPU|RAM1|ram~163_combout\))) # (\CPU|ROM1|memROM~9_combout\ & 
-- (((\CPU|RAM1|ram~162_combout\) # (\CPU|ROM1|memROM~10_combout\)))) ) ) ) # ( !\CPU|RAM1|ram~164_combout\ & ( \CPU|RAM1|ram~161_combout\ & ( (!\CPU|ROM1|memROM~9_combout\ & (((!\CPU|ROM1|memROM~10_combout\)) # (\CPU|RAM1|ram~163_combout\))) # 
-- (\CPU|ROM1|memROM~9_combout\ & (((!\CPU|ROM1|memROM~10_combout\ & \CPU|RAM1|ram~162_combout\)))) ) ) ) # ( \CPU|RAM1|ram~164_combout\ & ( !\CPU|RAM1|ram~161_combout\ & ( (!\CPU|ROM1|memROM~9_combout\ & (\CPU|RAM1|ram~163_combout\ & 
-- (\CPU|ROM1|memROM~10_combout\))) # (\CPU|ROM1|memROM~9_combout\ & (((\CPU|RAM1|ram~162_combout\) # (\CPU|ROM1|memROM~10_combout\)))) ) ) ) # ( !\CPU|RAM1|ram~164_combout\ & ( !\CPU|RAM1|ram~161_combout\ & ( (!\CPU|ROM1|memROM~9_combout\ & 
-- (\CPU|RAM1|ram~163_combout\ & (\CPU|ROM1|memROM~10_combout\))) # (\CPU|ROM1|memROM~9_combout\ & (((!\CPU|ROM1|memROM~10_combout\ & \CPU|RAM1|ram~162_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010000001110101011110100010111100101010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM1|ALT_INV_memROM~9_combout\,
	datab => \CPU|RAM1|ALT_INV_ram~163_combout\,
	datac => \CPU|ROM1|ALT_INV_memROM~10_combout\,
	datad => \CPU|RAM1|ALT_INV_ram~162_combout\,
	datae => \CPU|RAM1|ALT_INV_ram~164_combout\,
	dataf => \CPU|RAM1|ALT_INV_ram~161_combout\,
	combout => \CPU|RAM1|ram~165_combout\);

-- Location: FF_X5_Y16_N4
\CPU|RAM1|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \CPU|RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~43_q\);

-- Location: FF_X5_Y16_N38
\CPU|RAM1|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \CPU|RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~27_q\);

-- Location: FF_X5_Y16_N56
\CPU|RAM1|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \CPU|RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~35_q\);

-- Location: FF_X6_Y16_N26
\CPU|RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(2),
	sload => VCC,
	ena => \CPU|RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~19_q\);

-- Location: LABCELL_X6_Y16_N24
\CPU|RAM1|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~150_combout\ = ( \CPU|RAM1|ram~19_q\ & ( \CPU|ROM1|memROM~10_combout\ & ( (!\CPU|ROM1|memROM~9_combout\ & ((\CPU|RAM1|ram~35_q\))) # (\CPU|ROM1|memROM~9_combout\ & (\CPU|RAM1|ram~43_q\)) ) ) ) # ( !\CPU|RAM1|ram~19_q\ & ( 
-- \CPU|ROM1|memROM~10_combout\ & ( (!\CPU|ROM1|memROM~9_combout\ & ((\CPU|RAM1|ram~35_q\))) # (\CPU|ROM1|memROM~9_combout\ & (\CPU|RAM1|ram~43_q\)) ) ) ) # ( \CPU|RAM1|ram~19_q\ & ( !\CPU|ROM1|memROM~10_combout\ & ( (!\CPU|ROM1|memROM~9_combout\) # 
-- (\CPU|RAM1|ram~27_q\) ) ) ) # ( !\CPU|RAM1|ram~19_q\ & ( !\CPU|ROM1|memROM~10_combout\ & ( (\CPU|RAM1|ram~27_q\ & \CPU|ROM1|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM1|ALT_INV_ram~43_q\,
	datab => \CPU|RAM1|ALT_INV_ram~27_q\,
	datac => \CPU|RAM1|ALT_INV_ram~35_q\,
	datad => \CPU|ROM1|ALT_INV_memROM~9_combout\,
	datae => \CPU|RAM1|ALT_INV_ram~19_q\,
	dataf => \CPU|ROM1|ALT_INV_memROM~10_combout\,
	combout => \CPU|RAM1|ram~150_combout\);

-- Location: LABCELL_X6_Y16_N9
\CPU|RAM1|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~151_combout\ = ( \CPU|RAM1|ram~150_combout\ & ( (!\CPU|ROM1|memROM~12_combout\ & !\CPU|ROM1|memROM~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ROM1|ALT_INV_memROM~12_combout\,
	datad => \CPU|ROM1|ALT_INV_memROM~11_combout\,
	dataf => \CPU|RAM1|ALT_INV_ram~150_combout\,
	combout => \CPU|RAM1|ram~151_combout\);

-- Location: LABCELL_X6_Y16_N30
\CPU|ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \CPU|ULA1|Add0~34_cout\);

-- Location: LABCELL_X6_Y16_N33
\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( \CPU|REG1|DOUT\(0) ) + ( (!\CPU|DECODER1|Equal9~1_combout\ & ((!\CPU|RAM1|ram~158_combout\))) # (\CPU|DECODER1|Equal9~1_combout\ & (!\CPU|ROM1|memROM~9_combout\)) ) + ( \CPU|ULA1|Add0~34_cout\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( \CPU|REG1|DOUT\(0) ) + ( (!\CPU|DECODER1|Equal9~1_combout\ & ((!\CPU|RAM1|ram~158_combout\))) # (\CPU|DECODER1|Equal9~1_combout\ & (!\CPU|ROM1|memROM~9_combout\)) ) + ( \CPU|ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111010001110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM1|ALT_INV_memROM~9_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal9~1_combout\,
	datac => \CPU|RAM1|ALT_INV_ram~158_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add0~34_cout\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

-- Location: LABCELL_X7_Y16_N30
\CPU|MUX1|saida_MUX[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[0]~3_combout\ = ( \CPU|RAM1|ram~158_combout\ & ( \CPU|ROM1|memROM~9_combout\ ) ) # ( !\CPU|RAM1|ram~158_combout\ & ( \CPU|ROM1|memROM~9_combout\ & ( \CPU|DECODER1|Equal9~1_combout\ ) ) ) # ( \CPU|RAM1|ram~158_combout\ & ( 
-- !\CPU|ROM1|memROM~9_combout\ & ( !\CPU|DECODER1|Equal9~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER1|ALT_INV_Equal9~1_combout\,
	datae => \CPU|RAM1|ALT_INV_ram~158_combout\,
	dataf => \CPU|ROM1|ALT_INV_memROM~9_combout\,
	combout => \CPU|MUX1|saida_MUX[0]~3_combout\);

-- Location: FF_X6_Y16_N35
\CPU|REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|MUX1|saida_MUX[0]~3_combout\,
	sload => \CPU|DECODER1|Operacao_ULA~0_combout\,
	ena => \CPU|DECODER1|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(0));

-- Location: FF_X4_Y16_N52
\CPU|RAM1|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \CPU|RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~33_q\);

-- Location: FF_X5_Y16_N8
\CPU|RAM1|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \CPU|RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~41_q\);

-- Location: FF_X4_Y16_N4
\CPU|RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \CPU|RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~17_q\);

-- Location: FF_X5_Y16_N44
\CPU|RAM1|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(0),
	sload => VCC,
	ena => \CPU|RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~25_q\);

-- Location: LABCELL_X5_Y16_N42
\CPU|RAM1|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~157_combout\ = ( \CPU|RAM1|ram~25_q\ & ( \CPU|ROM1|memROM~10_combout\ & ( (!\CPU|ROM1|memROM~9_combout\ & (\CPU|RAM1|ram~33_q\)) # (\CPU|ROM1|memROM~9_combout\ & ((\CPU|RAM1|ram~41_q\))) ) ) ) # ( !\CPU|RAM1|ram~25_q\ & ( 
-- \CPU|ROM1|memROM~10_combout\ & ( (!\CPU|ROM1|memROM~9_combout\ & (\CPU|RAM1|ram~33_q\)) # (\CPU|ROM1|memROM~9_combout\ & ((\CPU|RAM1|ram~41_q\))) ) ) ) # ( \CPU|RAM1|ram~25_q\ & ( !\CPU|ROM1|memROM~10_combout\ & ( (\CPU|RAM1|ram~17_q\) # 
-- (\CPU|ROM1|memROM~9_combout\) ) ) ) # ( !\CPU|RAM1|ram~25_q\ & ( !\CPU|ROM1|memROM~10_combout\ & ( (!\CPU|ROM1|memROM~9_combout\ & \CPU|RAM1|ram~17_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM1|ALT_INV_ram~33_q\,
	datab => \CPU|RAM1|ALT_INV_ram~41_q\,
	datac => \CPU|ROM1|ALT_INV_memROM~9_combout\,
	datad => \CPU|RAM1|ALT_INV_ram~17_q\,
	datae => \CPU|RAM1|ALT_INV_ram~25_q\,
	dataf => \CPU|ROM1|ALT_INV_memROM~10_combout\,
	combout => \CPU|RAM1|ram~157_combout\);

-- Location: LABCELL_X5_Y16_N18
\CPU|RAM1|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~158_combout\ = ( \CPU|RAM1|ram~157_combout\ & ( (!\CPU|ROM1|memROM~11_combout\ & !\CPU|ROM1|memROM~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|ROM1|ALT_INV_memROM~11_combout\,
	datac => \CPU|ROM1|ALT_INV_memROM~12_combout\,
	dataf => \CPU|RAM1|ALT_INV_ram~157_combout\,
	combout => \CPU|RAM1|ram~158_combout\);

-- Location: LABCELL_X6_Y16_N36
\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( \CPU|REG1|DOUT\(1) ) + ( (!\CPU|DECODER1|Equal9~1_combout\ & ((!\CPU|RAM1|ram~156_combout\))) # (\CPU|DECODER1|Equal9~1_combout\ & (!\CPU|ROM1|memROM~10_combout\)) ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( \CPU|REG1|DOUT\(1) ) + ( (!\CPU|DECODER1|Equal9~1_combout\ & ((!\CPU|RAM1|ram~156_combout\))) # (\CPU|DECODER1|Equal9~1_combout\ & (!\CPU|ROM1|memROM~10_combout\)) ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000110110001101100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal9~1_combout\,
	datab => \CPU|ROM1|ALT_INV_memROM~10_combout\,
	datac => \CPU|RAM1|ALT_INV_ram~156_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

-- Location: LABCELL_X5_Y16_N57
\CPU|MUX1|saida_MUX[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[1]~2_combout\ = (!\CPU|DECODER1|Equal9~1_combout\ & ((\CPU|RAM1|ram~156_combout\))) # (\CPU|DECODER1|Equal9~1_combout\ & (\CPU|ROM1|memROM~10_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM1|ALT_INV_memROM~10_combout\,
	datac => \CPU|RAM1|ALT_INV_ram~156_combout\,
	datad => \CPU|DECODER1|ALT_INV_Equal9~1_combout\,
	combout => \CPU|MUX1|saida_MUX[1]~2_combout\);

-- Location: FF_X6_Y16_N38
\CPU|REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|MUX1|saida_MUX[1]~2_combout\,
	sload => \CPU|DECODER1|Operacao_ULA~0_combout\,
	ena => \CPU|DECODER1|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(1));

-- Location: FF_X5_Y16_N26
\CPU|RAM1|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \CPU|RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~34_q\);

-- Location: MLABCELL_X4_Y16_N54
\CPU|RAM1|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~154_combout\ = ( !\CPU|ROM1|memROM~12_combout\ & ( !\CPU|ROM1|memROM~11_combout\ & ( \CPU|RAM1|ram~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|RAM1|ALT_INV_ram~34_q\,
	datae => \CPU|ROM1|ALT_INV_memROM~12_combout\,
	dataf => \CPU|ROM1|ALT_INV_memROM~11_combout\,
	combout => \CPU|RAM1|ram~154_combout\);

-- Location: FF_X5_Y16_N50
\CPU|RAM1|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \CPU|RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~42_q\);

-- Location: LABCELL_X5_Y16_N54
\CPU|RAM1|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~155_combout\ = ( !\CPU|ROM1|memROM~12_combout\ & ( (\CPU|RAM1|ram~42_q\ & !\CPU|ROM1|memROM~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|RAM1|ALT_INV_ram~42_q\,
	datad => \CPU|ROM1|ALT_INV_memROM~11_combout\,
	dataf => \CPU|ROM1|ALT_INV_memROM~12_combout\,
	combout => \CPU|RAM1|ram~155_combout\);

-- Location: FF_X5_Y16_N17
\CPU|RAM1|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \CPU|RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~26_q\);

-- Location: LABCELL_X5_Y16_N0
\CPU|RAM1|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~153_combout\ = ( !\CPU|ROM1|memROM~11_combout\ & ( (\CPU|RAM1|ram~26_q\ & !\CPU|ROM1|memROM~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|RAM1|ALT_INV_ram~26_q\,
	datad => \CPU|ROM1|ALT_INV_memROM~12_combout\,
	dataf => \CPU|ROM1|ALT_INV_memROM~11_combout\,
	combout => \CPU|RAM1|ram~153_combout\);

-- Location: FF_X5_Y15_N11
\CPU|RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(1),
	sload => VCC,
	ena => \CPU|RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~18_q\);

-- Location: LABCELL_X5_Y15_N9
\CPU|RAM1|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~152_combout\ = ( !\CPU|ROM1|memROM~12_combout\ & ( (!\CPU|ROM1|memROM~11_combout\ & \CPU|RAM1|ram~18_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ROM1|ALT_INV_memROM~11_combout\,
	datad => \CPU|RAM1|ALT_INV_ram~18_q\,
	dataf => \CPU|ROM1|ALT_INV_memROM~12_combout\,
	combout => \CPU|RAM1|ram~152_combout\);

-- Location: LABCELL_X5_Y16_N30
\CPU|RAM1|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~156_combout\ = ( \CPU|RAM1|ram~153_combout\ & ( \CPU|RAM1|ram~152_combout\ & ( (!\CPU|ROM1|memROM~10_combout\) # ((!\CPU|ROM1|memROM~9_combout\ & (\CPU|RAM1|ram~154_combout\)) # (\CPU|ROM1|memROM~9_combout\ & ((\CPU|RAM1|ram~155_combout\)))) 
-- ) ) ) # ( !\CPU|RAM1|ram~153_combout\ & ( \CPU|RAM1|ram~152_combout\ & ( (!\CPU|ROM1|memROM~10_combout\ & (!\CPU|ROM1|memROM~9_combout\)) # (\CPU|ROM1|memROM~10_combout\ & ((!\CPU|ROM1|memROM~9_combout\ & (\CPU|RAM1|ram~154_combout\)) # 
-- (\CPU|ROM1|memROM~9_combout\ & ((\CPU|RAM1|ram~155_combout\))))) ) ) ) # ( \CPU|RAM1|ram~153_combout\ & ( !\CPU|RAM1|ram~152_combout\ & ( (!\CPU|ROM1|memROM~10_combout\ & (\CPU|ROM1|memROM~9_combout\)) # (\CPU|ROM1|memROM~10_combout\ & 
-- ((!\CPU|ROM1|memROM~9_combout\ & (\CPU|RAM1|ram~154_combout\)) # (\CPU|ROM1|memROM~9_combout\ & ((\CPU|RAM1|ram~155_combout\))))) ) ) ) # ( !\CPU|RAM1|ram~153_combout\ & ( !\CPU|RAM1|ram~152_combout\ & ( (\CPU|ROM1|memROM~10_combout\ & 
-- ((!\CPU|ROM1|memROM~9_combout\ & (\CPU|RAM1|ram~154_combout\)) # (\CPU|ROM1|memROM~9_combout\ & ((\CPU|RAM1|ram~155_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM1|ALT_INV_memROM~10_combout\,
	datab => \CPU|ROM1|ALT_INV_memROM~9_combout\,
	datac => \CPU|RAM1|ALT_INV_ram~154_combout\,
	datad => \CPU|RAM1|ALT_INV_ram~155_combout\,
	datae => \CPU|RAM1|ALT_INV_ram~153_combout\,
	dataf => \CPU|RAM1|ALT_INV_ram~152_combout\,
	combout => \CPU|RAM1|ram~156_combout\);

-- Location: LABCELL_X6_Y16_N39
\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( \CPU|REG1|DOUT\(2) ) + ( (!\CPU|DECODER1|Equal9~1_combout\ & ((!\CPU|RAM1|ram~151_combout\))) # (\CPU|DECODER1|Equal9~1_combout\ & (!\CPU|ROM1|memROM~11_combout\)) ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( \CPU|REG1|DOUT\(2) ) + ( (!\CPU|DECODER1|Equal9~1_combout\ & ((!\CPU|RAM1|ram~151_combout\))) # (\CPU|DECODER1|Equal9~1_combout\ & (!\CPU|ROM1|memROM~11_combout\)) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011010111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal9~1_combout\,
	datac => \CPU|ROM1|ALT_INV_memROM~11_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(2),
	dataf => \CPU|RAM1|ALT_INV_ram~151_combout\,
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

-- Location: LABCELL_X7_Y16_N15
\CPU|MUX1|saida_MUX[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[2]~1_combout\ = ( \CPU|DECODER1|Equal9~1_combout\ & ( \CPU|RAM1|ram~151_combout\ & ( \CPU|ROM1|memROM~11_combout\ ) ) ) # ( !\CPU|DECODER1|Equal9~1_combout\ & ( \CPU|RAM1|ram~151_combout\ ) ) # ( \CPU|DECODER1|Equal9~1_combout\ & ( 
-- !\CPU|RAM1|ram~151_combout\ & ( \CPU|ROM1|memROM~11_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ROM1|ALT_INV_memROM~11_combout\,
	datae => \CPU|DECODER1|ALT_INV_Equal9~1_combout\,
	dataf => \CPU|RAM1|ALT_INV_ram~151_combout\,
	combout => \CPU|MUX1|saida_MUX[2]~1_combout\);

-- Location: FF_X6_Y16_N41
\CPU|REG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|MUX1|saida_MUX[2]~1_combout\,
	sload => \CPU|DECODER1|Operacao_ULA~0_combout\,
	ena => \CPU|DECODER1|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(2));

-- Location: LABCELL_X6_Y16_N42
\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( \CPU|REG1|DOUT\(3) ) + ( (!\CPU|DECODER1|Equal9~1_combout\ & ((!\CPU|RAM1|ram~149_combout\))) # (\CPU|DECODER1|Equal9~1_combout\ & (!\CPU|ROM1|memROM~12_combout\)) ) + ( \CPU|ULA1|Add0~26\ ))
-- \CPU|ULA1|Add0~30\ = CARRY(( \CPU|REG1|DOUT\(3) ) + ( (!\CPU|DECODER1|Equal9~1_combout\ & ((!\CPU|RAM1|ram~149_combout\))) # (\CPU|DECODER1|Equal9~1_combout\ & (!\CPU|ROM1|memROM~12_combout\)) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111010001110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM1|ALT_INV_memROM~12_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal9~1_combout\,
	datac => \CPU|RAM1|ALT_INV_ram~149_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\,
	cout => \CPU|ULA1|Add0~30\);

-- Location: LABCELL_X7_Y16_N0
\CPU|MUX1|saida_MUX[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[3]~0_combout\ = ( \CPU|ROM1|memROM~12_combout\ & ( \CPU|RAM1|ram~149_combout\ ) ) # ( !\CPU|ROM1|memROM~12_combout\ & ( \CPU|RAM1|ram~149_combout\ & ( !\CPU|DECODER1|Equal9~1_combout\ ) ) ) # ( \CPU|ROM1|memROM~12_combout\ & ( 
-- !\CPU|RAM1|ram~149_combout\ & ( \CPU|DECODER1|Equal9~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111001100110011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER1|ALT_INV_Equal9~1_combout\,
	datae => \CPU|ROM1|ALT_INV_memROM~12_combout\,
	dataf => \CPU|RAM1|ALT_INV_ram~149_combout\,
	combout => \CPU|MUX1|saida_MUX[3]~0_combout\);

-- Location: FF_X6_Y16_N44
\CPU|REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|MUX1|saida_MUX[3]~0_combout\,
	sload => \CPU|DECODER1|Operacao_ULA~0_combout\,
	ena => \CPU|DECODER1|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(3));

-- Location: FF_X6_Y16_N23
\CPU|RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \CPU|RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~20_q\);

-- Location: LABCELL_X6_Y16_N0
\CPU|RAM1|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~145_combout\ = ( !\CPU|ROM1|memROM~12_combout\ & ( (\CPU|RAM1|ram~20_q\ & !\CPU|ROM1|memROM~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|RAM1|ALT_INV_ram~20_q\,
	datad => \CPU|ROM1|ALT_INV_memROM~11_combout\,
	dataf => \CPU|ROM1|ALT_INV_memROM~12_combout\,
	combout => \CPU|RAM1|ram~145_combout\);

-- Location: FF_X5_Y15_N23
\CPU|RAM1|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \CPU|RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~44_q\);

-- Location: LABCELL_X5_Y15_N21
\CPU|RAM1|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~148_combout\ = ( !\CPU|ROM1|memROM~11_combout\ & ( (!\CPU|ROM1|memROM~12_combout\ & \CPU|RAM1|ram~44_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ROM1|ALT_INV_memROM~12_combout\,
	datad => \CPU|RAM1|ALT_INV_ram~44_q\,
	dataf => \CPU|ROM1|ALT_INV_memROM~11_combout\,
	combout => \CPU|RAM1|ram~148_combout\);

-- Location: FF_X4_Y16_N56
\CPU|RAM1|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \CPU|RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~36_q\);

-- Location: LABCELL_X5_Y16_N21
\CPU|RAM1|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~147_combout\ = ( !\CPU|ROM1|memROM~11_combout\ & ( (\CPU|RAM1|ram~36_q\ & !\CPU|ROM1|memROM~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM1|ALT_INV_ram~36_q\,
	datac => \CPU|ROM1|ALT_INV_memROM~12_combout\,
	dataf => \CPU|ROM1|ALT_INV_memROM~11_combout\,
	combout => \CPU|RAM1|ram~147_combout\);

-- Location: FF_X4_Y16_N10
\CPU|RAM1|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(3),
	sload => VCC,
	ena => \CPU|RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~28_q\);

-- Location: LABCELL_X6_Y16_N3
\CPU|RAM1|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~146_combout\ = ( !\CPU|ROM1|memROM~12_combout\ & ( (\CPU|RAM1|ram~28_q\ & !\CPU|ROM1|memROM~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|RAM1|ALT_INV_ram~28_q\,
	datad => \CPU|ROM1|ALT_INV_memROM~11_combout\,
	dataf => \CPU|ROM1|ALT_INV_memROM~12_combout\,
	combout => \CPU|RAM1|ram~146_combout\);

-- Location: LABCELL_X6_Y16_N18
\CPU|RAM1|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~149_combout\ = ( \CPU|RAM1|ram~147_combout\ & ( \CPU|RAM1|ram~146_combout\ & ( (!\CPU|ROM1|memROM~9_combout\ & (((\CPU|ROM1|memROM~10_combout\)) # (\CPU|RAM1|ram~145_combout\))) # (\CPU|ROM1|memROM~9_combout\ & 
-- (((!\CPU|ROM1|memROM~10_combout\) # (\CPU|RAM1|ram~148_combout\)))) ) ) ) # ( !\CPU|RAM1|ram~147_combout\ & ( \CPU|RAM1|ram~146_combout\ & ( (!\CPU|ROM1|memROM~9_combout\ & (\CPU|RAM1|ram~145_combout\ & ((!\CPU|ROM1|memROM~10_combout\)))) # 
-- (\CPU|ROM1|memROM~9_combout\ & (((!\CPU|ROM1|memROM~10_combout\) # (\CPU|RAM1|ram~148_combout\)))) ) ) ) # ( \CPU|RAM1|ram~147_combout\ & ( !\CPU|RAM1|ram~146_combout\ & ( (!\CPU|ROM1|memROM~9_combout\ & (((\CPU|ROM1|memROM~10_combout\)) # 
-- (\CPU|RAM1|ram~145_combout\))) # (\CPU|ROM1|memROM~9_combout\ & (((\CPU|RAM1|ram~148_combout\ & \CPU|ROM1|memROM~10_combout\)))) ) ) ) # ( !\CPU|RAM1|ram~147_combout\ & ( !\CPU|RAM1|ram~146_combout\ & ( (!\CPU|ROM1|memROM~9_combout\ & 
-- (\CPU|RAM1|ram~145_combout\ & ((!\CPU|ROM1|memROM~10_combout\)))) # (\CPU|ROM1|memROM~9_combout\ & (((\CPU|RAM1|ram~148_combout\ & \CPU|ROM1|memROM~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011010001001100111101110111000000110111011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM1|ALT_INV_ram~145_combout\,
	datab => \CPU|ROM1|ALT_INV_memROM~9_combout\,
	datac => \CPU|RAM1|ALT_INV_ram~148_combout\,
	datad => \CPU|ROM1|ALT_INV_memROM~10_combout\,
	datae => \CPU|RAM1|ALT_INV_ram~147_combout\,
	dataf => \CPU|RAM1|ALT_INV_ram~146_combout\,
	combout => \CPU|RAM1|ram~149_combout\);

-- Location: LABCELL_X6_Y16_N45
\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( \CPU|REG1|DOUT\(4) ) + ( (!\CPU|RAM1|ram~160_combout\) # (\CPU|DECODER1|Equal9~1_combout\) ) + ( \CPU|ULA1|Add0~30\ ))
-- \CPU|ULA1|Add0~2\ = CARRY(( \CPU|REG1|DOUT\(4) ) + ( (!\CPU|RAM1|ram~160_combout\) # (\CPU|DECODER1|Equal9~1_combout\) ) + ( \CPU|ULA1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER1|ALT_INV_Equal9~1_combout\,
	datac => \CPU|RAM1|ALT_INV_ram~160_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add0~30\,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

-- Location: LABCELL_X5_Y16_N36
\CPU|MUX1|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[4]~4_combout\ = ( \CPU|RAM1|ram~160_combout\ & ( !\CPU|DECODER1|Equal9~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DECODER1|ALT_INV_Equal9~1_combout\,
	dataf => \CPU|RAM1|ALT_INV_ram~160_combout\,
	combout => \CPU|MUX1|saida_MUX[4]~4_combout\);

-- Location: FF_X6_Y16_N47
\CPU|REG1|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|MUX1|saida_MUX[4]~4_combout\,
	sload => \CPU|DECODER1|Operacao_ULA~0_combout\,
	ena => \CPU|DECODER1|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(4));

-- Location: FF_X4_Y16_N59
\CPU|RAM1|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \CPU|RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~37_q\);

-- Location: FF_X4_Y16_N47
\CPU|RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \CPU|RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~21_q\);

-- Location: FF_X5_Y16_N34
\CPU|RAM1|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \CPU|RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~45_q\);

-- Location: FF_X4_Y16_N38
\CPU|RAM1|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(4),
	sload => VCC,
	ena => \CPU|RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~29_q\);

-- Location: MLABCELL_X4_Y16_N36
\CPU|RAM1|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~159_combout\ = ( \CPU|RAM1|ram~29_q\ & ( \CPU|ROM1|memROM~9_combout\ & ( (!\CPU|ROM1|memROM~10_combout\) # (\CPU|RAM1|ram~45_q\) ) ) ) # ( !\CPU|RAM1|ram~29_q\ & ( \CPU|ROM1|memROM~9_combout\ & ( (\CPU|RAM1|ram~45_q\ & 
-- \CPU|ROM1|memROM~10_combout\) ) ) ) # ( \CPU|RAM1|ram~29_q\ & ( !\CPU|ROM1|memROM~9_combout\ & ( (!\CPU|ROM1|memROM~10_combout\ & ((\CPU|RAM1|ram~21_q\))) # (\CPU|ROM1|memROM~10_combout\ & (\CPU|RAM1|ram~37_q\)) ) ) ) # ( !\CPU|RAM1|ram~29_q\ & ( 
-- !\CPU|ROM1|memROM~9_combout\ & ( (!\CPU|ROM1|memROM~10_combout\ & ((\CPU|RAM1|ram~21_q\))) # (\CPU|ROM1|memROM~10_combout\ & (\CPU|RAM1|ram~37_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100000000000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM1|ALT_INV_ram~37_q\,
	datab => \CPU|RAM1|ALT_INV_ram~21_q\,
	datac => \CPU|RAM1|ALT_INV_ram~45_q\,
	datad => \CPU|ROM1|ALT_INV_memROM~10_combout\,
	datae => \CPU|RAM1|ALT_INV_ram~29_q\,
	dataf => \CPU|ROM1|ALT_INV_memROM~9_combout\,
	combout => \CPU|RAM1|ram~159_combout\);

-- Location: LABCELL_X5_Y16_N24
\CPU|RAM1|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~160_combout\ = ( \CPU|RAM1|ram~159_combout\ & ( (!\CPU|ROM1|memROM~11_combout\ & !\CPU|ROM1|memROM~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|ROM1|ALT_INV_memROM~11_combout\,
	datac => \CPU|ROM1|ALT_INV_memROM~12_combout\,
	dataf => \CPU|RAM1|ALT_INV_ram~159_combout\,
	combout => \CPU|RAM1|ram~160_combout\);

-- Location: LABCELL_X6_Y16_N48
\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( \CPU|REG1|DOUT\(5) ) + ( (!\CPU|RAM1|ram~165_combout\) # (\CPU|DECODER1|Equal9~1_combout\) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( \CPU|REG1|DOUT\(5) ) + ( (!\CPU|RAM1|ram~165_combout\) # (\CPU|DECODER1|Equal9~1_combout\) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER1|ALT_INV_Equal9~1_combout\,
	datac => \CPU|RAM1|ALT_INV_ram~165_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

-- Location: LABCELL_X6_Y15_N27
\CPU|REG_FLAG_EQ|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REG_FLAG_EQ|DOUT~2_combout\ = ( \CPU|REG_FLAG_EQ|DOUT~q\ & ( (!\CPU|ROM1|memROM~4_combout\) # (((\CPU|ROM1|memROM~6_combout\) # (\CPU|ROM1|memROM~2_combout\)) # (\CPU|ROM1|memROM~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010111111111111111011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM1|ALT_INV_memROM~4_combout\,
	datab => \CPU|ROM1|ALT_INV_memROM~8_combout\,
	datac => \CPU|ROM1|ALT_INV_memROM~2_combout\,
	datad => \CPU|ROM1|ALT_INV_memROM~6_combout\,
	dataf => \CPU|REG_FLAG_EQ|ALT_INV_DOUT~q\,
	combout => \CPU|REG_FLAG_EQ|DOUT~2_combout\);

-- Location: LABCELL_X7_Y16_N51
\CPU|MUX1|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[6]~6_combout\ = ( !\CPU|DECODER1|Equal9~1_combout\ & ( \CPU|RAM1|ram~167_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \CPU|DECODER1|ALT_INV_Equal9~1_combout\,
	dataf => \CPU|RAM1|ALT_INV_ram~167_combout\,
	combout => \CPU|MUX1|saida_MUX[6]~6_combout\);

-- Location: FF_X6_Y16_N53
\CPU|REG1|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|MUX1|saida_MUX[6]~6_combout\,
	sload => \CPU|DECODER1|Operacao_ULA~0_combout\,
	ena => \CPU|DECODER1|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(6));

-- Location: FF_X4_Y16_N32
\CPU|RAM1|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \CPU|RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~39_q\);

-- Location: FF_X5_Y16_N20
\CPU|RAM1|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \CPU|RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~47_q\);

-- Location: FF_X4_Y16_N43
\CPU|RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \CPU|RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~23_q\);

-- Location: FF_X5_Y16_N46
\CPU|RAM1|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(6),
	sload => VCC,
	ena => \CPU|RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~31_q\);

-- Location: LABCELL_X7_Y16_N9
\CPU|RAM1|ram~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~166_combout\ = ( \CPU|ROM1|memROM~9_combout\ & ( \CPU|ROM1|memROM~10_combout\ & ( \CPU|RAM1|ram~47_q\ ) ) ) # ( !\CPU|ROM1|memROM~9_combout\ & ( \CPU|ROM1|memROM~10_combout\ & ( \CPU|RAM1|ram~39_q\ ) ) ) # ( \CPU|ROM1|memROM~9_combout\ & ( 
-- !\CPU|ROM1|memROM~10_combout\ & ( \CPU|RAM1|ram~31_q\ ) ) ) # ( !\CPU|ROM1|memROM~9_combout\ & ( !\CPU|ROM1|memROM~10_combout\ & ( \CPU|RAM1|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM1|ALT_INV_ram~39_q\,
	datab => \CPU|RAM1|ALT_INV_ram~47_q\,
	datac => \CPU|RAM1|ALT_INV_ram~23_q\,
	datad => \CPU|RAM1|ALT_INV_ram~31_q\,
	datae => \CPU|ROM1|ALT_INV_memROM~9_combout\,
	dataf => \CPU|ROM1|ALT_INV_memROM~10_combout\,
	combout => \CPU|RAM1|ram~166_combout\);

-- Location: LABCELL_X7_Y16_N42
\CPU|RAM1|ram~167\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~167_combout\ = ( !\CPU|ROM1|memROM~12_combout\ & ( \CPU|RAM1|ram~166_combout\ & ( !\CPU|ROM1|memROM~11_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ROM1|ALT_INV_memROM~11_combout\,
	datae => \CPU|ROM1|ALT_INV_memROM~12_combout\,
	dataf => \CPU|RAM1|ALT_INV_ram~166_combout\,
	combout => \CPU|RAM1|ram~167_combout\);

-- Location: LABCELL_X6_Y16_N51
\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( \CPU|REG1|DOUT\(6) ) + ( (!\CPU|RAM1|ram~167_combout\) # (\CPU|DECODER1|Equal9~1_combout\) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( \CPU|REG1|DOUT\(6) ) + ( (!\CPU|RAM1|ram~167_combout\) # (\CPU|DECODER1|Equal9~1_combout\) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER1|ALT_INV_Equal9~1_combout\,
	datac => \CPU|RAM1|ALT_INV_ram~167_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

-- Location: LABCELL_X5_Y16_N27
\CPU|MUX1|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[7]~7_combout\ = ( \CPU|RAM1|ram~172_combout\ & ( !\CPU|DECODER1|Equal9~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal9~1_combout\,
	dataf => \CPU|RAM1|ALT_INV_ram~172_combout\,
	combout => \CPU|MUX1|saida_MUX[7]~7_combout\);

-- Location: FF_X6_Y16_N56
\CPU|REG1|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|MUX1|saida_MUX[7]~7_combout\,
	sload => \CPU|DECODER1|Operacao_ULA~0_combout\,
	ena => \CPU|DECODER1|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(7));

-- Location: FF_X5_Y16_N23
\CPU|RAM1|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \CPU|RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~48_q\);

-- Location: MLABCELL_X4_Y16_N18
\CPU|RAM1|ram~171\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~171_combout\ = ( !\CPU|ROM1|memROM~12_combout\ & ( !\CPU|ROM1|memROM~11_combout\ & ( \CPU|RAM1|ram~48_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|RAM1|ALT_INV_ram~48_q\,
	datae => \CPU|ROM1|ALT_INV_memROM~12_combout\,
	dataf => \CPU|ROM1|ALT_INV_memROM~11_combout\,
	combout => \CPU|RAM1|ram~171_combout\);

-- Location: FF_X4_Y16_N35
\CPU|RAM1|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \CPU|RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~40_q\);

-- Location: MLABCELL_X4_Y16_N33
\CPU|RAM1|ram~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~170_combout\ = ( \CPU|RAM1|ram~40_q\ & ( !\CPU|ROM1|memROM~12_combout\ & ( !\CPU|ROM1|memROM~11_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ROM1|ALT_INV_memROM~11_combout\,
	datae => \CPU|RAM1|ALT_INV_ram~40_q\,
	dataf => \CPU|ROM1|ALT_INV_memROM~12_combout\,
	combout => \CPU|RAM1|ram~170_combout\);

-- Location: FF_X4_Y16_N29
\CPU|RAM1|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \CPU|RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~32_q\);

-- Location: MLABCELL_X4_Y16_N27
\CPU|RAM1|ram~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~169_combout\ = ( \CPU|RAM1|ram~32_q\ & ( !\CPU|ROM1|memROM~11_combout\ & ( !\CPU|ROM1|memROM~12_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ROM1|ALT_INV_memROM~12_combout\,
	datae => \CPU|RAM1|ALT_INV_ram~32_q\,
	dataf => \CPU|ROM1|ALT_INV_memROM~11_combout\,
	combout => \CPU|RAM1|ram~169_combout\);

-- Location: FF_X4_Y16_N17
\CPU|RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG1|DOUT\(7),
	sload => VCC,
	ena => \CPU|RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM1|ram~24_q\);

-- Location: MLABCELL_X4_Y16_N15
\CPU|RAM1|ram~168\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~168_combout\ = ( \CPU|RAM1|ram~24_q\ & ( !\CPU|ROM1|memROM~11_combout\ & ( !\CPU|ROM1|memROM~12_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ROM1|ALT_INV_memROM~12_combout\,
	datae => \CPU|RAM1|ALT_INV_ram~24_q\,
	dataf => \CPU|ROM1|ALT_INV_memROM~11_combout\,
	combout => \CPU|RAM1|ram~168_combout\);

-- Location: LABCELL_X5_Y16_N51
\CPU|RAM1|ram~172\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM1|ram~172_combout\ = ( \CPU|RAM1|ram~169_combout\ & ( \CPU|RAM1|ram~168_combout\ & ( (!\CPU|ROM1|memROM~10_combout\) # ((!\CPU|ROM1|memROM~9_combout\ & ((\CPU|RAM1|ram~170_combout\))) # (\CPU|ROM1|memROM~9_combout\ & (\CPU|RAM1|ram~171_combout\))) 
-- ) ) ) # ( !\CPU|RAM1|ram~169_combout\ & ( \CPU|RAM1|ram~168_combout\ & ( (!\CPU|ROM1|memROM~10_combout\ & (((!\CPU|ROM1|memROM~9_combout\)))) # (\CPU|ROM1|memROM~10_combout\ & ((!\CPU|ROM1|memROM~9_combout\ & ((\CPU|RAM1|ram~170_combout\))) # 
-- (\CPU|ROM1|memROM~9_combout\ & (\CPU|RAM1|ram~171_combout\)))) ) ) ) # ( \CPU|RAM1|ram~169_combout\ & ( !\CPU|RAM1|ram~168_combout\ & ( (!\CPU|ROM1|memROM~10_combout\ & (((\CPU|ROM1|memROM~9_combout\)))) # (\CPU|ROM1|memROM~10_combout\ & 
-- ((!\CPU|ROM1|memROM~9_combout\ & ((\CPU|RAM1|ram~170_combout\))) # (\CPU|ROM1|memROM~9_combout\ & (\CPU|RAM1|ram~171_combout\)))) ) ) ) # ( !\CPU|RAM1|ram~169_combout\ & ( !\CPU|RAM1|ram~168_combout\ & ( (\CPU|ROM1|memROM~10_combout\ & 
-- ((!\CPU|ROM1|memROM~9_combout\ & ((\CPU|RAM1|ram~170_combout\))) # (\CPU|ROM1|memROM~9_combout\ & (\CPU|RAM1|ram~171_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001011011101110101111000100011010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM1|ALT_INV_memROM~10_combout\,
	datab => \CPU|RAM1|ALT_INV_ram~171_combout\,
	datac => \CPU|RAM1|ALT_INV_ram~170_combout\,
	datad => \CPU|ROM1|ALT_INV_memROM~9_combout\,
	datae => \CPU|RAM1|ALT_INV_ram~169_combout\,
	dataf => \CPU|RAM1|ALT_INV_ram~168_combout\,
	combout => \CPU|RAM1|ram~172_combout\);

-- Location: LABCELL_X6_Y16_N54
\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( \CPU|REG1|DOUT\(7) ) + ( (!\CPU|RAM1|ram~172_combout\) # (\CPU|DECODER1|Equal9~1_combout\) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER1|ALT_INV_Equal9~1_combout\,
	datac => \CPU|RAM1|ALT_INV_ram~172_combout\,
	datad => \CPU|REG1|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\);

-- Location: LABCELL_X6_Y15_N24
\CPU|REG_FLAG_EQ|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REG_FLAG_EQ|DOUT~0_combout\ = ( !\CPU|ROM1|memROM~2_combout\ & ( (\CPU|ROM1|memROM~4_combout\ & (!\CPU|ROM1|memROM~8_combout\ & (!\CPU|ROM1|memROM~6_combout\ & !\CPU|DECODER1|Operacao_ULA~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM1|ALT_INV_memROM~4_combout\,
	datab => \CPU|ROM1|ALT_INV_memROM~8_combout\,
	datac => \CPU|ROM1|ALT_INV_memROM~6_combout\,
	datad => \CPU|DECODER1|ALT_INV_Operacao_ULA~0_combout\,
	dataf => \CPU|ROM1|ALT_INV_memROM~2_combout\,
	combout => \CPU|REG_FLAG_EQ|DOUT~0_combout\);

-- Location: LABCELL_X6_Y16_N6
\CPU|REG_FLAG_EQ|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REG_FLAG_EQ|DOUT~1_combout\ = ( !\CPU|ULA1|Add0~29_sumout\ & ( (\CPU|REG_FLAG_EQ|DOUT~0_combout\ & (!\CPU|ULA1|Add0~25_sumout\ & (!\CPU|ULA1|Add0~17_sumout\ & !\CPU|ULA1|Add0~21_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REG_FLAG_EQ|ALT_INV_DOUT~0_combout\,
	datab => \CPU|ULA1|ALT_INV_Add0~25_sumout\,
	datac => \CPU|ULA1|ALT_INV_Add0~17_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add0~21_sumout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~29_sumout\,
	combout => \CPU|REG_FLAG_EQ|DOUT~1_combout\);

-- Location: LABCELL_X6_Y16_N12
\CPU|REG_FLAG_EQ|DOUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REG_FLAG_EQ|DOUT~3_combout\ = ( \CPU|ULA1|Add0~13_sumout\ & ( \CPU|REG_FLAG_EQ|DOUT~1_combout\ & ( \CPU|REG_FLAG_EQ|DOUT~2_combout\ ) ) ) # ( !\CPU|ULA1|Add0~13_sumout\ & ( \CPU|REG_FLAG_EQ|DOUT~1_combout\ & ( ((!\CPU|ULA1|Add0~5_sumout\ & 
-- (!\CPU|ULA1|Add0~9_sumout\ & !\CPU|ULA1|Add0~1_sumout\))) # (\CPU|REG_FLAG_EQ|DOUT~2_combout\) ) ) ) # ( \CPU|ULA1|Add0~13_sumout\ & ( !\CPU|REG_FLAG_EQ|DOUT~1_combout\ & ( \CPU|REG_FLAG_EQ|DOUT~2_combout\ ) ) ) # ( !\CPU|ULA1|Add0~13_sumout\ & ( 
-- !\CPU|REG_FLAG_EQ|DOUT~1_combout\ & ( \CPU|REG_FLAG_EQ|DOUT~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001110110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add0~5_sumout\,
	datab => \CPU|REG_FLAG_EQ|ALT_INV_DOUT~2_combout\,
	datac => \CPU|ULA1|ALT_INV_Add0~9_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add0~1_sumout\,
	datae => \CPU|ULA1|ALT_INV_Add0~13_sumout\,
	dataf => \CPU|REG_FLAG_EQ|ALT_INV_DOUT~1_combout\,
	combout => \CPU|REG_FLAG_EQ|DOUT~3_combout\);

-- Location: FF_X6_Y16_N14
\CPU|REG_FLAG_EQ|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|REG_FLAG_EQ|DOUT~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_FLAG_EQ|DOUT~q\);

-- Location: LABCELL_X6_Y15_N6
\CPU|PC|DOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[0]~0_combout\ = ( !\CPU|DECODER1|selMuxPC~0_combout\ & ( (!\CPU|DECODER1|Equal9~0_combout\ & ((!\CPU|REG_FLAG_EQ|DOUT~q\) # ((!\CPU|ROM1|memROM~2_combout\) # (!\CPU|DECODER1|saida[7]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011100000111100001110000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REG_FLAG_EQ|ALT_INV_DOUT~q\,
	datab => \CPU|ROM1|ALT_INV_memROM~2_combout\,
	datac => \CPU|DECODER1|ALT_INV_Equal9~0_combout\,
	datad => \CPU|DECODER1|ALT_INV_saida[7]~0_combout\,
	dataf => \CPU|DECODER1|ALT_INV_selMuxPC~0_combout\,
	combout => \CPU|PC|DOUT[0]~0_combout\);

-- Location: FF_X4_Y15_N32
\CPU|REG_ADDR_RET|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \CPU|DECODER1|Equal9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_ADDR_RET|DOUT\(0));

-- Location: LABCELL_X5_Y15_N15
\CPU|MUXPC|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXPC|saida_MUX[0]~0_combout\ = ( \CPU|incrementaPC|Add0~1_sumout\ & ( ((!\CPU|MUXPC|Equal1~0_combout\ & (\CPU|REG_ADDR_RET|DOUT\(0))) # (\CPU|MUXPC|Equal1~0_combout\ & ((\CPU|ROM1|memROM~9_combout\)))) # (\CPU|PC|DOUT[0]~0_combout\) ) ) # ( 
-- !\CPU|incrementaPC|Add0~1_sumout\ & ( (!\CPU|PC|DOUT[0]~0_combout\ & ((!\CPU|MUXPC|Equal1~0_combout\ & (\CPU|REG_ADDR_RET|DOUT\(0))) # (\CPU|MUXPC|Equal1~0_combout\ & ((\CPU|ROM1|memROM~9_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010001000000010101001110101011111110111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~0_combout\,
	datab => \CPU|REG_ADDR_RET|ALT_INV_DOUT\(0),
	datac => \CPU|MUXPC|ALT_INV_Equal1~0_combout\,
	datad => \CPU|ROM1|ALT_INV_memROM~9_combout\,
	dataf => \CPU|incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \CPU|MUXPC|saida_MUX[0]~0_combout\);

-- Location: FF_X5_Y15_N17
\CPU|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUXPC|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[0]~DUPLICATE_q\);

-- Location: FF_X5_Y15_N13
\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUXPC|saida_MUX[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

-- Location: FF_X5_Y15_N46
\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MUXPC|saida_MUX[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

-- Location: IOIBUF_X54_Y16_N21
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: IOIBUF_X38_Y45_N1
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X52_Y45_N35
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LABCELL_X12_Y29_N3
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


