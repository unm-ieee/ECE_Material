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
static const char *ng0 = "C:/Users/sseppala/Desktop/MIPS_CPU_IMPLEMENTED/Instruction_Memory.vhd";
extern char *STD_TEXTIO;
extern char *IEEE_P_3564397177;
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_3293060193_503743352(char *, char *, char *, char *, unsigned char );
char *ieee_p_2592010699_sub_393209765_503743352(char *, char *, char *, char *);
void ieee_p_3564397177_sub_3988856810_91900896(char *, char *, char *, char *, char *);
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_0408172235_2949365859_p_0(char *t0)
{
    char t13[16];
    char t21[16];
    char *t1;
    char *t2;
    int t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t14;
    int t15;
    char *t16;
    int t17;
    int t18;
    char *t19;
    char *t20;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t4 = (t3 == 0);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t10 = (31 - 14);
    t11 = (t10 * 1U);
    t12 = (0 + t11);
    t1 = (t2 + t12);
    t7 = (t13 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 14;
    t8 = (t7 + 4U);
    *((int *)t8) = 2;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t3 = (2 - 14);
    t14 = (t3 * -1);
    t14 = (t14 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t14;
    t15 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t1, t13);
    t8 = (t0 + 2448U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    *((int *)t8) = t15;
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 2328U);
    t2 = *((char **)t1);
    t1 = (t0 + 2448U);
    t7 = *((char **)t1);
    t3 = *((int *)t7);
    t15 = (t3 - 0);
    t10 = (t15 * 1);
    xsi_vhdl_check_range_of_index(0, 1023, 1, t3);
    t11 = (32U * t10);
    t12 = (0 + t11);
    t1 = (t2 + t12);
    t8 = (t0 + 4872);
    t9 = (t8 + 56U);
    t16 = *((char **)t9);
    t19 = (t16 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t1, 32U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 2328U);
    t2 = *((char **)t1);
    t1 = (t0 + 2448U);
    t7 = *((char **)t1);
    t3 = *((int *)t7);
    t15 = (t3 - 0);
    t10 = (t15 * 1);
    xsi_vhdl_check_range_of_index(0, 1023, 1, t3);
    t11 = (32U * t10);
    t12 = (0 + t11);
    t1 = (t2 + t12);
    t8 = (t21 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 31;
    t9 = (t8 + 4U);
    *((int *)t9) = 0;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t17 = (0 - 31);
    t14 = (t17 * -1);
    t14 = (t14 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t14;
    t9 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t13, t1, t21);
    t16 = (t13 + 12U);
    t14 = *((unsigned int *)t16);
    t14 = (t14 * 1U);
    t4 = (32U != t14);
    if (t4 == 1)
        goto LAB14;

LAB15:    t19 = (t0 + 4936);
    t20 = (t19 + 56U);
    t22 = *((char **)t20);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t9, 32U);
    xsi_driver_first_trans_delta(t19, 0U, 32U, 500LL);
    t25 = (t0 + 4936);
    xsi_driver_intertial_reject(t25, 500LL, 500LL);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 2208U);
    t2 = *((char **)t1);
    t1 = (t0 + 2448U);
    t7 = *((char **)t1);
    t3 = *((int *)t7);
    t15 = (t3 - 0);
    t10 = (t15 * 1);
    xsi_vhdl_check_range_of_index(0, 1023, 1, t3);
    t11 = (25U * t10);
    t12 = (0 + t11);
    t1 = (t2 + t12);
    t8 = (t0 + 5000);
    t9 = (t8 + 56U);
    t16 = *((char **)t9);
    t19 = (t16 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t1, 25U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 67770);
    xsi_report(t1, 19U, 0);
    t1 = (t0 + 4792);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(45, ng0);

LAB5:    t1 = (t0 + 3496U);
    t5 = std_textio_endfile(t1);
    t6 = (!(t5));
    if (t6 != 0)
        goto LAB6;

LAB8:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 1;
    goto LAB3;

LAB6:    xsi_set_current_line(46, ng0);
    t7 = (t0 + 4280);
    t8 = (t0 + 3496U);
    t9 = (t0 + 3672U);
    std_textio_readline(STD_TEXTIO, t7, t8, t9);
    xsi_set_current_line(47, ng0);
    t1 = (t0 + 4280);
    t2 = (t0 + 3672U);
    t7 = (t0 + 2808U);
    t8 = *((char **)t7);
    t7 = (t0 + 8948U);
    ieee_p_3564397177_sub_3988856810_91900896(IEEE_P_3564397177, t1, t2, t8, t7);
    xsi_set_current_line(48, ng0);
    t1 = (t0 + 2808U);
    t2 = *((char **)t1);
    t10 = (31 - 14);
    t11 = (t10 * 1U);
    t12 = (0 + t11);
    t1 = (t2 + t12);
    t7 = (t13 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 14;
    t8 = (t7 + 4U);
    *((int *)t8) = 2;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t3 = (2 - 14);
    t14 = (t3 * -1);
    t14 = (t14 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t14;
    t15 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t1, t13);
    t8 = (t0 + 2928U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    *((int *)t8) = t15;
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 4280);
    t2 = (t0 + 3672U);
    t7 = (t0 + 3048U);
    t8 = *((char **)t7);
    t7 = (t0 + 8964U);
    ieee_p_3564397177_sub_3988856810_91900896(IEEE_P_3564397177, t1, t2, t8, t7);
    xsi_set_current_line(50, ng0);
    t1 = (t0 + 3048U);
    t2 = *((char **)t1);
    t1 = (t0 + 8964U);
    t7 = ieee_p_2592010699_sub_3293060193_503743352(IEEE_P_2592010699, t13, t2, t1, (unsigned char)0);
    t8 = (t0 + 3168U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t16 = (t13 + 12U);
    t10 = *((unsigned int *)t16);
    t10 = (t10 * 1U);
    memcpy(t8, t7, t10);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 3168U);
    t2 = *((char **)t1);
    t1 = (t0 + 2328U);
    t7 = *((char **)t1);
    t1 = (t0 + 2928U);
    t8 = *((char **)t1);
    t3 = *((int *)t8);
    t15 = (t3 - 0);
    t10 = (t15 * 1);
    xsi_vhdl_check_range_of_index(0, 1023, 1, t3);
    t11 = (32U * t10);
    t12 = (0 + t11);
    t1 = (t7 + t12);
    memcpy(t1, t2, 32U);
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 67745);
    *((int *)t1) = 1;
    t2 = (t0 + 67749);
    *((int *)t2) = 25;
    t3 = 1;
    t15 = 25;

LAB9:    if (t3 <= t15)
        goto LAB10;

LAB12:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 4280);
    t2 = (t0 + 3672U);
    t7 = (t0 + 3888U);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t8 = (t0 + 8996U);
    std_textio_read14(STD_TEXTIO, t1, t2, t9, t8);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 3888U);
    t2 = (t1 + 56U);
    t7 = *((char **)t2);
    t2 = (t0 + 2208U);
    t8 = *((char **)t2);
    t2 = (t0 + 2928U);
    t9 = *((char **)t2);
    t3 = *((int *)t9);
    t15 = (t3 - 0);
    t10 = (t15 * 1);
    xsi_vhdl_check_range_of_index(0, 1023, 1, t3);
    t11 = (25U * t10);
    t12 = (0 + t11);
    t2 = (t8 + t12);
    memcpy(t2, t7, 25U);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 67753);
    xsi_report(t1, 17U, 0);
    goto LAB5;

