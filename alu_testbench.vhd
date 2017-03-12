library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
library work;

ENTITY alu_testbench IS
END alu_testbench;


ARCHITECTURE behavior OF test_tb IS

signal sel_tb: std_logic_vector(4 downto 0);
signal a_tb: std_logic_vector(32 downto 0);
signal b_tb: std_logic_vector(32 downto 0);
signal clk_tb: std_logic;
signal result_tb: std_LOGIC_VECTOR(63 downto 0);

COMPONENT alu
	PORT(clk : IN STD_LOGIC;
		 a : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 op : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 y : OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
	);
END COMPONENT alu;

begin

DUT: alu 
PORT MAP(clk => clk_tb,
		 a => a_tb,
		 b => b_tb,
		 op => sel_tb,
		 y => result)
);

init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
a_tb = 3;
b_tb = 6;
sel_tb = "0001"; 
WAIT;                                                       
END PROCESS init; 

clk_process : process
	begin
			clk_tb<='0','1' after 10 ns;
			wait for 20 ns;
end process clk_process;

process (clk_tb)
                                          
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END alu_testbench;
