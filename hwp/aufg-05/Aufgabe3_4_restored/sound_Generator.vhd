-- Sound generator using a 16bit counter
-- the counter is reset when it reaches a given value
-- and the sound output switches from 0 to 1 or otherwise
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity sound_Generator is
port(
	clk_50 : in  	std_logic; -- 50 MHz external clock
	freq   : in  	unsigned(15 downto 0); -- freq specifier: max value is 65535, resulting in a 381 Hz wave
	sound  : out 	std_logic  -- rectangular wave with frequency specified by @freq
	);
end sound_Generator;

architecture behaviour of sound_Generator is

	
	signal num 			  : unsigned(15 downto 0); -- internal counter
	signal sound_intern : std_logic;
	
begin
	-- internal counter
	process (clk_50)
	begin
		if (rising_edge(clk_50)) then
			  if (num = freq) then
					num <= (others => '0');
					sound_intern <= not sound_intern;
			  else
					num <= num + 1;
			  end if;
		 end if;
	end process;
		
	sound <= sound_intern;
	
	
end behaviour;

