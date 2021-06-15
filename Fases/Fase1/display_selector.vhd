library ieee;
use ieee.std_logic_1164.all;

entity display_selector is
	port( clk      : in  std_logic;
			d4       : in  std_logic_vector(3 downto 0);
			d5       : in  std_logic_vector(3 downto 0);
			d6       : in  std_logic_vector(3 downto 0);
			d7       : in  std_logic_vector(3 downto 0);
			selector : in  std_logic;
			enable   : in  std_logic_vector(2 downto 0);
			txt      : in  std_logic_vector(39 downto 0);
			bin7     : out std_logic_vector(4 downto 0);
			enable7  : out std_logic;
			bin6     : out std_logic_vector(4 downto 0);
			enable6  : out std_logic;
			bin5     : out std_logic_vector(4 downto 0);
			enable5  : out std_logic;
			bin4     : out std_logic_vector(4 downto 0);
			enable4  : out std_logic;
			bin3     : out std_logic_vector(4 downto 0);
			enable3  : out std_logic;
			bin2     : out std_logic_vector(4 downto 0);
			enable2  : out std_logic;
			bin1     : out std_logic_vector(4 downto 0);
			enable1  : out std_logic;
			bin0     : out std_logic_vector(4 downto 0);
			enable0  : out std_logic);
end display_selector;

architecture v1 of display_selector is

begin
	
	process(clk) is
	begin
	
		if rising_edge(clk) then
			if selector = '0' then
				bin0 <= txt(4 downto 0);
				bin1 <= txt(9 downto 5);
				bin2 <= txt(14 downto 10);
				bin3 <= txt(19 downto 15);
				bin4 <= '0'&d6;
				bin5 <= '0'&d7;
				bin6 <= '0'&d4;
				bin7 <= '0'&d5;
			else
				bin0 <= txt(4 downto 0);
		      bin1 <= txt(9 downto 5);
				bin2 <= txt(14 downto 10);
				bin3 <= txt(19 downto 15);
				bin4 <= txt(24 downto 20);
				bin5 <= txt(29 downto 25);
				bin6 <= txt(34 downto 30);
				bin7 <= txt(39 downto 35);
			end if;
		end if;
		
	end process;

end v1;