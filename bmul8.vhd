-- bmul8.vhdl parallel multiply 32 bit x 32 bit two's complement
-- the main components are bmul8, special Booth 32 x 32 -> 16 bit multiplier
-- badd8  32 bit specialized  adder for Booth multiplier
-- needs add8 and fadd components in WORK

library IEEE;
use IEEE.std_logic_1164.all;

entity badd8 is
  port (a       : in  std_logic_vector(2 downto 0);  -- Booth multiplier
        b       : in  std_logic_vector(7 downto 0); -- multiplicand
        sum_in  : in  std_logic_vector(7 downto 0); -- sum input
        sum_out : out std_logic_vector(7 downto 0); -- sum output
        prod    : out std_logic_vector(1 downto 0)); -- 2 bits of product
end entity badd8;

architecture circuits of badd8 is
  -- Note: Most of the multiply algorithm is performed in here.
  -- multiplier action
  --     a             bb
  -- i+1 i i-1         multiplier,  shift partial result two places each stage
  --  0  0  0   0    pass along
  --  0  0  1   +b   add
  --  0  1  0   +b   add
  --  0  1  1   +2b  shift add
  --  1  0  0   -2b  shift subtract
  --  1  0  1   -b   subtract
  --  1  1  0   -b   subtract
  --  1  1  1   0    pass along
  subtype word is std_logic_vector(31 downto 0);
  signal bb        : word;
  signal psum      : word;
  signal b_bar     : word;
  signal two_b     : word;
  signal two_b_bar : word;
  signal cout      : std_logic;
  signal cin       : std_logic;
  signal topbit    : std_logic;
  signal topout    : std_logic;
  signal nc1       : std_logic;
begin  -- circuits of badd8
		two_b <= b(6 downto 0) & '0';
		b_bar <= not b;
		two_b_bar <= b_bar(6 downto 0) & '0';
		bb <= b when a="001" or a="010"           -- 5-input mux
        else two_b when a="011"
        else two_b_bar when a="100"         -- cin=1
        else b_bar when a="101" or a="110"  -- cin=1
        else x"00000000";
  cin <= '1' when a="100" or a="101" or a="110"
         else '0';
  topbit <= b(7) when a="001" or a="010" or a="011"
            else b_bar(7) when a="100" or a="101" or a="110"
            else '0';

  a1: entity add8 port map(sum_in, bb, cin, psum, cout);
  a2: entity fadd port map(sum_in(31), topbit, cout, topout, nc1);

  sum_out(5 downto 0) <= psum(7 downto 2);
  sum_out(7) <= topout;
  sum_out(6) <= topout;
  prod <= psum(1 downto 0);
end architecture circuits;  -- of badd8

-- bmul8   full combinatorial 32 X 32 = 64 bit two's complement multiplier
-- Booth two's complement multiplication using badd4 component

library IEEE;
use IEEE.std_logic_1164.all;

entity bmul8 is  
  port (a : in  std_logic_vector(7 downto 0);   -- multiplier
        b : in  std_logic_vector(7 downto 0);   -- multiplicand
        p : out std_logic_vector(15 downto 0));  -- product
end entity bmul8;

architecture circuits of bmul8 is
  signal zer : std_logic_vector(7 downto 0) := x"00";     -- zeros
  signal mul0: std_logic_vector(2 downto 0);
  subtype word is std_logic_vector(7 downto 0);
  type ary is array(0 to 3) of word;
  signal s : ary;                       -- temp sums
begin  -- circuits of bmul8
  mul0 <= a(1 downto 0) & '0';
  a0:  entity badd8 port map(
              mul0,            b, zer,   s( 0), p( 1 downto  0));
  a1:  entity badd8 port map(
              a(3  downto  1), b, s( 0), s( 1), p( 3 downto  2));
  a2:  entity badd8 port map(
              a(5  downto  3), b, s( 1), s( 2), p( 5 downto  4));
  a3:  entity badd8 port map(
              a(7  downto  5), b, s( 2), s( 3), p( 7 downto  6));
end architecture circuits;  -- of bmul8



entity fadd is               -- full adder stage, interface
  port(a    : in  std_logic;
       b    : in  std_logic;
       cin  : in  std_logic;
       s    : out std_logic;
       cout : out std_logic);
end entity fadd;

architecture circuits of fadd is  -- full adder stage, body
begin  -- circuits of fadd
  s <= a xor b xor cin after 1 ns;
  cout <= (a and b) or (a and cin) or (b and cin) after 1 ns;
end architecture circuits; -- of fadd


library IEEE;
use IEEE.std_logic_1164.all;
entity add8 is             -- simple 8 bit ripple carry adder
  port(a    : in  std_logic_vector(7 downto 0);
       b    : in  std_logic_vector(7 downto 0);
       cin  : in  std_logic; 
       sum  : out std_logic_vector(7 downto 0);
       cout : out std_logic);
end entity add8;

architecture circuits of add8 is
  signal c : std_logic_vector(0 to 6); -- internal carry signals
  component fadd   -- duplicates entity port
  port(a    : in  std_logic;
       b    : in  std_logic;
       cin  : in  std_logic;
       s    : out std_logic;
       cout : out std_logic);
  end component fadd ;
begin  -- circuits of add8
  a0:            fadd port map(a(0), b(0), cin, sum(0), c(0));
  stage: for I in 1 to 6 generate
             as: fadd port map(a(I), b(I), c(I-1) , sum(I), c(I));
         end generate stage;
  a31:           fadd port map(a(7), b(7), c(6) , sum(7), cout);
end architecture circuits;  -- of add8