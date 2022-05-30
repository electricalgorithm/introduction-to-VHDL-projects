library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NBC_OneOfFour is
    Port ( P_INPUT : in  STD_LOGIC_VECTOR (1 downto 0);
           P_OUTPUT : out  STD_LOGIC_VECTOR (3 downto 0));
end NBC_OneOfFour;

architecture Behavioral of NBC_OneOfFour is
	begin
		P_OUTPUT <= "1000" when (P_INPUT = "00") else
						"0100" when (P_INPUT = "01") else
						"0010" when (P_INPUT = "10") else
						"0001" when (P_INPUT = "11");

	end Behavioral;
