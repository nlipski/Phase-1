library ieee;
use ieee.std_logic_1164.all;

entity ConLogic is 
port ( clk, CONin : in std_logic;
		 IRin: in std_logic_vector(31 downto 0);
		 BusIn : in std_logic_vector(31 downto 0);
		 CONout:out std_logic);
end entity ConLogic;

architecture structural of ConLogic is 
signal C2 :std_logic_vector (1 downto 0);
signal decOut: std_logic_vector (3 downto 0);
signal s1,s2,s3,s4,s5,s6,s7,D : std_logic;

component ConFF is 
port ( D,En, clk : in std_logic;
		 Q : out std_logic);
end component ConFF;
 
begin 
C2<= IRin(1 downto 0);
process (C2) is 
begin
	if    C2="00" then decOut<="0001";
	elsif C2="01" then decOut<="0010";
	elsif C2="10" then decOut<="0100";
	else 					 decOut<="1000";
	end if;
end process;

	s1<= not(BusIn(31) or BusIn(30) or BusIn(29) or BusIn(28) or BusIn(27) or BusIn(26) or BusIn(25) or BusIn(24) or BusIn(23) or BusIn(22)
			or BusIn(21) or BusIn(20) or BusIn(19) or BusIn(18) or BusIn(17) or BusIn(16) or BusIn(15) or BusIn(14) or BusIn(13) or BusIn(12)
			or BusIn(11) or BusIn(10) or BusIn(9) or BusIn(8) or BusIn(7) or BusIn(6) or BusIn(5) or BusIn(4) or BusIn(3) or BusIn(2) or BusIn(1) or BusIn(0));

  s2<=not s1;
  
  s3<= not BusIn(31);
  
  
  s4<= s1 and decOut(0);
  
  s5<= decOut(1) and s2;
  
  s6<= s3 and decOut(2);
  
  s7<= BusIn(31) and decOut(3);

  D <= s7 or s6 or s5 or s4;
  FF1: ConFF port map (D, CONin, clk, CONout);

end architecture structural;