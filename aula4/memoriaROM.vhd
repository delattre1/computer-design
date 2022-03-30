library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 13;
          addrWidth: natural := 9
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado     : out std_logic_vector(dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory 
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
			-- Inicializa os endereços:
			tmp(0) := "0000000000000"; -- NOP
			tmp(1) := "0100000000100"; -- LDI $4
			tmp(2) := "0101100000001"; -- STA@257
			tmp(3) := "0100000000011"; -- LDI $3   
			tmp(4) := "0101100000000"; -- STA @256 
			tmp(5) := "0010100000000"; -- Soma @256
			
			return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;