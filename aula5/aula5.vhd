library ieee;
use ieee.std_logic_1164. all;

entity Aula5 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados	      : natural := 8;
				larguraEnderecos     : natural := 9;
				
				dataWidthROM         : natural := 13;
				addrWidthROM         : natural := 9;
				
				dataWidthRAM         : natural := 8;
				addrWidthRAM         : natural := 8;
				
				dataWidthOutDecoder  : natural := 12;
				dataWidthInDecoder   : natural := 4;
            simulacao            : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE

  );
  port   (
    CLOCK_50 : in std_logic;
    KEY      : in  std_logic_vector(3 downto 0);
    SW       : in  std_logic_vector(9 downto 0);
	 
    LEDR     : out std_logic_vector(dataWidthRAM-1 downto 0);
	 LEDG     : out std_logic_vector(dataWidthRAM-1 downto 0);
    LEDB     : out std_logic_vector(dataWidthOutDecoder-1 downto 0);
	 LEDIMED  : out std_logic_vector(8 downto 0);
	 PC_OUT   : out std_logic_vector(larguraEnderecos-1 downto 0);
	 LEDFLAGEQ: out std_logic;
	 LEDFLAG0 : out std_logic;
	 LED_OUTMUX1 : out std_logic_vector(larguraDados-1 downto 0);
	 LED_OP_ULAMUX : out std_logic_vector(1 downto 0);
	 LED_SEL_MUX1  : out std_logic

  );
end entity;


architecture arquitetura of Aula5 is

  --signal chavesX_ULA_B      : std_logic_vector (larguraDados-1 downto 0);
  --signal chavesY_MUX_A      : std_logic_vector (larguraDados-1 downto 0);
  
  signal saidaDadosRAM      : std_logic_vector (dataWidthRAM-1 downto 0);
  signal REG1_ULA_A         : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA          : std_logic_vector (larguraDados-1 downto 0);
  signal out_mux1           : std_logic_vector (larguraDados-1 downto 0);
  
  signal Instrucao          : std_logic_vector (dataWidthROM-1 downto 0);
  signal Endereco           : std_logic_vector (addrWidthROM-1 downto 0);
  signal proxPC             : std_logic_vector (addrWidthROM-1 downto 0);
  signal outMuxPC           : std_logic_vector (larguraEnderecos-1 downto 0);
  signal returnAddr         : std_logic_vector (larguraEnderecos-1 downto 0);

  
  signal Sinais_Controle    : std_logic_vector (dataWidthOutDecoder-1 downto 0);
  signal Operacao_ULA       : std_logic_vector (1 downto 0);
  signal selMuxPC           : std_logic_vector (1 downto 0);

  signal Chave_Operacao_ULA : std_logic;
  signal CLK                : std_logic;
  signal SelMUX             : std_logic;
  signal JMP                : std_logic;
  signal JEQ                : std_logic;
  signal RET                : std_logic;
  signal JSR                : std_logic;


  signal Habilita_A         : std_logic;
  signal Reset_A            : std_logic;
  signal enable_W_RAM       : std_logic;
  signal enable_R_RAM       : std_logic; 
  signal habilitaFlagEQ     : std_logic; 
  signal enableWriteRet     : std_logic;
  signal flagZero           : std_logic; 
  signal flagEq             : std_logic; 



  
  
  alias  Opcode             : std_logic_vector (3 downto 0) is Instrucao(12 downto 9);
  alias  Imediato_addr      : std_logic_vector (8 downto 0) is Instrucao(8 downto 0);
  alias  Imediato_jmp       : std_logic_vector (8 downto 0) is Instrucao(8 downto 0);
  alias  Imediato_value     : std_logic_vector (7 downto 0) is Instrucao(7 downto 0);
  
begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
			port map(entradaA_MUX   => saidaDadosRAM,
                  entradaB_MUX   => Imediato_value,
                  seletor_MUX    => SelMUX,
                  saida_MUX      => out_mux1);

MUXPC :  entity work.muxPC  generic map (larguraDados => larguraEnderecos)
			port map(entradaA_MUX   => proxPC,
                  entradaB_MUX   => Imediato_jmp,
						entradaC_MUX   => returnAddr,
                  seletor_MUX    => selMuxPC,
                  saida_MUX      => outMuxPC);
	
