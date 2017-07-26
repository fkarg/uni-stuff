library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity heading_buffer is port(
	data_in     :  in  std_logic_vector(7 downto 0);
	data_ready  :  in  std_logic;
	data_out    :  out std_logic_vector(8 downto 0));
end heading_buffer;


architecture behaviour of heading_buffer is

begin
	process (data_ready)
	begin
		if rising_edge(data_ready) then
			data_out(8 downto 1) <= data_in;
		end if;
	end process;
	data_out(0) <= '0';
end behaviour;	