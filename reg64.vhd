library ieee;
use ieee.std_logic_1164.all;

entity reg64 is 
port( clr: in std_logic;
		clk: in std_logic;
		ren: in std_logic;
		rin: in std_logic_vector(63 downto 0);
		rh,rlow: out std_logic_vector(31 downto 0)
		);
end entity reg64;

architecture behavior of reg64 is 
begin
process (clk,clr, rin, ren)
	begin 
		if (clr = '1') then	
			rh <= x"00000000";
			rlow <= x"00000000";
		elsif ( clk='1') then
			if ren = '1' then
			rh <= rin(63 downto 32);
			rlow <= rin(31 downto 0);		
			end if;
		end if;
		
	end process;
END behavior;