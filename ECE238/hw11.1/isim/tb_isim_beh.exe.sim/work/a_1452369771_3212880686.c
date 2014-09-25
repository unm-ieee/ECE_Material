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
static const char *ng0 = "C:/Users/Ryan/Desktop/School/ECE238L/hw11.1/hw11_1.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );


static void work_a_1452369771_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)2);
    if (t7 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 2832);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    goto LAB3;

LAB5:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1032U);
    t8 = *((char **)t1);
    t9 = *((unsigned char *)t8);
    t1 = (t0 + 1192U);
    t10 = *((char **)t1);
    t11 = *((unsigned char *)t10);
    t12 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t9, t11);
    t1 = (t0 + 2912);
    t13 = (t1 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = t12;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

}


extern void work_a_1452369771_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1452369771_3212880686_p_0};
	xsi_register_didat("work_a_1452369771_3212880686", "isim/tb_isim_beh.exe.sim/work/a_1452369771_3212880686.didat");
	xsi_register_executes(pe);
}
