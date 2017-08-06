-- ADC reader: reads data from ADXL345

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g_reader is port (
	clk_50: in std_logic;	-- 50 MHz clock

	reset_n : in std_logic; -- reset signal (active low)

	-- SPI interface
	CS_N : out std_logic;   -- connected to chip select of g sensor
	SCLK : out std_logic;   -- spi clock
	SDIO : inout std_logic; -- spi data (bidirectional)

	-- data output
	dataX : out std_logic_vector(12 downto 0);
	dataY : out std_logic_vector(12 downto 0);
	dataZ : out std_logic_vector(12 downto 0)
);
end g_reader;


architecture behavior of g_reader is

	-- clock and counter signals
	signal sclk_count          :  unsigned(5 downto 0) := (others => '0');
	signal sclk_intern         :  std_logic;
	signal sclk_out            :  std_logic;
	signal CS_N_intern			:  std_logic;
	signal transmission_count  :  unsigned(4 downto 0);
	signal time_count          :  unsigned(15 downto 0);

	-- states for the main state machine
	type state_type is (init0, init1, init2, init3, init4, readX, readY, readZ, pause);
	signal state      :  state_type := pause;
	signal next_state :  state_type := init0;

	-- vectors holding signals to write to SDIO
	constant init0_vector  :  std_logic_vector(0 to 15)  :=  "0011000101001000";
	constant init1_vector  :  std_logic_vector(0 to 15)  :=  "0010010000000010";
	constant init2_vector  :  std_logic_vector(0 to 15)  :=  "0010110000001001";
	constant init3_vector  :  std_logic_vector(0 to 15)  :=  "0010111000010000";
	constant init4_vector  :  std_logic_vector(0 to 15)  :=  "0010110100001000";
	constant readX_vector  :  std_logic_vector(0 to 7)   :=  "11110010";
	constant readY_vector  :  std_logic_vector(0 to 7)   :=  "11110100";
	constant readZ_vector  :  std_logic_vector(0 to 7)   :=  "11110110";

--      init0 : 00110001 01001000
--          (0x31) Data Format Control;
--              Kein Selbsttest, 3-Wire SPI Mode, Interrupts Active High, With Full Resolution,
--              right-justified mode mit sign extension, Range is +- 2g
--
--      init1 : 00100100 00000010
--          (0x24) Activity-Threshold;
--              Kleiner Threshold of 2 * 62.5 mg/LSB.
--
--      init2 : 00101100 00001001
--          (0x2C) Data Rate and Power Mode Control;
--              Niedrigerer Energieverbrauch ist Deaktiviert,
--              50 Hz Output Data Rate
--
--      init3 : 00101110 00010000
--          (0x2E) Interrupt enable Control;
--              Aktiviert den Aktivity-Interrupt, für die Bereits Konfigurierte
--              Aktivity-Funktion (Threshold für Aktivität wurde gesetzt in 0x24)
--
--      init4 : 00101101 00001000
--          (0x2D) Power-Saving features Control;
--              Clear Link-Bit, Sleep-Bit hat keinen Einfluss, Kein Standby-Mode,
--              Kein Schlafmodus (Wakeup-Frequency irrelevant)




	--internal sdio signal
	signal sdio_intern  :  std_logic;

	-- vector to store sensor data temporarilly
	signal read_temp  :  std_logic_vector(12 downto 0);

