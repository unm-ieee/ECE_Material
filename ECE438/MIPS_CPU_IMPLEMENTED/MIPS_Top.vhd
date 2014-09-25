library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity MIPS_Top is
  generic (
    MEM_DLY : TIME := 0.5 ns;
    CYC_TIME: TIME := 2 ns
  );
port(
  clock : in std_logic;
  reset : in std_logic
);

end entity MIPS_Top;

architecture MIPS_Top of MIPS_Top is

signal Program_Counter_reg : std_logic_vector(31 downto 0);  
signal Instruction_Data_reg : std_logic_vector(31 downto 0); 
signal Stall_reg : std_logic;
signal Write_Back : std_logic;
signal Memory_Read : std_logic;
signal Memory_Write : std_logic;
signal Execute : std_logic; 
signal Read_Register_1 : std_logic_vector(4 downto 0);
signal Reg_Value_1 : std_logic_vector(31 downto 0);
signal Read_Register_2 : std_logic_vector(4 downto 0);
signal Reg_Value_2 : std_logic_vector(31 downto 0);
signal Write_Address : std_logic_vector(4 downto 0);
signal Write_Value : std_logic_vector(31 downto 0);
signal Sign_Extended : std_logic_vector(31 downto 0);
signal Opcode_Register_Block : std_logic_vector(5 downto 0);
signal Write_Address_Mux : std_logic_vector(4 downto 0);
signal Write_Enable_Mux : std_logic;
signal Write_Value_Mux : std_logic_vector(31 downto 0);
signal LUI_Value : std_logic_vector(31 downto 0);
signal Dont_Branch : std_logic;
signal Branch_Kill : std_logic;
signal Branch_Kill_reg : std_logic;
signal Write_Back_reg : std_logic;
signal Memory_Read_reg : std_logic;
signal Memory_Write_reg : std_logic;
signal Execute_reg : std_logic;
signal Program_Counter_2_reg : std_logic_vector(31 downto 0);
signal Read_Data_1_reg : std_logic_vector(31 downto 0);
signal Read_Data_2_reg : std_logic_vector(31 downto 0);
signal sign_extenderrr : std_logic_vector(31 downto 0);
signal RS_Instruction_25_Downto_21_reg : std_logic_vector(4 downto 0);
signal RT_Instruction_20_Downto_16_reg : std_logic_vector(4 downto 0);
signal RD_Instruction_15_Downto_11_reg : std_logic_vector(4 downto 0);
signal LUI_Value_reg : std_logic_vector(31 downto 0);
signal ALU_op_line : std_logic_vector(5 downto 0);
signal Dont_Branch_reg : std_logic;
signal Stall_reg_2 : std_logic;
signal ALU_Control : std_logic_vector(3 downto 0);
signal ALU_Input_1 : std_logic_vector(31 downto 0);
signal ALU_Input_2 : std_logic_vector(31 downto 0);
signal Zero : std_logic;
signal ALU_Result : std_logic_vector(31 downto 0); 
signal Instruction_Mux : std_logic_vector(4 downto 0);
signal Shift_Value : std_logic_vector(31 downto 0);
signal ALU_Addition : std_logic_vector(31 downto 0);
signal Use_ALU_Result : std_logic;
signal Write_Back_2_reg : std_logic;
signal Memory_Read_2_reg : std_logic;
signal Memory_Write_2_reg :std_logic;
signal ALU_Addition_reg : std_logic_vector(31 downto 0);
signal ALU_Zero_reg : std_logic;
signal ALU_Result_reg : std_logic_vector(31 downto 0);
signal Read_Data_1_2_reg : std_logic_vector(31 downto 0);
signal Read_Data_2_2_reg : std_logic_vector(31 downto 0);
signal Intruction_Mux_reg : std_logic_vector(4 downto 0); 
signal opcode_mem_data : std_logic_vector(5 downto 0);
signal Branch_Kill_reg_2 : std_logic;
signal Stall_reg_3 : std_logic;
signal Data_Out : STD_LOGIC_VECTOR (31 downto 0);
signal Data_In : STD_LOGIC_VECTOR (31 downto 0);
signal ALU_Result_forward : STD_LOGIC_VECTOR (31 downto 0);
signal Mem_Adrs_Loc : STD_LOGIC_VECTOR (31 downto 0);  
signal Data_In_Mux : std_logic_vector (31 downto 0); 
signal Instruction_Address_PC : std_logic_vector(31 downto 0);
signal Instruction_Data : std_logic_vector(31 downto 0);
signal PC_Mux : std_logic_vector(31 downto 0);
signal Program_Counter : STD_LOGIC_VECTOR ( 31 downto 0 ) := X"0000_0010";
signal PCsrc : std_logic;
signal PC_reg : std_logic_vector(31 downto 0);
signal OpCode_IM : std_logic_vector(5 downto 0);
signal Stall : std_logic;
signal WB_MemtoReg_reg : std_logic;
signal Read_Data_reg : std_logic_vector(31 downto 0);
signal forward_adress : std_logic_vector(31 downto 0);
signal IM_MUX_mem : std_logic_vector(4 downto 0); 
signal WB_dat : std_logic_vector(5 downto 0);

