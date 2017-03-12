library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
library work;

ENTITY testbench IS
END testbench;

ARCHITECTURE testbench_arch OF testbench IS
	--initialization and declaration of inputs
	signal ren0_tb 	 	: STD_LOGIC;
	signal ren1_tb 	 	: STD_LOGIC;
	signal ren2_tb 	 	: STD_LOGIC;
	signal ren3_tb 	 	: STD_LOGIC;
	signal ren4_tb 	 	: STD_LOGIC;
	signal ren5_tb 	 	: STD_LOGIC;
	signal ren6_tb 	 	: STD_LOGIC;
	signal ren7_tb 	 	: STD_LOGIC;
	signal ren8_tb 	 	: STD_LOGIC;
	signal ren9_tb 	 	: STD_LOGIC;
	signal renA_tb 	 	: STD_LOGIC;
	signal renB_tb 	 	: STD_LOGIC;
	signal renC_tb 	 	: STD_LOGIC;
	signal renD_tb 	 	: STD_LOGIC;
	signal renE_tb 	 	: STD_LOGIC;
	signal renF_tb 	 	: STD_LOGIC;
	signal clr_tb 		 	: STD_LOGIC;
	signal clk_tb 		 	: STD_LOGIC;
	signal R0out_tb 	 	: STD_LOGIC;
	signal R1out_tb 	 	: STD_LOGIC;
	signal R2out_tb 	 	: STD_LOGIC;
	signal R3out_tb 	 	: STD_LOGIC;
	signal R4out_tb 	 	: STD_LOGIC;
	signal R5out_tb 	 	: STD_LOGIC;
	signal R6out_tb 	 	: STD_LOGIC;
	signal R7out_tb 	 	: STD_LOGIC;
	signal R8out_tb 	 	: STD_LOGIC;
	signal R9out_tb 	 	: STD_LOGIC;
	signal R10out_tb 	 	: STD_LOGIC;
	signal R11out_tb 	 	: STD_LOGIC;
	signal R12out_tb 	 	: STD_LOGIC;
	signal R13out_tb 	 	: STD_LOGIC;
	signal R14out_tb 	 	: STD_LOGIC;
	signal R15out_tb 	 	: STD_LOGIC;
	signal Zhighout_tb   : STD_LOGIC;
	signal Zlowout_tb 	: STD_LOGIC;
	signal InPortout_tb  : STD_LOGIC;
	signal HIin_tb 	 	: STD_LOGIC;
	signal PCin_tb 	 	: STD_LOGIC;
	signal LOin_tb 	 	: STD_LOGIC;
	signal MDRin_tb 	 	: STD_LOGIC;
	signal HIoutEn_tb 	: STD_LOGIC;
	signal LOoutEn_tb 	: STD_LOGIC;
	signal PCoutEn_tb 	: STD_LOGIC;
	signal MDRoutEn_tb   : STD_LOGIC;
	signal CoutEn_tb 	 	: STD_LOGIC;
	signal reny_tb 	 	: STD_LOGIC;
	signal renz_tb 	 	: STD_LOGIC;
	signal ReadIn_tb 	 	: STD_LOGIC;
	signal WriteEn_tb 	: STD_LOGIC;
	signal MARin_tb 	 	: STD_LOGIC;
	signal IRen_tb 	 	: STD_LOGIC;
	signal CONin_tb 	 	: STD_LOGIC;
	signal OUTen_tb 	 	: STD_LOGIC;
	signal Strobe_tb 	 	: STD_LOGIC;
	signal Gra_tb 		 	: STD_LOGIC;
	signal Grb_tb 		 	: STD_LOGIC;
	signal Grc_tb 		 	: STD_LOGIC;
	signal SelEncin_tb   : STD_LOGIC;
	signal SelEncout_tb  : STD_LOGIC;
	signal BAout_tb 	 	: STD_LOGIC;
	signal Empty_tb	 	: STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal HIout_tb 	 	: STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal InPortIn_tb   : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal LOout_tb 	 	: STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal Mdatain_tb 	: STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal MDRout_tb 	 	: STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal operation_tb 	: STD_LOGIC_VECTOR(3 DOWNTO 0);
	signal PCout_tb 	 	: STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal rout0_tb 	 	: STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal rout1_tb 	 	: STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal rout2_tb 	 	: STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal rout3_tb 	 	: STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal rout4_tb 	 	: STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal rout5_tb 	 	: STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal rout6_tb 	 	: STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal rout7_tb 	 	: STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal rout8_tb 	 	: STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal rout9_tb 	 	: STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal routa_tb 	 	: STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal routb_tb 	 	: STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal routc_tb 	 	: STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal routd_tb 	 	: STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal route_tb 	 	: STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal routf_tb 	 	: STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal routy_tb 	 	: STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal Zhigh_tb 	 	: STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal Zlow_tb 	 	: STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal CONout_tb 	 	: STD_LOGIC;
	signal Address_tb	 	: STD_LOGIC_VECTOR(8 DOWNTO 0);
	signal IRout_tb 	 	: STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal Out_Port_tb  	: STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal RALLin_tb 	 	: STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal RALLout_tb 	: STD_LOGIC_VECTOR(31 DOWNTO 0);

