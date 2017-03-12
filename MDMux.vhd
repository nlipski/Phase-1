library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity  MDMux is 
port ( ReadIn: in std_logic;
		 BusMuxOut: in std_logic_vector(31 downto 0);
		 Mdatain: in std_logic_vector(31 downto 0);
		 MDMuxOut: out std_logic_vector(31 downto 0)
		 );
end MDMux;


architecture behavior of MDMux is 
begin
process (ReadIn,BusMuxOut,Mdatain)
	begin 
		if (ReadIn= '1') then	
			MDMuxOut <= Mdatain;
		else 
			MDMuxOut <= BusMuxOut;
		end if;
	end process;
END behavior;