LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY testepj IS
END testepj;

ARCHITECTURE behavior OF testepj IS 

    COMPONENT modulopj
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         output : BUFFER integer range 0 to 7
        );
    END COMPONENT;
    
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

   signal output_internal: integer range 0 to 7;

BEGIN

    uut: modulopj PORT MAP (
          clk => clk,
          rst => rst,
          output => output_internal
        );

    stim_proc: process
    begin		
        
    rst <= '1';
    wait for 100 ns;
    rts <= '0';
    wait for 100 ns;
		  
    clk <= '0';
    wait for 100 ns;
    clk <= '1';
    wait for 100 ns;
    clk <= '0';
    wait for 100 ns;
		  
    clk <= '0';
    wait for 100 ns;
    clk <= '1';
    wait for 100 ns;
    clk <= '0';
    wait for 100 ns;
	 
    clk <= '0';
    wait for 100 ns;
    clk <= '1';
    wait for 100 ns;
    clk <= '0';
    wait for 100 ns;
	 
    clk <= '0';
    wait for 100 ns;
    clk <= '1';
    wait for 100 ns;
    clk <= '0';
    wait for 100 ns;
	 
    clk <= '0';
    wait for 100 ns;
    clk <= '1';
    wait for 100 ns;
    clk <= '0';
    wait for 100 ns;
	 
    clk <= '0';
    wait for 100 ns;
    clk <= '1';
    wait for 100 ns;
    clk <= '0';
    wait for 100 ns;
	 
    clk <= '0';
    wait for 100 ns;
    clk <= '1';
    wait for 100 ns;
    clk <= '0';
    wait for 100 ns;
	 
        wait;
    end process;

END;
