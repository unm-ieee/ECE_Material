LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY top_layer IS port
				(
				clk 		  		 : in  STD_LOGIC; 
				cmpPwm			 : in  STD_LOGIC_VECTOR(7 downto 0); 
				data_in_Right	 : in	 std_logic;
				data_in_Left	 : in  std_logic;
				pwm_out_01 		 : out STD_LOGIC;			--:= '0';
				pwm_out_02 		 : out STD_LOGIC;			--:= '0';
				Direction_01    : out STD_LOGIC;
				Direction_02    : out STD_LOGIC;
				LED0				 : out STD_LOGIC;
				LED1				 : out STD_LOGIC;
				LED2				 : out STD_LOGIC;
				LED3				 : out STD_LOGIC;
				LED4				 : out STD_LOGIC;
				LED5				 : out STD_LOGIC;
				LED6				 : out STD_LOGIC;
				LED7				 : out STD_LOGIC

				);
END top_layer;

ARCHITECTURE a OF top_layer is

COMPONENT PWM
        Port 
				( 
				clk 		  		 : in  STD_LOGIC:= '0'; 
				cmpPwm			 : in  STD_LOGIC_VECTOR(7 downto 0); 
				--reset	 		    : in	 std_logic;
				pwm_out         : out STD_LOGIC;
				LED0				 : out STD_LOGIC;
				LED1				 : out STD_LOGIC;
				LED2				 : out STD_LOGIC;
				LED3				 : out STD_LOGIC;
				LED4				 : out STD_LOGIC;
				LED5				 : out STD_LOGIC;
				LED6				 : out STD_LOGIC;
				LED7				 : out STD_LOGIC
				);
END COMPONENT;

COMPONENT State_5
			Port 
				( 
			   clk				  		: in	std_logic;
			   data_in_Right	  		: in	std_logic;
				data_in_Left	  		: in  std_logic;
				--reset	 		   	 : in	std_logic;
				data_out_Right	  		: out std_logic; 
				data_out_left    		: out std_logic;  
				data_out_reverse_01  : out std_logic;
				data_out_reverse_02  : out std_logic
				);
END COMPONENT;

Component And_gate
			port
				(
				Enable_01				: in   STD_LOGIC; 
				pwm_in_01				: in   STD_LOGIC;
				pwm_out_01 				: out  STD_LOGIC;
				Enable_02 				: in   STD_LOGIC;
				pwm_in_02				: in   STD_LOGIC;
				pwm_out_02				: out  STD_LOGIC
				);
END Component;


Component Reverse_out_01 
    Port 
				( 
				Rev_en_01 	 : in  STD_LOGIC;
            En_01 	 	 : in  STD_LOGIC;
            Direction_01 : out STD_LOGIC
				);
END Component;

Component Reverse_out_02 
    Port 
				( 
				Rev_en_02 	 : in  STD_LOGIC;
            En_02 		 : in  STD_LOGIC;
            Direction_02 : out STD_LOGIC
				);
END Component;

SIGNAL T2 		: std_logic;        --:= '0';
SIGNAL T0, T1  : STD_LOGIC; 
Signal R1 		: STD_LOGIC;
Signal R2 		: STD_LOGIC;


BEGIN

		G1 : PWM Port Map 
						(
						clk 		  		=> clk,
						cmpPwm			=> cmpPwm,
						pwm_out        => T2, 
						LED0				=> LED0,
						LED1				=> LED1,
						LED2				=> LED2,
						LED3				=> LED3,
						LED4				=> LED4,
						LED5				=> LED5,
						LED6				=> LED6,
						LED7				=> LED7
						);								
		
		G2 : State_5 PORT MAP
						(			
						clk 						=> clk,
						data_in_Right  		=> data_in_Right,
						data_in_Left 			=> data_in_Left,
						--reset 					=> reset, Error not declared 
						data_out_Right 		=> T0,
						data_out_left  		=> T1,
						data_out_reverse_01	=> R1,
						data_out_reverse_02	=> R2
						);
		
		G3 : And_gate Port Map
						(
						Enable_01 		=> T0	,					
						pwm_in_01      => T2	,			 		
						pwm_out_01 		=> pwm_out_01,
						Enable_02      => T1,
						pwm_in_02      => T2,						
						pwm_out_02	   => pwm_out_02
						);
		G4 : Reverse_out_01 Port Map
						(
						Rev_en_01 			=> R1,
						En_01  				=> T0,
						Direction_01 		=> Direction_01
						);
		G5 : Reverse_out_02 Port Map
						(
						Rev_en_02 			=> R2,
						En_02  				=> T1,
						Direction_02 		=> Direction_02
						);		
			 		
			
END;
