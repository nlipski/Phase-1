library ieee;
use ieee.std_logic_1164.all;

entity CLAdder4 is 
	port (  cin: in std_logic;
			a,b: in std_logic_vector (3 downto 0);
			sum: out std_logic_vector (3 downto 0);
			cout: out std_logic;
			);
end entity CLAdder16;


architecture structural of CLAdder16 is
component fullAdder is 
	port (  cin: in std_logic;
		in1, in2: in std_logic;
		sum, cout: out std_logic;
		);
end component fullAdder;

signal G,P :std_logic_vector (3 downto 0);
signal carry: std_logic_vector(3 downto 1);

G <= a or b;
P <= a xor b; 

begin
	process (G,P,carry) 
	begin
		
	
	