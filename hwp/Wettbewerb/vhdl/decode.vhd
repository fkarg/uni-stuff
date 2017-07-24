-- this is the decode module.
-- A simpler version of a 32-bit AES is implemented here.
library ieee;

-- use ieee.std_logic_unsigned.all;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;


entity decode is
port(
	clk_50 : in std_logic;
	key : in std_logic_vector(31 downto 0);
	hamming : in std_logic_vector(31 downto 0);

	decoded : out std_logic_vector(31 downto 0)
);

end decode;


architecture behaviour of decode is

	-- those are the static round-keys for later round-key specific generation
	-- (as well as some other signals used for that).
	type signal_array is array (0 to 3) of std_logic_vector(31 downto 0);
	signal roundconstants : signal_array := ("11110111100100011001111001001000",
		"11000110010011001010001101010111", "10111001100111111011011111010100",
		"01100111001010110011000011101101");
	signal tmpKey : std_logic_vector(31 downto 0) := (others => '0');
	signal roundkey : std_logic_vector(31 downto 0) := (others => '0');
	signal foundKey : std_logic := '0';
	signal decodedIn : std_logic := '0';


	-- this is to make the substituting later easier. (working?)
	type subst is array (0 to 15) of std_logic_vector(3 downto 0);
	signal substitutes : subst := ("1010", "1100", "1000", "1111",
											 "1110", "0110", "0011", "1011",
											 "0111", "0101", "0000", "0010",
											 "1001", "0001", "0100", "1101");

	-- type index is of integer range 0 to 4, for recognizing the end.
	signal index : integer range 0 to 4 := 0;
	signal subsi : integer range 0 to 8 := 0;

	-- this is the central counter, waiting for everything to finish.
	signal counter : integer := 0;


	-- we have several states, apparently those are sufficient. A drawn diagram of their
	-- correlations might be added at some point. state is the current state whereas
	-- next_state is used a placeholder for the next during a wait.
	type state_type is (init, unstable_input, waiting, substituting,
								shift_rows, gen_rki, gen_rkii, add_rk, finished);
	signal state : state_type := init;
	signal next_state : state_type;

	-- those two are to verify that the input did not change the last few cycles.
	signal key_inp : std_logic_vector(31 downto 0) := (others => '0');
	signal ham_inp : std_logic_vector(31 downto 0) := (others => '0');

	-- this is the main array with which will be tampered. Maybe some
	-- operations do not work as intended due to loops or the like.
	-- Testing in Progress.
	signal working_copy : std_logic_vector(31 downto 0) := (others => '0');
	signal tmpcopy : std_logic_vector(31 downto 0) := (others => '0');

begin


process (clk_50)
begin
if rising_edge(clk_50) then

	if state = init then
	-- this happens only once at initializing, we're
	-- resetting all the necessary values basically.
		state <= waiting;
		next_state <= unstable_input;
		counter <= 0;
		index <= 0;
		subsi <= 0;


	elsif state = unstable_input and key_inp = key and ham_inp = hamming and decodedIn = '0' then
	-- there is new! stable input. proceed with step1, round1.
		index <= 0;
		working_copy <= hamming;
		state <= substituting;

	elsif state = unstable_input and (key_inp /= key or ham_inp /= hamming) then
	-- stabilizing the input by actualizing it after a waiting-period, and
	-- blocking as long as it did indeed change.
		state <= waiting;
		counter <= 0;
		next_state <= unstable_input;
		ham_inp <= hamming;
		key_inp <= key;
		decodedIn <= '0';



	elsif state = substituting then
	-- this is index-based substitution, each with a wait inbetween ... required?
		if subsi >= 8 then
			state <= shift_rows;
			subsi <= 0;
		else
			tmpcopy(4 * (subsi + 1) - 1 downto 4 * subsi) <=
				substitutes(to_integer(unsigned(working_copy(4 * (subsi + 1) - 1 downto 4 * subsi))));
			subsi <= subsi + 1;
		end if;


	elsif	state = shift_rows then
	-- this does the shift_rows part as specified
		working_copy(31 downto 24) <= tmpcopy(31 downto 24);
		working_copy(23 downto 18) <= tmpcopy(21 downto 16);
		working_copy(17 downto 16) <= tmpcopy(23 downto 22);
		working_copy(15 downto 12) <= tmpcopy(11 downto 8);
		working_copy(11 downto 8)  <= tmpcopy(15 downto 12);
		working_copy (7 downto 6)  <= tmpcopy(1 downto 0);
		working_copy (5 downto 0)  <= tmpcopy(7 downto 2);
		state <= gen_rki;


	elsif state = gen_rki then
	-- generating the next temporary round key
		if foundKey = '0' and index = 0 then
			tmpkey(31 downto 8) <= key(23 downto 0);
			tmpkey (7 downto 0) <= key(31 downto 24);
		else
			tmpkey(31 downto 8) <= roundkey(23 downto 0);
			tmpkey (7 downto 0) <= roundkey(31 downto 24);
		end if;
		state <= gen_rkii;
		tmpcopy <= working_copy;

		
	elsif state = gen_rkii then
	-- simply doing the xor with the constant
		roundkey <= tmpkey xor roundconstants(index);
		state <= add_rk;
		

	elsif state = add_rk then
	-- adding the round-key with a simple xor.
		working_copy <= roundkey xor tmpcopy;
		if index >= 3 then
			index <= 0;
			state <= finished;
		else
			index <= index + 1;
			state <= substituting;
		end if;


	elsif state = finished then
	-- we're done with decoding whatever was at the input.
	-- save that we decoded it and wait for new input.
		decoded <= working_copy;
		state <= waiting;
		next_state <= unstable_input;
		decodedIn <= '1';
		if working_copy = "11111111000000001111111100000000" then
			foundKey <= '1';
		end if;



	elsif state = waiting and counter >= 20 then
	-- this is simply a waiting state, hopefully updating the values.
		counter <= 0;
		state <= next_state;

	else
	-- if no condition fits, we're simply waiting.
		counter <= counter + 1;
	end if;

end if;
end process;



end behaviour;



