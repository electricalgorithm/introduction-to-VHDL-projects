----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:58:30 05/20/2022 
-- Design Name: 
-- Module Name:    three_state_line_buffer - Behavioral 
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

entity three_state_line_buffer is
    Port ( X : in  STD_LOGIC;
           S : in  STD_LOGIC;
           Y : out  STD_LOGIC;
			  Y1: out STD_LOGIC );
end three_state_line_buffer;

architecture Behavioral of three_state_line_buffer is

	begin
		Y <= 'Z' when S = '0' else
		      X when S = '1';
		
		Y1 <= 'Z' when S = '0' else
		      not X when S = '1';

end Behavioral;

