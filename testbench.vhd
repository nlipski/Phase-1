library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

ENTITY testbench IS
END testbench;

ARCHITECTURE testbench_arch OF testbench IS
	--initialization and declaration of inputs
		signal ren0_tb :   STD_LOGIC;
		signal ren1_tb :   STD_LOGIC;
		signal ren2_tb :   STD_LOGIC;
		signal ren3_tb :   STD_LOGIC;
		signal ren4_tb :   STD_LOGIC;
		signal ren5_tb :   STD_LOGIC;
		signal ren6_tb :   STD_LOGIC;
		signal ren7_tb :   STD_LOGIC;
		signal ren8_tb :   STD_LOGIC;
		signal ren9_tb :   STD_LOGIC;
		signal renA_tb :   STD_LOGIC;
		signal renB_tb :   STD_LOGIC;
		signal renC_tb :   STD_LOGIC;
		signal renD_tb :   STD_LOGIC;
		signal renE_tb :   STD_LOGIC;
		signal renF_tb :   STD_LOGIC;
		signal clr_tb :    STD_LOGIC;
		signal clk_tb :    STD_LOGIC;
		signal R0out_tb :    STD_LOGIC;
		signal R1out_tb :    STD_LOGIC;
		signal R2out_tb :    STD_LOGIC;
		signal R3out_tb :    STD_LOGIC;
		signal R4out_tb :    STD_LOGIC;
		signal R5out_tb :    STD_LOGIC;
		signal R6out_tb :    STD_LOGIC;
		signal R7out_tb :    STD_LOGIC;
		signal R8out_tb :    STD_LOGIC;
		signal R9out_tb :    STD_LOGIC;
		signal R10out_tb :    STD_LOGIC;
		signal R11out_tb :    STD_LOGIC;
		signal R12out_tb :    STD_LOGIC;
		signal R13out_tb :    STD_LOGIC;
		signal R14out_tb :    STD_LOGIC;
		signal R15out_tb :    STD_LOGIC;
		signal Zhighout_tb :    STD_LOGIC;
		signal Zlowout_tb :    STD_LOGIC;
		signal InPortout_tb :    STD_LOGIC;
		signal HIin_tb :    STD_LOGIC;
		signal PCin_tb :    STD_LOGIC;
		signal Zin_tb :    STD_LOGIC;
		signal Zhighin_tb :    STD_LOGIC;
		signal LOin_tb :   STD_LOGIC;
		signal Read_tb :   STD_LOGIC;
		signal MDRin_tb :    STD_LOGIC;
		signal HIoutEn_tb :    STD_LOGIC;
		signal LOoutEn_tb :    STD_LOGIC;
		signal PCoutEn_tb :    STD_LOGIC;
		signal MDRoutEn_tb :    STD_LOGIC;
		signal CoutEn_tb :    STD_LOGIC;
		signal busmuxout_tb :    STD_LOGIC_VECTOR(31 DOWNTO 0);
		signal Empty_tb :    STD_LOGIC_VECTOR(31 DOWNTO 0);
		signal HIout_tb :    STD_LOGIC_VECTOR(31 DOWNTO 0);
		signal LOout_tb :    STD_LOGIC_VECTOR(31 DOWNTO 0);
		signal Mdatain_tb :    STD_LOGIC_VECTOR(31 DOWNTO 0);
		signal MDRout_tb :    STD_LOGIC_VECTOR(31 DOWNTO 0);
		signal PCout_tb :   STD_LOGIC_VECTOR(31 DOWNTO 0);
		signal rout0_tb :   STD_LOGIC_VECTOR(31 DOWNTO 0);
		signal rout1_tb :   STD_LOGIC_VECTOR(31 DOWNTO 0);
		signal rout2_tb :   STD_LOGIC_VECTOR(31 DOWNTO 0);
		signal rout3_tb :   STD_LOGIC_VECTOR(31 DOWNTO 0);
		signal rout4_tb :   STD_LOGIC_VECTOR(31 DOWNTO 0);
		signal rout5_tb :   STD_LOGIC_VECTOR(31 DOWNTO 0);
		signal rout6_tb :   STD_LOGIC_VECTOR(31 DOWNTO 0);
		signal rout7_tb :   STD_LOGIC_VECTOR(31 DOWNTO 0);
		signal rout8_tb :   STD_LOGIC_VECTOR(31 DOWNTO 0);
		signal rout9_tb :   STD_LOGIC_VECTOR(31 DOWNTO 0);
		signal routa_tb :   STD_LOGIC_VECTOR(31 DOWNTO 0);
		signal routb_tb :   STD_LOGIC_VECTOR(31 DOWNTO 0);
		signal routc_tb :   STD_LOGIC_VECTOR(31 DOWNTO 0);
		signal routd_tb :   STD_LOGIC_VECTOR(31 DOWNTO 0);
		signal route_tb :   STD_LOGIC_VECTOR(31 DOWNTO 0);
		signal routf_tb :   STD_LOGIC_VECTOR(31 DOWNTO 0);
		signal Zhigh_tb :   STD_LOGIC_VECTOR(31 DOWNTO 0);
		signal Zlow_tb :    STD_LOGIC_VECTOR(31 DOWNTO 0);
	
