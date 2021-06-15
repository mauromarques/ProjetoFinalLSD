library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter is
	port( reset: in std_logic;
			clk : in std_logic;
			move : out std_logic;
			ledr : out std_logic_vector(17 downto 0);
			blink : in std_logic);
end counter;

architecture v1 of counter is
	signal s_count : unsigned(3 downto 0);
	signal s_move : std_logic;
	signal s_ledr : std_logic_vector(17 downto 0);
begin
	process(clk, reset)
	begin
		if (reset = '1') then
			s_count <= (others => '0');
		elsif (rising_edge(clk)) then 
				if (s_count = "1001") then
					s_move <= '1';
					s_count <= (others => '0');
					s_ledr <= (others => '0');
				else
					s_move <= '0';
					s_count <= s_count + 1;
					if (blink = '1') then
						if (s_ledr = "000000000000000000") then
							s_ledr <= (others => '1');
						elsif (s_ledr = "111111111111111111") then
							s_ledr <= (others => '0');
						end if;
					else
						s_ledr <= (others => '0');
					end if;
				end if;
		end if;
	end process;
	move <= s_move;
	ledr <= s_ledr;
end v1;