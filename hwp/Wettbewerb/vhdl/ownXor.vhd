-- This is the 32BitXor module
library ieee;

use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;



entity ownXor is
port(
	A : in std_logic_vector(31 downto 0);
	B : in std_logic_vector(31 downto 0);

	C : out std_logic_vector(31 downto 0)
);
end ownXor;



architecture behaviour of ownXor is

begin

	-- I don't really think a simulation / Testbench for this is appropriate.
	C <= A xor B;

end behaviour;
