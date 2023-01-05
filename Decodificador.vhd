--Exercicio 2 decodificador Select
library IEEE;
use IEEE.std_logic_1164.all;

entity Decodificador is
port
(
A: in  std_logic_vector(2 downto 0);
S: out std_logic_vector(7 downto 0)
);
end Decodificador;
architecture hardware of Decodificador is
begin
	with A select
	S <= "00000001" when "000",
		 "00000010" when "001",
	     "00000100" when "010",
	     "00001000" when "011",
	     "00010000" when "100",
	     "00100000" when "101",
	     "01000000" when "110",
	     "10000000" when "111";
			
end hardware;
