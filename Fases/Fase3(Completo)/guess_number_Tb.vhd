library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity guess_number_Tb is
end guess_number_Tb;

architecture Stimulus of guess_number_Tb is

	signal s_keys       : std_logic_vector(3 downto 0);
	signal s_reset      : std_logic;
	signal s_clk        : std_logic;
	signal s_done1      : std_logic;
	signal s_done2      : std_logic;
	signal s_c1hz       : std_logic;
	signal s_c2hz       : std_logic;
	signal s_c4hz       : std_logic;
	signal s_c8hz       : std_logic;
	signal s_rnd   	  : std_logic_vector(17 downto 0);
	
	signal s_ledr       : std_logic_vector(17 downto 0);
	signal s_n_attempts : std_logic_vector(6 downto 0);
	signal s_activate   : std_logic;
	signal s_attempt    : std_logic_vector(6 downto 0);
	signal s_selector   : std_logic;
	signal s_enable     : std_logic_vector(2 downto 0);
	signal s_texto      : std_logic_vector(39 downto 0);
	
begin

	utt: entity work.guess_number(v1)
		  port map( keys       => s_keys,
						reset      => s_reset,
						clk        => s_clk,
						done1      => s_done1,
						done2      => s_done2,
						c1hz       => s_c1hz,
						c2hz       => s_c2hz,
						c4hz 		  => s_c4hz,
						c8hz 		  => s_c8hz,
						rnd        => s_rnd,
						ledr       => s_ledr,
						n_attempts => s_n_attempts,
						activate   => s_activate,
						attempt    => s_attempt,
						selector   => s_selector,
						enable     => s_enable,
						texto      => s_texto);
						
	stim_proc : process
	begin
	
		wait for 1860 ns;
		s_keys(0) <= '1';
		wait for 20 ns;
		s_keys(0) <= '0';
		s_done1 <= '1';
		s_done2 <= '1';
		wait for 20 ns;
		s_done1 <= '0';
		s_done2 <= '0';
		s_keys(2) <= '1';
		wait for 20 ns;
		s_keys(2) <= '0';
		wait for 100 ns;
		s_done1 <= '1';
		s_done2 <= '1';
		s_keys(1) <= '1';
		wait for 20 ns;
		s_keys(1) <= '0';
		s_done1 <= '0';
		s_done2 <= '0';
		wait for 10 ns;
		s_keys(2) <= '1';
		s_done1 <= '1';
		s_done2 <= '1';
		wait for 20 ns;
		s_done1 <= '0';
		s_done2 <= '0';
		wait for 100 ns;
		s_keys(3) <= '1';
		wait for 20 ns;
		s_keys(3) <= '0';
		wait for 100 ns;
	
	end process;
	
	
	clk_proc : process
	begin
	
		s_clk <= '1'; wait for 10 ns;
		s_clk <= '0'; wait for 10 ns;
	
	end process;
	clk1_proc : process
	begin
	
		s_c1hz <= '1'; wait for 160 ns;
		s_c1hz <= '0'; wait for 160 ns;
	
	end process;
	clk2_proc : process
	begin
	
		s_c2hz <= '1'; wait for 80 ns;
		s_c2hz <= '0'; wait for 80 ns;
	
	end process;
	clk4_proc : process
	begin
	
		s_c4hz <= '1'; wait for 40 ns;
		s_c4hz <= '0'; wait for 40 ns;
	
	end process;

	clk8_proc : process
	begin
	
		s_c8hz <= '1'; wait for 20 ns;
		s_c8hz <= '0'; wait for 20 ns;
	
	end process;
	
end Stimulus;