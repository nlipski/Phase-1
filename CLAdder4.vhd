library ieee;
use ieee.std_logic_1164.all;

entity CLAdder4 is 
	port (  cin: in std_logic;
			a,b: in std_logic_vector (3 downto 0);
			sum: out std_logic_vector (3 downto 0);
			cout: out std_logic;
			);
end entity CLAdder4;


architecture structural of CLAdder4 is
component fullAdder is 
	port (  cin: in std_logic;
		in1, in2: in std_logic;
		sum, cout: out std_logic;
		);
end component fullAdder;

signal G,P,h_sum :std_logic_vector (3 downto 0);
signal carry: std_logic_vector(3 downto 1);

G <= a and b;
P <= a or b; 
h_sum<= a xor b;
begin
	process (G,P,carry) 
	begin
		carry(1)<= G(0)or (P(0) and cin);
		for i in 1 to 2 loop
			carry(i+1)<= G(i)or (P(i) and carry(i);
		end loop;
		cout<= carry(3);
	end process;
	sum(0) <= h_sum(3 down 1) xor carry(3 downto 1);
end architecture structural;
	
	