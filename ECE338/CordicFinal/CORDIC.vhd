library IEEE					 ;
use IEEE.STD_LOGIC_1164.ALL ;
use IEEE.NUMERIC_STD.ALL	 ;
use ieee.math_real.all		 ;

entity CORDIC is
    Port (    
			  A_BUS        : in  STD_LOGIC_VECTOR ( 31 downto 0 ); --adress bus
           REQ_H 		 	: in  STD_LOGIC;
           ACK_H 		 	: out  STD_LOGIC;
           READ_H			: in  STD_LOGIC;
           SYS_CLK_H 	: in  STD_LOGIC;
           SYS_RST_H	 	: in  STD_LOGIC;
			  D_BUS 			: inout  STD_LOGIC_VECTOR (31 downto 0) --data buss
);
end CORDIC;

architecture Behavioral of CORDIC is

type arctanz is array (0 to 35) of std_logic_vector (35 downto 0);
signal alpha : arctanz;
type tempstorage is array (0 to 143) of std_logic_vector (35 downto 0);  --create a temp area to store values from concantination operators
signal tempst : tempstorage := (others => (others => '0'));

signal Y_INITIAL : STD_LOGIC_VECTOR(35 downto 0) := (others => '0'); --inital Y value
signal X_INITIAL : STD_LOGIC_VECTOR(35 downto 0) := (others => '1'); --inital X value
signal WRITE_ADR: STD_LOGIC;											 -- writing address
signal READ_ADR : STD_LOGIC;                                 -- reading address
signal counter  : INTEGER := 0;                              -- counter is initial to zero 
signal done 	 : INTEGER := 35;                             -- done (35 indicates the last loop iteration)
signal ZERO : STD_LOGIC_VECTOR(35 downto 0) := (others => '0'); --Zero vector
signal Z_RESULT : STD_LOGIC_VECTOR(35 downto 0);                -- final z value
signal X_RESULT : STD_LOGIC_VECTOR(35 downto 0);                -- final x value
signal Y_RESULT : STD_LOGIC_VECTOR(35 downto 0);                -- final y value
signal Z_NEXT : STD_LOGIC_VECTOR(35 downto 0);              --  next z value
signal X_NEXT : STD_LOGIC_VECTOR(35 downto 0);              --  next x value
signal Y_NEXT : STD_LOGIC_VECTOR(35 downto 0);              --  next y value
signal Z : STD_LOGIC_VECTOR(35 downto 0);                	--  z value
signal X : STD_LOGIC_VECTOR(35 downto 0);              	 	--  x value
signal Y : STD_LOGIC_VECTOR(35 downto 0);                	--  y value
type PSR_TYPE is (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9);                  --declaration for states for state machine
signal PSR: PSR_TYPE;                                       --instantiate present state register

begin

--sets up alpha values
alpha(0) <= X"6487ED511";
alpha(1) <= X"3B58CE0AC";
alpha(2) <= X"1F5B75F92";
alpha(3) <= X"0FEADD4D5";
alpha(4) <= X"07FD56EDC";
alpha(5) <= X"03FFAAB77";
alpha(6) <= X"01FFF555B";
alpha(7) <= X"00FFFEAAA";
alpha(8) <= X"007FFFD55";
alpha(9) <= X"003FFFFAA";
alpha(10)<= X"001FFFFF5";
alpha(11)<= X"000FFFFFE";
alpha(12)<= X"0007FFFFF";
alpha(13)<= X"0003FFFFF";
alpha(14)<= X"0001FFFFF";
alpha(15)<= X"0000FFFFF";
alpha(16)<= X"00007FFFF";
alpha(17)<= X"00003FFFF";
alpha(18)<= X"00001FFFF";
alpha(19)<= X"00000FFFF";
alpha(20)<= X"000007FFF";
alpha(21)<= X"000003FFF";
alpha(22)<= X"000001FFF";
alpha(23)<= X"000000FFF";
alpha(24)<= X"0000007FF";
alpha(25)<= X"0000003FF";
alpha(26)<= X"0000001FF";
alpha(27)<= X"000000100";
alpha(28)<= X"000000080";
alpha(29)<= X"000000040";
alpha(30)<= X"000000020";
alpha(31)<= X"000000010";
alpha(32)<= X"000000008";
alpha(33)<= X"000000004";
alpha(34)<= X"000000002";
alpha(35)<= X"000000001";
-- end arctan alpha vals

