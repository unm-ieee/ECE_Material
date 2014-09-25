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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "F:/ECE.CLASSES/ECE 443/Screeen/SCRN.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_3620187407_sub_2546382208_3965413181(char *, char *, char *, int );
unsigned char ieee_p_3620187407_sub_2546454082_3965413181(char *, char *, char *, int );
unsigned char ieee_p_3620187407_sub_2599083972_3965413181(char *, int , char *, char *);
unsigned char ieee_p_3620187407_sub_3905759485_3965413181(char *, char *, char *, int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );
char *ieee_p_3620187407_sub_674691591_3965413181(char *, char *, char *, char *, unsigned char );


static void work_a_0197255140_3212880686_p_0(char *t0)
{
    char t3[16];
    char *t1;
    unsigned char t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(34, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5352);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(35, ng0);
    t4 = (t0 + 1832U);
    t5 = *((char **)t4);
    t4 = (t0 + 8672U);
    t6 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t3, t5, t4, (unsigned char)3);
    t7 = (t3 + 12U);
    t8 = *((unsigned int *)t7);
    t9 = (1U * t8);
    t10 = (3U != t9);
    if (t10 == 1)
        goto LAB5;

LAB6:    t11 = (t0 + 5512);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 3U);
    xsi_driver_first_trans_fast(t11);
    goto LAB3;

LAB5:    xsi_size_not_matching(3U, t9, 0);
    goto LAB6;

}

static void work_a_0197255140_3212880686_p_1(char *t0)
{
    char t3[16];
    char *t1;
    unsigned char t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5368);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(44, ng0);
    t4 = (t0 + 2472U);
    t5 = *((char **)t4);
    t4 = (t0 + 8704U);
    t6 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t3, t5, t4, 1);
    t7 = (t3 + 12U);
    t8 = *((unsigned int *)t7);
    t9 = (1U * t8);
    t10 = (10U != t9);
    if (t10 == 1)
        goto LAB5;

LAB6:    t11 = (t0 + 5576);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 10U);
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(45, ng0);
    t1 = (t0 + 2472U);
    t4 = *((char **)t1);
    t1 = (t0 + 8704U);
    t5 = (t0 + 3368778);
    t7 = (t3 + 0U);
    t11 = (t7 + 0U);
    *((int *)t11) = 0;
    t11 = (t7 + 4U);
    *((int *)t11) = 9;
    t11 = (t7 + 8U);
    *((int *)t11) = 1;
    t16 = (9 - 0);
    t8 = (t16 * 1);
    t8 = (t8 + 1);
    t11 = (t7 + 12U);
    *((unsigned int *)t11) = t8;
    t2 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t4, t1, t5, t3);
    if (t2 != 0)
        goto LAB7;

LAB9:
LAB8:    goto LAB3;

LAB5:    xsi_size_not_matching(10U, t9, 0);
    goto LAB6;

LAB7:    xsi_set_current_line(46, ng0);
    t11 = (t0 + 3368788);
    t13 = (t0 + 5576);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t11, 10U);
    xsi_driver_first_trans_fast(t13);
    xsi_set_current_line(47, ng0);
    t1 = (t0 + 2632U);
    t4 = *((char **)t1);
    t1 = (t0 + 8720U);
    t5 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t3, t4, t1, 1);
    t6 = (t3 + 12U);
    t8 = *((unsigned int *)t6);
    t9 = (1U * t8);
    t2 = (10U != t9);
    if (t2 == 1)
        goto LAB10;

LAB11:    t7 = (t0 + 5640);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t5, 10U);
    xsi_driver_first_trans_fast(t7);
    goto LAB8;

LAB10:    xsi_size_not_matching(10U, t9, 0);
    goto LAB11;

}

static void work_a_0197255140_3212880686_p_2(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    unsigned char t8;
    char *t9;
    char *t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 2472U);
    t3 = *((char **)t2);
    t2 = (t0 + 8704U);
    t4 = ieee_p_3620187407_sub_3905759485_3965413181(IEEE_P_3620187407, t3, t2, 16);
    if (t4 == 1)
        goto LAB5;

LAB6:    t6 = (t0 + 2472U);
    t7 = *((char **)t6);
    t6 = (t0 + 8704U);
    t8 = ieee_p_3620187407_sub_2546454082_3965413181(IEEE_P_3620187407, t7, t6, 656);
    if (t8 == 1)
        goto LAB8;

LAB9:    t5 = (unsigned char)0;

LAB10:    t1 = t5;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 5704);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);

LAB3:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 2632U);
    t3 = *((char **)t2);
    t2 = (t0 + 8720U);
    t4 = ieee_p_3620187407_sub_3905759485_3965413181(IEEE_P_3620187407, t3, t2, 10);
    if (t4 == 1)
        goto LAB14;

LAB15:    t6 = (t0 + 2632U);
    t7 = *((char **)t6);
    t6 = (t0 + 8720U);
    t8 = ieee_p_3620187407_sub_2599083972_3965413181(IEEE_P_3620187407, 490, t7, t6);
    if (t8 == 1)
        goto LAB17;

LAB18:    t5 = (unsigned char)0;

LAB19:    t1 = t5;

LAB16:    if (t1 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 5768);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);

LAB12:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 3368798);
    t6 = (t0 + 5832);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_fast(t6);
    t2 = (t0 + 5384);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(56, ng0);
    t12 = (t0 + 5704);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)2;
    xsi_driver_first_trans_fast(t12);
    goto LAB3;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t9 = (t0 + 2472U);
    t10 = *((char **)t9);
    t9 = (t0 + 8704U);
    t11 = ieee_p_3620187407_sub_2546382208_3965413181(IEEE_P_3620187407, t10, t9, 752);
    t5 = t11;
    goto LAB10;

LAB11:    xsi_set_current_line(62, ng0);
    t12 = (t0 + 5768);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)2;
    xsi_driver_first_trans_fast(t12);
    goto LAB12;

LAB14:    t1 = (unsigned char)1;
    goto LAB16;

LAB17:    t9 = (t0 + 2632U);
    t10 = *((char **)t9);
    t9 = (t0 + 8720U);
    t11 = ieee_p_3620187407_sub_2546382208_3965413181(IEEE_P_3620187407, t10, t9, 493);
    t5 = t11;
    goto LAB19;

}

static void work_a_0197255140_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(77, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5896);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 5400);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0197255140_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(78, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5960);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 5416);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0197255140_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(80, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 6024);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5432);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0197255140_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0197255140_3212880686_p_0,(void *)work_a_0197255140_3212880686_p_1,(void *)work_a_0197255140_3212880686_p_2,(void *)work_a_0197255140_3212880686_p_3,(void *)work_a_0197255140_3212880686_p_4,(void *)work_a_0197255140_3212880686_p_5};
	xsi_register_didat("work_a_0197255140_3212880686", "isim/scrn_tb_isim_beh.exe.sim/work/a_0197255140_3212880686.didat");
	xsi_register_executes(pe);
}
