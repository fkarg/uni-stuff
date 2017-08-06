--38 Byte
array
rising_edge

--Daten die ich man schon hat, werden in ein Array gepackt und dadurch wird der
--Counter erhöt jedes mal wenn ich neue Daten bekomme

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity buttonToChar is port(
	buttonIn : in std_logic_vector(2 downto 0);

	clk_50 : in std_logic;
	
	keyOut: out std_logic_vector(31 downto 0)
);
end buttonToChar;


architecture a of buttonToChar is