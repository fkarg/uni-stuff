library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity instruction_buffer is port(
	clk      : in std_logic;
	data_in  : in std_logic_vector(31 downto 0);
	keyOK    : in std_logic;
	put_inst : in std_logic;
	
	ready    : out std_logic;
	inst_out : out std_logic_vector(15 downto 0);
	get_Data : out std_logic
	);
end instruction_buffer;


architecture n of instruction_buffer is
	type buff is array(0 to 3) of std_logic_vector(15 downto 0);
	signal buf  : buff;
	type arr2 is array(0 to 1) of std_logic_vector(15 downto 0);
	signal data : arr2;
	
	signal buf_index : unsigned(1 downto 0) := "00";
	signal data_index : unsigned(1 downto 0) := "00";
	
	signal count : unsigned(23 downto 0);
	
	type state_type is (blocked, init_buf0, wait0, init_buf1, wait1, wait2, update_buf, get_new_data, waiting, new_inst);
	signal state : state_type := blocked;
	
	signal init : std_logic := '1';
	
begin
	data(0) <= data_in(31 downto 16);
	data(1) <= data_in(15 downto 0);
	
	inst_out <= buf(to_integer(buf_index));
	ready <= '1' when init = '0' else '0';

-- state transitions
	process (clk, keyOK)
	begin
		if rising_edge(clk) then
		-- still entering the key, do nothing.
			if keyOK = '0' then
				state <= blocked;
			else
				if state = blocked then
					state <= wait2;
					count <= (others => '0');
					init <= '1';
			-- wait until first instrutions are decrypted
				elsif state = wait2 and count > 100 and init = '1' then
					state <= init_buf0;
					count <= (others => '0');

	-------- next four are for initially filling the buffer
				elsif state = init_buf0 and count > 10 and init = '1' then
					buf(0) <= data(0);
					buf(1) <= data(1);
					state <= wait0;
					count <= (others => '0');
				elsif state = wait0 and count > 100 and init = '1' then
					state <= init_buf1;
					count <= (others => '0');
				elsif state = init_buf1 and count > 10 and init = '1' then
					buf(2) <= data(0);
					buf(3) <= data(1);
					state <= wait1;
					count <= (others => '0');
				elsif state = wait1 and count > 20 and init = '1' then
					state <= waiting;
					count <= (others => '0');
					init <= '0';
					
	-------- instruction_processor needs new instruction, update buffer index
				elsif state = new_inst and count > 4 and init = '0' then
					state <= update_buf;
					count <= (others => '0');
					buf_index <= buf_index + 1;
			-- update buffer, then get new data
				elsif state = update_buf and count > 10 and data_index = 1 and init = '0' then
					state <= get_new_data;
					count <= (others => '0');
					data_index <= data_index + 1;
					buf(to_integer(buf_index - 1)) <= data(to_integer(data_index));
			-- update buffer, no new data needed
				elsif state = update_buf and count > 10 and data_index = 0 and init = '0' then
					state <= waiting;
					count <= (others => '0');
					data_index <= data_index + 1;
					buf(to_integer(buf_index - 1)) <= data(to_integer(data_index));
			-- get new data.
				elsif state <= get_new_data and count > 60 and init = '0' then
					data_index <= "00";
					state <= waiting;
					count <= (others => '0');
			-- wait for next fetch signal of instruction_buffer
				elsif state = waiting and put_inst = '1' and init = '0' then
					state <= new_inst;
					count <= (others => '0');
				else
					count <= count + 1;
				end if;
			end if;
		end if;
	end process;
	
-- generate the get_data signal
	get_Data <= '1' when state = wait0 else
					'1' when state = wait1 else
					'1' when state = wait2 else
					'1' when state = get_new_data and data_in /= "11111111111111110000000000000000"
			 else '0';
end n;