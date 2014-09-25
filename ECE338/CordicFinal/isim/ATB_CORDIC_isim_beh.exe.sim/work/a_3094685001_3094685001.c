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
static const char *ng0 = "D:/ECE.CLASSES/ECE338/CordicFinal/CordicTB.vhd";
extern char *IEEE_P_2592010699;
extern char *STD_TEXTIO;
extern char *IEEE_P_3564397177;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
void ieee_p_3564397177_sub_3205433008_91900896(char *, char *, char *, char *, char *, unsigned char , int );
void ieee_p_3564397177_sub_3988856810_91900896(char *, char *, char *, char *, char *);


static void work_a_3094685001_3094685001_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int t8;
    int t9;
    char *t10;

LAB0:    t1 = (t0 + 5080U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 7920);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(60, ng0);
    t7 = (5 * 1000LL);
    t2 = (t0 + 4888);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 7920);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(62, ng0);
    t7 = (5 * 1000LL);
    t2 = (t0 + 4888);
    xsi_process_wait(t2, t7);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 3112U);
    t3 = *((char **)t2);
    t8 = *((int *)t3);
    t9 = (t8 + 1);
    t2 = (t0 + 7984);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t10 = *((char **)t6);
    *((int *)t10) = t9;
    xsi_driver_first_trans_fast(t2);
    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_3094685001_3094685001_p_1(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t4 = (t3 < 5);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t9 = (t0 + 8048);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast(t9);

LAB2:    t14 = (t0 + 7632);
    *((int *)t14) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 8048);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_3094685001_3094685001_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    static char *nl0[] = {&&LAB8, &&LAB9, &&LAB10, &&LAB11, &&LAB12, &&LAB13, &&LAB14, &&LAB15, &&LAB16, &&LAB17, &&LAB18};

LAB0:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 7648);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 8112);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 2792U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t2 = (char *)((nl0) + t4);
    goto **((char **)t2);

LAB7:    goto LAB3;

LAB8:    xsi_set_current_line(80, ng0);
    t6 = (t0 + 8112);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)1;
    xsi_driver_first_trans_fast(t6);
    goto LAB7;

LAB9:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 8112);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB7;

LAB10:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB19;

LAB21:    xsi_set_current_line(89, ng0);
    t1 = (t0 + 8112);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB20:    goto LAB7;

LAB11:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 8112);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)4;
    xsi_driver_first_trans_fast(t1);
    goto LAB7;

LAB12:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB22;

LAB24:    xsi_set_current_line(99, ng0);
    t1 = (t0 + 8112);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)4;
    xsi_driver_first_trans_fast(t1);

LAB23:    goto LAB7;

LAB13:    xsi_set_current_line(103, ng0);
    t1 = (t0 + 8112);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)6;
    xsi_driver_first_trans_fast(t1);
    goto LAB7;

LAB14:    xsi_set_current_line(106, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB25;

LAB27:    xsi_set_current_line(109, ng0);
    t1 = (t0 + 8112);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)6;
    xsi_driver_first_trans_fast(t1);

LAB26:    goto LAB7;

LAB15:    xsi_set_current_line(113, ng0);
    t1 = (t0 + 8112);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)8;
    xsi_driver_first_trans_fast(t1);
    goto LAB7;

LAB16:    xsi_set_current_line(116, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB28;

LAB30:    xsi_set_current_line(119, ng0);
    t1 = (t0 + 8112);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)8;
    xsi_driver_first_trans_fast(t1);

LAB29:    goto LAB7;

LAB17:    xsi_set_current_line(123, ng0);
    t1 = (t0 + 8112);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)10;
    xsi_driver_first_trans_fast(t1);
    goto LAB7;

LAB18:    xsi_set_current_line(126, ng0);
    t1 = (t0 + 8112);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB7;

LAB19:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 8112);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB20;

LAB22:    xsi_set_current_line(97, ng0);
    t1 = (t0 + 8112);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)5;
    xsi_driver_first_trans_fast(t1);
    goto LAB23;

LAB25:    xsi_set_current_line(107, ng0);
    t1 = (t0 + 8112);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)7;
    xsi_driver_first_trans_fast(t1);
    goto LAB26;

