-- Modified by Nomad 2007,03 v1
-- Modified by Nomad 2007,4,09 v2
-- 32-bits format: 1-bit sign, 8-bits exponent, and 23-bit mantissa with hidden 1

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY FP_MULTIPLIER IS
   PORT( 
      A_VAL : IN     std_logic_vector (31 DOWNTO 0);
      B_VAL : IN     std_logic_vector (31 DOWNTO 0);
      F_VAL : OUT    std_logic_vector (31 DOWNTO 0)
   );
END FP_MULTIPLIER;

ARCHITECTURE single_cycle OF FP_MULTIPLIER IS
   SIGNAL A_EXP         : std_logic_vector(7 DOWNTO 0);
   SIGNAL A_SIG         : std_logic_vector(31 DOWNTO 0);
   SIGNAL A_SIGN        : std_logic;
   SIGNAL A_isINF       : std_logic;
   SIGNAL A_isNaN       : std_logic;
   SIGNAL A_isZ         : std_logic;
   SIGNAL B_EXP         : std_logic_vector(7 DOWNTO 0);
   SIGNAL B_SIG         : std_logic_vector(31 DOWNTO 0);
   SIGNAL B_SIGN        : std_logic;
   SIGNAL B_isINF       : std_logic;
   SIGNAL B_isNaN       : std_logic;
   SIGNAL B_isZ         : std_logic;
   SIGNAL EXP_addout    : std_logic_vector(7 DOWNTO 0);
   SIGNAL EXP_in        : std_logic_vector(7 DOWNTO 0);
   SIGNAL EXP_out       : std_logic_vector(7 DOWNTO 0);
   SIGNAL EXP_out_norm  : std_logic_vector(7 DOWNTO 0);
   SIGNAL EXP_out_round : std_logic_vector(7 DOWNTO 0);
   SIGNAL SIGN_out      : std_logic;
--   SIGNAL SIG_in        : std_logic_vector(25 DOWNTO 0);	-- 23-bits mantissa + 3-bits Guard Bit
   SIGNAL SIG_in        : std_logic_vector(27 DOWNTO 0);
   SIGNAL SIG_isZ       : std_logic;
   SIGNAL SIG_out       : std_logic_vector(22 DOWNTO 0);
   SIGNAL SIG_out_norm  : std_logic_vector(27 DOWNTO 0);
   SIGNAL SIG_out_norm2 : std_logic_vector(27 DOWNTO 0);
   SIGNAL SIG_out_round : std_logic_vector(27 DOWNTO 0);
   SIGNAL dout          : std_logic;
   SIGNAL isINF         : std_logic;
   SIGNAL isINF_tab     : std_logic;
   SIGNAL isNaN         : std_logic;
   SIGNAL isZ           : std_logic;
   SIGNAL isZ_tab       : std_logic;
   SIGNAL prod          : std_logic_vector(63 DOWNTO 0);

   COMPONENT FPnormalize
   GENERIC (
      --SIG_width : integer := 26 --23SIG+3
      SIG_width : integer := 28
   );
   PORT (
      SIG_in  : IN     std_logic_vector (SIG_width-1 DOWNTO 0);
      EXP_in  : IN     std_logic_vector (7 DOWNTO 0);
      SIG_out : OUT    std_logic_vector (SIG_width-1 DOWNTO 0);
      EXP_out : OUT    std_logic_vector (7 DOWNTO 0)
   );
   END COMPONENT;
   COMPONENT FPround
   GENERIC (
      --SIG_width : integer := 26 --23SIG+3
      SIG_width : integer := 28
   );
   PORT (
      SIG_in  : IN     std_logic_vector (SIG_width-1 DOWNTO 0);
      EXP_in  : IN     std_logic_vector (7 DOWNTO 0);
      SIG_out : OUT    std_logic_vector (SIG_width-1 DOWNTO 0);
      EXP_out : OUT    std_logic_vector (7 DOWNTO 0)
   );
   END COMPONENT;
   COMPONENT PackFP
   PORT (
      SIGN  : IN     std_logic ;
      EXP   : IN     std_logic_vector (7 DOWNTO 0);
      SIG   : IN     std_logic_vector (22 DOWNTO 0);
      isNaN : IN     std_logic ;
      isINF : IN     std_logic ;
      isZ   : IN     std_logic ;
      FP    : OUT    std_logic_vector (31 DOWNTO 0)
   );
   END COMPONENT;
   COMPONENT UnpackFP
   PORT (
      FP    : IN     std_logic_vector (31 DOWNTO 0);
      SIG   : OUT    std_logic_vector (31 DOWNTO 0);
      EXP   : OUT    std_logic_vector (7 DOWNTO 0);
      SIGN  : OUT    std_logic ;
      isNaN : OUT    std_logic ;
      isINF : OUT    std_logic ;
      isZ   : OUT    std_logic ;
      isDN  : OUT    std_logic 
   );
   END COMPONENT;

