library ieee;
use ieee.std_logic_1164.all;

entity display_selector_Tb is
end display_selector_Tb;

architecture Stimulus of display_selector_Tb is

	signal s_clk      : std_logic;
	signal s_d4       : std_logic_vector(3 downto 0);
	signal s_d5       : std_logic_vector(3 downto 0);
	signal s_d6       : std_logic_vector(3 downto 0);
	signal s_d7       : std_logic_vector(3 downto 0);
	signal s_selector : std_logic;
	signal s_enable   : std_logic_vector(2 downto 0);
	signal s_txt      : std_logic_vector(39 downto 0);

	signal s_bin7     : std_logic_vector(4 downto 0);
	signal s_bin6     : std_logic_vector(4 downto 0);
	signal s_bin5     : std_logic_vector(4 downto 0);
	signal s_bin4     : std_logic_vector(4 downto 0);
	signal s_bin3     : std_logic_vector(4 downto 0);
	signal s_bin2     : std_logic_vector(4 downto 0);
	signal s_bin1     : std_logic_vector(4 downto 0);
	signal s_bin0     : std_logic_vector(4 downto 0);
	signal s_enable7    : std_logic;
	signal s_enable6    : std_logic;
	signal s_enable5    : std_logic;
	signal s_enable4    : std_logic;
	signal s_enable3    : std_logic;
	signal s_enable2    : std_logic;
	signal s_enable1    : std_logic;
	signal s_enable0    : std_logic;
	
begin

	uut: entity work.display_selector(v1)
		  port map(clk       => s_clk,
						d4       => s_d4,
						d5       => s_d5,
						d6       => s_d6,
						d7       => s_d7,
						selector => s_selector,
						enable   => s_enable,
						txt      => s_txt,
						bin7		=> s_bin7,
						bin6		=> s_bin6,
						bin5		=> s_bin5,
						bin4		=> s_bin4,
						bin3		=> s_bin3,
						bin2		=> s_bin2,
						bin1		=> s_bin1,
						bin0		=> s_bin0,
						enable7	=> s_enable7,
						enable6	=> s_enable6,
						enable5	=> s_enable5,
						enable4	=> s_enable4,
						enable3	=> s_enable3,
						enable2	=> s_enable2,
						enable1	=> s_enable1,
						enable0	=> s_enable0);
						
	stim_process : process
	begin
		wait for 100 ns;
		s_selector <= '1';
		s_enable   <= "000";
		s_txt      <= "01101"&"10111"&"01100"&"10101"&"10101"&"11000"&"10010"&"00001";
		wait for 200 ns;
		s_enable   <= "001";
		wait for 50 ns;
		s_enable   <= "000";
		wait for 50 ns;
		s_enable   <= "001";
		wait for 50 ns;
		s_enable   <= "000";
		wait for 200 ns;
		s_selector <= '0';
		s_d4       <= "0001";
		s_d5       <= "0010";
		s_d6       <= "0011";
		s_d7       <= "0100";
		wait for 200 ns;
		s_enable   <= "001";
		wait for 50 ns;
		s_enable   <= "000";
		wait for 50 ns;
		s_enable   <= "001";
		wait for 50 ns;
		s_enable   <= "000";
		wait for 100 ns;
	end process;
	
	clock_process : process
	begin
	
		wait for 10 ns;
		s_clk <= '1';
		wait for 10 ns;
		s_clk <= '0';
	
	end process;
	
end Stimulus;
