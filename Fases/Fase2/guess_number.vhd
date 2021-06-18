library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity guess_number is
	port (ledr :       out std_logic_vector(17 downto 0);
			n_attempts : out std_logic_vector(6 downto 0);
			activate :   out std_logic;
			attempt :    out std_logic_vector(6 downto 0);
			selector :   out std_logic;
			enable :     out std_logic_vector(2 downto 0);--enable sem uso, para esta fase, nao faz efeito de pisca
			texto :      out std_logic_vector(39 downto 0);
			keys :     in std_logic_vector(3 downto 0);
			reset : 	  in std_logic;
			clk :      in std_logic;
			done1 :    in std_logic;
			done2 :    in std_logic;
			c1hz :     in std_logic;
			c2hz :     in std_logic;
			c8hz :     in std_logic;
			rnd :      in std_logic_vector(17 downto 0);
			c4hz :     in std_logic;
			-- debug
			ledg : out std_logic_vector(2 downto 0);
			-- lcd
			lcd_on   : out   std_logic;
			lcd_blon : out   std_logic;
		   lcd_rw   : out   std_logic;
			lcd_en   : out   std_logic;
			lcd_rs   : out   std_logic;
			lcd_data : inout std_logic_vector(7 downto 0));
end guess_number;

architecture v1 of guess_number is
	type state is (guess_n1, grupo_xx, jogo, terminar, conversao1, waiting, cheater);
	signal estado : state;
	signal s_resetCounter, s_move : std_logic;
	signal s_atCount : unsigned(6 downto 0);
	signal s_mid,s_lo, s_hi : unsigned(7 downto 0);
	signal s_resposta : std_logic_vector(19 downto 0);
	signal s_ledr : std_logic_vector(17 downto 0);
	signal s_OutTextRotate, s_InTextRotate : std_logic_vector(39 downto 0);
	signal s_done1, s_done2 : std_logic;
	signal s_loadRotate : std_logic;
	signal s_blink, s_blinkDisplay : std_logic;
	signal s_enable, s_enable2, s_enable3 : std_logic_vector(2 downto 0);
	
	-- lcd
	signal txd_rs_and_data : std_logic_vector(8 downto 0);
	signal txd_request     : std_logic;
	signal txd_accepted    : std_logic := '0';
	-- LCD initialization/refresh stage
	signal index : integer range 35 to 51 := 35;
   signal bottom_line : std_logic_vector(127 downto 0) := X"47_75_65_73_73_20_6E_31_20_20_20_20_20_20_20_20"; -- 16 ASCII codes for the bottom line
	signal lcdAt0, lcdAt1, lcdCount0, lcdCount1 : std_logic_vector(7 downto 0);
	signal ss_mid_dez, ss_mid_uni, ss_atCount_dez, ss_atCount_uni : integer;
	
