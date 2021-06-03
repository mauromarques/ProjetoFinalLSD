----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- LSD.TOS, May 2021 (DO NOT REMOVE THIS LINE), VHDL 2008
--
-- Pseudo-random number generator example.
--

library IEEE;
use     IEEE.STD_LOGIC_1164.ALL;

entity pseudo_random_generator_example_tl is
  port
  (
    CLOCK_50 : in  std_logic;                     -- main clock
    KEY      : in  std_logic_vector(0 downto 0);  -- when pressed, put in LEDG pseudo-random bits
    LEDG     : out std_logic_vector(7 downto 0)   -- pseudo-random bits
  );
end pseudo_random_generator_example_tl;

architecture gets_the_job_done of pseudo_random_generator_example_tl is
  signal rnd_08 : std_logic_vector(7 downto 0);
  signal clk    : std_logic; -- main clock
  signal enable : std_logic; -- enablke signal, negation of KEY(0)
begin
  clk <= CLOCK_50;
  enable <= not KEY(0);
  -- green leds
  process(clk) is
  begin
    if rising_edge(clk) then
      if enable = '1' then
        LEDG(7 downto 0) <= rnd_08;
      end if;
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
