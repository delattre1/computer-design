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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/31/2022 02:46:49"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Aula5
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Aula5_vhd_vec_tst IS
END Aula5_vhd_vec_tst;
ARCHITECTURE Aula5_arch OF Aula5_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LED_OP_ULAMUX : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL LED_OUTMUX1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL LED_SEL_MUX1 : STD_LOGIC;
SIGNAL LEDB : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL LEDFLAG0 : STD_LOGIC;
SIGNAL LEDFLAGEQ : STD_LOGIC;
SIGNAL LEDG : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL LEDIMED : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL LEDR : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL PC_OUT : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT Aula5
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	LED_OP_ULAMUX : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	LED_OUTMUX1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	LED_SEL_MUX1 : OUT STD_LOGIC;
	LEDB : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
	LEDFLAG0 : OUT STD_LOGIC;
	LEDFLAGEQ : OUT STD_LOGIC;
	LEDG : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	LEDIMED : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	LEDR : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	PC_OUT : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Aula5
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	KEY => KEY,
	LED_OP_ULAMUX => LED_OP_ULAMUX,
	LED_OUTMUX1 => LED_OUTMUX1,
	LED_SEL_MUX1 => LED_SEL_MUX1,
	LEDB => LEDB,
	LEDFLAG0 => LEDFLAG0,
	LEDFLAGEQ => LEDFLAGEQ,
	LEDG => LEDG,
	LEDIMED => LEDIMED,
	LEDR => LEDR,
	PC_OUT => PC_OUT,
	SW => SW
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
	CLOCK_50 <= '0';
WAIT;
END PROCESS t_prcs_CLOCK_50;

-- KEY[0]
t_prcs_KEY_0: PROCESS
BEGIN
	KEY(0) <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 14
	LOOP
		KEY(0) <= '0';
		WAIT FOR 10000 ps;
		KEY(0) <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	KEY(0) <= '0';
WAIT;
END PROCESS t_prcs_KEY_0;
END Aula5_arch;