begin

PC_PROC : process (reset, clock) 
begin
  if reset = '1' then
    Program_Counter <= (others => '0');
  elsif rising_edge(clock) then
    Program_Counter <= PC_Mux + 4;
  end if;
end process;


Instruction_Memory : entity work.INSTR_MEM
  port map(
    INSTRUC => Instruction_Data,       
    CLK => Clock,
	 PC => Program_Counter
    );

OpCode_IM <= Instruction_Data(31 downto 26);     

--implied latch wanted here
Stall <= '0' when reset = '1' else 
         '0' when PCsrc = '1' else
         '1' when 
			((OpCode_IM = "000101" or Opcode_Register_Block = "000101" or ALU_op_line = "000101" or opcode_mem_data = "000101") and dont_branch_reg = '0');  
               

--Program counter multiplexer
PC_Mux <= Program_Counter when PCsrc = '0' else
          ALU_Addition_reg when PCsrc = '1';

Registers_Instruction_Fetch_Decode : process(clock, reset)
begin
  if reset = '1' then
    Program_Counter_reg <= (others => '0');
    Instruction_Data_reg <= (others => '0');
    Stall_reg <= '0';
  elsif rising_edge(clock) then
    Program_Counter_reg <= Program_Counter; 
    Instruction_Data_reg <= Instruction_Data;
    Stall_reg <= Stall;
 end if;  
end process;

Registers : entity work.register_set
  port map(
    read_value_one => Instruction_Data_reg(25 downto 21),   	
    register_out_1 => Reg_Value_1,                          	
    read_value_two => Instruction_Data_reg(20 downto 16),    	
    register_out_2 => Reg_Value_2,                          	
    write_adress 	 => IM_MUX_mem, 						
    write_out_valu => Write_Value,  									
    write_enable   => WB_MemtoReg_reg, 								
    clock => Clock,                                    
    reset => reset
  );


process (clock, reset)
  begin
    if reset = '1' then 
      Dont_Branch <= '0';
    elsif rising_edge(clock) then 
      if zero = '1' and (Read_Data_2_reg = X"00000000") then
      Dont_Branch <= '1';
      end if;
    end if;   
end process;               
               
Branch_Kill <= '1' when Opcode_Register_Block = "000101" else '0';               

--Opcode available for register block 
Opcode_Register_Block <= Instruction_Data_reg(31 downto 26); 
 
LUI_Value <= Instruction_Data_reg(15 downto 0) & X"0000";

--Control Hive
Write_Back <= '0' when reset = '1' else 
              '1' when Opcode_Register_Block = "001111" else
              '1' when Opcode_Register_Block = "001101" else
              '1' when Opcode_Register_Block = "001000" else
              '1' when Opcode_Register_Block = "000000" else
              '1' when Opcode_Register_Block = "100011" else
              '0'; 
              
