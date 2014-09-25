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
static const char *ng0 = "D:/ECE.CLASSES/ECE338/FirstAssignSpring2013/RRU7_3.vhd";
extern char *IEEE_P_2592010699;



static void work_a_0169696453_2411457902_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(58, ng0);

LAB3:    t1 = (t0 + 15624U);
    t2 = *((char **)t1);
    t3 = (65 - 47);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 23472);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 48U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 23360);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0169696453_2411457902_p_1(char *t0)
{
    char t7[16];
    char t9[16];
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t8;
    char *t10;
    char *t11;
    int t12;
    unsigned int t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(59, ng0);

LAB3:    t1 = (t0 + 15464U);
    t2 = *((char **)t1);
    t3 = (65 - 47);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t8 = ((IEEE_P_2592010699) + 4024);
    t10 = (t9 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 47;
    t11 = (t10 + 4U);
    *((int *)t11) = 1;
    t11 = (t10 + 8U);
    *((int *)t11) = -1;
    t12 = (1 - 47);
    t13 = (t12 * -1);
    t13 = (t13 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t13;
    t6 = xsi_base_array_concat(t6, t7, t8, (char)97, t1, t9, (char)99, (unsigned char)2, (char)101);
    t13 = (47U + 1U);
    t14 = (48U != t13);
    if (t14 == 1)
        goto LAB5;

LAB6:    t11 = (t0 + 23536);
    t15 = (t11 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t6, 48U);
    xsi_driver_first_trans_fast_port(t11);

LAB2:    t19 = (t0 + 23376);
    *((int *)t19) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(48U, t13, 0);
    goto LAB6;

}

static void work_a_0169696453_2411457902_p_2(char *t0)
{
    char t9[16];
    char t11[16];
    char t16[16];
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t8;
    char *t10;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    char *t17;
    int t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(60, ng0);

LAB3:    t1 = (t0 + 15304U);
    t2 = *((char **)t1);
    t3 = (65 - 47);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 39160);
    t10 = ((IEEE_P_2592010699) + 4024);
    t12 = (t11 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 47;
    t13 = (t12 + 4U);
    *((int *)t13) = 2;
    t13 = (t12 + 8U);
    *((int *)t13) = -1;
    t14 = (2 - 47);
    t15 = (t14 * -1);
    t15 = (t15 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t15;
    t13 = (t16 + 0U);
    t17 = (t13 + 0U);
    *((int *)t17) = 0;
    t17 = (t13 + 4U);
    *((int *)t17) = 1;
    t17 = (t13 + 8U);
    *((int *)t17) = 1;
    t18 = (1 - 0);
    t15 = (t18 * 1);
    t15 = (t15 + 1);
    t17 = (t13 + 12U);
    *((unsigned int *)t17) = t15;
    t8 = xsi_base_array_concat(t8, t9, t10, (char)97, t1, t11, (char)97, t6, t16, (char)101);
    t15 = (46U + 2U);
    t19 = (48U != t15);
    if (t19 == 1)
        goto LAB5;

LAB6:    t17 = (t0 + 23600);
    t20 = (t17 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t8, 48U);
    xsi_driver_first_trans_fast_port(t17);

LAB2:    t24 = (t0 + 23392);
    *((int *)t24) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(48U, t15, 0);
    goto LAB6;

}


extern void work_a_0169696453_2411457902_init()
{
	static char *pe[] = {(void *)work_a_0169696453_2411457902_p_0,(void *)work_a_0169696453_2411457902_p_1,(void *)work_a_0169696453_2411457902_p_2};
	xsi_register_didat("work_a_0169696453_2411457902", "isim/ATB_FPM_isim_beh.exe.sim/work/a_0169696453_2411457902.didat");
	xsi_register_executes(pe);
}
