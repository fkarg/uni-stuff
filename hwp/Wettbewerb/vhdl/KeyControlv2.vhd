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
   constant roundkey1 : std_logic_vector(31 downto 0) := "11110111100100011001111001001000";
   constant roundkey2 : std_logic_vector(31 downto 0) := "11000110010011001010001101010111";
   constant roundkey3 : std_logic_vector(31 downto 0) := "10111001100111111011011111010100";
   constant roundkey4 : std_logic_vector(31 downto 0) := "01100111001010110011000011101101";
	signal RKconst 	 : std_logic_vector(31 downto 0);
	
	signal oldKey 		: std_logic_vector(31 downto 0) := (others => '0');
	signal currentKey : std_logic_vector(31 downto 0) := (others => '0');
	signal tmpKey 		: std_logic_vector(31 downto 0) := (others => '0');
	signal outKey		: std_logic_vector(31 downto 0) := (others => '0');
	signal oldRound	: std_logic_vector(2 downto 0) := "111";
begin

RKconst <= roundkey1 when round = "000" or round = "100" else
				roundkey2 when round = "001" or round = "101" else
 				roundkey3 when round = "010" or round = "110" else
 				roundkey4; -- when round = "011" or round = "111";

process (clk)
begin
	if rising_edge(clk) and round /= oldRound then
		oldRound <= round;
		
		if round = "000" then
			oldKey <= key;
		else
			oldKey <= currentKey;
		end if;
		
--		if round = "000" or round = "100" then
--			RKconst <= roundkey1;
--		elsif round = "001" or round = "101" then
--			RKconst <= roundkey2;
--		elsif round = "010" or round = "110" then
--			RKconst <= roundkey3;
--		elsif round = "011" or round = "111" then
--			RKconst <= roundkey4;
--		end if;
		
		
		tmpKey(31 downto 8) <= oldKey(23 downto 0);
		tmpKey (7 downto 0) <= oldKey(31 downto 24);
		
		currentKey <= tmpKey xor RKconst;
	
	end if;

end process;

RoundKey <= currentKey;

end behaviour;