--begin state machine description
reg : process (SYS_CLK_H , SYS_RST_H, PSR) is begin
	if SYS_RST_H = '1' then PSR <= s0;
	
	elsif rising_edge (SYS_CLK_H) then 
	case PSR is 
	
	when S0 => 
			if WRITE_ADR = '1' and REQ_H = '1'--state 0 goes to S1 when write and request both are high
				then PSR <= s1 ;
				else PSR <= s0 ;
			end if;
	
	when s1 => PSR <=s2;
	--S1 & S2 always go to the next states
	when s2 => PSR <= s3;
	
	when s3 => 
		if counter /= done then PSR <= s2; --state 3 will go to S4 when counter = done, if it isnt equal, then it goes to S2
			else PSR <= s4;
		end if;
	
	when s4 => 
		if REQ_H ='1' then PSR <= s5; --s4 will go to S5 when the data request signal goes high, other wise it will hold onto the data in S4
		elsif REQ_H /= '1' then PSR <= s4;
	end if;
	--the following states will proceed to the next state when READ&REQ are both high
	--states move so that ACK releases the bus and allows data to be written out on the D_BUS system
	when s5 =>   
		if READ_H = '1' and REQ_H = '1' then PSR <= s6;
			else psR <= s5;
		end if;	
 
	when s6 => PSR <=s7;

	when s7 => 
		if READ_H = '1' and REQ_H = '1' then PSR <= s8;
			else psR <= s7;
		end if;

	when s8 => PSR <=s9;
	
	when s9 => 
		if READ_H = '1' and REQ_H = '1' then PSR <= s9;
			else psR <= s0;
		end if;
		
	end case;
end if;
end process;
--end state machine description

--begin system counter register
counter_reg: process ( SYS_CLK_H, SYS_RST_H,PSR,counter ) is begin
	if SYS_RST_H = '1' then
		counter <= 0;
		
   elsif rising_edge ( SYS_CLK_H ) then
      if 	PSR = S2 then counter <= counter + 1;
		--counter is incrementined in S2 and evaluated in S3
		
      elsif PSR = S3 then  counter <= counter;
      
		elsif PSR = S0 then counter <= 0;
		-- if PSR is in s0 then counter is reset to allow a new calculation
		
		end if;
	end if;
end process;
--end of counter register

--write adresses & read adresses'
WRITE_ADR <= '1' when A_BUS = X"FFFF_1040" else '0'; 

READ_ADR  <= '1' when A_BUS = X"FFFF_1040" or 
							 A_BUS = X"FFFF_1044" or 
							 A_BUS = X"FFFF_1048" else '0';

ACK_H <= '1' when PSR = S1 OR PSR = S5 OR PSR = S7 OR PSR = S9 else 'Z';		
--delcares when ack should be high

--begin Cordic manipulation registers (following given formulai)
ZXY_Reg0:process ( SYS_CLK_H, SYS_RST_H,PSR,Z,X,Y,counter ) is begin
    if SYS_RST_H = '1' then
		Z <= ZERO;
    elsif rising_edge ( SYS_CLK_H ) then
	 --evaluates inital X,y,z and imputs into "variable" vectors
        if PSR = S1 then
         Z <= D_BUS & ZERO(3 downto 0 );
		   X <= X_INITIAL;
		   Y <= Y_INITIAL;
		  elsif PSR = S2 then
		  --all calculations are done here in S2, depending on Z's sign bit it will be sub sub add or add add sub
				if Z(35)='0' then
					Z_NEXT <= std_logic_vector (signed (Z) - signed(alpha(counter)));
					tempst(counter) <= ZERO(counter-1 downto 0) & Y(35 downto counter);
					X_NEXT <= std_logic_vector (signed (X) - signed(tempst(counter)));
					tempst(counter + 36) <= ZERO(counter-1 downto 0) & X(35 downto counter);
					Y_NEXT <= std_logic_vector (signed (Y) + signed(tempst(counter +35)));
				else
					Z_NEXT <= std_logic_vector (signed (Z) + signed(alpha(counter)));
					tempst(counter + 72) <= ZERO(counter-1 downto 0) & Y(35 downto counter);
					X_NEXT <= std_logic_vector (signed (X) + signed(tempst(counter + 72)));
					tempst(counter + 108) <= ZERO(counter-1 downto 0) & X(35 downto counter);
					Y_NEXT <= std_logic_vector (signed (Y) - signed(tempst(counter + 108)));
				end if;
			-- S3 assigns next values to present values
			elsif PSR = S3 then
				Z <= Z_NEXT;
				X <= X_NEXT;
				Y <= Y_NEXT;
			-- S4 assigns present to final
        elsif PSR = S4 then
		  		Z_RESULT <= Z;
				X_RESULT <= X;
				Y_RESULT <= Y;
        end if;
	end if;
end process;

--output X,Y,&Z vector results to D bus 
--depending on what state is asserted and which adress is given
--respectively
D_BUS <=Z_RESULT(35 downto 4) when PSR = S5 and A_BUS = X"FFFF_1040" else
        X_RESULT(35 downto 4) when PSR = S7 and A_BUS = X"FFFF_1044" else
		  Y_RESULT(35 downto 4) when PSR = S9 and A_BUS = X"FFFF_1048" else 
		  (others => 'Z') ;
--end
end Behavioral;
