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


architecture behaviour of MDMux is 
begin	
		MDMuxOut <= BusMuxOut when ReadIn='0'
						else Mdatain;
end behaviour;
		 