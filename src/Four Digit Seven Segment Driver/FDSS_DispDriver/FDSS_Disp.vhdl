
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FDSS_Disp is
   Port ( 
	IN_CLK 		: in  STD_LOGIC;
	DIGIT_0		: in  STD_LOGIC_VECTOR (3 downto 0);
	DIGIT_1		: in  STD_LOGIC_VECTOR (3 downto 0);
	DIGIT_2		: in  STD_LOGIC_VECTOR (3 downto 0);
	DIGIT_3		: in  STD_LOGIC_VECTOR (3 downto 0);
   	OUT_CATHODS 	: out  STD_LOGIC_VECTOR (6 downto 0);
 	OUT_ANODS 	: out  STD_LOGIC_VECTOR (3 downto 0)
	);
end FDSS_Disp;

architecture Behavioral of FDSS_Disp is
	-- Import Counter Component
	component counter is
		Port (
			RST	: in STD_LOGIC;
			CLK	: in STD_LOGIC;
			C_OUT	: out STD_LOGIC_VECTOR (1 downto 0)
		);
	end component;
	
	-- Import Mux4x1 Component
	component mux4x1 is
		Port ( 
			INPUT_0	: in  STD_LOGIC_VECTOR (3 downto 0);
			INPUT_1	: in  STD_LOGIC_VECTOR (3 downto 0);
			INPUT_2	: in  STD_LOGIC_VECTOR (3 downto 0);
			INPUT_3	: in  STD_LOGIC_VECTOR (3 downto 0);
			M_SEL	: in  STD_LOGIC_VECTOR (1 downto 0);
			M_OUT	: out STD_LOGIC_VECTOR (3 downto 0)
		);
	end component;
	
	-- Import BCDtoSevenSEGdecoder Component
	component BCDtoSevenSEGdecoder is
		Port ( 
			BCD_INPUT 	: in  STD_LOGIC_VECTOR (3 downto 0);
			SevenSEG_OUTPUT : out  STD_LOGIC_VECTOR (6 downto 0)
		);
	end component;
	
	-- Import NBC_OneOfFour Component
	component NBC_OneOfFour is
		Port (
			P_INPUT	: in  STD_LOGIC_VECTOR (1 downto 0);
			P_OUTPUT : out  STD_LOGIC_VECTOR (3 downto 0)
		);
	end component;

	-- Signals to act as wires between components.
	signal counter_out_wire : STD_LOGIC_VECTOR (1 downto 0);
	signal mux_out_wire 	: STD_LOGIC_VECTOR (3 downto 0);

	begin
	
		Gate1_Counter	: counter port map (RST => '0', CLK => IN_CLK, C_OUT => counter_out_wire);
		Gate2_Mux	: mux4x1 port map (INPUT_0 => DIGIT_0, 
						INPUT_1  => DIGIT_1,
						INPUT_2  => DIGIT_2,
						INPUT_3  => DIGIT_3,
						M_SEL 	 => counter_out_wire,
						M_OUT	 => mux_out_wire);
		Gate3_BCDtoSEG  : BCDtoSevenSEGdecoder port map (BCD_INPUT => mux_out_wire, SevenSEG_OUTPUT => OUT_CATHODS);
		Gate4_NBC	: NBC_OneOfFour port map (P_INPUT => counter_out_wire, P_OUTPUT => OUT_ANODS);
		
	end Behavioral;
