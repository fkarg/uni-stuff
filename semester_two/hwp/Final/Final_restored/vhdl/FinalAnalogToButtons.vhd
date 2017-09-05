-- analogToButtons
-- converts the reading of the adc into the corresponding button


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FinalAnalogToButtons is port(
	analogIn : in std_logic_vector(11 downto 0);

	buttonOut: out std_logic_vector(2 downto 0)
);
end FinalAnalogToButtons;


architecture behavior of FinalAnalogToButtons is
	
	signal intern : std_logic_vector(2 downto 0);


begin
	-- re-used code from ex04
	
	-- button 1
	intern(0) <= '1' WHEN to_integer(unsigned(analogIn)) > 0 and
	            				to_integer(unsigned(analogIn)) < 50 ELSE '0';

	-- button 2
	intern(1) <= '1' WHEN to_integer(unsigned(analogIn)) > 965 and
	            				to_integer(unsigned(analogIn)) < 1005 ELSE '0';

	-- button 3
	intern(2) <= '1' WHEN to_integer(unsigned(analogIn)) > 1876 and
	            				to_integer(unsigned(analogIn)) < 1916 ELSE '0';

	buttonOut <= intern;
end behavior;
