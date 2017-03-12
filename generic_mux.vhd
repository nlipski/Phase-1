
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity good_mux is 

port (data0x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data1x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data2x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data3x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data4x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data5x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data6x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data7x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data8x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data9x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data10x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data11x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data12x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data13x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data14x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data15x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data16x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data17x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data18x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data19x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data20x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data21x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data22x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data23x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data24x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data25x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		sel			: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
		result		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
);
end generic_mux; 
--------------------------------------------------------------------------------

architecture behavioral of generic_mux is
begin
		process (sel)
			begin
				case sel is 
							when "00001" => result <=	 data1x; 
							when "00010" => result <=	 data2x; 
							when "00011" => result <=	 data3x; 
							when "00100" => result <=	 data4x; 
							when "00101" => result <=	 data5x; 
							when "00110" => result <=	 data6x; 
							when "00111" => result <=	 data7x; 
							when "01000" => result <=	 data8x; 
							when "01001" => result <=	 data9x; 
							when "01010" => result <=	data10x;
							when "01011" => result <=	data11x;
							when "01100" => result <=	data12x;
							when "01101" => result <=	data13x;
							when "01110" => result <=	data14x;
							when "01111" => result <=	data15x;
							when "10000" => result <=	data16x;
							when "10001" => result <=	data17x;
							when "10010" => result <=	data18x;
							when "10011" => result <=	data19x;
							when "10100" => result <=	data20x;
							when "10101" => result <=	data21x;
							when "10110" => result <=	data22x;
							when "10111" => result <=	data23x;
							when "11000" => result <=	data24x;
							when others	 => result <=	data25x;
						end case;
		end process;
end behavioral;
--------------------------------------------------------------------------------