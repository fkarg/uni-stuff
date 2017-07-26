library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;


entity uart_receiver is port(
	serial_in   :  in  std_logic;
	data_out    :  out std_logic_vector(7 downto 0);
	data_ready  :  out std_logic;
	clk_50      :  in  std_logic);
end uart_receiver;


architecture b of uart_receiver is
	type state_type is (idle, start, bit0, bit1, bit2, bit3, bit4, bit5, bit6, bit7, stop, success);
	signal state              :  state_type := idle;
	signal count              :  unsigned(10 downto 0) := (others => '0');
	signal new_data           :  std_logic_vector(7 downto 0) := (others => '0');
begin
	-- main state machine
	process (clk_50)
	begin
		if rising_edge(clk_50) then
			if state = idle then
				if serial_in = '0' then
					state <= start;
					count <= (others => '0');
				end if;
			elsif state = start and count >= 1950 then
				state <= bit0;
				count <= (others => '0');
				new_data(0) <= serial_in;
			elsif state = bit0 and count >= 1300 then
				state <= bit1;
				count <= (others => '0');
				new_data(1) <= serial_in;
			elsif state = bit1 and count >= 1300 then
				state <= bit2;
				count <= (others => '0');
				new_data(2) <= serial_in;
			elsif state = bit2 and count >= 1300 then
				state <= bit3;
				count <= (others => '0');
				new_data(3) <= serial_in;
			elsif state = bit3 and count >= 1300 then
				state <= bit4;
				count <= (others => '0');
				new_data(4) <= serial_in;
			elsif state = bit4 and count >= 1300 then
				state <= bit5;
				count <= (others => '0');
				new_data(5) <= serial_in;
			elsif state = bit5 and count >= 1300 then
				state <= bit6;
				count <= (others => '0');
				new_data(6) <= serial_in;
			elsif state = bit6 and count >= 1300 then
				state <= bit7;
				count <= (others => '0');
				new_data(7) <= serial_in;
			elsif state = bit7 and count >= 1300 and serial_in = '1' then
				state <= success;
				count <= (others => '0');
				data_out <= new_data;
			elsif state = bit7 and count >= 1300 and serial_in = '0' then
				state <= stop;
				count <= (others => '0');
			elsif (state = stop or state = success) and count >= 700 then
				state <= idle;
				count <= (others => '0');
			else
				count <= count + 1;
			end if;
		end if;
	 end process;

	 data_ready <= '1' when state = success else '0';
end b;
