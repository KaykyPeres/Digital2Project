LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY testepj IS
END testepj;

ARCHITECTURE behavior OF testepj IS 

    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT modulopj
    PORT(
         clock : IN  std_logic;
         reset : IN  std_logic;
         output : BUFFER integer range 0 to 7
        );
    END COMPONENT;
    
   --Inputs
   signal clock : std_logic := '0';
   signal reset : std_logic := '0';

   --Outputs
   signal output_internal: integer range 0 to 7;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: modulopj PORT MAP (
          clock => clock,
          reset => reset,
          output => output_internal
        );

    -- Stimulus process
    stim_proc: process
    begin		
        -- Apply reset
    reset <= '1';
    wait for 100 ns;
    reset <= '0';
    wait for 100 ns;
		  
	 clock <= '0';
	 wait for 100 ns;
	 clock <= '1';
	 wait for 100 ns;
	 clock <= '0';
	 wait for 100 ns;
		  
	 clock <= '0';
    wait for 100 ns;
    clock <= '1';
    wait for 100 ns;
    clock <= '0';
    wait for 100 ns;
	 
     clock <= '0';
    wait for 100 ns;
    clock <= '1';
    wait for 100 ns;
    clock <= '0';
    wait for 100 ns;
	 
     clock <= '0';
    wait for 100 ns;
    clock <= '1';
    wait for 100 ns;
    clock <= '0';
    wait for 100 ns;
	 
	  clock <= '0';
    wait for 100 ns;
    clock <= '1';
    wait for 100 ns;
    clock <= '0';
    wait for 100 ns;
	 
	  clock <= '0';
    wait for 100 ns;
    clock <= '1';
    wait for 100 ns;
    clock <= '0';
    wait for 100 ns;
	 
	 clock <= '0';
    wait for 100 ns;
    clock <= '1';
    wait for 100 ns;
    clock <= '0';
    wait for 100 ns;
	 
	 
	 
        wait;
    end process;

END;
