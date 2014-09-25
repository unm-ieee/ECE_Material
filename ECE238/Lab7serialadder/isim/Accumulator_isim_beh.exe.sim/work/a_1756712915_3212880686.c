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
static const char *ng0 = "F:/ECE238/Lab7serialadder/Accumulator.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3499444699;

char *ieee_p_3499444699_sub_4232465333_3536714472(char *, char *, char *, char *, int );


static void work_a_1756712915_3212880686_p_0(char *t0)
{
    char t24[16];
    char t26[16];
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned char t15;
    char *t16;
    char *t17;
    unsigned char t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t25;
    char *t27;
    char *t28;
    int t29;
    unsigned int t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;

LAB0:    xsi_set_current_line(50, ng0);
    t3 = (t0 + 776U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)2);
    if (t6 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t3 = (t0 + 2236);
    *((int *)t3) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(51, ng0);
    t8 = (t0 + 1236U);
    t12 = *((char **)t8);
    t8 = (t0 + 3840);
    t14 = ((IEEE_P_2592010699) + 2332);
    t15 = xsi_vhdl_lessthan(t14, t12, 4U, t8, 4U);
    if (t15 != 0)
        goto LAB11;

LAB13:
LAB12:    goto LAB3;

LAB5:    t8 = (t0 + 684U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    t1 = t11;
    goto LAB7;

LAB8:    t3 = (t0 + 752U);
    t7 = xsi_signal_has_event(t3);
    t2 = t7;
    goto LAB10;

LAB11:    xsi_set_current_line(52, ng0);
    t16 = (t0 + 592U);
    t17 = *((char **)t16);
    t18 = *((unsigned char *)t17);
    t16 = (t0 + 1144U);
    t19 = *((char **)t16);
    t20 = (3 - 3);
    t21 = (t20 * 1U);
    t22 = (0 + t21);
    t16 = (t19 + t22);
    t25 = ((IEEE_P_2592010699) + 2332);
    t27 = (t26 + 0U);
    t28 = (t27 + 0U);
    *((int *)t28) = 3;
    t28 = (t27 + 4U);
    *((int *)t28) = 1;
    t28 = (t27 + 8U);
    *((int *)t28) = -1;
    t29 = (1 - 3);
    t30 = (t29 * -1);
    t30 = (t30 + 1);
    t28 = (t27 + 12U);
    *((unsigned int *)t28) = t30;
    t23 = xsi_base_array_concat(t23, t24, t25, (char)99, t18, (char)97, t16, t26, (char)101);
    t28 = (t0 + 2288);
    t31 = (t28 + 32U);
    t32 = *((char **)t31);
    t33 = (t32 + 40U);
    t34 = *((char **)t33);
    memcpy(t34, t23, 4U);
    xsi_driver_first_trans_fast(t28);
    xsi_set_current_line(53, ng0);
    t3 = (t0 + 1144U);
    t4 = *((char **)t3);
    t29 = (0 - 3);
    t20 = (t29 * -1);
    t21 = (1U * t20);
    t22 = (0 + t21);
    t3 = (t4 + t22);
    t1 = *((unsigned char *)t3);
    t8 = (t0 + 2324);
    t9 = (t8 + 32U);
    t12 = *((char **)t9);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = t1;
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(54, ng0);
    t3 = (t0 + 1236U);
    t4 = *((char **)t3);
    t3 = (t0 + 3804U);
    t8 = ieee_p_3499444699_sub_4232465333_3536714472(IEEE_P_3499444699, t24, t4, t3, 1);
    t9 = (t0 + 2360);
    t12 = (t9 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 40U);
    t16 = *((char **)t14);
    memcpy(t16, t8, 4U);
    xsi_driver_first_trans_fast(t9);
    goto LAB12;

}

static void work_a_1756712915_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(59, ng0);

LAB3:    t1 = (t0 + 1144U);
    t2 = *((char **)t1);
    t1 = (t0 + 2396);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 2244);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1756712915_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1756712915_3212880686_p_0,(void *)work_a_1756712915_3212880686_p_1};
	xsi_register_didat("work_a_1756712915_3212880686", "isim/Accumulator_isim_beh.exe.sim/work/a_1756712915_3212880686.didat");
	xsi_register_executes(pe);
}
