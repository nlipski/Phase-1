library ieee;
use ieee.std_logic_1164.all;

entity RCAdder is 
port (a,b: in std_logic_vector(3 downto 0);
	  sum: out std_logic_vector( 3 downto 0);
	  cout: out std_logic;
	  );
end entity RCAdder;

architecture structural for RCAdder is

	component fullAdder is
		port (  cin: in std_logic;
			in1, in2: in std_logic;
			sum, cout: out std_logic;
		);
		
	signal carry: std_logic_vector(2 downto 0);
	
	begin 
	
	FA1: fullAdder(cin => '0', in1=> a(0), in2 => b(0), sum => sum(0), cout => carry(0));
	FA2: fullAdder(cin => carry(0), in1=> a(1), in2 => b(1), sum => sum(1), cout => carry(1));
	FA3: fullAdder(cin => carry(1), in1=> a(2), in2 => b(2), sum => sum(2), cout => carry(2));
	FA4: fullAdder(cin => carry(2), in1=> a(3), in2 => b(3), sum => sum(3), cout => cout);
	
end architecture structural;
	
	