LAB28:    xsi_set_current_line(117, ng0);
    t1 = (t0 + 8112);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)9;
    xsi_driver_first_trans_fast(t1);
    goto LAB29;

}

static void work_a_3094685001_3094685001_p_3(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    unsigned char t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(132, ng0);
    t4 = (t0 + 2792U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)2);
    if (t7 == 1)
        goto LAB11;

LAB12:    t4 = (t0 + 2792U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)4);
    t3 = t10;

LAB13:    if (t3 == 1)
        goto LAB8;

LAB9:    t4 = (t0 + 2792U);
    t11 = *((char **)t4);
    t12 = *((unsigned char *)t11);
    t13 = (t12 == (unsigned char)6);
    t2 = t13;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t4 = (t0 + 2792U);
    t14 = *((char **)t4);
    t15 = *((unsigned char *)t14);
    t16 = (t15 == (unsigned char)8);
    t1 = t16;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB14:    t21 = (t0 + 8176);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    *((unsigned char *)t25) = (unsigned char)2;
    xsi_driver_first_trans_fast(t21);

LAB2:    t26 = (t0 + 7664);
    *((int *)t26) = 1;

LAB1:    return;
LAB3:    t4 = (t0 + 8176);
    t17 = (t4 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = (unsigned char)3;
    xsi_driver_first_trans_fast(t4);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t2 = (unsigned char)1;
    goto LAB10;

LAB11:    t3 = (unsigned char)1;
    goto LAB13;

LAB15:    goto LAB2;

}

static void work_a_3094685001_3094685001_p_4(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(135, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t10 = xsi_get_transient_memory(32U);
    memset(t10, 0, 32U);
    t11 = t10;
    memset(t11, (unsigned char)4, 32U);
    t12 = (t0 + 8240);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t10, 32U);
    xsi_driver_first_trans_fast(t12);

LAB2:    t17 = (t0 + 7680);
    *((int *)t17) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 2472U);
    t5 = *((char **)t1);
    t1 = (t0 + 8240);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 32U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_3094685001_3094685001_p_5(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned char t23;
    unsigned char t24;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    unsigned char t33;
    unsigned char t34;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;

LAB0:    xsi_set_current_line(137, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB3;

LAB4:    t11 = (t0 + 2792U);
    t12 = *((char **)t11);
    t13 = *((unsigned char *)t12);
    t14 = (t13 == (unsigned char)4);
    if (t14 != 0)
        goto LAB5;

LAB6:    t21 = (t0 + 2792U);
    t22 = *((char **)t21);
    t23 = *((unsigned char *)t22);
    t24 = (t23 == (unsigned char)6);
    if (t24 != 0)
        goto LAB7;

LAB8:    t31 = (t0 + 2792U);
    t32 = *((char **)t31);
    t33 = *((unsigned char *)t32);
    t34 = (t33 == (unsigned char)8);
    if (t34 != 0)
        goto LAB9;

LAB10:
LAB11:    t41 = xsi_get_transient_memory(32U);
    memset(t41, 0, 32U);
    t42 = t41;
    memset(t42, (unsigned char)4, 32U);
    t43 = (t0 + 8304);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    t46 = (t45 + 56U);
    t47 = *((char **)t46);
    memcpy(t47, t41, 32U);
    xsi_driver_first_trans_fast(t43);

LAB2:    t48 = (t0 + 7696);
    *((int *)t48) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 12901);
    t6 = (t0 + 8304);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_fast(t6);
    goto LAB2;

LAB5:    t11 = (t0 + 12933);
    t16 = (t0 + 8304);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t11, 32U);
    xsi_driver_first_trans_fast(t16);
    goto LAB2;

LAB7:    t21 = (t0 + 12965);
    t26 = (t0 + 8304);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t21, 32U);
    xsi_driver_first_trans_fast(t26);
    goto LAB2;

LAB9:    t31 = (t0 + 12997);
    t36 = (t0 + 8304);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    memcpy(t40, t31, 32U);
    xsi_driver_first_trans_fast(t36);
    goto LAB2;

LAB12:    goto LAB2;

}

