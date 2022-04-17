library ieee;
use ieee.std_logic_1164. all;

entity Aula7 is generic ( 
	larguraDados	      : natural := 8;
	larguraEnderecos     : natural := 9;
	
	dataWidthROM         : natural := 13;
	addrWidthROM         : natural := 9;
	
	dataWidthRAM         : natural := 8;
	addrWidthRAM         : natural := 8;
	
	dataWidthOutDecoder  : natural := 12;
	dataWidthInDecoder   : natural := 4;
	simulacao            : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
);

port (
	CLOCK_50 : in std_logic;
	KEY      : in std_logic_vector(3 downto 0);
	PC_OUT   : out std_logic_vector(larguraEnderecos-1 downto 0)
 );
end entity;


architecture arquitetura of Aula7 is
	signal CLK : std_logic;

-- Sinais

begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;


CPU : entity work.processador 			
	generic map ( 
		larguraDados	      => larguraDados,
		larguraEnderecos     => larguraEnderecos,

		dataWidthROM         => dataWidthROM,
		addrWidthROM         => addrWidthROM,

		dataWidthRAM         => dataWidthRAM,
		addrWidthRAM         => addrWidthRAM,

		dataWidthOutDecoder  => dataWidthOutDecoder,
		dataWidthInDecoder   => dataWidthInDecoder)
		
	port map (
		CLK      => CLK,
		PC_OUT   => PC_OUT);
			

end architecture;
