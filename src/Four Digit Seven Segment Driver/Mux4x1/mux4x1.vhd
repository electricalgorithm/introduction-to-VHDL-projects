library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4x1 is
    Port ( INPUT_0	: in  STD_LOGIC_VECTOR (3 downto 0);
           INPUT_1	: in  STD_LOGIC_VECTOR (3 downto 0);
           INPUT_2	: in  STD_LOGIC_VECTOR (3 downto 0);
           INPUT_3	: in  STD_LOGIC_VECTOR (3 downto 0);
           M_SEL		: in  STD_LOGIC_VECTOR (1 downto 0);
			  
           M_OUT		: out STD_LOGIC_VECTOR (3 downto 0));
end mux4x1;

architecture Behavioral of mux4x1 is
	begin
		M_OUT <= INPUT_0 when (M_SEL = "11") else
					INPUT_1 when (M_SEL = "10") else
					INPUT_2 when (M_SEL = "01") else
					INPUT_3 when (M_SEL = "00");
	end Behavioral;