static void work_a_3094685001_3094685001_p_6(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned char t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned char t27;
    unsigned char t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;

LAB0:    xsi_set_current_line(143, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB3;

LAB4:    t9 = (t0 + 2792U);
    t10 = *((char **)t9);
    t11 = *((unsigned char *)t10);
    t12 = (t11 == (unsigned char)4);
    if (t12 != 0)
        goto LAB5;

LAB6:    t17 = (t0 + 2792U);
    t18 = *((char **)t17);
    t19 = *((unsigned char *)t18);
    t20 = (t19 == (unsigned char)6);
    if (t20 != 0)
        goto LAB7;

LAB8:    t25 = (t0 + 2792U);
    t26 = *((char **)t25);
    t27 = *((unsigned char *)t26);
    t28 = (t27 == (unsigned char)8);
    if (t28 != 0)
        goto LAB9;

LAB10:
LAB11:    t33 = (t0 + 8368);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    *((unsigned char *)t37) = (unsigned char)4;
    xsi_driver_first_trans_fast(t33);

LAB2:    t38 = (t0 + 7712);
    *((int *)t38) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 8368);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB5:    t9 = (t0 + 8368);
    t13 = (t9 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_fast(t9);
    goto LAB2;

LAB7:    t17 = (t0 + 8368);
    t21 = (t17 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    *((unsigned char *)t24) = (unsigned char)3;
    xsi_driver_first_trans_fast(t17);
    goto LAB2;

LAB9:    t25 = (t0 + 8368);
    t29 = (t25 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    *((unsigned char *)t32) = (unsigned char)3;
    xsi_driver_first_trans_fast(t25);
    goto LAB2;

LAB12:    goto LAB2;

}

static void work_a_3094685001_3094685001_p_7(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    int t10;
    int t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(151, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 7728);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(152, ng0);
    t1 = (t0 + 8432);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(154, ng0);
    t2 = (t0 + 2792U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t9 = (t4 == (unsigned char)10);
    if (t9 != 0)
        goto LAB7;

LAB9:
LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(155, ng0);
    t2 = (t0 + 2952U);
    t6 = *((char **)t2);
    t10 = *((int *)t6);
    t11 = (t10 + 1);
    t2 = (t0 + 8432);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t12 = (t8 + 56U);
    t13 = *((char **)t12);
    *((int *)t13) = t11;
    xsi_driver_first_trans_fast(t2);
    goto LAB8;

}

static void work_a_3094685001_3094685001_p_8(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;

LAB0:    xsi_set_current_line(163, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 7744);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(164, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t5 = t1;
    memset(t5, (unsigned char)2, 32U);
    t6 = (t0 + 8496);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(165, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t2 = t1;
    memset(t2, (unsigned char)2, 32U);
    t5 = (t0 + 8560);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(166, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t2 = t1;
    memset(t2, (unsigned char)2, 32U);
    t5 = (t0 + 8624);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(168, ng0);
    t2 = (t0 + 2792U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t11 = (t4 == (unsigned char)4);
    if (t11 != 0)
        goto LAB7;

LAB9:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)6);
    if (t4 != 0)
        goto LAB10;

LAB11:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)8);
    if (t4 != 0)
        goto LAB12;

LAB13:
LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(169, ng0);
    t2 = (t0 + 1832U);
    t6 = *((char **)t2);
    t2 = (t0 + 8624);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t6, 32U);
    xsi_driver_first_trans_fast(t2);
    goto LAB8;

LAB10:    xsi_set_current_line(171, ng0);
    t1 = (t0 + 1832U);
    t5 = *((char **)t1);
    t1 = (t0 + 8496);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 32U);
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

LAB12:    xsi_set_current_line(173, ng0);
    t1 = (t0 + 1832U);
    t5 = *((char **)t1);
    t1 = (t0 + 8560);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 32U);
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

}

static void work_a_3094685001_3094685001_p_9(char *t0)
{
    char t12[40];
    char t14[8];
    char t15[32];
    char t16[8];
    char t17[32];
    char t18[8];
    char t19[32];
    char t20[8];
    char t21[32];
    char t22[8];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    int t13;
    int64 t23;

LAB0:    xsi_set_current_line(189, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 7760);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(190, ng0);
    t3 = (t0 + 2792U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)1);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(199, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)10);
    if (t5 != 0)
        goto LAB11;

