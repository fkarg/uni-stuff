-- this is the instruction-Processor, namely the part
-- asking for instructions, and putting them into
-- action by sending the correct signals to both of
-- the motors, correcting degrees based on heading,
-- e.g. 'processing' them.


library ieee;
	 use ieee.std_logic_1164.all;
	 use ieee.numeric_std.all;

	 
	 
entity instruction_processor is port(

	-- the 50Mhz clock
	clk : in std_logic;	
	-- if the instruction buffer has the next instructions
	buffer_ready : in std_logic;
	-- the newest instructions
	inst_in : in std_logic_vector(15 downto 0);
	-- the current heading of the robot
	heading_in : in std_logic_vector(8 downto 0);
	
	-- the current speed of motorA
	motorAspeed : out std_logic_vector(9 downto 0);
	-- the current speed of motorB
	motorBspeed : out std_logic_vector(9 downto 0);
	-- the current direction of motorA
	motorAdirection : out std_logic;
	-- the current direction of motorB
	motorBdirection : out std_logic;
	-- for requesting a new instruction
	new_inst : out std_logic
	);
end instruction_processor;



architecture b of instruction_processor is 
	-- TODO: verify speeds
	constant forwardSpeed : std_logic_vector(9 downto 0)  := std_logic_vector(to_unsigned(900, 10));
	constant turnSpeed : std_logic_vector(9 downto 0) := std_logic_vector(to_unsigned(500, 10));
	-- TODO: verify this constant.
	constant leftShiftDist: integer := 10;
	
	-- internal counter, for timing or the like
	signal count : unsigned(64 downto 0) := (others => '0');
	-- the rough comparision for distance based on time
	signal dist : unsigned(leftShiftDist + 13 downto 0);
	-- the direction we are supposed to turn
	signal angle : unsigned (9 downto 0);
	-- the target-direction we intend to reach
	signal target_heading : unsigned(9 downto 0);
	-- the direction we started with
	signal start_heading : unsigned(9 downto 0);
	-- the direction we are currently headed in
	signal current_heading : unsigned(9 downto 0);
	
	-- the different states, a state-machine diagram might follow at some point.
	type state_type is (blocked, forward, prepare_right_turn, start_right_turn, end_right_turn, 
							  prepare_left_turn, start_left_turn, end_left_turn, get_new_inst, waiting, stop);
	signal state : state_type := blocked; -- state and initial state

begin
	
	-- the distance to drive in an forward-intruction, scaled upwards
	dist((leftShiftDist + 13) downto leftShiftDist) <= unsigned(inst_in(13 downto 0));
	dist((leftShiftDist - 1) downto 0) <= (others => '0');
	
	-- the angle (only makes sense for turning-instructions
	angle(8 downto 0) <= unsigned(inst_in(8 downto 0));
	angle(9) <= '0';
	
	-- if a new instruction is requested
	new_inst <= '1' when state = get_new_inst else '0';
	
	current_heading(8 downto 0) <= unsigned(heading_in);
	current_heading(9) <= '0';
	
	process (clk, buffer_ready)
	begin
		if falling_edge(clk) then
			if buffer_ready = '0' then
				state <= blocked;
			else
------------ go to forward, turn, stop or waiting ( =invalid instruction) ---------------------------------------------------------

				-- if the instruction begins with "01" then it is a supposed left turn.
				if (state = blocked or state = get_new_inst) and count > 20 and inst_in(15 downto 14) = "01" then
					state <= prepare_left_turn;
					count <= (others => '0');
					start_heading <= current_heading;
					if current_heading + angle > 360 then
						target_heading <= current_heading + angle - 360;
					else
						target_heading <= current_heading + angle;
					end if;
					
				-- if the instruction begins with "10" then it is a supposed right turn.
				elsif (state = blocked or state = get_new_inst) and count > 20 and inst_in(15 downto 14) = "10" then
					state <= prepare_right_turn;
					count <= (others => '0');
					start_heading <= current_heading;
					if current_heading + 360 - angle < 360 then
						target_heading <= current_heading - angle;
					else
						target_heading <= current_heading + (360 - angle);
					end if;
				
				-- if this is the absolutely last block.
				elsif (state = blocked or state = get_new_inst) and count > 20 and inst_in = "1111111111111111" then
					state <= stop;
					count <= (others => '0');
					
				-- this is an invalid instruction.
				elsif (state = blocked or state = get_new_inst) and count > 20 and inst_in(15 downto 14) = "11" then
					state <= waiting;
					count <= (others => '0');
					
				-- this is a forward-instruction
				elsif (state = blocked or state = get_new_inst) and count > 20 and inst_in(15 downto 14) = "00" then
					state <= forward;
					count <= (others => '0');


----------- prepare_turn states needed to avoid modulo operations ---------------------------------					
				elsif state = prepare_right_turn and count > 10 then
					if target_heading > start_heading then
						state <= start_right_turn;
					else
						state <= end_right_turn;
					end if;

				elsif state = prepare_left_turn and count > 10 then
					if target_heading < start_heading then
						state <= start_left_turn;
					else
						state <= end_left_turn;
					end if;
				
				
----------- start_turn states, needed if robot passes 0 degrees -----------------------------------------------
				elsif state = start_right_turn and target_heading < unsigned(heading_in) then
					state <= end_right_turn;
				elsif state = start_left_turn and target_heading > unsigned(heading_in) then
					state <= end_left_turn;
					
----------- end turns -----------------------------------------------------------------------------
				elsif state = end_right_turn and target_heading >= unsigned(heading_in) then
					state <= get_new_inst;
					count <= (others => '0');
				elsif state = end_left_turn and target_heading <= unsigned(heading_in) then
					state <= get_new_inst;
					count <= (others => '0'); 
				
----------- forward state ------------------------------------------------------------------------				
				elsif state = forward and count >= dist then
					state <= get_new_inst;
					count <= (others => '0');
					
----------- waiting state (just wait a little to avoid timing problems)---------------------------
				elsif state = waiting and count > 500 then
					state <= get_new_inst;
					count <= (others => '0');
				else
					count <= count + 1;
				end if;
			end if;
		end if;
	end process;
	
	
	motorAdirection <= inst_in(15) when state /= forward else '1';
	motorBdirection <= inst_in(14) when state /= forward else '1';
	
	motorAspeed <= forwardSpeed when state = forward else
						turnSpeed when (state = start_right_turn or state = end_right_turn or
											 state = start_left_turn or state = end_left_turn) else
						"0000000000";
	motorBspeed <= forwardSpeed when state = forward else
						turnSpeed when (state = start_right_turn or state = end_right_turn or
											 state = start_left_turn or state = end_left_turn) else
						"0000000000";
end b;