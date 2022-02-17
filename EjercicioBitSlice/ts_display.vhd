--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY ts_display IS
END ts_display;
 
ARCHITECTURE behavior OF ts_display IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT display_decod7s_contador
	 		PORT(
	 				clk : IN  std_logic;
	 				reset : IN  std_logic;
	 				display : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    
   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal display : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
	
	reset <= '1' after 40ns, '0' after 80ns, '1' after 120ns, '0' after 160ns;
	
	-- Instantiate the Unit Under Test (UUT)
   uut: display_decod7s_contador PORT MAP (
          clk => clk,
          reset => reset,
          display => display
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
