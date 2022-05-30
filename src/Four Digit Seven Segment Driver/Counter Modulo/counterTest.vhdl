LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY counterTest IS
END counterTest;
 
ARCHITECTURE behavior OF counterTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT counter
    PORT(
         RST : IN  std_logic;
         CLK : IN  std_logic;
         C_OUT : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal RST : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal C_OUT : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: counter PORT MAP (RST => RST, CLK => CLK, C_OUT => C_OUT);

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      RST <= '1';
		wait for CLK_period;
		RST <= '0';
		wait;
   end process;
END;

