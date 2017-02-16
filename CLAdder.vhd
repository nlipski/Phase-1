library ieee;
use ieee.std_logic_1164.all;


entity CLAdder is 
	port(Xin: in std_logic_vector(15 downto 0);
		 Yin: in std_logic_vector(15 downto 0);
		 Cin: in std_logic;
		 Sum: out std_logic_vector (15 downto 0);
		 Cout: out std_logic
		 );
end CLAdder;


architecture behaviour of CLAdder is

signal h_sum : std_logic_vector(15 downto 0);
signal G: std_logic_vector(15 downto 0);
signal P: std_logic_vector(15 downto 0);
signal CarryIn: std_logic_vector(15 downto 1);

begin 
	h_sum<= Xin xor Yin;
	G <= Xin and Yin;
	P <= Xin or Yin;
	
	process (G,P, CarryIn)
	begin
	CarryIn(1) <= G(0) or (P(0) and Cin);
		inst: for i in 1 to 14 loop	
			CarryIn(i+1) <= G(i) or (P(i) and CarryIn(i));
			end loop;
	Cout <= G(15) or (P(15) and CarryIn(15));
	end process;
	Sum(0)<= h_sum(0) xor Cin;
	Sum(15 downto 1)<= h_sum(15 downto 1) xor CarryIn(15 downto 1);
	
end behaviour;
	
