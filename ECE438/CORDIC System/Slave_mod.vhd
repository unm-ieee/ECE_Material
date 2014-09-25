library ieee;                                       --Libraries used in file
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

entity CORDIC_NEW is
  port(
    SYS_CLK_H : in std_logic;                       --System Clock
    SYS_RST_H : in std_logic;                       --System Reset
    D_BUS : inout std_logic_vector(31 downto 0);    --Data Bus  
    A_BUS : in std_logic_vector(31 downto 0);       --Address Bus
    READ_H : in std_logic;                          --Read/Write Line Read = '1', Write = '0'
    REQ_H : in std_logic;                           --Request line controlled by Master  
    ACK_H : out std_logic                           --Acknowledge controlled by Slave
    );
  end entity;
  
architecture CORDIC_NEW of CORDIC_NEW is            --begin architecture here

--State Control Signals
type State_Type is (Idle, S1, S2, S3, S4, S5, S6);                            --State used within CORDIC system
signal Current_State : State_Type;                                            --Current_State used to define PSR        
signal shift_count : integer := 0;                                            --Counts iterations up to 36 for work states

--Used for shift registers
signal zeros : std_logic_vector(35 downto 0) := (others => '0');              --Register full of zeros used to shift the shift register 
signal ones : std_logic_vector(35 downto 0) := (others => '1');               --Register full of ones used to shift the shift register 

--Shift Value Registers
signal X_Value_Shift : std_logic_vector(35 downto 0):= (others => '0');       --Shifted Y Value basically: (Yi x 2^-1)
signal Y_Value_Shift : std_logic_vector(35 downto 0):= (others => '0');       --Shifted X Value basically: (Xi x 2^-1)

--X, Y, Z Registers
signal Z_Value : std_logic_vector(35 downto 0) := X"000000000";               --Z Value Register intialized to 0
signal Y_Value : std_logic_vector(35 downto 0) := X"000000000";               --Y Value Register intialized to 0 
signal X_Value : std_logic_vector(35 downto 0) := X"04DBA5E35";               --X Value register intialized to 0.60725

type arctan_array_type is array(0 to 35) of std_logic_vector(35 downto 0);    --Arctan array hardcoded to represent 36 values of (arctan(2^-i))
constant arctan_array: Arctan_array_type := (x"6487ED511", x"3B58CE0AC", x"1F5B75F92", 
            x"0FEADD4D5", x"07FD56EDC", x"03FFAAB77", x"01FFF555B", x"00FFFEAAA", x"007FFFD55", 
            x"003FFFFAA", x"001FFFFF5", x"000FFFFFE", x"0007FFFFF", x"0003FFFFF", x"0001FFFFF", 
            x"0000FFFFF", x"00007FFFF", x"00003FFFF", x"00001FFFF", x"00000FFFF", x"000007FFF", 
            x"000003FFF", x"000001FFF", x"000000FFF", x"0000007FF", x"0000003FF", x"0000001FF", 
            x"000000100", x"000000080", x"000000040", x"000000020", x"000000010", x"000000008", 
            x"000000004", x"000000002", x"000000001");

begin
  
--REGISTER CONTROL PROCESSES:  
Z_Register : process (SYS_CLK_H, SYS_RST_H)               --Z Register Control
begin
  if SYS_RST_H = '1' then                                 --Z Register reset
    Z_Value <= (others => '0');
  elsif RISING_EDGE(SYS_CLK_H) then
    if current_state = S1 and A_BUS = X"FFFF_1040" then   --Load Z Register when in State 1 only if address equals 0X"FFFF_1040"
      Z_Value <= D_Bus & "0000";
    elsif current_state = S2 then                         --Perform work in State 2 
      if Z_Value(35) = '0' then                           --Check MSB of Z value to check to positive or negative
        Z_Value <= Z_Value - arctan_array(shift_count);   --If Postive subrtact using correct array value represented by shift count
      else
        Z_Value <= Z_Value + arctan_array(shift_count);   --Else add
      end if;  
    end if;  
  end if;     
end process; 

X_Register : process (SYS_CLK_H, SYS_RST_H)               --X Register Control
begin
  if SYS_RST_H = '1' then                                 --X Register reset
    X_Value <= (others => '0');
  elsif RISING_EDGE(SYS_CLK_H) then
    if current_state = S1 then                            --Intialize X Register to 0.60725 following every idle state
      X_Value <= X"4DBA5E353";   
    elsif current_state = S2 then                         --State 2 contains work
      if Z_Value(35) = '0' then                           --Check MSB to be positve or negative
        X_Value <= X_Value - Y_Value_Shift;               --If postive subract Y Shift Value from X Value according to CORDIC Algorithm
      else
        X_Value <= X_Value + Y_Value_Shift;               --Else if negative subtract
      end if;  
    end if;  
  end if;     
end process;

Y_Register : process (SYS_CLK_H, SYS_RST_H)               --Y Register Control
begin
  if SYS_RST_H = '1' then
    Y_Value <= (others => '0');                           --Y Register reset
  elsif RISING_EDGE(SYS_CLK_H) then
    if current_state = S1 then
      Y_Value <= X"000000000";                            --Intialize Y Register to 0 after every Idle state to prepare for work
    elsif current_state = S2 then
      if Z_Value(35) = '0' then                           --Check positve or negative
        Y_Value <= Y_Value + X_Value_Shift;               --Do work
      else
        Y_Value <= Y_Value - X_Value_Shift;               --If negative subtract
      end if;  
    end if;  
  end if;     
end process;  

