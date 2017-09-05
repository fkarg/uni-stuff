-- robot_controller moves the robot autonomiously
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity robot_controller is port(
	clk_50 : in std_logic;
	
	distance_1 : in std_logic_vector(7 downto 0); -- left ultrasound sensor
	distance_2 : in std_logic_vector(7 downto 0); -- middle ultrasound sensor
	distance_3 : in std_logic_vector(7 downto 0); -- right ultrasound sensor
	
	motor1_speed     : out std_logic_vector(9 downto 0);
	motor1_direction : out std_logic; -- left motor
	
	motor2_speed     : out std_logic_vector(9 downto 0);
	motor2_direction : out std_logic -- right motor
	);
end robot_controller;

architecture behaviour of robot_controller is
	signal count : unsigned(18 downto 0);
	type state_type is (init, no_obstacle, obstacle_left, obstacle_right, obstacle_front, obstacle_both_sides);
	signal state : state_type := init;
	
	-- just for type-conversion
	signal distance1 : unsigned(7 downto 0);
	signal distance2 : unsigned(7 downto 0);
	signal distance3 : unsigned(7 downto 0);
	
	signal turning   : std_logic;

begin
	
	distance1 <= unsigned(distance_1);
	distance2 <= unsigned(distance_2);
	distance3 <= unsigned(distance_3);
	
	-- manage state transitions, in state obstacle_both the robot should turn by approximately 120 degrees,
	-- unaware of the ultrasound signal. That makes the state machine a bit ugly.
	process(clk_50)
	begin
		if rising_edge(clk_50) then
			if distance1 > 80 and distance2 > 80 and distance3 > 80 and state /= obstacle_both_sides then
				state <= no_obstacle;
				if turning = '1' then
					count <= (others => '0');
					turning <= '0';
				end if;
			elsif distance2 < 80 and state /= obstacle_both_sides then
				state <= obstacle_front;
				if turning = '1' then
					count <= (others => '0');
					turning <= '0';
				end if;
			elsif distance1 < 80 and distance3 > 80 and state /= obstacle_both_sides then
				state <= obstacle_left;
				if turning = '1' then
					count <= (others => '0');
					turning <= '0';
				end if;
			elsif distance1 > 80 and distance3 < 80 and state /= obstacle_both_sides then
				state <= obstacle_right;
				if turning = '1' then
					count <= (others => '0');
					turning <= '0';
				end if;
			elsif (distance1 < 80 and distance3 < 80) or (count > 0 and count < 2**18 - 1) then
				state <= obstacle_both_sides;
				count <= count + 1;
				turning <= '1';
			else
				state <= init;
				if turning = '1' then
					count <= (others => '0');
					turning <= '0';
				end if;
			end if;
		end if;
	end process;
	
	process(state)
	begin
          if state = init then
            -- stop
            motor1_speed <= (others => '0');
            motor2_speed <= (others => '0');
            motor1_direction <= '1';
            motor2_direction <= '1';
          elsif state = no_obstacle then
            -- both motors forward, speed 512
            motor1_speed <= (9 => '1', others => '0');
            motor2_speed <= (9 => '1', others => '0');
            motor1_direction <= '1';
            motor2_direction <= '1';
          elsif state = obstacle_left then
            -- both moters forward, right curve
            motor1_speed <= (9 => '1', others => '0');
            motor2_speed <= (7 => '1', others => '0');
            motor1_direction <= '1';
            motor2_direction <= '1';
          elsif state = obstacle_right then
            -- both motors forward, left curve
            motor1_speed <= (7 => '1', others => '0');
            motor2_speed <= (9 => '1', others => '0');
            motor1_direction <= '1';
            motor2_direction <= '1';
          else
            -- turn
            motor1_speed <= (8 => '1', others => '0');
            motor2_speed <= (8 => '1', others => '0');
            motor1_direction <= '0';
            motor2_direction <= '1';
          end if;
	end process;
	
end behaviour;