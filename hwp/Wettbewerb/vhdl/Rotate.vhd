-- This is the Rotate module
library ieee;

use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;



entity Rotate is
port(
	input : in std_logic_vector(31 downto 0);

	output : out std_logic_vector(31 downto 0)
);
end Rotate;



architecture behaviour of Rotate is
begin

	-- I don't really think a simulation / Testbench for this is appropriate.
	output(31 downto 8) <= input(23 downto 0);
	output(7 downto 0) <= input(31 downto 24);

end behaviour;
