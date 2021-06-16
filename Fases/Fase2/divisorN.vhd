library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity divisorN is
	generic(N : positive := 32);
	port(fatorDivisao : in std_logic_vector(N-1 downto 0);
		  clkIn : in std_logic;
		  clkOut : out std_logic);
End divisorN;

architecture Behavioral of divisorN is
	signal s_contador : unsigned(N-1 downto 0);
begin
	process(clkIn)
	begin
		if (rising_edge(clkIn)) then
			if ((s_contador >= unsigned(fatorDivisao) - 1)) then
				clkOut <= '0';
				s_contador <= (others => '0');
			else
				if (s_contador = (unsigned(fatorDivisao)/2 - 1)) then
					clkOut <= '1';
				end if;
				s_contador <= s_contador + 1;
			end if;
		end if;
	end process;
end Behavioral;