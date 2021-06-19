library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter_Tb is
end counter_Tb;

architecture Stimulus of counter_Tb is

	signal s_reset : std_logic;
	signal s_clk   : std_logic;
	signal s_blink : std_logic;
	
	signal s_move  : std_logic;
	signal s_ledr  : std_logic_vector(17 downto 0);
	
begin

	uut: entity work.counter(v1)
		  port map( reset => s_reset, 
						clk   => s_clk,
						blink => s_blink,
						move  => s_move,
						ledr  => s_ledr);
						
	stim_proc : process
	begin
	
		wait for 100 ns;
		s_blink <= '1';
		wait for 100 ns;
		s_blink <= '0';
		s_reset <= '1';
		wait for 10 ns;
		s_reset <= '0';
		s_blink <= '1';
		wait for 100 ns;
		
	end process;
	
	clk_proc : process
	begin
	
		s_clk <= '1'; wait for 10 ns;
		s_clk <= '0'; wait for 10 ns;
	
	end process;
end Stimulus;