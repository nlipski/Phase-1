library ieee;
use ieee.std_logic_164.all;
use ieee.numeric_std.all;

entity alu is
port ( 
    signal clk   : in  std_logic;
    signal a     : in  std_logic_vector(31 downto 0);
    signal b     : in  std_logic_vector(31 downto 0);
    signal y     : in  std_logic_vector(31 downto 0);
    signal op    : in  std_logic_vector(3  downto 0);
    signal nul   : out boolean;
    signal cout  : out std_logic
);
end entity;

architecture behavioral of alu is
   type op_type is (op_and, op_add, op_sub, op_nop);
   signal enum_op : op_type;

   signal a_minus_b : std_logic_vector(32 downto 0);
   signal a_plus_b  : std_logic_vector(32 downto 0);
   signal reg       : std_logic_vector(32 downto 0);

begin

   a_minus_b <= std_logic_vector(signed(a(a'high) & a) - signed(b(b'high) & b));
   a_plus_b  <= std_logic_vector(signed(a(a'high) & a) + signed(b(b'high) & b));

	

   process(op)
   begin
      case op is
      when "000" => enum_op <= op_and;
      when "001" => enum_op <= op_add;
      when "010" => enum_op <= op_sub;
      when others => enum_op <= op_nop;
      end case;
   end process;

   process(clk)
   begin
      if rising_edge(clk) then
         case enum_op is
         when op_add       => reg <= a_plus_b;
         when op_sub       => reg <= a_minus_b;
         when op_and       => reg <= '0' & (a and b);
         when op_nop       =>
            reg(32) <= '0';
			end case;
      end if;
   end process;

   y <= reg(31 downto 0);
   count <= reg(32);
   nul <= unsigned(reg) = '0';

end architecture;