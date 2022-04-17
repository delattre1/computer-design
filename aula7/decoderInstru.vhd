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

  alias enable_W_RET   : std_logic is saida(11);
  alias JMP2           : std_logic is saida(10);
  alias RET2           : std_logic is saida(9);
  alias JSR2           : std_logic is saida(8);
  alias JEQ2           : std_logic is saida(7);
  alias SelMUX         : std_logic is saida(6);
  alias Habilita_A     : std_logic is saida(5);
  alias Operacao_ULA   : std_logic_vector (1 downto 0) is saida(4 downto 3);
  alias habilitaFlagEQ : std_logic is saida(2);
  alias enable_R_RAM   : std_logic is saida(1);
  alias enable_W_RAM   : std_logic is saida(0);


begin

	enable_W_RET   <= '1'  when (opcode = JSR)   else '0';   
	JMP2           <= '1'  when (opcode = JMP)   else '0';
	RET2           <= '1'  when (opcode = RET)   else '0';
	JSR2           <= '1'  when (opcode = JSR)   else '0';
	JEQ2           <= '1'  when (opcode = JEQ and flagEQ = '1')   else '0';
	SelMUX         <= '1'  when (opcode = LDI)   else '0';
	Habilita_A     <= '1'  when (opcode = LDA or opcode = SOMA or opcode = SUB or opcode = LDI)   else '0';
	Operacao_ULA   <= "00" when (opcode = SOMA)  else
							"01" when (opcode = SUB or opcode = CEQ) else
							"11";
	habilitaFlagEQ <= '1'  when (opcode = CEQ)   else '0';
	enable_R_RAM   <= '1'  when (opcode = LDA or opcode = SOMA or opcode = SUB or opcode = CEQ) else '0';
	enable_W_RAM   <= '1'  when (opcode = STA)   else '0';

				
	selMuxPC <= "10" when opcode = RET else
					"01" when (opcode = JMP or  opcode = JSR) else
					"01" when (opcode = JEQ and flagEQ = '1') else
					"00";
					
end architecture;
