
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY BCDtoSevenSEGdecoderTest IS
END BCDtoSevenSEGdecoderTest;
 
ARCHITECTURE behavior OF BCDtoSevenSEGdecoderTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BCDtoSevenSEGdecoder
    PORT(
         BCD_INPUT : IN  std_logic_vector(3 downto 0);
         SevenSEG_OUTPUT : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal BCD_INPUT : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal SevenSEG_OUTPUT : std_logic_vector(6 downto 0);  
 
   constant clock_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BCDtoSevenSEGdecoder PORT MAP (
          BCD_INPUT => BCD_INPUT,
          SevenSEG_OUTPUT => SevenSEG_OUTPUT
        );
 

   -- Stimulus process
   stim_proc: process
   begin
		-- Experiment 0
		wait for clock_period*2;
		
		-- Experiment 1
		BCD_INPUT <= "0101"; --5
		wait for clock_period*2;
		
		-- Experiment 2
		BCD_INPUT <= "0011"; --3
		wait for clock_period*2;
		
		-- Experiment 3
		BCD_INPUT <= "1000"; --8
		wait for clock_period*2;
		
		-- Experiment 4
		BCD_INPUT <= "0001"; --1
		wait for clock_period*2;
		
		-- Experiment 5
		BCD_INPUT <= "0010"; --2
		wait for clock_period*2;
		
      wait;
   end process;

END;

