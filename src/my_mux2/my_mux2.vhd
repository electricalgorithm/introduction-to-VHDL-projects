----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:20:06 05/20/2022 
-- Design Name: 
-- Module Name:    my_mux2 - Behavioral 
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

entity my_mux2 is
    Port ( X0 : in  STD_LOGIC;
           X1 : in  STD_LOGIC;
           S : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end my_mux2;

architecture Behavioral of my_mux2 is

begin
	Y <= X0 when S = '0' else
		  X1 when S = '1';

end Behavioral;

