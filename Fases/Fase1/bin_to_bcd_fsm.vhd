library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bin_to_bcd_fsm is
	port ( -- bin_input = 10 * digit1 + digit0
		bin_input : in std_logic_vector(6 downto 0);
		activate : in std_logic;
		digit1 : out std_logic_vector(3 downto 0);
		digit0 : out std_logic_vector(3 downto 0);
		done : out std_logic;
		clk : in std_logic);
end bin_to_bcd_fsm;

architecture v1 of bin_to_bcd_fsm is
	type state is (idle, sub10, finish);
	signal estado : state;
	signal s_inputUNSIGNED : unsigned(6 DOWNTO 0);
	signal s_dezenasUNSIGNED : unsigned(3 downto 0);
begin

	sync_proc: process(clk, estado)
	begin
		if (rising_edge(clk)) then
			if (activate = '0') then
				estado <= idle;
			end if;
			
		case estado is
		when idle => 
			done <= '0';
			if(activate = '1') then
				estado <= sub10;
				s_inputUNSIGNED <= unsigned(bin_input);
				s_dezenasUNSIGNED <= (others => '0');
			end if;
		
		when sub10 =>
			done <= '0';
			
			if (s_inputUNSIGNED >= 10) then 
				estado <= sub10;
				s_inputUNSIGNED <= s_inputUNSIGNED - 10;
				s_dezenasUNSIGNED <= s_dezenasUNSIGNED + 1;
			else 
				estado <= finish;
				
			end if;
				
		when finish =>
			digit1 <= std_logic_vector(s_dezenasUNSIGNED);
			digit0 <= std_logic_vector(s_inputUNSIGNED(3 downto 0));
			estado <= idle;
			done <= '1';
			
		
		end case;
		end if;
	end process;
end v1;	
	