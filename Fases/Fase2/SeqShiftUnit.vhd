library IEEE;
use IEEE.STD_LOGIC_1164.all;

-- shiftRegister simples que faz o shift de 5 bits por vez, pois cada letra da palavra passada aos displays tem 5 bits.
entity SeqShiftUnit is
	port(clk     : in std_logic;
		  dataIn  : in std_logic_vector(39 downto 0);
		  loadEn  : in std_logic;
		  rotate  : in std_logic;
		  dataOut : out std_logic_vector(39 downto 0));
end SeqShiftUnit;

architecture Behavioral of SeqShiftUnit is

 signal s_shiftReg : std_logic_vector(39 downto 0);
 
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (loadEn = '1') then
				 s_shiftReg <= dataIn;
				 
			elsif (rotate = '1') then
				s_shiftReg <= s_shiftReg(4 downto 0) & s_shiftReg(39 downto 5);
			end if;
		end if;
	end process;
	
	dataOut <= s_shiftReg;
	
end Behavioral;