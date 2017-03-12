library ieee;
use ieee.std_logic_1164.all;

entity reg is 
port( clr: in std_logic;
		clk: in std_logic;
		ren: in std_logic;
		rin: in std_logic_vector(31 downto 0);
		rout: out std_logic_vector(31 downto 0)
		);
end entity reg;

architecture behavior of reg is 
begin
process (clk,clr,ren,rin)
	begin 
		if (clr= '1') then	
			rout <= x"00000000";
		elsif ( clk='1') then
			if ren = '1' then
				rout <= rin;
			end if;
		end if;
	end process;
END behavior;