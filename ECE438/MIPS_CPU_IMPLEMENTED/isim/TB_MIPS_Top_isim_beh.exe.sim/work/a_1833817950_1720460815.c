/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x1cce1bb2 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/sseppala/Desktop/MIPS_CPU_IMPLEMENTED/Data_Memory.vhd";
extern char *STD_TEXTIO;
extern char *IEEE_P_3564397177;
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
void ieee_p_3564397177_sub_3205433008_91900896(char *, char *, char *, char *, char *, unsigned char , int );
void ieee_p_3564397177_sub_3988856810_91900896(char *, char *, char *, char *, char *);
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_1833817950_1720460815_p_0(char *t0)
{
    char t21[8];
    char t22[32];
    char t23[8];
    char t24[32];
    char t25[8];
    char t27[8];
    char t28[32];
    char t29[8];
    char t30[32];
    char t31[8];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    int t11;
    int t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    int64 t26;

LAB0:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 3008U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    if (t3 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t5 = (t3 == (unsigned char)3);
    if (t5 != 0)
        goto LAB12;

LAB14:    xsi_set_current_line(66, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t2 = t1;
    memset(t2, (unsigned char)4, 32U);
    t4 = (t0 + 5400);
    t8 = (t4 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t17 = *((char **)t10);
    memcpy(t17, t1, 32U);
    xsi_driver_first_trans_fast_port(t4);

LAB13:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 1792U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB15;

LAB17:
LAB16:    t1 = (t0 + 5288);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(50, ng0);

LAB5:    t1 = (t0 + 3008U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    if (t5 != 0)
        goto LAB6;

LAB8:    goto LAB3;

LAB6:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 3456U);
    t6 = std_textio_endfile(t1);
    t7 = (!(t6));
    if (t7 != 0)
        goto LAB9;

LAB11:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 3008U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)0;

LAB10:    goto LAB5;

LAB7:;
LAB9:    xsi_set_current_line(52, ng0);
    t8 = (t0 + 4776);
    t9 = (t0 + 3456U);
    t10 = (t0 + 3736U);
    std_textio_readline(STD_TEXTIO, t8, t9, t10);
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 4776);
    t2 = (t0 + 3736U);
    t4 = (t0 + 2648U);
    t8 = *((char **)t4);
    t4 = (t0 + 9488U);
    ieee_p_3564397177_sub_3988856810_91900896(IEEE_P_3564397177, t1, t2, t8, t4);
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 2648U);
    t2 = *((char **)t1);
    t1 = (t0 + 9488U);
    t11 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t2, t1);
    t4 = (t0 + 2768U);
    t8 = *((char **)t4);
    t4 = (t8 + 0);
    *((int *)t4) = t11;
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 4776);
    t2 = (t0 + 3736U);
    t4 = (t0 + 2528U);
    t8 = *((char **)t4);
    t4 = (t0 + 9472U);
    ieee_p_3564397177_sub_3988856810_91900896(IEEE_P_3564397177, t1, t2, t8, t4);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    t1 = (t0 + 2888U);
    t4 = *((char **)t1);
    t1 = (t0 + 2768U);
    t8 = *((char **)t1);
    t11 = *((int *)t8);
    t12 = (t11 / 4);
    t13 = (t12 - 0);
    t14 = (t13 * 1);
    xsi_vhdl_check_range_of_index(0, 1023, 1, t12);
    t15 = (32U * t14);
    t16 = (0 + t15);
    t1 = (t4 + t16);
    memcpy(t1, t2, 32U);
    goto LAB10;

LAB12:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 2888U);
    t4 = *((char **)t1);
    t1 = (t0 + 1032U);
    t8 = *((char **)t1);
    t1 = (t0 + 9424U);
    t11 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t8, t1);
    t12 = (t11 / 4);
    t13 = (t12 - 0);
    t14 = (t13 * 1);
    xsi_vhdl_check_range_of_index(0, 1023, 1, t12);
    t15 = (32U * t14);
    t16 = (0 + t15);
    t9 = (t4 + t16);
    t10 = (t0 + 5400);
    t17 = (t10 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t9, 32U);
    xsi_driver_first_trans_fast_port(t10);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t5 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 5464);
    t4 = (t1 + 56U);
    t8 = *((char **)t4);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t5;
    xsi_driver_first_trans_fast(t1);
    goto LAB13;

LAB15:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB18;

LAB20:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t5 = (t3 == (unsigned char)3);
    if (t5 != 0)
        goto LAB21;

LAB22:
LAB19:    goto LAB16;

