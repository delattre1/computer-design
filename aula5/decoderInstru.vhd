library ieee;
use ieee.std_logic_1164.all;

entity decoderInstru is
   generic (
          dataWidthIn: natural  := 13;
          dataWidthOut: natural := 9
    );

  port ( opcode   : in  std_logic_vector(dataWidthIn-1  downto 0);
         saida    : out std_logic_vector(dataWidthOut-1 downto 0);
			flagEQ   : in  std_logic;
			selMuxPC : out std_logic_vector(1 downto 0)
  );
end entity;

architecture comportamento of decoderInstru is

  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB  : std_logic_vector(3 downto 0) := "0011";
  constant LDI  : std_logic_vector(3 downto 0) := "0100";
  constant STA  : std_logic_vector(3 downto 0) := "0101";
  constant JMP  : std_logic_vector(3 downto 0) := "0110";
  constant JEQ  : std_logic_vector(3 downto 0) := "0111";
  constant CEQ  : std_logic_vector(3 downto 0) := "1000";
  constant JSR  : std_logic_vector(3 downto 0) := "1001";
  constant RET  : std_logic_vector(3 downto 0) := "1010";



begin
saida <= "000000000000" when  opcode = NOP  else
         "000000111010" when  opcode = LDA  else
         "000000100010" when  opcode = SOMA else
         "000000101010" when  opcode = SUB  else	
         "000001111000" when  opcode = LDI  else
			"000000011001" when  opcode = STA  else
			"010000000000" when  opcode = JMP  else
			"000010000000" when (opcode = JEQ and flagEQ = '1')  else
			"000000101110" when  opcode = CEQ  else
			"100100000000" when  opcode = JSR  else
			"001000000000" when  opcode = RET  else
         "000000000000";  -- NOP para os opcodes Indefinidos
			
selMuxPC <= "10" when opcode = RET else
				"01" when (opcode = JMP or  opcode = JSR) else
				"01" when (opcode = JEQ and flagEQ = '1') else
				"00";
end architecture;
