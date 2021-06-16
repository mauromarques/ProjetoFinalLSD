library ieee;
use ieee.std_logic_1164.all;

entity topLevel2 is
	port(KEY : in std_logic_vector(3 downto 0);
		  SW : in std_logic_vector(17 downto 0);
		  LEDR : out std_logic_vector(17 downto 0);
		  CLOCK_50 : in std_logic;
		  HEX0 : out std_logic_vector(6 downto 0);
		  HEX1 : out std_logic_vector(6 downto 0);
		  HEX2 : out std_logic_vector(6 downto 0);
		  HEX3 : out std_logic_vector(6 downto 0);
		  HEX4 : out std_logic_vector(6 downto 0);
		  HEX5 : out std_logic_vector(6 downto 0);
		  HEX6 : out std_logic_vector(6 downto 0);
		  HEX7 : out std_logic_vector(6 downto 0);
		  --debug
		  LEDG : out std_logic_vector(7 downto 0));
end topLevel2;

architecture v1 of topLevel2 is
	signal n_attemptsConversorInput, attempt_conversorInput : std_logic_vector(6 downto 0);
	signal activateConversor : std_logic;
	signal don1, don2 : std_logic;
	signal selectorDisplay : std_logic;
	signal en : std_logic_vector(2 downto 0);
	signal textToDisplay : std_logic_vector(39 downto 0);
	signal digito0, digito1, digito2, digito3 : std_logic_vector(3 downto 0);
	signal enab0, enab1, enab2, enab3, enab4, enab5, enab6, enab7 : std_logic;
	signal bi0, bi1, bi2, bi3, bi4, bi5, bi6, bi7 : std_logic_vector(4 downto 0);
	signal c1, c2, c4, c8 : std_logic;
	signal resetDebouncer : std_logic;
	signal cleanKey : std_logic_vector(3 downto 0);
	signal s_rnd : std_logic_vector(17 downto 0);
	
begin

	guessGame: entity work.guess_number(v1)
		port map(ledr => LEDR,
					n_attempts => n_attemptsConversorInput,
					activate => activateConversor,
					attempt => attempt_conversorInput,
					selector => selectorDisplay,
					enable => LEDG(2 downto 0),
					texto => textToDisplay,
					keys => cleanKey,
					reset => SW(0),
					clk => clocK_50,
					done1 => don1,
					done2 => don2,
					c1hz => c1,
					c8hz => c8,
					c2hz => c2,
					rnd => s_rnd,
					--outros clocks sem uso
					
					c4hz => c4);
 end v1;