Memory_Read <= '0' when reset = '1' or stall_reg_2 = '1'  else
               '0' when Opcode_Register_Block = "001111" else
               '0' when Opcode_Register_Block = "001101" else
               '1' when Opcode_Register_Block = "100011" else
               '0' when Opcode_Register_Block = "101011"; 
               
Memory_Write <= '0' when reset = '1' or stall_reg_2 = '1'  else
                '0' when Opcode_Register_Block = "001111" else
                '0' when Opcode_Register_Block = "001101" else
                '1' when Opcode_Register_Block = "101011" else
                '0';  

--Implied Latches still desired here
Execute <= '0' when reset = '1' or stall_reg_2 = '1' else
           '0' when Opcode_Register_Block = "001111" else
           '0' when Opcode_Register_Block = "001101";                                            

Sign_Extended <= X"00000000" when reset = '1' else
                 X"0000" & Instruction_Data_reg(15 downto 0) when Instruction_Data_reg(15) = '0' else
                 X"FFFF" & Instruction_Data_reg(15 downto 0) when Instruction_Data_reg(15) = '1'; 

Registers_Instruction_Decode_Execute : process(clock, reset)
begin
  if reset = '1' then
    Write_Back_reg <= '0';
    Memory_Read_reg <= '0';
    Memory_Write_reg <= '0';
    Execute_reg <= '0';
    Program_Counter_2_reg <= (others => '0');
    Read_Data_1_reg <= (others => '0');
    Read_Data_2_reg <= (others => '0');
    sign_extenderrr <= (others => '0');
    RS_Instruction_25_Downto_21_reg <= (others => '0');
    RT_Instruction_20_Downto_16_reg <= (others => '0');
    RD_Instruction_15_Downto_11_reg <= (others => '0');
    ALU_op_line <= (others => '0');
    LUI_Value_reg <= (others => '0');
    Dont_Branch_reg <= '0';
    Branch_Kill_reg <= '0';
    Stall_reg_2 <= '0';
  elsif rising_edge(clock) then
    Write_Back_reg <= Write_Back;
    Memory_Read_reg <= Memory_Read;
    Memory_Write_reg <= Memory_Write;
    Execute_reg <= Execute;
    Program_Counter_2_reg <= Program_Counter_reg;
    Read_Data_1_reg <= Reg_Value_1; 
    Read_Data_2_reg <= Reg_Value_2;
    sign_extenderrr <= Sign_Extended;
    RS_Instruction_25_Downto_21_reg <= Instruction_Data_reg(25 downto 21);
    RT_Instruction_20_Downto_16_reg <= Instruction_Data_reg(20 downto 16);
    RD_Instruction_15_Downto_11_reg <= Instruction_Data_reg(15 downto 11);
    LUI_Value_reg <= LUI_Value;
    ALU_op_line <= Opcode_Register_Block;
    Dont_Branch_reg <= Dont_Branch;
    Branch_Kill_reg <= Branch_Kill;
    Stall_reg_2 <= Stall_reg;
  end if;  
end process;

ALU_Unit : entity work.ALU32
  port map(
    reset => reset,           
    ALU_CON => ALU_Control,   
    A_VAL => ALU_Input_1, 		
    B_VAL => ALU_Input_2,     
    F_VAL => ALU_Result,      
    ZERO => open,
    O_FLO => open             
    );

--ALU control hive
ALU_Control <= "0001" when ALU_op_line = "001101" else
               "0010" when ALU_op_line = "000000" else
               "0010" when ALU_op_line = "001000" else
               "0011" when ALU_op_line = "001111" else
               "0100" when ALU_op_line = "100011" else
               "1111" when ALU_op_line = "000101";
               
--Implied Latches still desired here
ALU_Input_1 <= ALU_Result_reg when (RS_Instruction_25_Downto_21_reg = Instruction_Mux) and (ALU_op_line = "001101") else 
               Reg_Value_1; 

ALU_Input_2 <= LUI_Value_reg when ALU_op_line = "001111" else
               X"0000" & sign_extenderrr(15 downto 0) when ALU_op_line = "001101" else
               sign_extenderrr when ALU_op_line = "001000" else
               Reg_Value_2;
					
