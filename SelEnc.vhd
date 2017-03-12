library ieee;
use ieee.std_logic_1164.all;

entity SelEncLogic is 
	port ( Gra,Grb, Grc, Rin, Rout, BAout : in std_logic;
			 IRin: in std_logic_vector (31 downto 0);
			 RAllin, RAllout: out std_logic_vector(15 downto 0)
	);
end entity SelEncLogic;

architecture behavioural of SelEncLogic is 
	signal decIn : std_logic_vector(3 downto 0);
	signal output, input, decOut: std_logic_vector (15 downto 0);
	signal S1,S2, S3, S4: std_logic_vector(3 downto 0);
	
	
	component andbit4 is 
		port ( vecIn: in std_logic_vector(3 downto 0);
				bitIn: in std_logic;
				vecOut: out std_logic_vector(3 downto 0)	
		);
	end component andbit4;
	
	begin 
		S1: andbit4 (IRin(26 downto 23), Gra, S1);
		S2: andbit4 (IRin(22 downto 19), Grb, S2);
		S3: andbit4 (IRin(18 downto 15), Grc, S3);
		S4 <= S1 or S2 or S3;
		decIn<= S4;
		
		process (decIn)
		begin
			case decIn is 
				when "0001" =>  decOut <=	 "0000000000000001"; 
				when "0010" =>  decOut <=	 "0000000000000010";
				when "0011" =>  decOut <=	 "0000000000000100";
				when "0100" =>  decOut <=	 "0000000000001000";
				when "0101" =>  decOut <=	 "0000000000010000";
				when "0110" =>  decOut <=	 "0000000000100000";
				when "0111" =>  decOut <=	 "0000000001000000";
				when "1000" =>  decOut <=	 "0000000010000000";
				when "1001" =>  decOut <=	 "0000000100000000";
				when "1010" =>  decOut <=	 "0000001000000000";
				when "1011" =>  decOut <=	 "0000010000000000";
				when "1100" =>  decOut <=	 "0000100000000000";
				when "1101" =>  decOut <=	 "0001000000000000";
				when "1110" =>  decOut <=	 "0010000000000000";
				when "1111" =>  decOut <=	 "0100000000000000";
				when others	 => decOut <=	 "1000000000000000";
			end case;
		end process;
		
		RAllin<=(decOut(15) and Rin) &(decOut(14) and Rin) &(decOut(13) and Rin) & 
		(decOut(12) and Rin) & (decOut(11) and Rin) & (decOut(10) and Rin) & (decOut(9) and Rin) &
		(decOut(8) and Rin) & (decOut(7) and Rin) & (decOut(6) and Rin) & (decOut(5) and Rin) &
		(decOut(4) and Rin) & (decOut(3) and Rin) & (decOut(2) and Rin) & (decOut(1) and Rin) &
		(decOut(0) and Rin);
		
		Rallout<= (decOut(15) and (Rout or BAout)) & (decOut(14) and (Rout or BAout)) & (decOut(13) and (Rout or BAout)) & (decOut(12) and (Rout or BAout)) &
		(decOut(11) and (Rout or BAout)) &(decOut(10) and (Rout or BAout)) & (decOut(9) and (Rout or BAout)) & (decOut(8) and (Rout or BAout)) & (decOut(7) and (Rout or BAout)) & (decOut(6) and (Rout or BAout)) &
		(decOut(5) and (Rout or BAout)) & (decOut(4) and (Rout or BAout)) & (decOut(3) and (Rout or BAout)) & (decOut(2) and (Rout or BAout)) & (decOut(1) and (Rout or BAout)) & (decOut(0) and (Rout or BAout));
	
	end architecture behavioural;
		

		
		
		
