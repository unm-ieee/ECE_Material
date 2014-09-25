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

/* This file is designed for use with ISim build 0x79f3f3a8 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "F:/ECE238/Lab 6/L5P1 SequenceDetector.vhd";



static void work_a_1016613099_1816513930_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    unsigned char t9;
    char *t10;
    char *t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    static char *nl0[] = {&&LAB9, &&LAB10, &&LAB11, &&LAB12, &&LAB13, &&LAB14};

LAB0:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 592U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 1960);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(43, ng0);
    t7 = (t0 + 868U);
    t8 = *((char **)t7);
    t9 = *((unsigned char *)t8);
    t7 = (char *)((nl0) + t9);
    goto **((char **)t7);

LAB5:    t2 = (t0 + 568U);
    t6 = xsi_signal_has_event(t2);
    t1 = t6;
    goto LAB7;

LAB8:    goto LAB3;

LAB9:    xsi_set_current_line(45, ng0);
    t10 = (t0 + 684U);
    t11 = *((char **)t10);
    t12 = *((unsigned char *)t11);
    t13 = (t12 == (unsigned char)2);
    if (t13 != 0)
        goto LAB15;

LAB17:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 2012);
    t3 = (t2 + 32U);
    t7 = *((char **)t3);
    t8 = (t7 + 40U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast(t2);

LAB16:    goto LAB8;

LAB10:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)2);
    if (t4 != 0)
        goto LAB18;

LAB20:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 2012);
    t3 = (t2 + 32U);
    t7 = *((char **)t3);
    t8 = (t7 + 40U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast(t2);

LAB19:    goto LAB8;

LAB11:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)2);
    if (t4 != 0)
        goto LAB21;

LAB23:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 2012);
    t3 = (t2 + 32U);
    t7 = *((char **)t3);
    t8 = (t7 + 40U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);

LAB22:    goto LAB8;

LAB12:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)2);
    if (t4 != 0)
        goto LAB24;

LAB26:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 2012);
    t3 = (t2 + 32U);
    t7 = *((char **)t3);
    t8 = (t7 + 40U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast(t2);

LAB25:    goto LAB8;

LAB13:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)2);
    if (t4 != 0)
        goto LAB27;

LAB29:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 2012);
    t3 = (t2 + 32U);
    t7 = *((char **)t3);
    t8 = (t7 + 40U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)5;
    xsi_driver_first_trans_fast(t2);

LAB28:    goto LAB8;

LAB14:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)2);
    if (t4 != 0)
        goto LAB30;

LAB32:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 2012);
    t3 = (t2 + 32U);
    t7 = *((char **)t3);
    t8 = (t7 + 40U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast(t2);

LAB31:    goto LAB8;

LAB15:    xsi_set_current_line(46, ng0);
    t10 = (t0 + 2012);
    t14 = (t10 + 32U);
    t15 = *((char **)t14);
    t16 = (t15 + 40U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)1;
    xsi_driver_first_trans_fast(t10);
    goto LAB16;

LAB18:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 2012);
    t7 = (t2 + 32U);
    t8 = *((char **)t7);
    t10 = (t8 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB19;

LAB21:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 2012);
    t7 = (t2 + 32U);
    t8 = *((char **)t7);
    t10 = (t8 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB22;

LAB24:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 2012);
    t7 = (t2 + 32U);
    t8 = *((char **)t7);
    t10 = (t8 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)4;
    xsi_driver_first_trans_fast(t2);
    goto LAB25;

LAB27:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 2012);
    t7 = (t2 + 32U);
    t8 = *((char **)t7);
    t10 = (t8 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)1;
    xsi_driver_first_trans_fast(t2);
    goto LAB28;

LAB30:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 2012);
    t7 = (t2 + 32U);
    t8 = *((char **)t7);
    t10 = (t8 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)1;
    xsi_driver_first_trans_fast(t2);
    goto LAB31;

}

static void work_a_1016613099_1816513930_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5, &&LAB6, &&LAB7, &&LAB8};

LAB0:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 960U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    xsi_set_current_line(100, ng0);
    t1 = (t0 + 960U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 2084);
    t4 = (t1 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);
    t1 = (t0 + 1968);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(88, ng0);
    t4 = (t0 + 3588);
    t6 = (t0 + 2048);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 5U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB2;

LAB4:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 3593);
    t4 = (t0 + 2048);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 5U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB2;

LAB5:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 3598);
    t4 = (t0 + 2048);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 5U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB2;

LAB6:    xsi_set_current_line(94, ng0);
    t1 = (t0 + 3603);
    t4 = (t0 + 2048);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 5U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB2;

LAB7:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 3608);
    t4 = (t0 + 2048);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 5U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB2;

LAB8:    xsi_set_current_line(98, ng0);
    t1 = (t0 + 3613);
    t4 = (t0 + 2048);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 5U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB2;

}


extern void work_a_1016613099_1816513930_init()
{
	static char *pe[] = {(void *)work_a_1016613099_1816513930_p_0,(void *)work_a_1016613099_1816513930_p_1};
	xsi_register_didat("work_a_1016613099_1816513930", "isim/testbench_isim_beh.exe.sim/work/a_1016613099_1816513930.didat");
	xsi_register_executes(pe);
}