LAB18:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 1032U);
    t8 = *((char **)t2);
    t2 = (t0 + 9424U);
    t11 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t8, t2);
    t12 = (t11 / 4);
    t9 = (t0 + 2768U);
    t10 = *((char **)t9);
    t9 = (t10 + 0);
    *((int *)t9) = t12;
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 2888U);
    t2 = *((char **)t1);
    t1 = (t0 + 2768U);
    t4 = *((char **)t1);
    t11 = *((int *)t4);
    t12 = (t11 - 0);
    t14 = (t12 * 1);
    xsi_vhdl_check_range_of_index(0, 1023, 1, t11);
    t15 = (32U * t14);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t8 = (t0 + 2528U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    memcpy(t8, t1, 32U);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 4776);
    t2 = (t0 + 3736U);
    t4 = (t0 + 4240U);
    t8 = (t4 + 56U);
    t9 = *((char **)t8);
    memcpy(t21, t9, 3U);
    t8 = (t0 + 9568U);
    std_textio_write7(STD_TEXTIO, t1, t2, t21, t8, (unsigned char)0, 0);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 4776);
    t2 = (t0 + 3736U);
    t4 = (t0 + 1032U);
    t8 = *((char **)t4);
    memcpy(t22, t8, 32U);
    t4 = (t0 + 9424U);
    ieee_p_3564397177_sub_3205433008_91900896(IEEE_P_3564397177, t1, t2, t22, t4, (unsigned char)0, 0);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 4776);
    t2 = (t0 + 3736U);
    t4 = (t0 + 3952U);
    t8 = (t4 + 56U);
    t9 = *((char **)t8);
    memcpy(t23, t9, 3U);
    t8 = (t0 + 9536U);
    std_textio_write7(STD_TEXTIO, t1, t2, t23, t8, (unsigned char)0, 0);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 4776);
    t2 = (t0 + 3736U);
    t4 = (t0 + 2528U);
    t8 = *((char **)t4);
    memcpy(t24, t8, 32U);
    t4 = (t0 + 9472U);
    ieee_p_3564397177_sub_3205433008_91900896(IEEE_P_3564397177, t1, t2, t24, t4, (unsigned char)0, 0);
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 4776);
    t2 = (t0 + 3736U);
    t4 = (t0 + 3952U);
    t8 = (t4 + 56U);
    t9 = *((char **)t8);
    memcpy(t25, t9, 3U);
    t8 = (t0 + 9536U);
    std_textio_write7(STD_TEXTIO, t1, t2, t25, t8, (unsigned char)0, 0);
    xsi_set_current_line(77, ng0);
    t1 = (t0 + 4776);
    t2 = (t0 + 3736U);
    t26 = xsi_get_sim_current_time();
    std_textio_write8(STD_TEXTIO, t1, t2, t26, (unsigned char)0, 0, 1000LL);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 4776);
    t2 = (t0 + 3560U);
    t4 = (t0 + 3736U);
    std_textio_writeline(STD_TEXTIO, t1, t2, t4);
    goto LAB19;

LAB21:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t1 = (t0 + 9424U);
    t11 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t4, t1);
    t12 = (t11 / 4);
    t8 = (t0 + 2768U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    *((int *)t8) = t12;
    xsi_set_current_line(81, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 2528U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    memcpy(t1, t2, 32U);
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 4776);
    t2 = (t0 + 3736U);
    t4 = (t0 + 4096U);
    t8 = (t4 + 56U);
    t9 = *((char **)t8);
    memcpy(t27, t9, 3U);
    t8 = (t0 + 9552U);
    std_textio_write7(STD_TEXTIO, t1, t2, t27, t8, (unsigned char)0, 0);
    xsi_set_current_line(83, ng0);
    t1 = (t0 + 4776);
    t2 = (t0 + 3736U);
    t4 = (t0 + 1032U);
    t8 = *((char **)t4);
    memcpy(t28, t8, 32U);
    t4 = (t0 + 9424U);
    ieee_p_3564397177_sub_3205433008_91900896(IEEE_P_3564397177, t1, t2, t28, t4, (unsigned char)0, 0);
    xsi_set_current_line(84, ng0);
    t1 = (t0 + 4776);
    t2 = (t0 + 3736U);
    t4 = (t0 + 3952U);
    t8 = (t4 + 56U);
    t9 = *((char **)t8);
    memcpy(t29, t9, 3U);
    t8 = (t0 + 9536U);
    std_textio_write7(STD_TEXTIO, t1, t2, t29, t8, (unsigned char)0, 0);
    xsi_set_current_line(85, ng0);
    t1 = (t0 + 4776);
    t2 = (t0 + 3736U);
    t4 = (t0 + 2528U);
    t8 = *((char **)t4);
    memcpy(t30, t8, 32U);
    t4 = (t0 + 9472U);
    ieee_p_3564397177_sub_3205433008_91900896(IEEE_P_3564397177, t1, t2, t30, t4, (unsigned char)0, 0);
    xsi_set_current_line(86, ng0);
    t1 = (t0 + 4776);
    t2 = (t0 + 3736U);
    t4 = (t0 + 3952U);
    t8 = (t4 + 56U);
    t9 = *((char **)t8);
    memcpy(t31, t9, 3U);
    t8 = (t0 + 9536U);
    std_textio_write7(STD_TEXTIO, t1, t2, t31, t8, (unsigned char)0, 0);
    xsi_set_current_line(87, ng0);
    t1 = (t0 + 4776);
    t2 = (t0 + 3736U);
    t26 = xsi_get_sim_current_time();
    std_textio_write8(STD_TEXTIO, t1, t2, t26, (unsigned char)0, 0, 1000LL);
    xsi_set_current_line(88, ng0);
    t1 = (t0 + 4776);
    t2 = (t0 + 3560U);
    t4 = (t0 + 3736U);
    std_textio_writeline(STD_TEXTIO, t1, t2, t4);
    xsi_set_current_line(89, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 2888U);
    t4 = *((char **)t1);
    t1 = (t0 + 1032U);
    t8 = *((char **)t1);
    t1 = (t0 + 9424U);
    t11 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t8, t1);
    t12 = (t11 / 4);
    t13 = (t12 - 0);
    t14 = (t13 * 1);
    xsi_vhdl_check_range_of_index(0, 1023, 1, t12);
    t15 = (32U * t14);
    t16 = (0 + t15);
    t9 = (t4 + t16);
    memcpy(t9, t2, 32U);
    goto LAB19;

}


extern void work_a_1833817950_1720460815_init()
{
	static char *pe[] = {(void *)work_a_1833817950_1720460815_p_0};
	xsi_register_didat("work_a_1833817950_1720460815", "isim/TB_MIPS_Top_isim_beh.exe.sim/work/a_1833817950_1720460815.didat");
	xsi_register_executes(pe);
}
