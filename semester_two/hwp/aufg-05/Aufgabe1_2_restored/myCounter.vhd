library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;



entity myCounter is port(
	count 	: in std_logic; -- count signal: increase counter on rising edge
	reset		: in std_logic; -- reset signal: set counter to 0 if rst = 0
	countOut : out std_logic_vector(2 downto 0)); -- counter output
end myCounter;

architecture behavioral of myCounter is

signal num : std_logic_vector(2 downto 0);

begin

	process (count, reset)
	begin
		if reset = '0' then
			num <= "000";
		elsif rising_edge(count) then
			num <= num + 1;
		end if;
		
	end process;

	countOut <= num;
	

end behavioral;