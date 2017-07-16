-- This is the ShiftRows module
library ieee;

use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;



entity ShiftRows is
port(
	input : in std_logic_vector(31 downto 0);

	output : out std_logic_vector(31 downto 0)
);
end ShiftRows;


-- implementing ShiftRows as it is specified is the 'final.pdf' datasheet.
-- Really testing this does not seem appropriate, since a mistake won't really show that way.

architecture behaviour of ShiftRows is
begin

	output(31 downto 24) <= input(31 downto 24);

	output(23 downto 18) <= input(21 downto 16);
	output(17 downto 16) <= input(23 downto 22);

	output(15 downto 12) <= input(11 downto 8);
	output(11 downto 8) <= input(15 downto 12);

	output(7 downto 6) <= input(1 downto 0);
	output(5 downto 0) <= input(7 downto 2);

end behaviour;
