library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity blinker is
	port(clk : in std_logic;
		  enableIn : in std_logic;
		  enableOut : out std_logic_vector(2 downto 0));
end blinker;

architecture v1 of blinker is
	signal s_enable : std_logic_vector(2 downto 0);
begin
	process(clk)
	begin
		if (rising_edge(clk)) then 
			if (enableIn = '1') then
				if (s_enable = "000") then
					s_enable <= "001";
				elsif(s_enable = "001") then
					s_enable <= "000";
				end if;
			else
				s_enable <= "000";
			end if;
		end if;
	end process;
	enableOut <= s_enable;
end v1;