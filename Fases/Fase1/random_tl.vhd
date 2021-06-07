----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- LSD.TOS, May 2021 (DO NOT REMOVE THIS LINE), VHDL 2008
--
-- Pseudo-random number generator example.
--

library IEEE;
use     IEEE.STD_LOGIC_1164.ALL;

entity random_tl is
  port
  (
    CLOCK_50 : in  std_logic;                     -- main clock
    LEDG     : out std_logic_vector(7 downto 0)   -- pseudo-random bits
  );
end random_tl;

architecture gets_the_job_done of random_tl is
  signal rnd_08 : std_logic_vector(7 downto 0);
  signal clk    : std_logic; -- main clock
begin
  clk <= CLOCK_50;
  -- green leds
  process(clk) is
  begin
    if rising_edge(clk) then
		LEDG(7 downto 0) <= rnd_08;
    end if;
  end process;
  -- pseudo random number generator
  rnd_08_gen : entity work.pseudo_random_generator(heavy)
    generic map
    (
      N_BITS => 8,
      SEED   => X"2021_0005_0024"
    )
    port map
    (
      clock  => clk,
      enable => '1',
      rnd    => rnd_08
    );
end gets_the_job_done;