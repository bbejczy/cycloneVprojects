library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
	use IEEE.STD_LOGIC_ARITH.ALL;
	use IEEE.STD_LOGIC_UNSIGNED.ALL;

	entity TwentyFourBitCounter is
	    Port (
					 clk       : IN  STD_LOGIC;
					 vec_one : OUT STD_LOGIC_VECTOR (0 to 23);
					 leds : out STD_LOGIC_VECTOR (0 to 7));
	end TwentyFourBitCounter;

	architecture Behavioral of TwentyFourBitCounter is

	begin  
 
 -- An enable counterx
   PROCESS (clk)
      VARIABLE   cnt         : INTEGER RANGE 0 TO 16777216;
		VARIABLE   qa        : INTEGER RANGE 0 TO 16777216;
   BEGIN
      IF (clk'EVENT AND clk = '1') THEN
         
            cnt := cnt + 1;
         
      END IF;
		
	qa := cnt;
	vec_one <= conv_std_logic_vector(qa, 24);
	
   END PROCESS;
		
	end Behavioral;