--Branch enable
Zero <= '1' when (Read_Data_1_reg = Read_Data_2_reg) and (ALU_op_line = "000101") else
        '0';  
 

Instruction_Mux <= RD_Instruction_15_Downto_11_reg when ALU_op_line = "000000" else
                   RT_Instruction_20_Downto_16_reg when Execute_reg = '0';
						 
Shift_Value <= sign_extenderrr(29 downto 0) & "00";   
  
ALU_Addition <= (others => '0') when reset = '1' else
                 Program_Counter_2_reg + Shift_Value;

Registers_Execute_Memory : process(clock, reset)
begin
  if reset = '1' then
    Write_Back_2_reg <= '0';
    Memory_Read_2_reg <= '0';
    Memory_Write_2_reg <= '0';
    ALU_Addition_reg <= (others => '0');
    ALU_Zero_reg <= '0';
    ALU_Result_reg <= (others => '0');
    Read_Data_1_2_reg <= (others => '0');
    Read_Data_2_2_reg <= (others => '0');
    Intruction_Mux_reg <= (others => '0');
    opcode_mem_data <= (others => '0');
    Branch_Kill_reg_2 <= '0';
    Stall_reg_3 <= '0';
  elsif rising_edge(clock) then
    Write_Back_2_reg <= Write_Back_reg;
    Memory_Read_2_reg <= Memory_Read_reg;
    Memory_Write_2_reg <= Memory_Write_reg;
    ALU_Addition_reg <= ALU_Addition; 
    ALU_Zero_reg <= Zero;
    ALU_Result_reg <= ALU_Result;
    Read_Data_1_2_reg <= Read_Data_1_reg;
    Read_Data_2_2_reg <= Read_Data_2_reg;
    Intruction_Mux_reg <= Instruction_Mux;
    opcode_mem_data <= ALU_op_line;
    Branch_Kill_reg_2 <= Branch_Kill_reg;
    Stall_reg_3 <= Stall_reg_2;
 end if;  
end process;    

Data_Memory : entity work.DATA_MEM
  port map(
    M_ADDR => Mem_Adrs_Loc,   
    M_DATA_OUT => Data_Out,           	
    M_DATA_IN => Read_Data_2_2_reg, 	
    MEMREAD => Memory_Read_2_reg,    	
    MEMWRITE => Memory_Write_2_reg,  	
    CLK => Clock                      	
  );
  
Forwarding_ALU_Value_lw : process(clock, reset)
begin
  if reset = '1' then
    ALU_Result_forward <= (others => '0');
  elsif rising_edge(clock) then
    ALU_Result_forward <= ALU_Result_reg;
  end if;
end process;      
    
Mem_Adrs_Loc <= ALU_Result_forward when ((opcode_mem_data = "100011") and (RT_Instruction_20_Downto_16_reg /= Intruction_Mux_reg) )else
                      ALU_Result_reg; 

Data_In_Mux <= Read_Data_2_reg when opcode_mem_data = "101011" else Read_Data_1_2_reg;                       

PCsrc <= '0' when Dont_Branch_reg = '1' else
         (ALU_Zero_reg AND Branch_Kill_reg_2);  
      
Registers_Memory_Write_Back : process(clock, reset)
begin
  if reset = '1' then
    WB_MemtoReg_reg <= '0';
    Read_Data_reg <= (others => '0');
    forward_adress <= (others => '0');
    IM_MUX_mem <= (others => '0');
    WB_dat <= (others => '0');
  elsif rising_edge(clock) then
    WB_MemtoReg_reg <= Write_Back_2_reg;
    Read_Data_reg <= Data_Out;
    forward_adress <= ALU_Result_reg;
    IM_MUX_mem <= Intruction_Mux_reg;
    WB_dat <= opcode_mem_data;
 end if;  
end process; 

Write_Value <= Read_Data_reg when WB_dat = "100011" else
               forward_adress when WB_MemtoReg_reg = '1'; 

end MIPS_Top;