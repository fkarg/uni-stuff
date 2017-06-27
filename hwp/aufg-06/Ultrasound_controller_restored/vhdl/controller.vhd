-- controller: controles 3 ultrasound sensors
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controller is port(
	clk_50 : in std_logic;
	
	finished_1 : in std_logic;
	finished_2 : in std_logic;
	finished_3 : in std_logic;
	
	enable_1 : out std_logic;
	enable_2 : out std_logic;
	enable_3 : out std_logic
);
end controller;


architecture behavior of controller is
	-- counter to ensure that the ultrasonic sensor isn't triggered to often
	signal counter1 : unsigned(19 downto 0) := (others => '0');
	-- counter to measure enable signal
	signal counter2 : unsigned(4 downto 0) :=  (others => '0');
	-- state signal
	type state_type is (init, controller1, wait1, controller2, wait2, controller3, wait3);
	signal state : state_type := init;
		
begin

	-- state transitions
	process(clk_50, finished_1, finished_2, finished_3)
	begin
		if rising_edge(clk_50) then
			-- start loop
			if state = init then
				state <= controller1;
				counter1 <= (others => '0');
			-- controller1 working, wait for finished signal
			elsif state = controller1 and finished_1 = '1' and counter1 > 500 then
				state <= wait1;
				counter1 <= (others => '0');
			-- controller1 finished, wait 1/50 seconds to reduce interferences
			elsif state = wait1 and counter1 = 1000000-1 then
				state <= controller2;
				counter1 <= (others => '0');
			-- controller2 working, wait for finished signal
			elsif state = controller2 and finished_2 = '1' and counter1 > 500 then
				state <= wait2;
				counter1 <= (others => '0');
			-- controller2 finished, wait 1/50 seconds to reduce interferences
			elsif state = wait2 and counter1 = 1000000-1 then
				state <= controller3;
				counter1 <= (others => '0');
			-- controller3 working, wait for finished signal
			elsif state = controller3 and finished_3 = '1' and counter1 > 500 then
				state <= wait3;
				counter1 <= (others => '0');
			-- controller3 finished, wait 1/50 seconds to reduce interferences
			elsif state = wait3 and counter1 = 1000000-1 then
				state <= controller1;
				counter1 <= (others => '0');
			else 
				counter1 <= counter1 + 1;
			end if;
		end if;
	end process;
	
	-- process for output
	process (state)
	begin
		if state = controller1 then
			enable_1 <= '1';
		elsif state = controller2 then
			enable_2 <= '1';
		elsif state = controller3 then
			enable_3 <= '1';
		else
			enable_1 <= '0';
			enable_2 <= '0';
			enable_3 <= '0';
		end if;
	end process;
end behavior;