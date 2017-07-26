library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity instruction_processor is port(
	inst_in : in std_logic_vector(15 downto 0);
	heading_in : in std_logic_vector(8 downto 0);
	clk : in std_logic;
	buffer_ready : in std_logic;
	
	motorAspeed : out std_logic_vector(9 downto 0);
	motorBspeed : out std_logic_vector(9 downto 0);
	motorAdirection : out std_logic;
	motorBdirection : out std_logic;
	new_inst : out std_logic
	);
end instruction_processor;

architecture b of instruction_processor is 
	constant forwardSpeed : std_logic_vector(9 downto 0)  := std_logic_vector(to_unsigned(900, 10));
	constant turnSpeed : std_logic_vector(9 downto 0) := std_logic_vector(to_unsigned(500, 10));
	constant leftShiftDist: integer := 10;
	signal count : unsigned(64 downto 0) := (others => '0');
	signal dist : unsigned(leftShiftDist + 13 downto 0);
	signal angle : unsigned (9 downto 0);
	signal target_heading : unsigned(9 downto 0);
	signal start_heading : unsigned(9 downto 0);
	signal temp_heading : unsigned(9 downto 0);
	
	type state_type is (blocked, forward, prepare_right_turn, start_right_turn, end_right_turn, 
							  prepare_left_turn, start_left_turn, end_left_turn, get_new_inst, get_current_heading, stop);
	signal state : state_type := blocked;

begin
	
	dist((leftShiftDist + 13) downto leftShiftDist) <= unsigned(inst_in(13 downto 0));
	dist((leftShiftDist - 1) downto 0) <= (others => '0');
	angle(8 downto 0) <= unsigned(inst_in(8 downto 0));
	angle(9) <= '0';
	new_inst <= '1' when state = get_new_inst else '0';
	
	
	process (clk, buffer_ready)
	begin
		if rising_edge(clk) then
			if buffer_ready = '0' then
				state <= blocked;
			else
------------ go to forward, turn or stop ---------------------------------------------------------
				if (state = blocked or state = get_new_inst) and count > 20 and (inst_in(15 downto 14) = "10" or inst_in(15 downto 14) = "01") then
					state <= get_current_heading;
					count <= (others => '0');
					temp_heading(9) <= '0'; 
					temp_heading(8 downto 0) <= unsigned(heading_in);
				elsif (state = blocked or state = get_new_inst) and count > 20 and inst_in = "1111111111111111" then
					state <= stop;
				elsif (state = blocked or state = get_new_inst) and count > 20 and inst_in(15 downto 14) = "11" then
					state <= forward;
					count <= (others => '0');
				
----------- get the current heading and go ot left or right turn ----------------------------------
				elsif state = get_current_heading then
					if temp_heading /= start_heading then
						start_heading <= temp_heading;
						temp_heading(9) <= '0'; 
						temp_heading(8 downto 0) <= unsigned(heading_in);
						count <= (others => '0');
					elsif count > 10 and inst_in(15) = '0' then
						state <= prepare_left_turn;
						target_heading <= start_heading + angle;
					elsif count > 10 and inst_in(15) = '1' then
						state <= prepare_right_turn;
						target_heading <= 360 - angle + start_heading;
					end if;

----------- prepare states needed to avoid modulo operations ---------------------------------					
				elsif state = prepare_right_turn and count > 10 then
					if target_heading >= 360 then
						target_heading <= target_heading - 360;
						if target_heading - 360 > start_heading then								
							state <= start_right_turn;
						else
							state <= end_right_turn;
						end if;
					else
						if target_heading > start_heading then
							state <= start_right_turn;
						else
							state <= end_right_turn;
						end if;
					end if;

				elsif state = prepare_left_turn and count > 4 then
					if target_heading >= 360 then
						target_heading <= target_heading - 360;
						if target_heading - 360 < start_heading then								
							state <= start_left_turn;
						else
							state <= end_left_turn;
						end if;
					else
						if target_heading < start_heading then
							state <= start_left_turn;
						else
							state <= end_left_turn;
						end if;
					end if;
				
----------- start_turn states again to avoid modulo -----------------------------------------------
				elsif state = start_right_turn and target_heading < unsigned(heading_in) then
					state <= end_right_turn;
				elsif state = start_left_turn and target_heading > unsigned(heading_in) then
					state <= end_left_turn;
					
----------- end turns -----------------------------------------------------------------------------
				elsif state = end_right_turn and target_heading >= unsigned(heading_in) then
					state <= get_new_inst;
					count <= (others => '0');
				elsif state = end_right_turn and target_heading <= unsigned(heading_in) then
					state <= get_new_inst;
					count <= (others => '0'); 
				
----------- forward state ------------------------------------------------------------------------				
				elsif state = forward and count >= dist then
					state <= get_new_inst;
					count <= (others => '0');
					
				else
					count <= count + 1;
				end if;
			end if;
		end if;
	end process;
	
	
	motorAdirection <= inst_in(15);
	motorBdirection <= inst_in(14);
	
	motorAspeed <= forwardSpeed when state = forward else
						turnSpeed when (state = start_right_turn or state = end_right_turn or
											 state = start_left_turn or state = end_left_turn) else
						"0000000000";
	motorBspeed <= forwardSpeed when state = forward else
						turnSpeed when (state = start_right_turn or state = end_right_turn or
											 state = start_left_turn or state = end_left_turn) else
						"0000000000";
end b;