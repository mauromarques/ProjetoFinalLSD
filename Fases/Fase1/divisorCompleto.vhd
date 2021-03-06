library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity divisorCompleto is
	port(clk : in std_logic;
		  c1hz : out std_logic;
		  c2hz : out std_logic;
		  c4hz : out std_logic;
		  c8hz : out std_logic);
End divisorCompleto;

architecture Behavioral of divisorCompleto is
begin

		c1: entity work.divisorN(Behavioral)
		generic map(n => 26)
		port map(fatorDivisao => "10111110101111000010000000",
				   clkIn => clk,
					clkOut => c1hz);
		
		c2: entity work.divisorN(Behavioral)
		generic map(n => 25)
		port map(fatorDivisao => "1011111010111100001000000",
				   clkIn => clk,
					clkOut => c2hz);
		
		c4: entity work.divisorN(Behavioral)
		generic map(n => 24)
		port map(fatorDivisao => "101111101011110000100000",
				   clkIn => clk,
					clkOut => c4hz);
					
		c8: entity work.divisorN(Behavioral)
		generic map(n => 23)
		port map(fatorDivisao => "10111110101111000010000",
				   clkIn => clk,
					clkOut => c8hz);
					
end Behavioral;