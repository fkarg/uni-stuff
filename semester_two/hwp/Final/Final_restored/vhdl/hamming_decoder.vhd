library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity hamming_decoder is port(
	data_in   :  in  std_logic_vector(37 downto 0);
	data_out  :  out std_logic_vector(31 downto 0)
	);
end hamming_decoder;


architecture b of hamming_decoder is
	signal data             :  std_logic_vector(31 downto 0);
	signal parity_in        :  std_logic_vector(5 downto 0);
	signal parity           :  std_logic_vector(5 downto 0);
	signal correct_index    :  unsigned(5 downto 0);

begin
	data(0)            <= data_in(2);
	data(3 downto 1)   <= data_in(6 downto 4);
	data(10 downto 4)  <= data_in(14 downto 8);
	data(25 downto 11) <= data_in(30 downto 16);
	data(31 downto 26) <= data_in(37 downto 32);
	
	parity_in <= (0 => data_in(0), 1 => data_in(1), 2 => data_in(3),
					  3 => data_in(7), 4 => data_in(15), 5 => data_in(31));
	
	parity(0) <= data(0)  xor data(1)  xor data(3)  xor data(4)  xor
					 data(6)  xor data(8)  xor data(10) xor data(11) xor
					 data(13) xor data(15) xor data(17) xor data(19) xor
					 data(21) xor data(23) xor data(25) xor data(26) xor
					 data(28) xor data(30);
					 
	parity(1) <= data(0)  xor data(2)  xor data(3)  xor data(5)  xor
					 data(6)  xor data(9)  xor data(10) xor data(12) xor
					 data(13) xor data(16) xor data(17) xor data(20) xor
					 data(21) xor data(24) xor data(25) xor data(27) xor
					 data(28) xor data(31);
					 
	parity(2) <= data(1)  xor data(2)  xor data(3)  xor 
					 data(7)  xor data(8)  xor data(9)  xor data(10) xor
					 data(14) xor data(15) xor data(16) xor data(17) xor
					 data(22) xor data(23) xor data(24) xor data(25) xor
					 data(29) xor data(30) xor data(31);
					 
	parity(3) <= data(4)  xor data(5)  xor data(6)  xor data(7)  xor
					 data(8)  xor data(9)  xor data(10) xor data(18) xor
					 data(19) xor data(20) xor data(21) xor data(22) xor
					 data(23) xor data(24) xor data(25);
					 
	parity(4) <= data(11) xor data(12) xor data(13) xor data(14) xor
					 data(15) xor data(16) xor data(17) xor data(18) xor
					 data(19) xor data(20) xor data(21) xor data(22) xor
					 data(23) xor data(24) xor data(25);
					 
	parity(5) <= data(26) xor data(27) xor data(28) xor data(29) xor
					 data(30) xor data(31);
					 
	correct_index <= unsigned(parity_in xor parity);
	
	data_out(0)  <= data(0)  when correct_index /= 3  else not data(0);
	data_out(1)  <= data(1)  when correct_index /= 5  else not data(1);
	data_out(2)  <= data(2)  when correct_index /= 6  else not data(2);
	data_out(3)  <= data(3)  when correct_index /= 7  else not data(3);
	data_out(4)  <= data(4)  when correct_index /= 9  else not data(4);
	data_out(5)  <= data(5)  when correct_index /= 10 else not data(5);
	data_out(6)  <= data(6)  when correct_index /= 11 else not data(6);
	data_out(7)  <= data(7)  when correct_index /= 12 else not data(7);
	
	data_out(8)  <= data(8)  when correct_index /= 13 else not data(8);
	data_out(9)  <= data(9)  when correct_index /= 14 else not data(9);
	data_out(10) <= data(10) when correct_index /= 15 else not data(10);
	data_out(11) <= data(11) when correct_index /= 17 else not data(11);
	data_out(12) <= data(12) when correct_index /= 18 else not data(12);
	data_out(13) <= data(13) when correct_index /= 19 else not data(13);
	data_out(14) <= data(14) when correct_index /= 20 else not data(14);
	data_out(15) <= data(15) when correct_index /= 21 else not data(15);
	
	data_out(16) <= data(16) when correct_index /= 22 else not data(16);
	data_out(17) <= data(17) when correct_index /= 23 else not data(17);
	data_out(18) <= data(18) when correct_index /= 24 else not data(18);
	data_out(19) <= data(19) when correct_index /= 25 else not data(19);
	data_out(20) <= data(20) when correct_index /= 26 else not data(20);
	data_out(21) <= data(21) when correct_index /= 27 else not data(21);
	data_out(22) <= data(22) when correct_index /= 28 else not data(22);
	data_out(23) <= data(23) when correct_index /= 29 else not data(23);
	
	data_out(24) <= data(24) when correct_index /= 30 else not data(24);
	data_out(25) <= data(25) when correct_index /= 31 else not data(25);
	data_out(26) <= data(26) when correct_index /= 33 else not data(26);
	data_out(27) <= data(27) when correct_index /= 34 else not data(27);
	data_out(28) <= data(28) when correct_index /= 35 else not data(28);
	data_out(29) <= data(29) when correct_index /= 36 else not data(29);
	data_out(30) <= data(30) when correct_index /= 37 else not data(30);
	
	data_out(31) <= data(31) when correct_index /= 38 else not data(31);	
end b;