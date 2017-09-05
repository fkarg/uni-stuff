-- motor_controller sets speed and direction of a single motor
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity motor_controller is port(
	clk_50        : in std_logic; -- 50 MHz clock
	speed         : in std_logic_vector(9 downto 0);
	direction     : in std_logic;
	motor_signal1 : out std_logic;
	motor_signal2 : out std_logic
	);
end motor_controller;

architecture behaviour of motor_controller is

	signal counter : unsigned(15 downto 0);
	signal pwm     : std_logic; --modulatet signal for the motor
	signal switch  : unsigned(15 downto 0);
	signal speed_intern : unsigned(9 downto 0);
 	
	
begin
		-- switch = speed (6 times left shifted and the 6 lowest bits padded with the lowest bits of speed)
		-- switch is at its max value when speed reaches its max value
		switch(15 downto 6) <= unsigned(speed); 
		switch(5 downto 0) <= unsigned(speed(9 downto 4));

		process (clk_50)
		begin
			if rising_edge(clk_50) then
				if counter = switch and switch < 2**16 - 1 then
					counter <= counter + 1;
					pwm <= '0';
				elsif counter = 0 and switch > 0 then 
					pwm <= '1';
					counter <= counter + 1;
				elsif counter = 0 and switch = 0 then
					pwm <= '0';
					counter <= counter + 1;
				else 
					counter <= counter + 1;
				end if;
			end if;
		end process;
			
		motor_signal1 <= pwm when direction = '1' else '0';
		motor_signal2 <= pwm when direction = '0' else '0';
		
end behaviour;


	