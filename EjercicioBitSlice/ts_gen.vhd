
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ts_gen IS
END ts_gen;
 
ARCHITECTURE behavior OF ts_gen IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT gen_ciclos_clk
    PORT(
         clk : IN  std_logic;
         a : OUT  std_logic;
         b : OUT  std_logic;
         c : OUT  std_logic;
         d : OUT  std_logic;
         e : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';

 	--Outputs
   signal a : std_logic;
   signal b : std_logic;
   signal c : std_logic;
   signal d : std_logic;
   signal e : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN	
	
	-- Instantiate the Unit Under Test (UUT)
   uut: gen_ciclos_clk PORT MAP (
          clk => clk,
          a => a,
          b => b,
          c => c,
          d => d,
          e => e
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
