library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity divisorCompleto_Tb is
end divisorCompleto_Tb;

architecture Stimulus of divisorCompleto_Tb is

	signal s_clk  : std_logic;
	
	signal s_c1hz : std_logic;
	signal s_c2hz : std_logic;
	signal s_c4hz : std_logic;
	signal s_c8hz : std_logic;
	
begin

	uut: entity work.divisorCompleto(Behavioral)
		  port map(clk  => s_clk,
					  c1hz => s_c1hz,
					  c2hz => s_c2hz,
					  c4hz => s_c4hz,
					  c8hz => s_c8hz);
		
	clock_proc: process
	begin		s_clk <= '0';
		wait for 10 ns;
		s_clk <= '1';
		wait for 10 ns;
	end process;
	
	stim_proc : process
	begin
		wait for 1000 ns;
	end process;
end Stimulus;
	