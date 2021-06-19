library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqShiftUnit_Tb is
end SeqShiftUnit_Tb;

architecture Stimulus of SeqShiftUnit_Tb is

	signal s_clk    : std_logic;
	signal s_dataIn : std_logic_vector(39 downto 0);
	signal s_loadEn : std_logic;
	signal s_rotate   : std_logic;
	
	signal s_dataOut  : std_logic_vector(39 downto 0);
	
begin
	
	uut: entity work.SeqShiftUnit(Behavioral)
		  port map(clk     => s_clk,
					  dataIn  => s_dataIn,
					  loadEn  => s_loadEn,
				     rotate  => s_rotate,
					  dataOut => s_dataOut);
						  
	stim_proc : process
	begin
		
		s_dataIn <= "0000000000000000000000000000000000011111";
		s_loadEn <= '1';
		s_rotate <= '1';
		wait for 100 ns;
		s_loadEn <= '0';
		wait for 900 ns;
		
	end process;
	
	clk_proc : process
	begin
	
		s_clk <= '0';
		wait for 10 ns;
		s_clk <= '1';
		wait for 10 ns;
		
	end process;
end Stimulus;
	