BEGIN
   --SIG_in <= prod(47 DOWNTO 22);
   SIG_in <= prod(47 DOWNTO 20);
   --SIG_out <= SIG_out_norm2(23 DOWNTO 1);
   SIG_out <= SIG_out_norm2(25 DOWNTO 3);
   
   PROCESS(isZ,isINF_tab, A_EXP, B_EXP, EXP_out)
   BEGIN
      IF isZ='0' THEN
         IF isINF_tab='1' THEN
            isINF <= '1';
         ELSIF EXP_out="11111111" THEN
            isINF <='1';
         ELSIF (A_EXP(7)='1' AND B_EXP(7)='1' AND (EXP_out(7)='0'))  THEN
            isINF <='1';
         ELSE
            isINF <= '0';
         END IF;
      ELSE
         isINF <= '0';
      END IF;
   END PROCESS;

   ---------------------------------------------------------------------------
   eb4_truth_process: PROCESS(A_isINF, A_isNaN, A_isZ, B_isINF, B_isNaN, B_isZ)
   ---------------------------------------------------------------------------
   BEGIN
      -- Block 1
      IF (A_isINF = '0') AND (A_isNaN = '0') AND (A_isZ = '0') AND (B_isINF = '0') AND (B_isNaN = '0') AND (B_isZ = '0') THEN
         isZ_tab <= '0';
         isINF_tab <= '0';
         isNaN <= '0';
      ELSIF (A_isINF = '1') AND (B_isZ = '1') THEN
         isZ_tab <= '0';
         isINF_tab <= '0';
         isNaN <= '1';
      ELSIF (A_isZ = '1') AND (B_isINF = '1') THEN
         isZ_tab <= '0';
         isINF_tab <= '0';
         isNaN <= '1';
      ELSIF (A_isINF = '1') THEN
         isZ_tab <= '0';
         isINF_tab <= '1';
         isNaN <= '0';
      ELSIF (B_isINF = '1') THEN
         isZ_tab <= '0';
         isINF_tab <= '1';
         isNaN <= '0';
      ELSIF (A_isNaN = '1') THEN
         isZ_tab <= '0';
         isINF_tab <= '0';
         isNaN <= '1';
      ELSIF (B_isNaN = '1') THEN
         isZ_tab <= '0';
         isINF_tab <= '0';
         isNaN <= '1';
      ELSIF (A_isZ = '1') THEN
         isZ_tab <= '1';
         isINF_tab <= '0';
         isNaN <= '0';
      ELSIF (B_isZ = '1') THEN
         isZ_tab <= '1';
         isINF_tab <= '0';
         isNaN <= '0';
      ELSE
         isZ_tab <= '0';
         isINF_tab <= '0';
         isNaN <= '0';
      END IF;

   END PROCESS eb4_truth_process;

   EXP_in <= (NOT EXP_addout(7)) & EXP_addout(6 DOWNTO 0);

   PROCESS(SIG_out_norm2,A_EXP,B_EXP, EXP_out)
   BEGIN
      IF (EXP_out(7)='1' AND A_EXP(7)='0' AND B_EXP(7)='0') OR
         --(SIG_out_norm2(24 DOWNTO 1)="000000000000000000000000") THEN
         (SIG_out_norm2(26 DOWNTO 3)="000000000000000000000000") THEN
         -- Underflow or zero significand.
         SIG_isZ <= '1';
      ELSE
         SIG_isZ <= '0';
      END IF;
   END PROCESS;

   I4combo: PROCESS (A_EXP, B_EXP, dout)
   VARIABLE mw_I4t0 : std_logic_vector(8 DOWNTO 0);
   VARIABLE mw_I4t1 : std_logic_vector(8 DOWNTO 0);
   VARIABLE mw_I4sum : unsigned(8 DOWNTO 0);
   VARIABLE mw_I4carry : std_logic;
   BEGIN
      mw_I4t0 := '0' & A_EXP;
      mw_I4t1 := '0' & B_EXP;
      mw_I4carry := dout;
      mw_I4sum := unsigned(mw_I4t0) + unsigned(mw_I4t1) + mw_I4carry;
      EXP_addout <= conv_std_logic_vector(mw_I4sum(7 DOWNTO 0),8);
   END PROCESS I4combo;

   -- ModuleWare code(v1.1) for instance 'I2' of 'mult'
   I2combo : PROCESS (A_SIG, B_SIG)
   VARIABLE dtemp : unsigned(63 DOWNTO 0);
   BEGIN
      dtemp := (unsigned(A_SIG) * unsigned(B_SIG));
      prod <= std_logic_vector(dtemp);
   END PROCESS I2combo;

   isZ <= SIG_isZ OR isZ_tab;
   dout <= '1';

   SIGN_out <= A_SIGN XOR B_SIGN;

   -- Instance port mappings.
   I9 : FPnormalize
      GENERIC MAP (
         --SIG_width => 26 --23SIG+3
         SIG_width => 28
      )
      PORT MAP (
         SIG_in  => SIG_in,
         EXP_in  => EXP_in,
         SIG_out => SIG_out_norm,
         EXP_out => EXP_out_norm
      );
   I10 : FPnormalize
      GENERIC MAP (
         --SIG_width => 26 --23SIG+3
         SIG_width => 28
      )
      PORT MAP (
         SIG_in  => SIG_out_round,
         EXP_in  => EXP_out_round,
         SIG_out => SIG_out_norm2,
         EXP_out => EXP_out
      );
   I11 : FPround
      GENERIC MAP (
         --SIG_width => 26 --23SIG+3
         SIG_width => 28
      )
      PORT MAP (
         SIG_in  => SIG_out_norm,
         EXP_in  => EXP_out_norm,
         SIG_out => SIG_out_round,
         EXP_out => EXP_out_round
      );
   I5 : PackFP
      PORT MAP (
         SIGN  => SIGN_out,
         EXP   => EXP_out,
         SIG   => SIG_out,
         isNaN => isNaN,
         isINF => isINF,
         isZ   => isZ,
         FP    => F_VAL
      );
   I0 : UnpackFP
      PORT MAP (
         FP    => A_VAL,
         SIG   => A_SIG,
         EXP   => A_EXP,
         SIGN  => A_SIGN,
         isNaN => A_isNaN,
         isINF => A_isINF,
         isZ   => A_isZ,
         isDN  => OPEN
      );
   I1 : UnpackFP
      PORT MAP (
         FP    => B_VAL,
         SIG   => B_SIG,
         EXP   => B_EXP,
         SIGN  => B_SIGN,
         isNaN => B_isNaN,
         isINF => B_isINF,
         isZ   => B_isZ,
         isDN  => OPEN
      );

END single_cycle;
