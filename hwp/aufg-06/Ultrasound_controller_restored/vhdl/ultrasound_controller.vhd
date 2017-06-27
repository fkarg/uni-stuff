library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ultrasound_controller is port(
	clk_50: in std_logic;
	
	-- enable signal
	enable : in std_logic;
	
	-- trigger, connected to ultrasound sensor
	trigger: inout std_logic;

	-- finished signal - high if system is idle
	finished : out std_logic;
		
	-- distance in cm (maximum = 255)
	distance : out std_logic_vector(7 downto 0)
);
end ultrasound_controller;



architecture behavior of ultrasound_controller is

	-- internal counter (e.g. for timing)
	signal counter : unsigned(22 downto 0);
	
	signal output : unsigned(7 downto 0);

	-- all the required possible states
	type state_type  is (init, activating, scanning, final);
	-- signal to hold the current state
	signal state : state_type := init;
begin

	process (clk_50)
	begin
	if rising_edge(clk_50) then
		if enable = '0' then
			state <= init;
		elsif state = init and enable = '1' then
			counter <= (others => '0');
			trigger <= '1';
			state <= activating;
			counter <= (others => '0');
		elsif state = activating and counter = 600 then
			trigger <= 'Z';
			counter <= (others => '0');
			output <= (others => '0');
			state <= scanning;
		elsif state = scanning and ((to_integer(counter) mod 2900) = 0) then
			-- wait for 50 (1us) * 58 = 2900, one centimeter
			output <= output + 1;
		elsif state = scanning and counter >= 1500000 then
			counter <= (others => '0');
			state <= final;
		elsif state = final and counter > 50 then
			state <= init;
		else
			counter <= counter + 1;
		end if;
	end if;
	end process;
	
	process (state)
	begin
	if state = init or state = final then
		finished <= '1';
	else
		finished <= '0';
	end if;
	end process;
	
	distance <= std_logic_vector(output);
	
end behavior;
