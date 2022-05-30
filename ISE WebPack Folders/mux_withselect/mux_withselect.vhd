----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:20:52 05/27/2022 
-- Design Name: 
-- Module Name:    mux_withselect - Behavioral 
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

entity mux_withselect is
    Port ( x0 : in  STD_LOGIC;
           x1 : in  STD_LOGIC;
           sel : in  STD_LOGIC;
           y : out  STD_LOGIC);
end mux_withselect;

architecture Behavioral of mux_withselect is

signal x : STD_LOGIC_VECTOR (2 downto 0);

begin
	x <= (sel, x0, x1);
	with x select y <= '0' when "000" | "010" | "100" | "101",
							 '1' when others;

end Behavioral;

