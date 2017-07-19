-- This is the KeyControl v2 module
library ieee;

use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;



entity KeyControlv2 is
port(
	clk : in std_logic;
	key : in std_logic_vector(31 downto 0);
	round : in std_logic_vector(2 downto 0);

	RoundKey : out std_logic_vector(31 downto 0)
);
end KeyControlv2;



architecture behaviour of KeyControlv2 is
begin



end behaviour;
