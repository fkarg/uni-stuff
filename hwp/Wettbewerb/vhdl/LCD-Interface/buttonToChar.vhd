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

	type Statetype is (init, buttonPressed, increase, decrease, nextCharacter);

	signal State : Statetype := init;

	type arr is array (3 downto 0) of unsigned(7 downto 0);

	signal chars : arr;

	signal array_index : unsigned(1 downto 0) := "00";

	signal counter : unsigned(11 downto 0);

--	signal byte0 : unsigned(7 downto 0);
--
--	signal byte1 : unsigned(7 downto 0);
--
--	signal byte2 : unsigned(7 downto 0);
--
--	signal byte3 : unsigned(7 downto 0);


begin
	-- code for inserting the Key through the buttons
	process (clk_50)
	begin
		if rising_edge(clk_50) then
			if State = init and (buttonIn(0) = '1' or buttonIn(1) = '1' or buttonIn(2) = '1') then
				State <= buttonPressed;
				counter <= (others => '0');
			elsif State = buttonPressed and counter = 2500 and buttonIn(0) = '1' then
				State <= increase;
				counter <= (others => '0');
			elsif State = buttonPressed and counter = 2500 and buttonIn(1) = '1' then
				State <= decrease;
				counter <= (others => '0');
			elsif State = buttonPressed and counter = 2500 and buttonIn(2) = '1' then
				State <= nextCharacter;
				counter <= (others => '0');
			-- counter festsetzen!!
			elsif State = increase or State = decrease or State = nextCharacter then
				State <= init;
				counter <= (others => '0');
			else
				counter <= counter + 1;
			end if;
		end if;
	end process;

	process (State)
	begin
		if State = increase then
			if chars(to_integer(array_index)) = 122 then
				chars(to_integer(array_index)) <= to_unsigned(97, 8);
			else
				chars(to_integer(array_index)) <= chars(to_integer(array_index)) + 1;
			end if;
		elsif State = decrease then
			if chars(to_integer(array_index)) = 97 then
				chars(to_integer(array_index)) <= to_unsigned(122, 8);
			else
				chars(to_integer(array_index)) <= chars(to_integer(array_index)) - 1;
			end if;
		elsif State = nextCharacter then
			array_index <= array_index + 1;
		end if;
	end process;

	keyOut(31 downto 24) <= Std_logic_vector(chars(0));
	keyOut(23 downto 16) <= Std_logic_vector(chars(1));
	keyOut(15 downto 8) <= Std_logic_vector(chars(2));
	keyOut(7 downto 0) <= Std_logic_vector(chars(3));
end a;