component ELEC374
		PORT
	(
		ren0 :  IN  STD_LOGIC;
		ren1 :  IN  STD_LOGIC;
		ren2 :  IN  STD_LOGIC;
		ren3 :  IN  STD_LOGIC;
		ren4 :  IN  STD_LOGIC;
		ren5 :  IN  STD_LOGIC;
		ren6 :  IN  STD_LOGIC;
		ren7 :  IN  STD_LOGIC;
		ren8 :  IN  STD_LOGIC;
		ren9 :  IN  STD_LOGIC;
		renA :  IN  STD_LOGIC;
		renB :  IN  STD_LOGIC;
		renC :  IN  STD_LOGIC;
		renD :  IN  STD_LOGIC;
		renE :  IN  STD_LOGIC;
		renF :  IN  STD_LOGIC;
		clr :  IN  STD_LOGIC;
		clk :  IN  STD_LOGIC;
		R0out :  IN  STD_LOGIC;
		R1out :  IN  STD_LOGIC;
		R2out :  IN  STD_LOGIC;
		R3out :  IN  STD_LOGIC;
		R4out :  IN  STD_LOGIC;
		R5out :  IN  STD_LOGIC;
		R6out :  IN  STD_LOGIC;
		R7out :  IN  STD_LOGIC;
		R8out :  IN  STD_LOGIC;
		R9out :  IN  STD_LOGIC;
		R10out :  IN  STD_LOGIC;
		R11out :  IN  STD_LOGIC;
		R12out :  IN  STD_LOGIC;
		R13out :  IN  STD_LOGIC;
		R14out :  IN  STD_LOGIC;
		R15out :  IN  STD_LOGIC;
		Zhighout :  IN  STD_LOGIC;
		Zlowout :  IN  STD_LOGIC;
		InPortout :  IN  STD_LOGIC;
		HIin :  IN  STD_LOGIC;
		PCin :  IN  STD_LOGIC;
		Zin :  IN  STD_LOGIC;
		Zhighin :  IN  STD_LOGIC;
		LOin :  IN  STD_LOGIC;
		Read :  IN  STD_LOGIC;
		MDRin :  IN  STD_LOGIC;
		HIoutEn :  IN  STD_LOGIC;
		LOoutEn :  IN  STD_LOGIC;
		PCoutEn :  IN  STD_LOGIC;
		MDRoutEn :  IN  STD_LOGIC;
		CoutEn :  IN  STD_LOGIC;
		busmuxout :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		Empty :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		HIout :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		LOout :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		Mdatain :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		MDRout :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		PCout :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		rout0 :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		rout1 :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		rout2 :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		rout3 :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		rout4 :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		rout5 :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		rout6 :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		rout7 :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		rout8 :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		rout9 :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		routa :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		routb :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		routc :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		routd :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		route :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		routf :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		Zhigh :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		Zlow :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
end component ELEC374;

BEGIN

DUT: ELEC374 PORT MAP(
ren0 <=ren0_tb, 
ren1 <=ren1_tb, 
ren2 <=ren2_tb, 
ren3 <=ren3_tb, 
ren4 <=ren4_tb, 
ren5 <=ren5_tb, 
ren6 <=ren6_tb, 
ren7 <=ren7_tb, 
ren8 <=ren8_tb, 
ren9 <=ren9_tb, 
renA <=renA_tb, 
renB <=renB_tb, 
renC <=renC_tb, 
renD <=renD_tb, 
renE <=renE_tb, 
renF <=renF_tb, 
clr  <=clr_tb,  
clk  <=clk_tb,  
R0out <=R0out_tb, 
R1out <=R1out_tb, 
R2out <=R2out_tb, 
R3out <=R3out_tb, 
R4out <=R4out_tb, 
R5out <=R5out_tb, 
R6out <=R6out_tb, 
R7out <=R7out_tb, 
R8out <=R8out_tb, 
R9out <=R9out_tb, 
R10out<=R10out_tb,
R11out<=R11out_tb,
R12out<=R12out_tb,
R13out<=R13out_tb,
R14out<=R14out_tb,
R15out<=R15out_tb,
Zhighou<=Zhighout_tb, 
Zlowout<=Zlowout_tb, 
InPorto<=InPortout_tb,
HIin   <=HIin_tb,    
PCin   <=PCin_tb,    
Zin    <=Zin_tb,     
Zhighin<=Zhighin_tb, 
LOin   <=LOin_tb,    
Read   <=Read_tb,    
MDRin  <=MDRin_tb,   
HIoutEn<=HIoutEn_tb, 
LOoutEn<=LOoutEn_tb, 
PCoutEn<=PCoutEn_tb, 
MDRoutE<=MDRoutEn_tb, 
CoutEn <=CoutEn_tb,  
busmuxo<=busmuxout_tb,
Empty  <=Empty_tb,   
HIout  <=HIout_tb,   
LOout  <=LOout_tb,   
Mdatain<=Mdatain_tb, 
MDRout <=MDRout_tb,  
PCout  <=PCout_tb,   
rout0  <=rout0_tb,   
rout1  <=rout1_tb,   
rout2  <=rout2_tb,   
rout3  <=rout3_tb,   
rout4  <=rout4_tb,   
rout5  <=rout5_tb,   
rout6  <=rout6_tb,   
rout7  <=rout7_tb,   
rout8  <=rout8_tb,   
rout9  <=rout9_tb,   
routa  <=routa_tb,   
routb  <=routb_tb,   
routc  <=routc_tb,   
routd  <=routd_tb,   
route  <=route_tb,   
routf  <=routf_tb,   
Zhigh  <=Zhigh_tb,   
Zlow   <=Zlow_tb    
	);
	
clk_process : process
	begin
		clk_tb <= '0';
		wait for 10 ns;
		clk_tb <= '1';
		wait for 10 ns;
end process clk_process;

sim_proc: process
		begin	
			busmuxin_tb <= x"00000000";
			Rin_tb <= '0';
			clr_tb <= '0';
			wait for 7 ns;
			clr_tb <= '1';
			wait for 7 ns;
			clr_tb <= '0';
			busmuxin_tb <= x"00000001";
			Rin_tb <= '1';
			wait;
end process sim_proc;

end architecture testbench_arch;
	