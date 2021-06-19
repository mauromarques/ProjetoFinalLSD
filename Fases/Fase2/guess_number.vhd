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
			--clocks sem uso
			c4hz :     in std_logic;
			-- debug
			ledg : out std_logic_vector(2 downto 0));
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
begin

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
			if (keys(1) = '1') then
				if (s_resposta = "11000"&"01111"&"10000"&"11000") then --hi
					s_resposta <= "11000"&"10001"&"00000"&"11000";
				elsif (s_resposta = "11000"&"10001"&"00000"&"11000") then --lo
					s_resposta <= "11000"&"11001"&"11001"&"11000";
				elsif(s_resposta = "11000"&"11001"&"11001"&"11000") then --ig
					s_resposta <= "11000"&"01111"&"10000"&"11000";
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
end v1;