LAB7:;
LAB10:    xsi_set_current_line(53, ng0);
    t7 = (t0 + 3888U);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t8 = (t0 + 67745);
    t17 = *((int *)t8);
    t18 = (t17 - 1);
    t10 = (t18 * 1);
    xsi_vhdl_check_range_of_index(1, 25, 1, *((int *)t8));
    t11 = (1U * t10);
    t12 = (0 + t11);
    t16 = (t9 + t12);
    *((unsigned char *)t16) = (unsigned char)32;

LAB11:    t1 = (t0 + 67745);
    t3 = *((int *)t1);
    t2 = (t0 + 67749);
    t15 = *((int *)t2);
    if (t3 == t15)
        goto LAB12;

LAB13:    t17 = (t3 + 1);
    t3 = t17;
    t7 = (t0 + 67745);
    *((int *)t7) = t3;
    goto LAB9;

LAB14:    xsi_size_not_matching(32U, t14, 0);
    goto LAB15;

}


extern void work_a_0408172235_2949365859_init()
{
	static char *pe[] = {(void *)work_a_0408172235_2949365859_p_0};
	xsi_register_didat("work_a_0408172235_2949365859", "isim/TB_MIPS_Top_isim_beh.exe.sim/work/a_0408172235_2949365859.didat");
	xsi_register_executes(pe);
}
