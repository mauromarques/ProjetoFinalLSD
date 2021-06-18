library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bin_to_bcd_fsm_Tb is
end bin_to_bcd_fsm_Tb;

architecture Stimulus of bin_to_bcd_fsm_Tb is

	signal s_bin_input : std_logic_vector(6 downto 0);
	signal s_activate  : std_logic;
	signal s_clk       : std_logic;
	
	signal s_digit1    : std_logic_vector(3 downto 0);
	signal s_digit0    : std_logic_vector(3 downto 0);
	signal s_done      : std_logic;
	
begin

	uut: entity work.bin_to_bcd_fsm(v1)
		  port map(	bin_input => s_bin_input,
						clk       => s_clk,
						activate  => s_activate,
						digit1    => s_digit1,
						digit0    => s_digit0,
						done      => s_done);
						
	stim_proc : process
	begin
		
		wait for 100 ns;
		s_bin_input <= "0001111";
		s_activate  <= '1';
		wait for 20 ns;
		s_activate  <= '0';
		wait for 250 ns;
		
	end process;
	
	clk_proc : process
	begin
	
		s_clk <= '0';
		wait for 10 ns;
		s_clk <= '1';
		wait for 10 ns;
		
	end process;
end Stimulus;
						