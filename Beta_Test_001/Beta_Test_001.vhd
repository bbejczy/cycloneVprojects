library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Beta_Test_001 is 
	Port (switch : in STD_LOGIC_VECTOR(0 to 3);
			slider : in STD_LOGIC_VECTOR(0 to 8);
			led : out STD_LOGIC_VECTOR(0 to 3);
			led2 : out STD_LOGIC_VECTOR(0 to 3));
end Beta_Test_001;

architecture Behavioural of Beta_Test_001 is

begin
	-- Exercise 1
	led <= NOT switch;
	
	-- Exercise 2-4
	led2(0) <= (slider(0) AND slider(1)) OR NOT (slider(2) AND slider(3));
	led2(1) <= slider(4) OR slider(5);
	
	-- Exercise 5 one bit full adder
	-- led2-2 sum, led2-3 Cout
	-- slider6 = Cin, slider7 = A, slider8 = B
	led2(2) <= (slider(6) XOR (slider(7) XOR slider(8))) OR (slider(6) AND slider(7) AND slider(8));
	led2(3) <= (slider(6) AND slider(7)) OR (slider(6) AND slider(8)) OR (slider(7) AND slider(8)) OR (slider(6) AND slider(7) AND slider(8));
	

end Behavioural;
