library ieee;
use ieee.std_logic_1164.all;

entity and_4 is  
	port(
	vecIn: in std_logic_vector(3 downto 0);
	bitIn: in std_logic;
	vecOut: out std_logic_vector(3 downto 0)
	);
end entity and_4;

architecture behavioural of and_4 is 
begin
vecOut<= (vecIn(3) and bitIn) & (vecIn(2) and bitIn) & (vecIn(1) and bitIn) & (vecIn(0) and bitIn);

end architecture behavioural;