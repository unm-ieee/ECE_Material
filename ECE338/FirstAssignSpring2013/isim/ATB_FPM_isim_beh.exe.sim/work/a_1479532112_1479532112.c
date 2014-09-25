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
static const char *ng0 = "D:/ECE.CLASSES/ECE338/FirstAssignSpring2013/Tester.vhd";
extern char *STD_TEXTIO;
extern char *IEEE_P_3564397177;

void ieee_p_3564397177_sub_3205433008_91900896(char *, char *, char *, char *, char *, unsigned char , int );


static void work_a_1479532112_1479532112_p_0(char *t0)
{
    char t14[40];
    char t23[32];
    char t24[8];
    char t25[32];
    char t26[8];
    char t27[32];
    char t28[8];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    unsigned char t9;
    char *t10;
    int t11;
    int t12;
    char *t13;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    int64 t20;
    int64 t21;
    int64 t22;

LAB0:    t1 = (t0 + 3720U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 8472);
    *((int *)t2) = 0;
    t3 = (t0 + 8476);
    *((int *)t3) = 15;
    t4 = 0;
    t5 = 15;

LAB4:    if (t4 <= t5)
        goto LAB5;

LAB7:    goto LAB2;

LAB5:    xsi_set_current_line(56, ng0);
    t6 = (t0 + 2128U);
    t7 = *((char **)t6);
    t8 = *((int *)t7);
    t9 = (t8 == 1);
    if (t9 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 2128U);
    t3 = *((char **)t2);
    t8 = *((int *)t3);
    t9 = (t8 == 25);
    if (t9 != 0)
        goto LAB11;

LAB12:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 2128U);
    t3 = *((char **)t2);
    t8 = *((int *)t3);
    t11 = (t8 + 1);
    t2 = (t0 + 2128U);
    t6 = *((char **)t2);
    t2 = (t6 + 0);
    *((int *)t2) = t11;

LAB9:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 1648U);
    t3 = *((char **)t2);
    t2 = (t0 + 8472);
    t8 = *((int *)t2);
    t11 = (t8 - 0);
    t15 = (t11 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, *((int *)t2));
    t16 = (32U * t15);
    t17 = (0 + t16);
    t6 = (t3 + t17);
    t7 = (t0 + 4152);
    t10 = (t7 + 56U);
    t13 = *((char **)t10);
    t18 = (t13 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t6, 32U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 1768U);
    t3 = *((char **)t2);
    t2 = (t0 + 8472);
    t8 = *((int *)t2);
    t11 = (t8 - 0);
    t15 = (t11 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, *((int *)t2));
    t16 = (32U * t15);
    t17 = (0 + t16);
    t6 = (t3 + t17);
    t7 = (t0 + 4216);
    t10 = (t7 + 56U);
    t13 = *((char **)t10);
    t18 = (t13 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t6, 32U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(66, ng0);
    t20 = (50 * 1000LL);
    t2 = (t0 + 3528);
    xsi_process_wait(t2, t20);

LAB15:    *((char **)t1) = &&LAB16;

LAB1:    return;
LAB6:    t2 = (t0 + 8472);
    t4 = *((int *)t2);
    t3 = (t0 + 8476);
    t5 = *((int *)t3);
    if (t4 == t5)
        goto LAB7;

LAB17:    t8 = (t4 + 1);
    t4 = t8;
    t6 = (t0 + 8472);
    *((int *)t6) = t4;
    goto LAB4;

LAB8:    xsi_set_current_line(57, ng0);
    t6 = (t0 + 2128U);
    t10 = *((char **)t6);
    t11 = *((int *)t10);
    t12 = (t11 + 1);
    t6 = (t0 + 2128U);
    t13 = *((char **)t6);
    t6 = (t13 + 0);
    *((int *)t6) = t12;
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 3528);
    t3 = (t0 + 2632U);
    t6 = (t0 + 3136U);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    memcpy(t14, t10, 38U);
    t7 = (t0 + 7176U);
    std_textio_write7(STD_TEXTIO, t2, t3, t14, t7, (unsigned char)0, 0);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 3528);
    t3 = (t0 + 2456U);
    t6 = (t0 + 2632U);
    std_textio_writeline(STD_TEXTIO, t2, t3, t6);
    goto LAB9;

LAB11:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 2128U);
    t6 = *((char **)t2);
    t2 = (t6 + 0);
    *((int *)t2) = 1;
    goto LAB9;

LAB13:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t20 = *((int64 *)t3);
    t2 = (t0 + 1312U);
    t21 = xsi_signal_get_last_event(t2);
    t22 = (t20 - t21);
    t6 = (t0 + 1888U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    *((int64 *)t6) = t22;
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 3528);
    t3 = (t0 + 2632U);
    t6 = (t0 + 1032U);
    t7 = *((char **)t6);
    memcpy(t23, t7, 32U);
    t6 = (t0 + 7096U);
    ieee_p_3564397177_sub_3205433008_91900896(IEEE_P_3564397177, t2, t3, t23, t6, (unsigned char)0, 0);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 3528);
    t3 = (t0 + 2632U);
    t6 = (t0 + 2848U);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    memcpy(t24, t10, 2U);
    t7 = (t0 + 7144U);
    std_textio_write7(STD_TEXTIO, t2, t3, t24, t7, (unsigned char)0, 0);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 3528);
    t3 = (t0 + 2632U);
    t6 = (t0 + 1192U);
    t7 = *((char **)t6);
    memcpy(t25, t7, 32U);
    t6 = (t0 + 7112U);
    ieee_p_3564397177_sub_3205433008_91900896(IEEE_P_3564397177, t2, t3, t25, t6, (unsigned char)0, 0);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 3528);
    t3 = (t0 + 2632U);
    t6 = (t0 + 2992U);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    memcpy(t26, t10, 4U);
    t7 = (t0 + 7160U);
    std_textio_write7(STD_TEXTIO, t2, t3, t26, t7, (unsigned char)0, 0);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 3528);
    t3 = (t0 + 2632U);
    t6 = (t0 + 1352U);
    t7 = *((char **)t6);
    memcpy(t27, t7, 32U);
    t6 = (t0 + 7128U);
    ieee_p_3564397177_sub_3205433008_91900896(IEEE_P_3564397177, t2, t3, t27, t6, (unsigned char)0, 0);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 3528);
    t3 = (t0 + 2632U);
    t6 = (t0 + 2992U);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    memcpy(t28, t10, 4U);
    t7 = (t0 + 7160U);
    std_textio_write7(STD_TEXTIO, t2, t3, t28, t7, (unsigned char)0, 0);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 3528);
    t3 = (t0 + 2632U);
    t6 = (t0 + 1888U);
    t7 = *((char **)t6);
    t20 = *((int64 *)t7);
    std_textio_write8(STD_TEXTIO, t2, t3, t20, (unsigned char)0, 0, 1000LL);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 3528);
    t3 = (t0 + 2456U);
    t6 = (t0 + 2632U);
    std_textio_writeline(STD_TEXTIO, t2, t3, t6);
    goto LAB6;

LAB14:    goto LAB13;

LAB16:    goto LAB14;

}


extern void work_a_1479532112_1479532112_init()
{
	static char *pe[] = {(void *)work_a_1479532112_1479532112_p_0};
	xsi_register_didat("work_a_1479532112_1479532112", "isim/ATB_FPM_isim_beh.exe.sim/work/a_1479532112_1479532112.didat");
	xsi_register_executes(pe);
}
