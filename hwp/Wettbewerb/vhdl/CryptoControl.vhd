-- This is the CryptoControl module
library ieee;

use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;



entity CryptoControl is
port(
    hamming : in std_logic_vector(31 downto 0);
    stepIn  : in std_logic_vector(31 downto 0);
	 clk_50	: in std_logic;

    stepOut : out std_logic_vector(31 downto 0);
    decoded : out std_logic_vector(31 downto 0);
    testing : out std_logic;
    correct : out std_logic;
    round   : out std_logic_vector(2 downto 0)
);
end CryptoControl;



architecture behaviour of CryptoControl is
-- required: two state machines, one controlling the
--    decoding of the current input, and one controlling
--    the taking and testing of the current Key.

-- we require two state-machines (depending on each other)
-- satisfying the following two diagrams:


--         [init] -> [searchKey] -> [decodeStuff]

--         [idle]  -(waiting for new Key or new Input)----->  [Round1]
--           ^                                                    \
--           |                                                     v
--    [finished] <-(val(key) or output)- [Round4] <- [Round3] <- [Round2]


    type state_type is (idle, round1, round2, round3, round4, finished);

    signal foundCorrectKey  : std_logic := '0';
	 signal action				 : std_logic := '0';
	 signal lastChange		 : std_logic_vector(31 downto 0) := (others => '0');
	 signal lastInput			 : std_logic_vector(31 downto 0) := (others => '0');
	 signal lastStep			 : std_logic_vector(31 downto 0) := (others => '0');
    signal lastDecoded      : std_logic_vector(31 downto 0) := (others => '0');
    signal state            : state_type := finished;
begin

    process (action)
    begin
	 if rising_edge(action) then
		  if state = idle then
				state <= round1;
		  elsif state = round1 then
            round(1 downto 0) <= "00";
            round(2) <= foundCorrectKey;
				testing <= '1';
            stepOut <= hamming;
            state <= round2;
        elsif state = round2 then
            round(1 downto 0) <= "01";
            round(2) <= foundCorrectKey;
            stepOut <= stepIn;
            state <= round3;
        elsif state = round3 then
            round(1 downto 0) <= "10";
            round(2) <= foundCorrectKey;
            stepOut <= stepIn;
            state <= round4;
        elsif state = round4 then
            round(1 downto 0) <= "11";
            round(2) <= foundCorrectKey;
            stepOut <= stepIn;
            state <= finished;
        elsif state = finished then
            if foundCorrectKey = '1' then
                lastDecoded <= stepIn;
            else
                if stepIn = "11111111000000001111111100000000" then
                    foundCorrectKey <= '1';
                end if;
            end if;
				testing <= '0';
				state <= idle;
        end if;
	 end if;
    end process;
	 
	 
	 process (clk_50)
	 begin
		if rising_edge(clk_50) then
			if lastStep = stepIn and lastInput = hamming and lastChange > 20 then
				action <= '1';
				lastChange <= (others => '0');
			elsif lastInput /= hamming then
				lastChange <= (others => '0');
				lastInput <= hamming;
				action <= '0';
			elsif lastStep /= stepIn then
				lastChange <= (others => '0');
				lastStep <= stepIn;
				action <= '0';
			else 
				action <= '0';
				lastChange <= lastChange + 1;
			end if;
		end if;
	 end process;
	 
	 decoded <= stepIn;
	 correct <= foundCorrectKey;

end behaviour;
