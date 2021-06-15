library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity decoder is
	port(enable		: in  std_logic;
		 binInput	: in  std_logic_vector(4 downto 0);
		 decOut_n	: out std_logic_vector(6 downto 0));
end decoder;

architecture RTL of decoder is

	signal s_decOut_n : std_logic_vector(6 downto 0);

begin
	with binInput select
		s_decOut_n <= "1111001" when "00001",   --1
						  "0100100" when "00010",   --2
						  "0110000" when "00011",   --3
						  "0011001" when "00100",   --4
						  "0010010" when "00101",   --5
						  "0000010" when "00110",   --6
						  "1111000" when "00111",   --7
						  "0000000" when "01000",   --8
						  "0010000" when "01001",   --9
						  "0001000" when "01010",   --A
						  "1000110" when "01011",   --C
						  "0000110" when "01100",   --E
					 	  "1000010" when "01101",   --G
						  "1000000" when "00000",   --0/O
						  "0001001" when "01111",   --H
						  "1111001" when "10000",   --I
						  "1000111" when "10001",   --L
						  "0101011" when "10010",   --n
						  "0001100" when "10011",   --P
						  "0101111" when "10100",   --R
						  "0010010" when "10101",   --S
						  "0000111" when "10110",   --t
						  "1000001" when "10111",   --U
						  "1110111" when "11000",   --_
						  "0110111" when "11001",   --=
  						  "1111111" when others;
				
	decOut_n <= s_decOut_n when (enable = '1') else
				"1111111";
end RTL;