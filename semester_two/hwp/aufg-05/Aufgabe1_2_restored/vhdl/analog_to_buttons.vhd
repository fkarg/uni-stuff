-- analog_to_buttons
-- converts the reading of the adc into the corresponding button


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity analog_to_buttons is port(
	analogIn : in std_logic_vector(11 downto 0);
	
	button1pressed : out std_logic;
	button3pressed : out std_logic
);
end analog_to_buttons;


architecture behavior of analog_to_buttons is
begin

	button1pressed <= '1' WHEN to_integer(unsigned(analogIn)) > 0 and
	            					 to_integer(unsigned(analogIn)) < 30 ELSE '0';
										 
	button3pressed <= '1' WHEN to_integer(unsigned(analogIn)) > 1876 and
	            					 to_integer(unsigned(analogIn)) < 1916 ELSE '0';

end behavior;