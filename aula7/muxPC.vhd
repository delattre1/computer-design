library ieee;
use ieee.std_logic_1164.all;

entity muxPC is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8);
  port (
    entradaA_MUX, entradaB_MUX, entradaC_MUX : in std_logic_vector((larguraDados-1) downto 0);
    seletor_MUX                              : in std_logic_vector(1 downto 0);
    saida_MUX                                : out std_logic_vector((larguraDados-1) downto 0)
  );
end entity;

architecture comportamento of muxPC is
  constant PROXPC  : std_logic_vector(1 downto 0) := "00";
  constant DESVIO  : std_logic_vector(1 downto 0) := "01";
  constant RET     : std_logic_vector(1 downto 0) := "10";

  begin
    saida_MUX <= entradaA_MUX when (seletor_MUX = PROXPC) else 
					  entradaB_MUX when (seletor_MUX = DESVIO) else 
					  entradaC_MUX when (seletor_MUX = RET)    else 
					  entradaA_MUX;
					  
end architecture;