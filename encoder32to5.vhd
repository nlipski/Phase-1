library ieee;
use ieee.std_logic_1164.all;

entity encoder32to5 is
port( R0out: in std_logic;
		R1out: in std_logic;
		R2out: in std_logic;
		R3out: in std_logic;
		R4out: in std_logic;
		R5out: in std_logic;
		R6out: in std_logic;
		R7out: in std_logic;
		R8out: in std_logic;
		R9out: in std_logic;
		R10out: in std_logic;
		R11out: in std_logic;
		R12out: in std_logic;
		R13out: in std_logic;
		R14out: in std_logic;
		R15out: in std_logic;
		HIout: in std_logic;
		LOout: in std_logic;
		Zhighout: in std_logic;
		Zlowout: in std_logic;
		PCout: in std_logic;
		MDRout: in std_logic;
		InPortout: in std_logic;
		Cout:  in std_logic;
		Sin: out std_logic_vector(4 downto 0)
	);
end entity encoder32to5;

architecture behavior of encoder32to5 is
begin

Sin <= "00001" when R0out = '1' else 
		 "00010" when R1out = '1' else
		 "00011" when R2out = '1' else
		 "00100" when R3out = '1' else
		 "00101" when R4out = '1' else
		 "00110" when R5out = '1' else
		 "00111" when R6out = '1' else
		 "01000" when R7out = '1' else
		 "01001" when R8out = '1' else
		 "01010" when R9out = '1' else
		 "01011" when R10out = '1' else
		 "01100" when R11out = '1' else
		 "01101" when R12out = '1' else
		 "01110" when R13out = '1' else
		 "01111" when R14out = '1' else
		 "10000" when R15out = '1' else
		 "10001" when HIout = '1' else
		 "10010" when LOout = '1' else
		 "10011" when Zhighout = '1' else
		 "10100" when Zlowout = '1' else
		 "10101" when PCout = '1' else
		 "10110" when MDRout = '1' else
		 "10111" when InPortout = '1' else
		 "11000" when Cout = '1' else
		 "11111"; 
		 
end behavior;