begin

	--serial clock generator (1 MHz)
	process (clk_50, CS_N_intern)
	begin
		if CS_N_intern = '1' then
			sclk_count <= (others => '0');
			sclk_intern <= '1';
		elsif rising_edge(clk_50) then
			if sclk_count = 0 then
				sclk_intern <= '1';
				sclk_count <= sclk_count + 1;
			elsif sclk_count = 24 then
				sclk_intern <= '0';
				sclk_count <= sclk_count + 1;
			elsif sclk_count = 49 then
				sclk_count <= (others => '0');
			else
				sclk_count <= sclk_count + 1;
			end if;
		end if;
	end process;

	-- main state machine
	process (clk_50, reset_n)
	begin
		if reset_n = '0' then
			state <= pause;
			next_state <= init0;
			time_count <= (others => '0');
		elsif rising_edge(clk_50) then
			if state = pause and time_count >= 50000 and next_state = readX then
				state <= readX;
			elsif state = pause and time_count >= 500 and next_state /= readX then
				state <= next_state;
			elsif state = init0 and transmission_count = 16 then
				state <= pause;
				next_state <= init1;
				time_count <= (others => '0');
			elsif state = init1 and transmission_count = 16 then
				state <= pause;
				next_state <= init2;
				time_count <= (others => '0');
			elsif state = init2 and transmission_count = 16 then
				state <= pause;
				next_state <= init3;
				time_count <= (others => '0');
			elsif state = init3 and transmission_count = 16 then
				state <= pause;
				next_state <= init4;
				time_count <= (others => '0');
			elsif state = init4 and transmission_count = 16 then
				state <= pause;
				next_state <= readX;
				time_count <= (others => '0');
			elsif state = readX and transmission_count = 25 then
				state <= pause;
				next_state <= readY;
				time_count <= (others => '0');
			elsif state = readY and transmission_count = 25 then
				state <= pause;
				next_state <= readZ;
				time_count <= (others => '0');
			elsif state = readZ and transmission_count = 25 then
				state <= pause;
				next_state <= readX;
				time_count <= (others => '0');
			else
				time_count <= time_count + 1;
			end if;
		end if;
	end process;


	-- set chip select and serial clock output
	CS_N <= CS_N_intern;
	CS_N_intern <= '1' when state = pause else '0';
	sclk_out <= sclk_intern;
	SCLK <= sclk_out;

	-- transmission counter, MAY CONTAIN BUGS
	process (sclk_out, state)
	begin
		if state = pause then
			transmission_count <= (others => '0');
		elsif rising_edge(sclk_out) then
			transmission_count <= transmission_count + 1;
		end if;
	end process;

	-- write data to SDIO
	process (sclk_out)
	begin
		if falling_edge(sclk_out) then
			if state = init0 then
				sdio_intern <= init0_vector(to_integer(transmission_count));
			elsif state = init1 then
				sdio_intern <= init1_vector(to_integer(transmission_count));
			elsif state = init2 then
				sdio_intern <= init2_vector(to_integer(transmission_count));
			elsif state = init3 then
				sdio_intern <= init3_vector(to_integer(transmission_count));
			elsif state = init4 then
				sdio_intern <= init4_vector(to_integer(transmission_count));
			elsif state = readX and transmission_count < 8 then
				sdio_intern <= readX_vector(to_integer(transmission_count));
			elsif state = readY and transmission_count < 8 then
				sdio_intern <= readY_vector(to_integer(transmission_count));
			elsif state = readZ and transmission_count < 8 then
				sdio_intern <= readZ_vector(to_integer(transmission_count));
			else
				sdio_intern <= 'Z';
			end if;
		end if;
	end process;

	SDIO <= sdio_intern when state /= pause or (time_count < 25 and state = pause) else 'Z';

	-- read data from SDIO
	process (sclk_out)
	begin
		if rising_edge(sclk_out) then
			-- We receive the bytes the following way: <bh, bl> (2 Bytes)
			-- The first send byte is bl, followed by 3 zeros and the rest of bh
			if (state = readX or state = readY or state = readZ) and transmission_count > 7 and transmission_count < 16 then
				-- This is for correctly writing the values
				read_temp(15 - to_integer(transmission_count)) <= SDIO;
			elsif (state = readX or state = readY or state = readZ) and transmission_count > 18 and transmission_count < 24 then
				-- This is for correctly writing the values
				read_temp(31 - to_integer(transmission_count)) <= SDIO;
			elsif state = readX and transmission_count = 24 then
				dataX <= read_temp;
			elsif state = readY and transmission_count = 24 then
				dataY <= read_temp;
			elsif state = readZ and transmission_count = 24 then
				dataZ <= read_temp;
			end if;
		end if;
	end process;


end behavior;