begin

  lcd : entity work.lcd_controller(conservative)
              generic map
              (
                CLOCK_FREQUENCY => 50.0e6
              )
              port map
              (
                clock => clk,
                reset => '0',
                lcd_on   => lcd_on,
                lcd_blon => lcd_blon,
                lcd_rw   => lcd_rw,
                lcd_en   => lcd_en,
                lcd_rs   => lcd_rs,
                lcd_data => lcd_data,
                txd_rs_and_data => txd_rs_and_data,
                txd_request     => txd_request,
                txd_accepted    => txd_accepted
              );

	count: entity work.counter(v1)
		 port map(reset => s_resetCounter,
			  		 clk => c1hz,
					 move => s_move,
					 blink => s_blink,
					 ledr => s_ledr);
					 
	rotator: entity work.SeqShiftUnit(behavioral)
				port map(clk     => c1hz,
							dataIn  => s_inTextRotate,
							loadEn  => s_loadRotate,
							rotate  => '1',
							dataOut => s_OutTextRotate);
							 
	blinker: entity work.blinker(v1)
		port map(clk => c2hz,
					enableIn => s_blinkDisplay,
					enableOut => s_enable);
					
	blinker2: entity work.blinker(v1)
		port map(clk => c1hz,
					enableIn => s_blinkDisplay,
					enableOut => s_enable2);
	
	blinker3: entity work.blinker(v1)
		port map(clk => c4hz,
					enableIn => s_blinkDisplay,
					enableOut => s_enable3);

					
	sync_proc: process(clk, estado)
	begin
		if (rising_edge(clk)) then
			s_loadRotate <= '1';
			if (reset = '1') then
				s_resetCounter <= '1';
				estado <= guess_n1;
				s_blinkDisplay <= '0';
				ledr <= (others => '0');
			else
				s_resetCounter <= '0';
				if (done1 = '1') then
					s_done1 <= '1';
				end if;
				if(done2='1')then
					s_done2 <= '1';
					end if;
			end if;
			
		case estado is
		when guess_n1 =>
		
			
			if(reset = '0') then
				s_blinkDisplay <= '1';

			end if;
			enable <= s_enable2;
			bottom_line <= X"47_75_65_73_73_20_6E_31_20_20_20_20_20_20_20_20";
			ledr <= s_ledr;
			s_lo <= "00000000";
			s_hi <= "01100011";
			s_atCount <= "0000000";
			s_resposta <= "11000"&"01111"&"10000"&"11000";
			texto <= "01101"&"10111"&"01100"&"10101"&"10101"&"11000"&"10010"&"00001";
			selector <= '1';
			
			s_blink <= '1';
			
			if (s_move = '1') then
				estado <= grupo_xx;
				s_blink <= '0';
				s_blinkDisplay <= '0';
			end if;
			
		when grupo_xx =>
			bottom_line <= X"47_72_75_70_6F_20_30_35_20_20_20_20_20_20_20_20";
			s_lo <= "00000000";
			s_hi <= "01100011";
			s_atCount <= "0000001";
			s_resposta <= "11000"&"01111"&"10000"&"11000";
			s_inTextRotate <= "01101"&"10100"&"10111"&"10011"&"00000"&"11000"&"00000"&"00101";
			selector <= '1';
			enable <= "000";
			s_loadRotate <= '0';
			texto <= s_outTextRotate;
			s_done1 <= '0';
			s_done2 <= '0';
			if (keys(0) = '1') then
				estado <= waiting;
				bottom_line <= X"35_30" & x"20" & x"30_31" & x"20" & x"48_69" & x"20_20_20_20_20_20_20_20"; --hi
			end if;
			
		when waiting =>
			enable <= "000";
			s_mid <= (s_lo + s_hi + 1)/2;
			attempt <= std_logic_vector(s_mid(6 downto 0));
			n_attempts <= std_logic_vector(s_atCount);
			activate <= '1';
			if(s_done1 = '1' or s_done2 = '1') then
				estado <= conversao1;
			end if;
		
		when conversao1 =>
			enable <= "000";
			if (s_lo > s_hi or s_hi = "11111111") then
					estado <= cheater;
			else
				if(s_done1 ='1' and s_done2 ='1' ) then
					estado <= jogo;
				end if;
			end if;
		
		when jogo =>
			
			texto<="00000000000000000000" & s_resposta;
			activate <= '0';
			s_done1 <='0';
			s_done2<='0';
			selector<= '0';
			enable <= "000";
			
			ss_mid_dez <= to_integer(s_mid / 10);
			ss_mid_uni <= to_integer(s_mid rem 10);
			
			ss_atCount_dez <= to_integer(s_atCount / 10);
			ss_atCount_uni <= to_integer(s_atCount rem 10);
			
			case ss_mid_dez is
				when 0 =>
					lcdAt1 <= x"30";
				when 1 =>
					lcdAt1 <= x"31";
				when 2 =>
					lcdAt1 <= x"32";
				when 3 =>
					lcdAt1 <= x"33";
				when 4 =>
					lcdAt1 <= x"34";
				when 5 =>
					lcdAt1 <= x"35";
				when 6 =>
					lcdAt1 <= x"36";
				when 7 =>
					lcdAt1 <= x"37";
				when 8 =>
					lcdAt1 <= x"38";
				when 9 =>
					lcdAt1 <= x"39";
				when others =>
					lcdAt1 <= x"30";
			end case;
			
			case ss_mid_uni is
				when 0 =>
					lcdAt0 <= x"30";
				when 1 =>
					lcdAt0 <= x"31";
				when 2 =>
					lcdAt0 <= x"32";
				when 3 =>
					lcdAt0 <= x"33";
				when 4 =>
					lcdAt0 <= x"34";
				when 5 =>
					lcdAt0 <= x"35";
				when 6 =>
					lcdAt0 <= x"36";
				when 7 =>
					lcdAt0 <= x"37";
				when 8 =>
					lcdAt0 <= x"38";
				when 9 =>
					lcdAt0 <= x"39";
				when others =>
					lcdAt0 <= x"30";
			end case;
			
			case ss_atCount_uni is
				when 0 =>
					lcdcount0 <= x"30";
				when 1 =>
					lcdcount0 <= x"31";
				when 2 =>
					lcdcount0 <= x"32";
				when 3 =>
					lcdcount0 <= x"33";
				when 4 =>
					lcdcount0 <= x"34";
				when 5 =>
					lcdcount0 <= x"35";
				when 6 =>
					lcdcount0 <= x"36";
				when 7 =>
					lcdcount0 <= x"37";
				when 8 =>
					lcdcount0 <= x"38";
				when 9 =>
					lcdcount0 <= x"39";
				when others =>
					lcdcount0 <= x"30";
			end case;
			
			case ss_atCount_dez is
				when 0 =>
					lcdcount1 <= x"30";
				when 1 =>
					lcdcount1 <= x"31";
				when 2 =>
					lcdcount1 <= x"32";
				when 3 =>
					lcdcount1 <= x"33";
				when 4 =>
					lcdcount1 <= x"34";
				when 5 =>
					lcdcount1 <= x"35";
				when 6 =>
					lcdcount1 <= x"36";
				when 7 =>
					lcdcount1 <= x"37";
				when 8 =>
					lcdcount1 <= x"38";
				when 9 =>
					lcdcount1 <= x"39";
				when others =>
					lcdcount1 <= x"30";
			end case;
			
			if (s_resposta = "11000"&"01111"&"10000"&"11000") then --hi
					bottom_line <= lcdAt1 & lcdAt0 & x"20" & lcdCount1 & lcdCount0 & x"20" & x"48_69" & x"20_20_20_20_20_20_20_20"; --hi
				elsif (s_resposta = "11000"&"10001"&"00000"&"11000") then --lo	
					bottom_line <= lcdAt1 & lcdAt0 & x"20" & lcdCount1 & lcdCount0 & x"20" & x"4C_6F" & x"20_20_20_20_20_20_20_20"; --lo
				elsif(s_resposta = "11000"&"11001"&"11001"&"11000") then --ig
					bottom_line <= lcdAt1 & lcdAt0 & x"20" & lcdCount1 & lcdCount0 & x"20" & x"3D_3D" & x"20_20_20_20_20_20_20_20"; --ig
			end if;
			
			if (keys(1) = '1') then
				if (s_resposta = "11000"&"01111"&"10000"&"11000") then --hi
					s_resposta <= "11000"&"10001"&"00000"&"11000";
					bottom_line <= lcdAt1 & lcdAt0 & x"20" & lcdCount1 & lcdCount0 & x"20" & x"4C_6F" & x"20_20_20_20_20_20_20_20"; --lo
				elsif (s_resposta = "11000"&"10001"&"00000"&"11000") then --lo
					s_resposta <= "11000"&"11001"&"11001"&"11000";
					bottom_line <= lcdAt1 & lcdAt0 & x"20" & lcdCount1 & lcdCount0 & x"20" & x"3D_3D" & x"20_20_20_20_20_20_20_20"; --ig
				elsif(s_resposta = "11000"&"11001"&"11001"&"11000") then --ig
					s_resposta <= "11000"&"01111"&"10000"&"11000";
					bottom_line <= lcdAt1 & lcdAt0 & x"20" & lcdCount1 & lcdCount0 & x"20" & x"48_69" & x"20_20_20_20_20_20_20_20"; --hi
				end if;
				
			elsif (keys(2) = '1') then

				s_atCount <= s_atCount + 1;

				if (s_resposta = "11000"&"01111"&"10000"&"11000") then --hi
					s_hi <= s_mid - 1;
				elsif (s_resposta = "11000"&"10001"&"00000"&"11000") then --lo
					s_lo <= s_mid + 1;
				end if;
				
				if(s_resposta = "11000"&"11001"&"11001"&"11000") then --=
					estado <= terminar;
				else
					estado <= waiting;
				end if;
				
			end if;
			
		when terminar =>
			s_blinkDisplay <= '1';
			enable <= s_enable;
			if (keys(3) = '1') then
				estado <= grupo_xx;
				s_blinkDisplay <= '0';
				ledr <= (others => '0');
			else
				ledr <= rnd;
			end if;
		
		when cheater =>
			bottom_line <= X"43_68_65_61_74_65_72_20_20_20_20_20_20_20_20_20";
			selector <= '1';
			s_blinkDisplay <= '1';
			enable <= s_enable3;
			texto <= "11000"&"01011"&"01111"&"01100"&"01010"&"10110"&"01100"&"10100";
			if (keys(3) = '1') then
				estado <= grupo_xx;
				s_blinkDisplay <= '0';
			end if;
			
		end case;
		end if;
	end process;
	ledg <= s_enable2;
	
  process(clk) is
  begin
    if rising_edge(clk) then
      txd_request <= '1'; -- we are always attempting to write
      case index is
        -- refresh the bottom line
        when 35 => txd_rs_and_data <= b"0_1_100_0000"; -- set write address command
        when 36 => txd_rs_and_data <= '1' & bottom_line(127 downto 120);
        when 37 => txd_rs_and_data <= '1' & bottom_line(119 downto 112);
        when 38 => txd_rs_and_data <= '1' & bottom_line(111 downto 104);
        when 39 => txd_rs_and_data <= '1' & bottom_line(103 downto  96);
        when 40 => txd_rs_and_data <= '1' & bottom_line( 95 downto  88);
        when 41 => txd_rs_and_data <= '1' & bottom_line( 87 downto  80);
        when 42 => txd_rs_and_data <= '1' & bottom_line( 79 downto  72);
        when 43 => txd_rs_and_data <= '1' & bottom_line( 71 downto  64);
        when 44 => txd_rs_and_data <= '1' & bottom_line( 63 downto  56);
        when 45 => txd_rs_and_data <= '1' & bottom_line( 55 downto  48);
        when 46 => txd_rs_and_data <= '1' & bottom_line( 47 downto  40);
        when 47 => txd_rs_and_data <= '1' & bottom_line( 39 downto  32);
        when 48 => txd_rs_and_data <= '1' & bottom_line( 31 downto  24);
        when 49 => txd_rs_and_data <= '1' & bottom_line( 23 downto  16);
        when 50 => txd_rs_and_data <= '1' & bottom_line( 15 downto   8);
        when 51 => txd_rs_and_data <= '1' & bottom_line(  7 downto   0);
      end case;
      if txd_accepted = '1' then
        if index < 51 then
          index <= index+1; -- advance to the next initialization/refresh stage
        else
          index <= 35; -- restart at the first refresh stage
        end if;
      end if;
    end if;
  end process;
end v1;

