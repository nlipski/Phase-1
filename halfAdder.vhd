library ieee;
use ieee.std_logic_1164.all;

entity halfAdder is 
port (
	A, B: in std_logic;
	sum, carry: out std_logic;
);
end entity halfAdder;

architecture behaviour of halfAdder is
begin
	sum <= (A xor B) after 5 ns;
	carry <= (A and B) after 5 ns;
end architecture behaviour;
