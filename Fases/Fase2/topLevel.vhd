library ieee;
use ieee.std_logic_1164.all;

entity topLevel is
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
		  ledg : out std_logic_vector(7 downto 0));
end topLevel;

architecture v1 of topLevel is
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

	random: entity work.pseudo_random_generator(heavy)
		generic map(SEED => X"2021_0005_0024")
		port map(clock  => c8,                
					enable => '1',                  
					rnd => s_rnd);
    

	debounce0: entity work.debounceUnit(behavioral)
		generic map(kHzClkFreq => 50000,
						mSecMinInWidth => 100,
						inPolarity => '0',
						outPolarity => '1')
		port map(refClk => cloCK_50,
					dirtyIn => key(0),
					pulsedOut => cleanKey(0));
					
	debounce1: entity work.debounceUnit(behavioral)
		generic map(kHzClkFreq => 50000,
						mSecMinInWidth => 100,
						inPolarity => '0',
						outPolarity => '1')
		port map(refClk => cloCK_50,
					dirtyIn => key(1),
					pulsedOut => cleanKey(1));
					
	debounce2: entity work.debounceUnit(behavioral)
		generic map(kHzClkFreq => 50000,
						mSecMinInWidth => 100,
						inPolarity => '0',
						outPolarity => '1')
		port map(refClk => cloCK_50,
					dirtyIn => key(2),
					pulsedOut => cleanKey(2));
					
	debounce3: entity work.debounceUnit(behavioral)
		generic map(kHzClkFreq => 50000,
						mSecMinInWidth => 100,
						inPolarity => '0',
						outPolarity => '1')
		port map(refClk => cloCK_50,
					dirtyIn => key(3),
					pulsedOut => cleanKey(3));

	dec0: entity work.decoder(RTL)
		 port map(enable	 => '1',
					 binInput => bi0,
					 decOut_n => HEX0);
	dec1: entity work.decoder(RTL)
		 port map(enable	 => '1',
					 binInput => bi1,
					 decOut_n => HEX1);
	dec2: entity work.decoder(RTL)
		 port map(enable	 =>'1',
					 binInput => bi2,
					 decOut_n => HEX2);
	dec3: entity work.decoder(RTL)
		 port map(enable	 =>'1',
					 binInput => bi3,
					 decOut_n => HEX3);
	dec4: entity work.decoder(RTL)
		 port map(enable	 =>'1',
					 binInput => bi4,
					 decOut_n => hex4);
	dec5: entity work.decoder(RTL)
		 port map(enable	 =>'1',
					 binInput => bi5,
					 decOut_n => hex5);
	dec6: entity work.decoder(RTL)
		 port map(enable	 =>'1',
					 binInput => bi6,
					 decOut_n => hex6);
	dec7: entity work.decoder(RTL)
		 port map(enable	 =>'1',
					 binInput => bi7,
					 decOut_n => hex7);
					 
	displaySelector: entity work.display_selector(v1)
		port map(clk      => CLOCK_50,
					d4       => digito0,
					d5       => digito1,
					d6       => digito2,
					d7       => digito3,
					selector => selectorDisplay,
					enable   => en,
					txt      => textToDisplay,
					bin7     => bi7,
					enable7  => enab7,
					bin6     => bi6,
					enable6  => enab6,
					bin5     => bi5,
					enable5  => enab5,
					bin4     => bi4,
					enable4  => enab4,
					bin3     => bi3,
					enable3  => enab3,
					bin2     => bi2,
					enable2  => enab2,
					bin1     => bi1,
					enable1  => enab1,
					bin0     => bi0,
					enable0  => enab0);
					
	conversor1: entity work.bin_to_bcd_fsm(v1)
		port map(bin_input => n_attemptsConversorInput,
					activate => activateConversor,
					digit1 => digito3,
					digit0 => digito2,
					done => don1,
					clk => clocK_50);
	conversor2: entity work.bin_to_bcd_fsm(v1)
		port map(bin_input => attempt_conversorInput,
					activate => activateConversor,
					digit1 => digito1,
					digit0 => digito0,
					done => don2,
					clk => clocK_50);
					
	freqDivider: entity work.divisorCompleto(behavioral)
		port map(clk => clock_50,
					c1hz => c1,
					c2hz => c2,
					c4hz => c4,
					c8hz => c8);
					
	guessGame: entity work.guess_number(v1)
		port map(ledr => LEDR,
					n_attempts => n_attemptsConversorInput,
					activate => activateConversor,
					attempt => attempt_conversorInput,
					selector => selectorDisplay,
					enable => en,
					texto => textToDisplay,
					keys => cleanKey,
					reset => SW(0),
					clk => clocK_50,
					done1 => don1,
					done2 => don2,
					c1hz => c1,
					c8hz => c8,
					rnd => s_rnd,
					--outros clocks sem uso
					c2hz => c2,
					c4hz => c4,
					ledg => ledG(2 downto 0));
end v1;