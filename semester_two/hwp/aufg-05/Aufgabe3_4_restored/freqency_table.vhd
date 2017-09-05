library ieee;
use ieee.std_logic_1164.all;
-- use numeric_std, because conversion between different types and vectors
-- and operations on them seem more consistent
use ieee.numeric_std.all;


entity frequency_table is port(
   clk_50   : in std_logic;
	buttonIn : in std_logic_vector(4 downto 0);
	freqOut	: out unsigned(15 downto 0)
	);
end frequency_table;

-- finite state machine, similiar to vhdl best practice document
architecture behaviour of frequency_table is

  type state_type is (init, f0, f1, f2, f3, f4);

  signal state : state_type := init;

begin
	-- process to manage state transitions
  process (clk_50, buttonIn)
  begin
  
    if rising_edge(clk_50) then

      if buttonIn(0) = '1' then
        state <= f0;
      elsif buttonIn(1) = '1' then
        state <= f1;
      elsif buttonIn(2) = '1' then
        state <= f2;
      elsif buttonIn(3) = '1' then
        state <= f3;
      elsif buttonIn(4) = '1' then
        state <= f4;
      end if;
		
    end if;
	 
  end process;

  -- process for output of frequency values
  process (state)
  begin
    if state = init then
      freqOut <= to_unsigned(100, 16); -- ultrasound, if no button was pressed yet
		-- this is apparently way too high, so a lower-frequency one is seemingly played

    elsif state = f0 then
      freqOut <= to_unsigned(62500, 16); -- 400 Hz

    elsif state = f1 then
      freqOut <= to_unsigned(55556, 16);

    elsif state = f2 then
      freqOut <= to_unsigned(50000, 16);

    elsif state = f3 then
      freqOut <= to_unsigned(46875, 16);
			
	 -- state has to be f4
    else
      freqOut <= to_unsigned(65535, 16); -- minimum frequency, around 381 Hz
    end if;
  end process;

end behaviour;