	library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;

	entity Four_Bit_Adder is
	    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
	           b : in  STD_LOGIC_VECTOR (3 downto 0);
	           cin : in  STD_LOGIC;
	           s : out  STD_LOGIC_VECTOR (3 downto 0);
	           cout : out  STD_LOGIC);
	end Four_Bit_Adder;

	architecture Behavioral of Four_Bit_Adder is
	
		component FA is
			port (a, b, c_in: in std_logic;
			          s, c_out: out std_logic);
		end component;
		signal c: std_logic_vector(4 downto 0);
	begin

		gen: for i in 0 to 3 generate
			uut: FA port map (a => a(i), b => b(i), c_in => c(i), s => s(i), c_out => c(i+1));
		end generate;
		c(0) <= cin;
		cout <= c(4);

	end Behavioral;