X_Shift_Register : process (SYS_CLK_H, SYS_RST_H)         --Controls X Shift Register
begin
  if SYS_RST_H = '1' then
    X_Value_Shift <= (others => '0');
  elsif RISING_EDGE(SYS_CLK_H) then
    if current_state = S1 then                            --Intialize register following every idle to prepare for work
      X_Value_Shift <= X"4DBA5E353";    
    elsif current_state = S3 then                         --In state three perfrom shift work
      if shift_count = 1 and X_Value(35) = '0' then       --Take care of first case of shift because zero register can't be utilized ie: zeros(0 downto 0)
        X_Value_shift <= '0' & X_Value(35 downto 1);      
      elsif shift_count = 1 and X_Value(35) = '1' then    --Handle the negative case by concatinating a '1' in the front of value
        X_Value_shift <= '1' & X_Value(35 downto 1); 
      elsif X_Value(35) = '0' then                        -- check for postive or negative value
        X_Value_shift <= zeros(shift_count - 1 downto 0) & X_Value(35 downto shift_count);  --If positive use zero register to shift in with X register
      else 
        X_Value_shift <= ones(shift_count - 1 downto 0) & X_Value(35 downto shift_count);   -- Else use ones register to shift in for negative case
      end if;  
    end if;  
  end if;     
end process;

Y_Shift_Register : process (SYS_CLK_H, SYS_RST_H)         --Y shift register
begin
  if SYS_RST_H = '1' then
    Y_Value_Shift <= (others => '0');                     --If reset asserted reset to zero
  elsif RISING_EDGE(SYS_CLK_H) then
    if current_state = S1 then
      Y_Value_Shift <= X"000000000";                      --Reinitialize back to zero after every idle to prepare for work
    elsif current_state = S3 then
      if shift_count = 1 and Y_Value(35) = '0' then       --Handle first case of shift here
        Y_Value_shift <= '0' & Y_Value(35 downto 1); 
      elsif shift_count = 1 and Y_Value(35) = '1' then    --Negative case of first shift 
        Y_Value_shift <= '1' & Y_Value(35 downto 1); 
      elsif Y_Value(35) = '0' then
        Y_Value_shift <= zeros(shift_count - 1 downto 0) & Y_Value(35 downto shift_count);  --Shift postive values using zero register accordign to shift count
      else
        Y_Value_shift <= ones(shift_count - 1 downto 0) & Y_Value(35 downto shift_count);   --Shift negative value using ones register
      end if;  
    end if;  
  end if;     
end process;


--OUTPUT SIGNAL CONTROL:
ACK_H <= '1' when (Current_State = S4 or Current_State = S5) else         --Assert ACK high when work is completed in States 4 and 5. 
       '0' when Current_State = S6 else                                   --Deassert ACK in S6
       'Z'; 

D_BUS <= Z_Value(35 downto 4) when Current_State = S5 and A_BUS = X"FFFF_1040" else   --Load D_BUS in State 5 according to the addresss requested.
        X_Value(35 downto 4) when Current_State = S5 and A_BUS = X"FFFF_1044" else
        Y_Value(35 downto 4) when Current_State = S5 and A_BUS = X"FFFF_1048" else
        (others => 'Z');
         

--STATE MACHINE/ DATA PATH CONTOL PROCESS:
Current_State_Control : process (SYS_CLK_H, SYS_RST_H)  --Process SM used to control PSR and work  
begin
if (SYS_RST_H = '1') then                               --System reset parameters    
  D_BUS <= (others => 'Z');                             --Output D_BUS set to tri state
  ACK_H <= 'Z';                                         --Output ACK set to tri state
  Shift_Count <= 0;                                     --Shift Count reset back to zero
  Current_State <= Idle;                                --Following reset wait in idle for request from Master

elsif RISING_EDGE(SYS_CLK_H) then                       --SM functions on rising edge of clock
  case Current_State is
    
    when Idle =>
      Shift_Count <= 0;                                 --Shift count reset following completion of work sequence
      if REQ_H = '0' then                               --Wait for request to be asserted in idle
        current_state <= Idle;
      elsif REQ_H = '1' and READ_H = '0' then           --If request = '1' and write mode goto State 1
        current_state <= S1;                                                                         
      else 
        current_state <= S5;                            --If Request = '1' and read mode goto State 5  
      end if;  
      
    when S1 =>                                          --Load Z value for write mode here, then next state is S2
      current_state <= S2;
      
    when S2 =>                                          --State 2 check MSB of Z value and performs work on X,Y,and Z according to CORDIC Algorithm
      if shift_count <= 34 then                         --Use shift count to count 36 iterations of work
        current_state <= S3;                              
        shift_count <= shift_count + 1;                 --Increment shift count here  
      else
        current_state <= S4;                            --once 36 iterations have been competed move to S4 (ACK is set high in S4)
      end if; 
      
    when S3 =>                                          --Shift control state
      current_state <= S2;                              --Always returns to S2 to perform CORDIC equations
      
    when S4 =>                                          --State 4 used to set ACK high
      if REQ_H = '1' then                               --requeset is still asserted wait here in S4 til its deasserted
        current_state <= S4;
      else      
        current_state <= S6;                            --Once request = '0' release ACK in State 6
      end if;
      
    when S5 =>                                          --State to read out X,Y,Z values out to Master on D_BUS
      if REQ_H = '1'then
        current_state <= S5;
      else
        current_state <= S6;                            --Once requeset is released bounce to S6 to release ACK
      end if;  
      
    when S6 =>                                          --State used to deassert ACK
      current_state <= idle;        
    
    end case;
end if;
end process;
end architecture;                                       --All done aqui
    
