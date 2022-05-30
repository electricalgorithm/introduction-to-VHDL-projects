
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY mux4x1Test IS
END mux4x1Test;
 
ARCHITECTURE behavior OF mux4x1Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux4x1
    PORT(
         INPUT_0 : IN  std_logic_vector(3 downto 0);
         INPUT_1 : IN  std_logic_vector(3 downto 0);
         INPUT_2 : IN  std_logic_vector(3 downto 0);
         INPUT_3 : IN  std_logic_vector(3 downto 0);
         M_SEL : IN  std_logic_vector(1 downto 0);
         M_OUT : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal INPUT_0 : std_logic_vector(3 downto 0) := "1001";
   signal INPUT_1 : std_logic_vector(3 downto 0) := "0001";
   signal INPUT_2 : std_logic_vector(3 downto 0) := "1100";
   signal INPUT_3 : std_logic_vector(3 downto 0) := "0011";
   signal M_SEL 	: std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal M_OUT : std_logic_vector(3 downto 0);
 
   constant clock_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux4x1 PORT MAP (
          INPUT_0 => INPUT_0,
          INPUT_1 => INPUT_1,
          INPUT_2 => INPUT_2,
          INPUT_3 => INPUT_3,
          M_SEL => M_SEL,
          M_OUT => M_OUT
        );
 

   -- Stimulus process
   stim_proc: process
   begin
      -- Experiment 0
		M_SEL <= "00";
		wait for clock_period*2;
		
		-- Experiment 1
		M_SEL <= "01";
		wait for clock_period*2;
		
		-- Experiment 2
		M_SEL <= "10";
		wait for clock_period*2;
		
		-- Experiment 3
		M_SEL <= "11";
		wait for clock_period*2;
		
		-- Wait until end
      wait;
   
	end process;

END;