LAB13:
LAB12:    goto LAB3;

LAB5:    xsi_set_current_line(191, ng0);
    t3 = (t0 + 3960U);
    t7 = std_textio_endfile(t3);
    t8 = (!(t7));
    if (t8 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(195, ng0);
    t1 = (t0 + 13029);
    t4 = (t0 + 3408U);
    t9 = *((char **)t4);
    t4 = (t9 + 0);
    memcpy(t4, t1, 32U);

LAB9:    xsi_set_current_line(197, ng0);
    t1 = (t0 + 3408U);
    t3 = *((char **)t1);
    t1 = (t0 + 8688);
    t4 = (t1 + 56U);
    t9 = *((char **)t4);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t3, 32U);
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB8:    xsi_set_current_line(192, ng0);
    t9 = (t0 + 7120);
    t10 = (t0 + 3960U);
    t11 = (t0 + 4136U);
    std_textio_readline(STD_TEXTIO, t9, t10, t11);
    xsi_set_current_line(193, ng0);
    t1 = (t0 + 7120);
    t3 = (t0 + 4136U);
    t4 = (t0 + 3408U);
    t9 = *((char **)t4);
    t4 = (t0 + 12464U);
    ieee_p_3564397177_sub_3988856810_91900896(IEEE_P_3564397177, t1, t3, t9, t4);
    goto LAB9;

LAB11:    xsi_set_current_line(200, ng0);
    t1 = (t0 + 3528U);
    t4 = *((char **)t1);
    t6 = *((unsigned char *)t4);
    if (t6 != 0)
        goto LAB14;

LAB16:
LAB15:    xsi_set_current_line(205, ng0);
    t1 = (t0 + 7120);
    t3 = (t0 + 4136U);
    t4 = (t0 + 2952U);
    t9 = *((char **)t4);
    t13 = *((int *)t9);
    std_textio_write5(STD_TEXTIO, t1, t3, t13, (unsigned char)0, 3);
    xsi_set_current_line(205, ng0);
    t1 = (t0 + 7120);
    t3 = (t0 + 4136U);
    t4 = (t0 + 4352U);
    t9 = (t4 + 56U);
    t10 = *((char **)t9);
    memcpy(t14, t10, 2U);
    t9 = (t0 + 12480U);
    std_textio_write7(STD_TEXTIO, t1, t3, t14, t9, (unsigned char)0, 0);
    xsi_set_current_line(206, ng0);
    t1 = (t0 + 7120);
    t3 = (t0 + 4136U);
    t4 = (t0 + 2472U);
    t9 = *((char **)t4);
    memcpy(t15, t9, 32U);
    t4 = (t0 + 12432U);
    ieee_p_3564397177_sub_3205433008_91900896(IEEE_P_3564397177, t1, t3, t15, t4, (unsigned char)0, 0);
    xsi_set_current_line(206, ng0);
    t1 = (t0 + 7120);
    t3 = (t0 + 4136U);
    t4 = (t0 + 4352U);
    t9 = (t4 + 56U);
    t10 = *((char **)t9);
    memcpy(t16, t10, 2U);
    t9 = (t0 + 12480U);
    std_textio_write7(STD_TEXTIO, t1, t3, t16, t9, (unsigned char)0, 0);
    xsi_set_current_line(207, ng0);
    t1 = (t0 + 7120);
    t3 = (t0 + 4136U);
    t4 = (t0 + 2152U);
    t9 = *((char **)t4);
    memcpy(t17, t9, 32U);
    t4 = (t0 + 12400U);
    ieee_p_3564397177_sub_3205433008_91900896(IEEE_P_3564397177, t1, t3, t17, t4, (unsigned char)0, 0);
    xsi_set_current_line(207, ng0);
    t1 = (t0 + 7120);
    t3 = (t0 + 4136U);
    t4 = (t0 + 4352U);
    t9 = (t4 + 56U);
    t10 = *((char **)t9);
    memcpy(t18, t10, 2U);
    t9 = (t0 + 12480U);
    std_textio_write7(STD_TEXTIO, t1, t3, t18, t9, (unsigned char)0, 0);
    xsi_set_current_line(208, ng0);
    t1 = (t0 + 7120);
    t3 = (t0 + 4136U);
    t4 = (t0 + 2312U);
    t9 = *((char **)t4);
    memcpy(t19, t9, 32U);
    t4 = (t0 + 12416U);
    ieee_p_3564397177_sub_3205433008_91900896(IEEE_P_3564397177, t1, t3, t19, t4, (unsigned char)0, 0);
    xsi_set_current_line(208, ng0);
    t1 = (t0 + 7120);
    t3 = (t0 + 4136U);
    t4 = (t0 + 4352U);
    t9 = (t4 + 56U);
    t10 = *((char **)t9);
    memcpy(t20, t10, 2U);
    t9 = (t0 + 12480U);
    std_textio_write7(STD_TEXTIO, t1, t3, t20, t9, (unsigned char)0, 0);
    xsi_set_current_line(209, ng0);
    t1 = (t0 + 7120);
    t3 = (t0 + 4136U);
    t4 = (t0 + 2632U);
    t9 = *((char **)t4);
    memcpy(t21, t9, 32U);
    t4 = (t0 + 12448U);
    ieee_p_3564397177_sub_3205433008_91900896(IEEE_P_3564397177, t1, t3, t21, t4, (unsigned char)0, 0);
    xsi_set_current_line(209, ng0);
    t1 = (t0 + 7120);
    t3 = (t0 + 4136U);
    t4 = (t0 + 4352U);
    t9 = (t4 + 56U);
    t10 = *((char **)t9);
    memcpy(t22, t10, 2U);
    t9 = (t0 + 12480U);
    std_textio_write7(STD_TEXTIO, t1, t3, t22, t9, (unsigned char)0, 0);
    xsi_set_current_line(210, ng0);
    t1 = (t0 + 7120);
    t3 = (t0 + 4136U);
    t23 = xsi_get_sim_current_time();
    std_textio_write8(STD_TEXTIO, t1, t3, t23, (unsigned char)0, 0, 1000LL);
    xsi_set_current_line(211, ng0);
    t1 = (t0 + 7120);
    t3 = (t0 + 3856U);
    t4 = (t0 + 4136U);
    std_textio_writeline(STD_TEXTIO, t1, t3, t4);
    goto LAB12;

