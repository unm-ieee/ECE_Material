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
static const char *ng0 = "D:/ECE.CLASSES/ECE338/FirstAssignSpring2013/RRU3_2.vhd";
extern char *IEEE_P_2592010699;



static void work_a_2914990852_2411457902_p_0(char *t0)
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

LAB0:    xsi_set_current_line(45, ng0);

LAB3:    t1 = (t0 + 14664U);
    t2 = *((char **)t1);
    t3 = (48 - 47);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 22248);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 48U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 22152);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2914990852_2411457902_p_1(char *t0)
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

LAB0:    xsi_set_current_line(46, ng0);

LAB3:    t1 = (t0 + 14504U);
    t2 = *((char **)t1);
    t3 = (48 - 47);
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

LAB6:    t11 = (t0 + 22312);
    t15 = (t11 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t6, 48U);
    xsi_driver_first_trans_fast_port(t11);

LAB2:    t19 = (t0 + 22168);
    *((int *)t19) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(48U, t13, 0);
    goto LAB6;

}


extern void work_a_2914990852_2411457902_init()
{
	static char *pe[] = {(void *)work_a_2914990852_2411457902_p_0,(void *)work_a_2914990852_2411457902_p_1};
	xsi_register_didat("work_a_2914990852_2411457902", "isim/FP_MULTIPLIER_isim_beh.exe.sim/work/a_2914990852_2411457902.didat");
	xsi_register_executes(pe);
}
