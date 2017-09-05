
library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity stopper is port(
-- input and output 'pins'
	reset : in std_logic;
	startStop : in std_logic;
	clk_50 : in std_logic;
	ledout : out unsigned(5 downto 0)
);
end stopper;



architecture behavior of stopper is
  -- signals and such
  signal isactive : std_logic;
  signal secCount : unsigned(26 downto 0);
  signal outCount : unsigned(5 downto 0);
begin

	process(clk_50, startStop)
	begin
		if (startStop = '1') then
			isactive <= not isactive;
			-- this order is required since there can't be an else
			-- after an rising-edge if expression (non-statement!).
		end if;
		
		if (rising_edge(clk_50) and (isactive = '1')) then
			secCount <= secCount + 1;
			
			-- compare secCount (total) to 50 Million - for 50MHz -> 1 second
			if (secCount >= "10111110101111000010000000") then
				outCount <= outCount + 1;
				secCount <= (others => '0');
			end if;
			
		end if;
		
		if (reset = '1') then
			outCount <= (others => '0');
			secCount <= (others => '0');
		end if;		
	
	end process;
	
	ledout <= outCount;

	-- code the stopper here :)
	
end behavior;