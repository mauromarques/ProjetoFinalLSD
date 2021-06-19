library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity blinker_Tb is
end blinker_Tb;

architecture Stimulus of blinker_Tb is

	signal s_clk       : std_logic;
	signal s_enableIn  : std_logic;
	
	signal s_enableOut : std_logic_vector(2 downto 0);
	
begin
	
	uut: entity work.blinker(v1)
			  port map( clk   => s_clk,
							enableIn => s_enableIn,
							enableOut => s_enableOut);
							
							
	stim_proc : process
	begin
	
		wait for 100 ns;
		s_enableIn <= '1';
		wait for 300 ns;
		s_enableIn <= '0';
		wait for 300 ns;
	
	
	end process;
	
	clk_proc : process
	begin
	
		s_clk <= '0';
		wait for 10 ns;
		s_clk <= '1';
		wait for 10 ns;
		
	end process;
end Stimulus;