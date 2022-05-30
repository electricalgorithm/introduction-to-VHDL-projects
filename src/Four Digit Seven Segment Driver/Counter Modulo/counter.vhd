
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity counter is
    Port (
		RST 	: in 	STD_LOGIC;
		CLK 	: in  STD_LOGIC;
      C_OUT : out STD_LOGIC_VECTOR (1 downto 0)
	);
end counter;

architecture Behavioral of counter is
	-- This signal will hold the current counter data.
	signal c_val: STD_LOGIC_VECTOR (1 downto 0);
	
begin
	
	process(CLK, RST)
	begin
	
	-- If reset occur, set counter to zero.
		if (RST = '1') then
			c_val <= (others => '0');
	-- If clock signal arrived, set counter to one upper value.
		elsif (CLK'event and CLK='1') then
			c_val <= STD_LOGIC_VECTOR(unsigned(c_val) + 1);
		end if;
		
	end process;
	
-- Export the data from c_val to c_out.
	C_OUT <= c_val;
	
end Behavioral;