type oper_state is (add_op,sub_op, mul_op,div_op, and_op, or_op, shr_op,shl_op, ror_op, rol_op, neg_op, not_op);
TYPE	State IS(default, Reg_load1, Reg_load2, Reg_load3, T0, T1, T2, T3, T4, T5,T6);
SIGNAL Present_state: State := default;
signal present_oper: oper_state:=add_op;
	
component ELEC374
		PORT
	(
		ren0 			:  IN  	 STD_LOGIC;
		ren1 			:  IN  	 STD_LOGIC;
		ren2 			:  IN  	 STD_LOGIC;
		ren3 			:  IN  	 STD_LOGIC;
		ren4 			:  IN  	 STD_LOGIC;
		ren5 			:  IN  	 STD_LOGIC;
		ren6 			:  IN  	 STD_LOGIC;
		ren7 			:  IN  	 STD_LOGIC;
		ren8 			:  IN  	 STD_LOGIC;
		ren9 			:  IN  	 STD_LOGIC;
		renA 			:  IN  	 STD_LOGIC;
		renB 			:  IN  	 STD_LOGIC;
		renC 			:  IN  	 STD_LOGIC;
		renD 			:  IN  	 STD_LOGIC;
		renE 			:  IN  	 STD_LOGIC;
		renF 			:  IN  	 STD_LOGIC;
		clr 			:  IN  	 STD_LOGIC;
		clk 			:  IN  	 STD_LOGIC;
		R0out 		:  IN  	 STD_LOGIC;
		R1out 		:  IN  	 STD_LOGIC;
		R2out 		:  IN  	 STD_LOGIC;
		R3out 		:  IN  	 STD_LOGIC;
		R4out 		:  IN  	 STD_LOGIC;
		R5out 		:  IN  	 STD_LOGIC;
		R6out 		:  IN  	 STD_LOGIC;
		R7out 		:  IN  	 STD_LOGIC;
		R8out 		:  IN  	 STD_LOGIC;
		R9out 		:  IN  	 STD_LOGIC;
		R10out 		:  IN  	 STD_LOGIC;
		R11out 		:  IN  	 STD_LOGIC;
		R12out 		:  IN  	 STD_LOGIC;
		R13out 		:  IN  	 STD_LOGIC;
		R14out 		:  IN  	 STD_LOGIC;
		R15out 		:  IN  	 STD_LOGIC;
		Zhighout 	:  IN  	 STD_LOGIC;
		Zlowout 		:  IN  	 STD_LOGIC;
		InPortout 	:  IN  	 STD_LOGIC;
		HIin 			:  IN  	 STD_LOGIC;
		PCin 			:  IN  	 STD_LOGIC;
		LOin 			:  IN  	 STD_LOGIC;
		MDRin 		:  IN  	 STD_LOGIC;
		HIoutEn 		:  IN  	 STD_LOGIC;
		LOoutEn 		:  IN  	 STD_LOGIC;
		PCoutEn 		:  IN  	 STD_LOGIC;
		MDRoutEn 	:  IN  	 STD_LOGIC;
		CoutEn 		:  IN  	 STD_LOGIC;
		reny 			:  IN  	 STD_LOGIC;
		renz 			:  IN  	 STD_LOGIC;
		ReadIn 		:  IN  	 STD_LOGIC;
		WriteEn 		:  IN  	 STD_LOGIC;
		MARin 		:  IN  	 STD_LOGIC;
		IRen 			:  IN  	 STD_LOGIC;
		CONin 		:  IN  	 STD_LOGIC;
		OUTen 		:  IN  	 STD_LOGIC;
		Strobe 		:  IN  	 STD_LOGIC;
		Gra 			:  IN  	 STD_LOGIC;
		Grb 			:  IN  	 STD_LOGIC;
		Grc 			:  IN  	 STD_LOGIC;
		SelEncin 	:  IN  	 STD_LOGIC;
		SelEncout 	:  IN  	 STD_LOGIC;
		BAout 		:  IN  	 STD_LOGIC;
		Empty		 	:  IN  	 STD_LOGIC_VECTOR(31 DOWNTO 0);
		HIout 		:  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		InPortIn 	:  IN  	 STD_LOGIC_VECTOR(31 DOWNTO 0);
		LOout 		:  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		Mdatain 		:  IN  	 STD_LOGIC_VECTOR(31 DOWNTO 0);
		MDRout 		:  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		operation	:  IN  	 STD_LOGIC_VECTOR(3 DOWNTO 0);
		PCout 		:  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		rout0 		:  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		rout1 		:  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		rout2 		:  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		rout3 		:  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		rout4 		:  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		rout5 		:  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		rout6 		:  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		rout7 		:  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		rout8 		:  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		rout9 		:  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		routa 		:  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		routb 		:  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		routc 		:  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		routd 		:  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		route 		:  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		routf 		:  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		routy 		:  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		Zhigh 		:  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		Zlow 			:  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		CONout 		:  OUT 	 STD_LOGIC;
		Address		:  OUT 	 STD_LOGIC_VECTOR(8 DOWNTO 0);
		IRout 		:  OUT 	 STD_LOGIC_VECTOR(31 DOWNTO 0);
		Out_Port 	:  OUT 	 STD_LOGIC_VECTOR(31 DOWNTO 0);
		RALLin 		:  OUT 	 STD_LOGIC_VECTOR(15 DOWNTO 0);
		RALLout 		:  OUT  	 STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
end component ELEC374;

BEGIN

DUT: ELEC374 PORT MAP(  	
		ren0_tb 	 	,
		ren1_tb 	 	,
		ren2_tb 	 	,
		ren3_tb 	 	,
		ren4_tb 	 	,
		ren5_tb 	 	,
		ren6_tb 	 	,
		ren7_tb 	 	,
		ren8_tb 	 	,
		ren9_tb 	 	,
		renA_tb 	 	,
		renB_tb 	 	,
		renC_tb 	 	,
		renD_tb 	 	,
		renE_tb 	 	,
		renF_tb 	 	,
		clr_tb 		, 	
		clk_tb 		, 	
		R0out_tb 	, 	
		R1out_tb 	, 	
		R2out_tb 	, 	
		R3out_tb 	, 	
		R4out_tb 	, 	
		R5out_tb 	, 	
		R6out_tb 	, 	
		R7out_tb 	, 	
		R8out_tb 	, 	
		R9out_tb 	, 	
		R10out_tb 	, 	
		R11out_tb 	, 	
		R12out_tb 	, 	
		R13out_tb 	, 	
		R14out_tb 	, 	
		R15out_tb 	, 	
		Zhighout_tb ,  
		Zlowout_tb 	,
		InPortout_tb,  
		HIin_tb 	 	,
		PCin_tb 	 	,
		LOin_tb 	 	,
		MDRin_tb 	, 	
		HIoutEn_tb 	,
		LOoutEn_tb 	,
		PCoutEn_tb 	,
		MDRoutEn_tb ,  
		CoutEn_tb 	, 	
		reny_tb 	 	,
		renz_tb 	 	,
		ReadIn_tb 	, 	
		WriteEn_tb 	,
		MARin_tb 	, 	
		IRen_tb 	 	,
		CONin_tb 	, 	
		OUTen_tb 	, 	
		Strobe_tb 	, 	
		Gra_tb 		, 	
		Grb_tb 		, 	
		Grc_tb 		, 	
		SelEncin_tb ,  
		SelEncout_tb,  
		BAout_tb 	, 	
		Empty_tb	 	,
		HIout_tb 	, 	
		InPortIn_tb ,  
		LOout_tb 	, 	
		Mdatain_tb 	,
		MDRout_tb 	, 	
		operation_tb, 	
		PCout_tb 	, 	
		rout0_tb 	, 	
		rout1_tb 	, 	
		rout2_tb 	, 	
		rout3_tb 	, 	
		rout4_tb 	, 	
		rout5_tb 	, 	
		rout6_tb 	, 	
		rout7_tb 	, 	
		rout8_tb 	, 	
		rout9_tb 	, 	
		routa_tb 	, 	
		routb_tb 	, 	
		routc_tb 	, 	
		routd_tb 	, 	
		route_tb 	, 	
		routf_tb 	, 	
		routy_tb 	, 	
		Zhigh_tb 	, 	
		Zlow_tb 	 	,
		CONout_tb 	, 	
		Address_tb	, 	
		IRout_tb 	, 	
		Out_Port_tb , 	
		RALLin_tb 	, 	
		RALLout_tb 	
	);
	
clk_process : process
	begin
			clk_tb<='0','1' after 10 ns;
			wait for 20 ns;
end process clk_process;

process (clk_tb)

begin
	if (clk_tb'event and clk_tb ='1') then
		
		if (present_oper = add_op)then
			case Present_state is 
				when Default => 
						Present_state<=Reg_load1;
				when reg_load1 =>
						present_state<=Reg_load2;
				when reg_load2 =>
						present_state<=Reg_load3;
				when reg_load3 =>
						present_state<=T0;
				when T0 =>
						present_state<=T1;
				when T1 =>
						present_state<=T2;
				when T2 =>
						present_state<=T3;
				when T3 =>
						present_state<=T4;
				when T4 =>
						present_state<=T5;

				when	T5=> 
						present_state<= default;
						present_oper<= sub_op;
				when others =>
			end case;
			

		elsif(present_oper = sub_op) then
			case Present_state is 
				when Default => 
						Present_state<=Reg_load1;
				when reg_load1 =>
						present_state<=Reg_load2;
				when reg_load2 =>
						present_state<=Reg_load3;
				when reg_load3 =>
						present_state<=T0;
				when T0 =>
						present_state<=T1;
				when T1 =>
						present_state<=T2;
				when T2 =>
						present_state<=T3;
				when T3 =>
						present_state<=T4;
				when T4 =>
						present_state<=T5;
				when	T5=> 
						present_state<= default;
						present_oper<= mul_op;
				when others =>
			end case;
			
		elsif (present_oper = mul_op)then
			case Present_state is 
				when Default => 
						Present_state<=Reg_load1;
				when reg_load1 =>
						present_state<=Reg_load2;
				when reg_load2 =>
						present_state<=Reg_load3;
				when reg_load3 =>
						present_state<=T0;
				when T0 =>
						present_state<=T1;
				when T1 =>
						present_state<=T2;
				when T2 =>
						present_state<=T3;
				when T3 =>
						present_state<=T4;
				when T4 =>
						present_state<=T5;

				when	T5=> 
						present_state<= T6;
						
				when	T6=> 
						present_state<= default;
						present_oper<= div_op;
				when others =>
			end case;
			
		elsif (present_oper = div_op)then
			case Present_state is 
				when Default => 
						Present_state<=Reg_load1;
				when reg_load1 =>
						present_state<=Reg_load2;
				when reg_load2 =>
						present_state<=Reg_load3;
				when reg_load3 =>
						present_state<=T0;
				when T0 =>
						present_state<=T1;
				when T1 =>
						present_state<=T2;
				when T2 =>
						present_state<=T3;
				when T3 =>
						present_state<=T4;
				when T4 =>
						present_state<=T5;

				when	T5=> 
						present_state<= T6;
						
				when	T6=> 
						present_state<= default;
						present_oper<= and_op;
				when others =>
			end case;
			
		elsif(present_oper = and_op) then
			case Present_state is 
				when Default => 
						Present_state<=Reg_load1;
				when reg_load1 =>
						present_state<=Reg_load2;
				when reg_load2 =>
						present_state<=Reg_load3;
				when reg_load3 =>
						present_state<=T0;
				when T0 =>
						present_state<=T1;
				when T1 =>
						present_state<=T2;
				when T2 =>
						present_state<=T3;
				when T3 =>
						present_state<=T4;
				when T4 =>
						present_state<=T5;
				when	T5=> 
						present_state<= default;
						present_oper<= or_op;
				when others =>
			end case;
			
		elsif(present_oper = or_op) then
			case Present_state is 
				when Default => 
						Present_state<=Reg_load1;
				when reg_load1 =>
						present_state<=Reg_load2;
				when reg_load2 =>
						present_state<=Reg_load3;
				when reg_load3 =>
						present_state<=T0;
				when T0 =>
						present_state<=T1;
				when T1 =>
						present_state<=T2;
				when T2 =>
						present_state<=T3;
				when T3 =>
						present_state<=T4;
				when T4 =>
						present_state<=T5;
				when	T5=> 
						present_state<= default;
						present_oper<= shr_op;
				when others =>
			end case;
			
		elsif(present_oper = shr_op) then
			case Present_state is 
				when Default => 
						Present_state<=Reg_load1;
				when reg_load1 =>
						present_state<=Reg_load2;
				when reg_load2 =>
						present_state<=Reg_load3;
				when reg_load3 =>
						present_state<=T0;
				when T0 =>
						present_state<=T1;
				when T1 =>
						present_state<=T2;
				when T2 =>
						present_state<=T3;
				when T3 =>
						present_state<=T4;
				when T4 =>
						present_state<=T5;
				when	T5=> 
						present_state<= default;
						present_oper<= shl_op;
				when others =>
			end case;
		elsif(present_oper = shl_op) then
			case Present_state is 
				when Default => 
						Present_state<=Reg_load1;
				when reg_load1 =>
						present_state<=Reg_load2;
				when reg_load2 =>
						present_state<=Reg_load3;
				when reg_load3 =>
						present_state<=T0;
				when T0 =>
						present_state<=T1;
				when T1 =>
						present_state<=T2;
				when T2 =>
						present_state<=T3;
				when T3 =>
						present_state<=T4;
				when T4 =>
						present_state<=T5;
				when	T5=> 
						present_state<= default;
						present_oper<= ror_op;
				when others =>
			end case;
			
		elsif(present_oper = ror_op) then
			case Present_state is 
				when Default => 
						Present_state<=Reg_load1;
				when reg_load1 =>
						present_state<=Reg_load2;
				when reg_load2 =>
						present_state<=Reg_load3;
				when reg_load3 =>
						present_state<=T0;
				when T0 =>
						present_state<=T1;
				when T1 =>
						present_state<=T2;
				when T2 =>
						present_state<=T3;
				when T3 =>
						present_state<=T4;
				when T4 =>
						present_state<=T5;
				when	T5=> 
						present_state<= default;
						present_oper<= rol_op;
				when others =>
			end case;
			
			
		elsif(present_oper = rol_op) then
			case Present_state is 
				when Default => 
						Present_state<=Reg_load1;
				when reg_load1 =>
						present_state<=Reg_load2;
				when reg_load2 =>
						present_state<=Reg_load3;
				when reg_load3 =>
						present_state<=T0;
				when T0 =>
						present_state<=T1;
				when T1 =>
						present_state<=T2;
				when T2 =>
						present_state<=T3;
				when T3 =>
						present_state<=T4;
				when T4 =>
						present_state<=T5;
				when	T5=> 
						present_state<= default;
						present_oper<= neg_op;
				when others =>
			end case;
			
		elsif(present_oper = neg_op) then
			case Present_state is 
				when Default => 
						Present_state<=Reg_load1;
				when reg_load1 =>
						present_state<=Reg_load2;
				when reg_load2 =>
						present_state<=Reg_load3;
				when reg_load3 =>
						present_state<=T0;
				when T0 =>
						present_state<=T1;
				when T1 =>
						present_state<=T2;
				when T2 =>
						present_state<=T3;
				when T3 =>
						present_state<=T4;
				when T4 =>
						present_state<=T5;
				when	T5=> 
						present_state<= default;
						present_oper<= not_op;
				when others =>
			end case;

		elsif(present_oper = not_op) then
			case Present_state is 
				when Default => 
						Present_state<=Reg_load1;
				when reg_load1 =>
						present_state<=Reg_load2;
				when reg_load2 =>
						present_state<=Reg_load3;
				when reg_load3 =>
						present_state<=T0;
				when T0 =>
						present_state<=T1;
				when T1 =>
						present_state<=T2;
				when T2 =>
						present_state<=T3;
				when T3 =>
						present_state<=T4;
				when T4 =>
						present_state<=T5;
				when others =>
			end case;
		end if;
	end if;
end process;

Process(present_state)
begin	
		CASE present_state IS
				WHEN default =>
					PCin_tb<='0'; Zlowout_tb<='0'; mdroutEn_tb<='0';
					R1Out_tb<='0';R2Out_tb<='0';R3Out_tb<='0'; 
					PCin_tb <= '0'; MDRin_tb <= '0';
					ren1_tb<='0'; readin_tb<='0';
					clr_tb <= '1', '0' after 4 ns;
					renz_tb <= '0';
					ren0_tb <= '0';
				   ren1_tb <= '0';
				   ren2_tb <= '0';
				   ren3_tb <= '0';
				   ren4_tb <= '0';
				   ren5_tb <= '0';
				   ren6_tb <= '0';
				   ren7_tb <= '0';
				   ren8_tb <= '0';
				   ren9_tb <= '0';
				   renA_tb <= '0';
				   renB_tb <= '0';
				   renC_tb <= '0';
				   renD_tb <= '0';
				   renE_tb <= '0';
				   renF_tb <= '0';
					R0out_tb <= '0';
					R1out_tb <= '0';
					R2out_tb <= '0';
					R3out_tb <= '0';
					R4out_tb <= '0';
					R5out_tb <= '0';
					R6out_tb <= '0';
					R7out_tb <= '0';
					R8out_tb <= '0';
					R9out_tb <= '0';
					R10out_tb <= '0';
					R11out_tb <= '0';
					R12out_tb <= '0';
					R13out_tb <= '0';
					R14out_tb <= '0';
					R15out_tb <= '0';
					Zhighout_tb <= '0';
					InPortout_tb <= '0';
					HIin_tb <= '0';
					
					Loin_tb <='0';
					HIoutEn_tb <= '0';
					LOoutEn_tb<='0';
					PcoutEn_tb <= '0';
					CoutEn_tb<='0';
					reny_tb <= '0';
					operation_tb <= "0000";
					Mdatain_tb<=x"00000012";
					
					--routy_tb <= x"00000000";
					empty_tb <= x"00000000";
				   operation_tb<="0000";
				
				
				
				when reg_load1 => 
					mdatain_tb<= x"00006666";
					readin_tb<='1','0' after 10 ns;
					mdrin_tb<='1','0'after 10 ns;
					mdroutEn_tb<='1', '0' after 10 ns ;
					
					ren1_tb<='1', '0' after 10 ns ;
				
				when reg_load2 =>
					mdatain_tb <= x"00000015";
					readin_tb<='1','0' after 10 ns;
					mdrin_tb<='1','0'after 10 ns;
					mdroutEn_tb<='1', '0' after 10 ns ;
					
					
					ren2_tb<='1', '0' after 10 ns ;
					
				when reg_load3 =>
					mdatain_tb <= x"00000004";
					readin_tb<='1','0' after 10 ns;
					mdrin_tb<='1','0'after 10 ns;
					mdroutEn_tb<='1', '0' after 10 ns ;
					ren3_tb<='1', '0' after 10 ns ;
					
				when T0 =>
					PCoutEn_tb<='1', '0' after 10 ns ;
					renz_tb<='1', '0' after 10 ns ;
					
					
				when T1 => 
					Zlowout_tb<='1', '0' after 10 ns ; PCin_tb<='1', '0' after 10 ns ;
					readin_tb<='1', '0' after 10 ns ; MDRin_tb<='1', '0' after 10 ns ;  
					--Mdatain_tb<=x"294c0000"; 
					
				when T2 =>
					
					MDRoutEn_tb<='1', '0' after 10 ns ; 
					
				when T3 => 
					--
					r2out_tb<='1', '0' after 10 ns;
					reny_tb<='1', '0' after 10 ns ; --readin_tb<='1', '0' after 10 ns ;MDRin_tb<='1', '0' after 10 ns ;
				when T4 => 
					r3out_tb<='1', '0' after 10 ns ; renz_tb<='1', '0' after 10 ns ;
					if (present_oper = add_op) then operation_tb<="0001";
					elsif (present_oper = sub_op) then operation_tb<="0010";
					elsif (present_oper = and_op) then operation_tb<="0000";
					elsif (present_oper = mul_op) then operation_tb<="0011";
					elsif (present_oper = div_op) then operation_tb<="0100";
					elsif (present_oper = or_op ) then operation_tb<="0101";
					elsif (present_oper = shr_op) then operation_tb<="0110";
					elsif (present_oper = shl_op) then operation_tb<="0111";
					elsif (present_oper = ror_op) then operation_tb<="1000";
					elsif (present_oper = rol_op) then operation_tb<="1001";
					elsif (present_oper = neg_op) then operation_tb<="1010";
					elsif (present_oper = not_op) then operation_tb<="1011";
					end if;
				
				when T5 =>
					zlowout_tb<='1', '0' after 10 ns ; ren1_tb<='1', '0' after 10 ns ; LOin_tb<='1', '0' after 10 ns ; --operation_tb<="1111"; renz_tb<='0';
				
				when T6 => 
					zhighout_tb<='1', '0' after 10 ns ; Hiin_tb<='1', '0' after 10 ns ; --operation_tb<="1111"; renz_tb<='0';
				when others =>
				
			end case;
		end process;
					
		

end architecture testbench_arch;
	