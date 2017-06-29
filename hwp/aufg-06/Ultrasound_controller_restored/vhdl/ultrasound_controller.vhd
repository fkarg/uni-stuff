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

--  /* all the required possible states

--  init:
--      description:
--          wait for enable to get high
--          condition: enable
--      in:
--          enable = 0
--      out:
--          *finished = 1
--          trigger = 0 (for easier setting it to 1 later)
--          *distance = old

--  activating:
--      description:
--          set trigger = 1 for 12us
--          condition: 12us
--      in:
--          -
--      out:
--          *finished = 0
--          trigger = 1
--          *distance = old

--  waiting:
--      description:
--          waiting for the ultrasonic sensor to send the signal,
--          e.g. for trigger = 1
--          condition: trigger = 1
--      in:
--          -
--      out:
--          *finished = 0
--          trigger = 'Z'
--          *distance = old

--  intermediate:
--		  description:
			

--  scanning:
--      description:
--          the ultrasonic signal has been sent, but did not yet return.
--          This means that while the signal is active, distance has to be updated.
--          condition: timeout, trigger = 0
--      in:
--          trigger = 1
--      out:
--          *finished = 0
--          *distance = updating

--  final:
--      description:
--          This is just waiting 10us if the enable-signal would be withdrawn
--          condition: 10us
--      in:
--          -
--      out:
--          trigger = 0
--          *finished = 1
--          *distance = new

--  one clk_50 signal is 0.02us, so 1us = 50cycles
--  */
    type state_type  is (init, activating, waiting, scanning, final);

    -- signal to hold the current state
    signal state : state_type := init;
begin

    process (clk_50)
    begin
	 if rising_edge(clk_50) then
        if state = init then
            if enable = '1' then
                state <= activating;
				else
					 trigger <= '0';
            end if;

        elsif state = activating then

            if counter >= 600 then
                trigger <= 'Z';
                state <= waiting;
            else
                trigger <= '1';
                counter <= counter + 1;
            end if;

        elsif state = waiting then

            if not trigger = '1' then
				else
                counter <= (others => '0');
					 output <= (others => '0');
                state <= scanning;
            end if;

        elsif state = scanning then

--         /* 30ms = 1'500'000 cycles = 30'000us * 50cycles/us = 30ms * 50cycles/us
--          * distance-max: 58us ~ 1cm, 2900cycles ~ 1cm  -> 517cm, but since the
--          * maximum correctly measurable distance is up to roughly 2m (and we can only
--          * save about 256cm), a timeout of ~12ms is more than sufficient.
--          */
            if trigger = '0' or output >= 150 then
                counter <= (others => '0');
                state <= final;
            elsif counter >= 2900 then
                output <= output + 1;
					 counter <= (others => '0');
            else
                counter <= counter + 1;
            end if;

        elsif state = final then

            if counter >= 500 then
                counter <= (others => '0');
                state <= init;
				else
					counter <= counter + 1;
            end if;
		  else
				state <= final;
		  end if;
    end if;
    end process;

    finished <= '1' when state = init or state = final else '0';

    distance <= std_logic_vector(output);

end behavior;
