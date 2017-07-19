-- This is the KeyControl module
library ieee;

use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;



entity KeyControl is
port(
        key : in std_logic_vector(31 downto 0);
        RKin : in std_logic_vector(31 downto 0);
        round : in std_logic_vector(2 downto 0);
		  enable : in std_logic;

        RKout : out std_logic_vector(31 downto 0);
        RKconst : out std_logic_vector(31 downto 0)
);
end KeyControl;



architecture behaviour of KeyControl is
        constant roundkey1 : std_logic_vector(31 downto 0) := "11110111100100011001111001001000";
        constant roundkey2 : std_logic_vector(31 downto 0) := "11000110010011001010001101010111";
        constant roundkey3 : std_logic_vector(31 downto 0) := "10111001100111111011011111010100";
        constant roundkey4 : std_logic_vector(31 downto 0) := "01100111001010110011000011101101";
		  signal tmp : std_logic_vector(31 downto 0);
begin




process (enable)
begin

	-- based on the round, generate the key and output the correct round-constant.

	-- if rising_edge(enable) then
	
    if round = "000" or round = "100" then
        RKconst <= roundkey1;
    elsif round = "001" or round = "101" then
        RKconst <= roundkey2;
    elsif round = "010" or round = "110" then
        RKconst <= roundkey3;
    elsif round = "011" or round = "111" then
        RKconst <= roundkey4;
    end if;

    if round = "000" and rising_edge(enable) then
        RKout <= key;
    elsif rising_edge(enable) then
        RKout <= RKin;
    end if;
	 
	-- end if;

end process;

end behaviour;
