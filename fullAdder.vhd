library ieee;
use ieee.std_logic_1164.all;

entity fullAdder is 
port (  cin: in std_logic;
		in1, in2: in std_logic;
		sum, cout: out std_logic;
);
end entity fullAdder;

architecture structural of fullAdder is 

component halfAdder is 
port ( a,b: in std_logic;
		sum, carry: out std_logic;
		);
end component halfAdder;

signal s1,s2, s3: std_logic;
	
begin

HA1: halfAdder port map (a=> in1, b=> in2, sum => s1, carry=> s3);
HA2: halfAdder port map (a=> s1, b=> cin, sum=> sum, carry => s2);
cout <= s2 or s3;

end architecture structural;


