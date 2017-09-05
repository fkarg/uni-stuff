-- analogToButtons
-- converts the reading of the adc into the corresponding button


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity analogToButtons is port(
	analogIn : in std_logic_vector(11 downto 0);

	buttonOut: out std_logic_vector(4 downto 0)
);
end analogToButtons;


architecture behavior of analogToButtons is
	
	signal intern : std_logic_vector(4 downto 0);

begin
	-- re-used code from ex04, could be solved more efficiently, using a 3-bit bus
	intern(0) <= '1' WHEN to_integer(unsigned(analogIn)) > 0 and
	            				to_integer(unsigned(analogIn)) < 50 ELSE '0';

	intern(1) <= '1' WHEN to_integer(unsigned(analogIn)) > 965 and
	            				to_integer(unsigned(analogIn)) < 1005 ELSE '0';

	intern(2) <= '1' WHEN to_integer(unsigned(analogIn)) > 1876 and
	            				to_integer(unsigned(analogIn)) < 1916 ELSE '0';

	intern(3) <= '1' WHEN to_integer(unsigned(analogIn)) > 2680 and
	            			   to_integer(unsigned(analogIn)) < 2720 ELSE '0';

	intern(4) <= '1' WHEN to_integer(unsigned(analogIn)) > 3282 and
									to_integer(unsigned(analogIn)) < 3322 ELSE '0';
	
	buttonOut <= intern;
end behavior;
