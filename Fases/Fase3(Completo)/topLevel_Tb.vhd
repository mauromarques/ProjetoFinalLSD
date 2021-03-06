library ieee;
use ieee.std_logic_1164.all;

entity topLevel_Tb is
end topLevel_Tb;

architecture Stimulus of topLevel_Tb is

	signal s_KEY      : std_logic_vector(3 downto 0);
	signal s_SW       : std_logic_vector(17 downto 0);
	signal s_CLOCK_50 : std_logic;
	
	signal s_LEDR     : std_logic_vector(17 downto 0);
	signal s_HEX0     : std_logic_vector(6 downto 0);
	signal s_HEX1     : std_logic_vector(6 downto 0);
	signal s_HEX2     : std_logic_vector(6 downto 0);
	signal s_HEX3     : std_logic_vector(6 downto 0);
	signal s_HEX4     : std_logic_vector(6 downto 0);
	signal s_HEX5     : std_logic_vector(6 downto 0);
	signal s_HEX6     : std_logic_vector(6 downto 0);
	signal s_HEX7     : std_logic_vector(6 downto 0);
	signal s_ledg     : std_logic_vector(7 downto 0);
	
begin

	uut: entity work.topLevel(v1)
		  port map(KEY      => s_KEY,
					  SW       => s_SW,
					  LEDR     => s_LEDR,
					  CLOCK_50 => s_CLOCK_50,
					  HEX0     => s_HEX0,
					  HEX1     => s_HEX1,
					  HEX2     => s_HEX2,
					  HEX3     => s_HEX3,
					  HEX4 	  => s_HEX4,
					  HEX5     => s_HEX5,
					  HEX6     => s_HEX6,
					  HEX7     => s_HEX7,
					  ledg     => s_ledg);
	
	stim_proc : process
	begin
		s_KEY <= "0000";
		wait for 100 ns;
	
	end process;
end Stimulus;