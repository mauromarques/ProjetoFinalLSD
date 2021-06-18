library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity decoder_Tb is
end decoder_Tb;

architecture Stimulus of decoder_Tb is

	signal s_enable   : std_logic;
	signal s_binInput : std_logic_vector(4 downto 0);
	
	signal s_decOut_n : std_logic_vector(6 downto 0);
	
begin

	uut: entity work.decoder(RTL)
		  port map( enable   => s_enable,
		            binInput => s_binInput,
						decOut_n => s_decOut_n);
						
	stim_proc : process
	begin
	wait for 100 ns;
	s_enable   <= '1';
	s_binInput <= "01101";
	wait for 100 ns;
	s_binInput <= "00111";
	wait for 100 ns;
	end process;
	
	
end Stimulus;