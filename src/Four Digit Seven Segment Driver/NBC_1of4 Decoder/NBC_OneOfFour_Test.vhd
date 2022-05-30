LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY NBC_OneOfFour_Test IS
END NBC_OneOfFour_Test;
 
ARCHITECTURE behavior OF NBC_OneOfFour_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT NBC_OneOfFour
    PORT(
         P_INPUT : IN  std_logic_vector(1 downto 0);
         P_OUTPUT : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal P_INPUT : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal P_OUTPUT : std_logic_vector(3 downto 0);
 
   constant clock_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: NBC_OneOfFour PORT MAP (
          P_INPUT => P_INPUT,
          P_OUTPUT => P_OUTPUT
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- Experiment 0
		wait for clock_period*2;
		
		-- Experiment 1
		P_INPUT <= "01";
		wait for clock_period*2;
      
		-- Experiment 2
		P_INPUT <= "10";
		wait for clock_period*2;
		
		-- Experiment 3
		P_INPUT <= "11";
		
		-- Wait until the end.
		wait;
   end process;

END;

