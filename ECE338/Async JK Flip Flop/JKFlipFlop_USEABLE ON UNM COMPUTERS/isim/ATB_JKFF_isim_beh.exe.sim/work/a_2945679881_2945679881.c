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

/* This file is designed for use with ISim build 0xc3576ebc */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/ECE.CLASSES/ECE338/Async JK Flip Flop/FF_TestBench.vhd";
extern char *STD_TEXTIO;
extern char *IEEE_P_3564397177;

void ieee_p_3564397177_sub_1496949865_91900896(char *, char *, char *, unsigned char , unsigned char , int );


static void work_a_2945679881_2945679881_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    int t8;
    int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    int64 t20;

LAB0:    t1 = (t0 + 3776U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t4 = (2 - 2);
    t5 = (t4 * -1);
    t6 = (1U * t5);
    t2 = (t0 + 1672U);
    t7 = *((char **)t2);
    t8 = *((int *)t7);
    t9 = (t8 - 0);
    t10 = (t9 * 1);
    xsi_vhdl_check_range_of_index(0, 1023, 1, t8);
    t11 = (3U * t10);
    t12 = (0 + t11);
    t13 = (t12 + t6);
    t2 = (t3 + t13);
    t14 = *((unsigned char *)t2);
    t15 = (t0 + 4488);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = t14;
    xsi_driver_first_trans_fast(t15);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t4 = (1 - 2);
    t5 = (t4 * -1);
    t6 = (1U * t5);
    t2 = (t0 + 1672U);
    t7 = *((char **)t2);
    t8 = *((int *)t7);
    t9 = (t8 - 0);
    t10 = (t9 * 1);
    xsi_vhdl_check_range_of_index(0, 1023, 1, t8);
    t11 = (3U * t10);
    t12 = (0 + t11);
    t13 = (t12 + t6);
    t2 = (t3 + t13);
    t14 = *((unsigned char *)t2);
    t15 = (t0 + 4552);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = t14;
    xsi_driver_first_trans_fast(t15);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t4 = (0 - 2);
    t5 = (t4 * -1);
    t6 = (1U * t5);
    t2 = (t0 + 1672U);
    t7 = *((char **)t2);
    t8 = *((int *)t7);
    t9 = (t8 - 0);
    t10 = (t9 * 1);
    xsi_vhdl_check_range_of_index(0, 1023, 1, t8);
    t11 = (3U * t10);
    t12 = (0 + t11);
    t13 = (t12 + t6);
    t2 = (t3 + t13);
    t14 = *((unsigned char *)t2);
    t15 = (t0 + 4616);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = t14;
    xsi_driver_first_trans_fast(t15);
    xsi_set_current_line(77, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t8 = (t4 + 1);
    t2 = (t0 + 4680);
    t7 = (t2 + 56U);
    t15 = *((char **)t7);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((int *)t17) = t8;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(78, ng0);
    t20 = (15 * 1000LL);
    t2 = (t0 + 3584);
    xsi_process_wait(t2, t20);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

}

static void work_a_2945679881_2945679881_p_1(char *t0)
{
    char t13[8];
    char t14[16];
    char t15[8];
    char t17[8];
    char t18[8];
    char t19[8];
    char t20[8];
    char t21[8];
    char *t1;
    char *t2;
    int t3;
    int t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    int64 t16;

LAB0:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 2208U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t4 = xsi_vhdl_mod(t3, 40);
    t5 = (t4 == 0);
    if (t5 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(102, ng0);
    t1 = (t0 + 2208U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t4 = (t3 + 1);
    t1 = (t0 + 2208U);
    t6 = *((char **)t1);
    t1 = (t6 + 0);
    *((int *)t1) = t4;
    xsi_set_current_line(103, ng0);
    t16 = xsi_get_sim_current_time();
    t1 = (t0 + 2088U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int64 *)t1) = t16;
    xsi_set_current_line(104, ng0);
    t1 = (t0 + 3832);
    t2 = (t0 + 2832U);
    t6 = (t0 + 1032U);
    t9 = *((char **)t6);
    t5 = *((unsigned char *)t9);
    ieee_p_3564397177_sub_1496949865_91900896(IEEE_P_3564397177, t1, t2, t5, (unsigned char)0, 0);
    xsi_set_current_line(105, ng0);
    t1 = (t0 + 3832);
    t2 = (t0 + 2832U);
    t6 = (t0 + 3048U);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    memcpy(t17, t10, 1U);
    t9 = (t0 + 7660U);
    std_textio_write7(STD_TEXTIO, t1, t2, t17, t9, (unsigned char)0, 0);
    xsi_set_current_line(106, ng0);
    t1 = (t0 + 3832);
    t2 = (t0 + 2832U);
    t6 = (t0 + 1192U);
    t9 = *((char **)t6);
    t5 = *((unsigned char *)t9);
    ieee_p_3564397177_sub_1496949865_91900896(IEEE_P_3564397177, t1, t2, t5, (unsigned char)0, 0);
    xsi_set_current_line(107, ng0);
    t1 = (t0 + 3832);
    t2 = (t0 + 2832U);
    t6 = (t0 + 3048U);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    memcpy(t18, t10, 1U);
    t9 = (t0 + 7660U);
    std_textio_write7(STD_TEXTIO, t1, t2, t18, t9, (unsigned char)0, 0);
    xsi_set_current_line(108, ng0);
    t1 = (t0 + 3832);
    t2 = (t0 + 2832U);
    t6 = (t0 + 1352U);
    t9 = *((char **)t6);
    t5 = *((unsigned char *)t9);
    ieee_p_3564397177_sub_1496949865_91900896(IEEE_P_3564397177, t1, t2, t5, (unsigned char)0, 0);
    xsi_set_current_line(109, ng0);
    t1 = (t0 + 3832);
    t2 = (t0 + 2832U);
    t6 = (t0 + 3048U);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    memcpy(t19, t10, 1U);
    t9 = (t0 + 7660U);
    std_textio_write7(STD_TEXTIO, t1, t2, t19, t9, (unsigned char)0, 0);
    xsi_set_current_line(110, ng0);
    t1 = (t0 + 3832);
    t2 = (t0 + 2832U);
    t6 = (t0 + 1512U);
    t9 = *((char **)t6);
    t5 = *((unsigned char *)t9);
    ieee_p_3564397177_sub_1496949865_91900896(IEEE_P_3564397177, t1, t2, t5, (unsigned char)0, 0);
    xsi_set_current_line(111, ng0);
    t1 = (t0 + 3832);
    t2 = (t0 + 2832U);
    t6 = (t0 + 3048U);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    memcpy(t20, t10, 1U);
    t9 = (t0 + 7660U);
    std_textio_write7(STD_TEXTIO, t1, t2, t20, t9, (unsigned char)0, 0);
    xsi_set_current_line(112, ng0);
    t1 = (t0 + 3832);
    t2 = (t0 + 2832U);
    t6 = (t0 + 3048U);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    memcpy(t21, t10, 1U);
    t9 = (t0 + 7660U);
    std_textio_write7(STD_TEXTIO, t1, t2, t21, t9, (unsigned char)0, 0);
    xsi_set_current_line(113, ng0);
    t1 = (t0 + 3832);
    t2 = (t0 + 2832U);
    t6 = (t0 + 2088U);
    t9 = *((char **)t6);
    t16 = *((int64 *)t9);
    std_textio_write8(STD_TEXTIO, t1, t2, t16, (unsigned char)0, 0, 1000LL);
    xsi_set_current_line(114, ng0);
    t1 = (t0 + 3832);
    t2 = (t0 + 2656U);
    t6 = (t0 + 2832U);
    std_textio_writeline(STD_TEXTIO, t1, t2, t6);
    t1 = (t0 + 4344);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 2328U);
    t6 = *((char **)t1);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)0);
    if (t8 != 0)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 3832);
    t2 = (t0 + 2832U);
    t6 = (t0 + 3192U);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    memcpy(t14, t10, 14U);
    t9 = (t0 + 7676U);
    std_textio_write7(STD_TEXTIO, t1, t2, t14, t9, (unsigned char)0, 0);
    xsi_set_current_line(97, ng0);
    t1 = (t0 + 3832);
    t2 = (t0 + 2656U);
    t6 = (t0 + 2832U);
    std_textio_writeline(STD_TEXTIO, t1, t2, t6);
    xsi_set_current_line(98, ng0);
    t1 = (t0 + 3832);
    t2 = (t0 + 2832U);
    t6 = (t0 + 3048U);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    memcpy(t15, t10, 1U);
    t9 = (t0 + 7660U);
    std_textio_write7(STD_TEXTIO, t1, t2, t15, t9, (unsigned char)0, 0);
    xsi_set_current_line(99, ng0);
    t1 = (t0 + 3832);
    t2 = (t0 + 2656U);
    t6 = (t0 + 2832U);
    std_textio_writeline(STD_TEXTIO, t1, t2, t6);
    xsi_set_current_line(100, ng0);
    t1 = (t0 + 2328U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)0;
    goto LAB3;

LAB5:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 3832);
    t9 = (t0 + 2832U);
    t10 = (t0 + 3048U);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t13, t12, 1U);
    t11 = (t0 + 7660U);
    std_textio_write7(STD_TEXTIO, t1, t9, t13, t11, (unsigned char)0, 0);
    xsi_set_current_line(94, ng0);
    t1 = (t0 + 3832);
    t2 = (t0 + 2656U);
    t6 = (t0 + 2832U);
    std_textio_writeline(STD_TEXTIO, t1, t2, t6);
    goto LAB6;

}


extern void work_a_2945679881_2945679881_init()
{
	static char *pe[] = {(void *)work_a_2945679881_2945679881_p_0,(void *)work_a_2945679881_2945679881_p_1};
	xsi_register_didat("work_a_2945679881_2945679881", "isim/ATB_JKFF_isim_beh.exe.sim/work/a_2945679881_2945679881.didat");
	xsi_register_executes(pe);
}
