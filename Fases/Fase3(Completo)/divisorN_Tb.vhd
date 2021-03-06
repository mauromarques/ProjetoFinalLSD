library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity divisorN_Tb is
end divisorN_Tb;

architecture Stimulus of divisorN_Tb is
	signal N : positive := 32;

	signal s_fatorDivisao : std_logic_vector(N-1 downto 0);
	signal s_clkIn        : std_logic;
	
	signal s_clkOut       : std_logic;
	
begin

	uut: entity work.divisorN(Behavioral)
		  port map(fatorDivisao => s_FatorDivisao,
					  clkIn        => s_clkIn,
					  clkOut       => s_clkOut);
					  
	stim_proc : process
	begin
		
		
		
	end process;
end Stimulus;