LAB14:    xsi_set_current_line(201, ng0);
    t1 = (t0 + 3528U);
    t9 = *((char **)t1);
    t1 = (t9 + 0);
    *((unsigned char *)t1) = (unsigned char)0;
    xsi_set_current_line(202, ng0);
    t1 = (t0 + 7120);
    t3 = (t0 + 4136U);
    t4 = (t0 + 4496U);
    t9 = (t4 + 56U);
    t10 = *((char **)t9);
    memcpy(t12, t10, 34U);
    t9 = (t0 + 12496U);
    std_textio_write7(STD_TEXTIO, t1, t3, t12, t9, (unsigned char)0, 0);
    xsi_set_current_line(203, ng0);
    t1 = (t0 + 7120);
    t3 = (t0 + 3856U);
    t4 = (t0 + 4136U);
    std_textio_writeline(STD_TEXTIO, t1, t3, t4);
    goto LAB15;

}


extern void work_a_3094685001_3094685001_init()
{
	static char *pe[] = {(void *)work_a_3094685001_3094685001_p_0,(void *)work_a_3094685001_3094685001_p_1,(void *)work_a_3094685001_3094685001_p_2,(void *)work_a_3094685001_3094685001_p_3,(void *)work_a_3094685001_3094685001_p_4,(void *)work_a_3094685001_3094685001_p_5,(void *)work_a_3094685001_3094685001_p_6,(void *)work_a_3094685001_3094685001_p_7,(void *)work_a_3094685001_3094685001_p_8,(void *)work_a_3094685001_3094685001_p_9};
	xsi_register_didat("work_a_3094685001_3094685001", "isim/ATB_CORDIC_isim_beh.exe.sim/work/a_3094685001_3094685001.didat");
	xsi_register_executes(pe);
}