-- Acumulador 	
REG1 : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
         port map (DIN    => Saida_ULA, 
			          DOUT   => REG1_ULA_A, 
						 ENABLE => Habilita_A, 
						 CLK    => CLK, 
						 RST    => Reset_A);
						 
REG_FLAG_EQ : entity work.flagEq 
					port map (DIN    => flagZero, 
								 DOUT   => flagEq, 
								 ENABLE => habilitaFlagEQ, 
								 CLK    => CLK, 
								 RST    => Reset_A);

REG_ADDR_RET : entity work.registradorGenerico generic map (larguraDados => larguraEnderecos)
					port map (DIN    => proxPC, 
								 DOUT   => returnAddr, 
								 ENABLE => enableWriteRet, 
								 CLK    => CLK, 
								 RST    => Reset_A);
-- Progam Counter
PC : entity work.registradorGenerico generic map (larguraDados => larguraEnderecos)
			port map(DIN    => outMuxPC, 
					   DOUT   => Endereco, 
						ENABLE => '1', 
						CLK    => CLK, 
						RST    => '0');
			
incrementaPC : entity work.somaConstante generic map (larguraDados => larguraEnderecos, constante => 1)
			port map(entrada => Endereco, 
			         saida   => proxPC);

-- O port map completo da ULA:
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
         port map (entradaA => REG1_ULA_A, 
			          entradaB => out_mux1, 
						 saida    => Saida_ULA, 
						 seletor  => Operacao_ULA,
						 flagZero => flagZero);
			 
ROM1 : entity work.memoriaROM   generic map (dataWidth => dataWidthROM, addrWidth => addrWidthROM)
			port map (Endereco => Endereco, 
						 Dado     => Instrucao);
			
RAM1 : entity work.memoriaRAM generic map (dataWidth => dataWidthRAM, addrWidth => addrWidthRAM)
			port map (addr     => Imediato_addr(7 downto 0),
						 we       => enable_W_RAM, 
						 re       => enable_R_RAM,
						 habilita => Imediato_addr(8), 
						 CLK      => CLK, 
						 dado_in  => REG1_ULA_A, 
						 dado_out => saidaDadosRAM);
			
DECODER1 : entity work.decoderInstru generic map(dataWidthIN=> dataWidthInDecoder, dataWidthOut => dataWidthOutDecoder)
				port map (opcode   => Opcode, 
							 saida    => Sinais_Controle,
							 flagEq   => flagEq,
							 selMuxPC => selMuxPC);

-- I/O
-- chavesX_ULA_B <= SW(9 downto 6);
-- chavesY_MUX_A <= SW(3 downto 0);

enableWriteRet <= Sinais_Controle(11);
JMP            <= Sinais_Controle(10);
RET            <= Sinais_Controle(9);
JSR            <= Sinais_Controle(8);
JEQ            <= Sinais_Controle(7);
SelMUX         <= Sinais_Controle(6);
Habilita_A     <= Sinais_Controle(5);
Operacao_ULA   <= Sinais_Controle(4 downto 3);
habilitaFlagEQ <= Sinais_Controle(2);
enable_R_RAM   <= Sinais_Controle(1);
enable_W_RAM   <= Sinais_Controle(0);


-- A ligacao dos LEDs:
LEDR    <= REG1_ULA_A;
LEDB    <= Sinais_Controle;
LEDG    <= saidaDadosRAM;
LEDIMED <= Imediato_addr;
LEDFLAGEQ      <= flagEq;
LEDFLAG0       <= flagZero;
LED_OUTMUX1    <= out_mux1;
LED_OP_ULAMUX  <= Operacao_ULA;
LED_SEL_MUX1   <= selmux;
-- LEDR (9) <= SelMUX;
-- LEDR (8) <= Habilita_A;
-- LEDR (7) <= Reset_A;
-- LEDR (6) <= Operacao_ULA;
-- LEDR (5) <= '0';    -- Apagado.
-- LEDR (4) <= '0';    -- Apagado.
-- LEDR (3 downto 0) <= REG1_ULA_A;

PC_OUT <= Endereco;

end architecture;