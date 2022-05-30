----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:07:25 05/27/2022 
-- Design Name: 
-- Module Name:    RingCounter - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RingCounter is
    Port ( CLK : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (7 downto 0));
end RingCounter;

architecture Behavioral of RingCounter is
	
	-- For Clock Divinding
	signal count_clock : integer := 0;
	signal CLK_2Hz : STD_LOGIC;
	
	-- For Ring
	signal reg_count : STD_LOGIC_VECTOR (6 downto 0);
	signal feedback_loop : STD_LOGIC;

begin
	
	-- Clock Divider
	clock_divider : process(CLK) 
		begin
			if rising_edge(CLK) then
				count_clock <= count_clock + 1;
				if count_clock = 2500000 then
					CLK_2Hz <= not CLK_2Hz;
					count_clock <= 0;
				end if;
			end if;
	end process clock_divider;
	
	feedback_loop <= not (reg_count(0) OR reg_count(1) OR reg_count(2) OR reg_count(3) OR reg_count(4) OR reg_count(5) OR reg_count(6));
	
	-- Ring Process
	ring : process(CLK_2Hz) 
		begin
			if rising_edge(CLK_2Hz) then
				reg_count <= reg_count(5 downto 0) & feedback_loop;
			end if;
		end process ring;
	
	Y <= reg_count & feedback_loop;
	
end Behavioral;

