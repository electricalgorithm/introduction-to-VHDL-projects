library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BCDtoSevenSEGdecoder is
    Port ( BCD_INPUT : in  STD_LOGIC_VECTOR (3 downto 0);
           SevenSEG_OUTPUT : out  STD_LOGIC_VECTOR (6 downto 0));
end BCDtoSevenSEGdecoder;

architecture Behavioral of BCDtoSevenSEGdecoder is
	begin
		SevenSEG_OUTPUT <= "1111110" when (BCD_INPUT = "0000") else -- 0
								 "0110000" when (BCD_INPUT = "0001") else -- 1
								 "1101101" when (BCD_INPUT = "0010") else -- 2
								 "1111001" when (BCD_INPUT = "0011") else -- 3
								 "0110011" when (BCD_INPUT = "0100") else -- 4
								 "1011011" when (BCD_INPUT = "0101") else -- 5
								 "1011111" when (BCD_INPUT = "0110") else -- 6
								 "1110000" when (BCD_INPUT = "0111") else -- 7
								 "1111111" when (BCD_INPUT = "1000") else -- 8
								 "1111011" when (BCD_INPUT = "1001"); 		-- 9
	end Behavioral;
