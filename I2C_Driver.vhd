----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:59:31 04/15/2020 
-- Design Name: 
-- Module Name:    I2C_Driver - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity I2C_Driver is
    Port ( Busy : in  STD_LOGIC;
           FIFO_DO : in  STD_LOGIC_VECTOR (7 downto 0);
           Clk : in  STD_LOGIC;
           FIFO_DI : out  STD_LOGIC_VECTOR (7 downto 0);
           FIFO_PUSH : out  STD_LOGIC;
           FIFO_POP : out  STD_LOGIC;
           ReadCnt : out  STD_LOGIC_VECTOR (3 downto 0);
           Address : out  STD_LOGIC_VECTOR (7 downto 0);
			  DATA_OUT : out STD_LOGIC_VECTOR (7 downto 0);
           Go : out  STD_LOGIC);
end I2C_Driver;

architecture Behavioral of I2C_Driver is
type state_type is (start_state, start_data_register_state, push_data_register_to_fifo, start_writing_data_register, writing_data_register_pending, data_reading,
end_data_register_writing, pop_data_byte, end_state, push_bw_rate_to_fifo, push_bw_data_to_fifo, start_writing_bw_data, writing_bw_data_pending, end_bw_data_writing);
signal state, next_state: state_type;
signal fifo_counter: std_logic_vector (3 downto 0) := x"0";

begin
-- Rejestrować na DATAX, DATAY, DATAZ, dodać DATA_READY która ma być impulsem i ma przyjmować '1' po zaktualizowaniu rejestrów
-- Zliczanie cyknięć zegaru 50Mhz w procesie 'waiting_state' a nie po prostu inkrementowanie w for loop - done?
-- Sprawdzenie w docsach ADXL czy trzeba cokolwiek konfigurować oprócz tego jednego rejestru
-- Odczytywanie kolejnych 6 bajtów po odczytaniu pierwszym
-- Nie ma z jakiegoś powodu STOP Condition po odczytaniu 6  bajtów, a musi być
clock_process: process(Clk)
variable odr_counter: integer := 0;
begin
	if rising_edge(Clk) then
--		if state = data_reading or state = writing_data_register_pending or state = writing_bw_data_pending then
--			if odr_counter < 1000000 then
--				odr_counter := odr_counter + 1;
--				state <= state;
--			else
--				odr_counter := 0;
--				state <= next_state;
--			end if;
--		else
			state <= next_state;
--		end if;
	end if;
end process clock_process;


fifo_counter_process: process(Clk, state, fifo_counter)
begin
	if rising_edge(Clk) and state = pop_data_byte and fifo_counter < x"6" then
		fifo_counter <= std_logic_vector( unsigned(fifo_counter) + 1 );
--	elsif fifo_counter = x"6" then
--		fifo_counter <= x"0";
	end if;
end process fifo_counter_process;

state_process: process(state, Busy, fifo_counter )
begin
	case state is
		when start_state =>
			next_state <= push_bw_rate_to_fifo;
			
		when push_bw_rate_to_fifo =>
			next_state <= push_bw_data_to_fifo;
		
		when push_bw_data_to_fifo =>
			next_state <= start_writing_bw_data;
		
		when start_writing_bw_data =>
			if Busy = '0' then
				next_state <= writing_bw_data_pending;
			else
				next_state <= start_writing_bw_data;
			end if;
		
		when writing_bw_data_pending =>
			if Busy = '0' then
				next_state <= end_bw_data_writing;
			else
				next_state <= writing_bw_data_pending;
			end if;
		
		when end_bw_data_writing =>
			next_state <= start_data_register_state;
			
		when start_data_register_state =>
			-- 0x3A - write, 0x3b Read
			next_state <= push_data_register_to_fifo;
	
		when push_data_register_to_fifo =>
			next_state <= start_writing_data_register;
			
		when start_writing_data_register =>
			if Busy = '0' then
				next_state <= writing_data_register_pending;
			else
				next_state <= start_writing_data_register;
			end if;
			
		when writing_data_register_pending =>
			if Busy = '0' then
				next_state <= end_data_register_writing;
			else
				next_state <= writing_data_register_pending;
			end if;
			
		when end_data_register_writing =>
			next_state <= data_reading;
			
		when data_reading =>
			if Busy = '0' then
				next_state <= pop_data_byte;
			else
				next_state <= data_reading;
			end if;
						
		when pop_data_byte =>
			if fifo_counter < x"6" then
				next_state <= pop_data_byte;
			else
				next_state <= end_state;
			end if;
		
		when end_state =>
			next_state <= end_state;
			
	end case;
end process state_process;

Address <= x"3A" 
				when state = start_data_register_state 
				or state = push_data_register_to_fifo 
				or state = start_writing_data_register
				or state = writing_data_register_pending
				or state = start_state
				or state = push_bw_rate_to_fifo
				or state = push_bw_data_to_fifo
				or state = start_writing_bw_data
				or state = writing_bw_data_pending
				or state = end_bw_data_writing
				else x"3B" 
				when state = end_data_register_writing
				or state = data_reading
				or state = pop_data_byte else x"00";
				
FIFO_PUSH <= '1' when state = push_data_register_to_fifo or state = push_bw_rate_to_fifo or state = push_bw_data_to_fifo else '0';

FIFO_DI <= x"2C" when state = start_state 
						or state = push_bw_rate_to_fifo 
						else x"14"
						when state = push_bw_data_to_fifo
						else x"27";
						
ReadCnt <= "0110" when state = end_data_register_writing else "0000";

Go <= '1' when state = start_writing_data_register 
				or state = end_data_register_writing  
				or state = start_writing_bw_data
				else '0';
				
FIFO_POP <= '1' when state = pop_data_byte else '0';

DATA_OUT <= FIFO_DO when rising_edge(Clk) and state = pop_data_byte;

end Behavioral;

