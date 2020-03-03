	library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;

	entity Four_Bit_Shifter is
	    Port ( D : in  STD_LOGIC;
	           Q : out  STD_LOGIC_VECTOR (7 downto 0);
	           clk : in  STD_LOGIC);
	end Four_Bit_Shifter;

	architecture Behavioral of Four_Bit_Shifter is

	begin

	process (clk)
	variable buff: std_logic_vector(7 downto 0);
	
	begin
	
	
		if(clk'event and clk = '1') then
		
		buff(7):=buff(6);
		buff(6):=buff(5);
		buff(5):=buff(4);
		buff(4):=buff(3);
		buff(3):=buff(2);
		buff(2):=buff(1);
		buff(1):=buff(0);
		buff(0):=D;
		
		
		Q(7)<=buff(7);
		Q(6)<=buff(6);
		Q(5)<=buff(5);
		Q(4)<=buff(4);
		Q(3)<=buff(3);
		Q(2)<=buff(2);
		Q(1)<=buff(1);
		Q(0)<=buff(0);
		
		end if;
	end process;
	

	end Behavioral;