-- This is the Subst module
library ieee;

use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;



entity Subst is
port(
	input : in std_logic_vector(3 downto 0);

	output : out std_logic_vector(3 downto 0)
);
end Subst;



architecture behaviour of Subst is
begin

-- This is implementing the given Substitute Routine
-- I believe Testing it is not really ... applicable.

with input select output <=

	"1010" when "0000",
	"1100" when "0001",
	"1000" when "0010",
	"1111" when "0011",

	"1110" when "0100",
	"0110" when "0101",
	"0011" when "0110",
	"1011" when "0111",

	"0111" when "1000",
	"0101" when "1001",
	"0000" when "1010",
	"0010" when "1011",

	"1001" when "1100",
	"0001" when "1101",
	"0100" when "1110",
	"1101" when "1111";

end behaviour;
