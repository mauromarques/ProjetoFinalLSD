library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter is
	-- Contador que conta de 0 a 9, com incrementos a cada flanco ascendente de clock
	port( reset: in std_logic;
			clk : in std_logic;
			-- Sempre que "move" enviar um pulso ao "guess_number", passa para o proximo estado
			move : out std_logic;
			-- Leds vermelhos que piscam com a frequencia passada ao clock quando "blink" for '1'
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
		-- reset assincrono
		if (reset = '1') then
			s_count <= (others => '0');
		elsif (rising_edge(clk)) then
				-- conta de 0 a 9, o que significa 10 ciclos de clock e manda um pulso na saida "move" ao fim, para passar ao proximo estado
				if (s_count = "1001") then
					s_move <= '1';
					s_count <= (others => '0');
					s_ledr <= (others => '0');
				else
					s_move <= '0';
					s_count <= s_count + 1;
					
					-- caso queira piscar os leds vermelhos, blink deve ser '1'
					if (blink = '1') then
						if (s_ledr = "000000000000000000") then
							s_ledr <= (others => '1');
						elsif (s_ledr = "111111111111111111") then
							s_ledr <= (others => '0');
						end if;
					-- quando blink esta a '0' os leds estao desligados
					else
						s_ledr <= (others => '0');
					end if;
				end if;
		end if;
	end process;
	move <= s_move;
	ledr <= s_ledr;
end v1;