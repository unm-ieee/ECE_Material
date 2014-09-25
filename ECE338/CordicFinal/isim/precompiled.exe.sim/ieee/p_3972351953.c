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
extern char *STD_STANDARD;
static const char *ng1 = "Function sign ended without a return statement";
static const char *ng2 = "Function ceil ended without a return statement";
static const char *ng3 = "Function floor ended without a return statement";
static const char *ng4 = "Function round ended without a return statement";
static const char *ng5 = "Function trunc ended without a return statement";
static const char *ng6 = "Function realmax ended without a return statement";
static const char *ng7 = "Function realmin ended without a return statement";
static const char *ng8 = "real_vector";
static const char *ng9 = "Function sin ended without a return statement";
static const char *ng10 = "Function tan ended without a return statement";
static const char *ng11 = "Function tanh ended without a return statement";

double ieee_p_3972351953_sub_1487517033_2984157535(char *, double );
double ieee_p_3972351953_sub_1543758017_2984157535(char *, double );
double ieee_p_3972351953_sub_785569749_2984157535(char *, double );


char *ieee_p_3972351953_sub_597906855_2984157535(char *t1, char *t2, char *t3, char *t4, double t5, int t6)
{
    char t7[368];
    char t8[32];
    char t11[16];
    char t25[8];
    char t31[8];
    char *t0;
    int t9;
    unsigned int t10;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t32;
    char *t33;
    char *t34;
    unsigned char t35;
    char *t36;
    char *t37;
    char *t38;
    int t39;
    int t40;
    char *t41;
    char *t42;
    double t43;
    char *t44;
    int t45;
    char *t46;
    int t47;
    int t48;
    char *t49;
    int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    int t54;
    int t55;
    int t56;
    int t57;
    int t58;
    double t59;

LAB0:    t9 = (t6 - 0);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t10 = (t10 * 8U);
    t12 = (t11 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = t6;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t14 = (t6 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t15;
    t13 = (t7 + 4U);
    t16 = (t1 + 5856);
    t17 = (t13 + 88U);
    *((char **)t17) = t16;
    t18 = (char *)alloca(t10);
    t19 = (t13 + 56U);
    *((char **)t19) = t18;
    xsi_type_set_default_value(t16, t18, t11);
    t20 = (t13 + 64U);
    *((char **)t20) = t11;
    t21 = (t13 + 80U);
    *((unsigned int *)t21) = t10;
    t22 = (t7 + 124U);
    t23 = ((STD_STANDARD) + 472);
    t24 = (t22 + 88U);
    *((char **)t24) = t23;
    t26 = (t22 + 56U);
    *((char **)t26) = t25;
    *((double *)t25) = t5;
    t27 = (t22 + 80U);
    *((unsigned int *)t27) = 8U;
    t28 = (t7 + 244U);
    t29 = ((STD_STANDARD) + 0);
    t30 = (t28 + 88U);
    *((char **)t30) = t29;
    t32 = (t28 + 56U);
    *((char **)t32) = t31;
    *((unsigned char *)t31) = (unsigned char)1;
    t33 = (t28 + 80U);
    *((unsigned int *)t33) = 1U;
    t34 = (t8 + 4U);
    t35 = (t3 != 0);
    if (t35 == 1)
        goto LAB3;

LAB2:    t36 = (t8 + 12U);
    *((char **)t36) = t4;
    t37 = (t8 + 20U);
    *((double *)t37) = t5;
    t38 = (t8 + 28U);
    *((int *)t38) = t6;
    t39 = 0;
    t40 = t6;

LAB4:    if (t39 <= t40)
        goto LAB5;

LAB7:    t12 = (t13 + 56U);
    t16 = *((char **)t12);
    t12 = (t11 + 12U);
    t10 = *((unsigned int *)t12);
    t10 = (t10 * 8U);
    t0 = xsi_get_transient_memory(t10);
    memcpy(t0, t16, t10);
    t17 = (t11 + 0U);
    t9 = *((int *)t17);
    t19 = (t11 + 4U);
    t14 = *((int *)t19);
    t20 = (t11 + 8U);
    t39 = *((int *)t20);
    t21 = (t2 + 0U);
    t23 = (t21 + 0U);
    *((int *)t23) = t9;
    t23 = (t21 + 4U);
    *((int *)t23) = t14;
    t23 = (t21 + 8U);
    *((int *)t23) = t39;
    t40 = (t14 - t9);
    t15 = (t40 * t39);
    t15 = (t15 + 1);
    t23 = (t21 + 12U);
    *((unsigned int *)t23) = t15;

LAB1:    return t0;
LAB3:    *((char **)t34) = t3;
    goto LAB2;

LAB5:    t41 = (t22 + 56U);
    t42 = *((char **)t41);
    t43 = *((double *)t42);
    t41 = (t13 + 56U);
    t44 = *((char **)t41);
    t41 = (t11 + 0U);
    t45 = *((int *)t41);
    t46 = (t11 + 8U);
    t47 = *((int *)t46);
    t48 = (t39 - t45);
    t15 = (t48 * t47);
    t49 = (t11 + 4U);
    t50 = *((int *)t49);
    xsi_vhdl_check_range_of_index(t45, t50, t47, t39);
    t51 = (8U * t15);
    t52 = (0 + t51);
    t53 = (t44 + t52);
    *((double *)t53) = t43;
    t12 = (t4 + 8U);
    t9 = *((int *)t12);
    t16 = (t4 + 4U);
    t14 = *((int *)t16);
    t17 = (t4 + 0U);
    t45 = *((int *)t17);
    t47 = t45;
    t48 = t14;

LAB8:    t50 = (t48 * t9);
    t54 = (t47 * t9);
    if (t54 <= t50)
        goto LAB9;

LAB11:    t12 = (t28 + 56U);
    t16 = *((char **)t12);
    t35 = *((unsigned char *)t16);
    if (t35 != 0)
        goto LAB17;

LAB19:
LAB18:    t12 = (t28 + 56U);
    t16 = *((char **)t12);
    t12 = (t16 + 0);
    *((unsigned char *)t12) = (unsigned char)1;

LAB6:    if (t39 == t40)
        goto LAB7;

LAB20:    t9 = (t39 + 1);
    t39 = t9;
    goto LAB4;

LAB9:    t19 = (t4 + 0U);
    t55 = *((int *)t19);
    t20 = (t4 + 8U);
    t56 = *((int *)t20);
    t57 = (t47 - t55);
    t10 = (t57 * t56);
    t15 = (4U * t10);
    t51 = (0 + t15);
    t21 = (t3 + t51);
    t58 = *((int *)t21);
    t35 = (t39 == t58);
    if (t35 != 0)
        goto LAB12;

LAB14:
LAB13:
LAB10:    if (t47 == t48)
        goto LAB11;

LAB16:    t14 = (t47 + t9);
    t47 = t14;
    goto LAB8;

LAB12:    t23 = (t28 + 56U);
    t24 = *((char **)t23);
    t23 = (t24 + 0);
    *((unsigned char *)t23) = (unsigned char)0;
    goto LAB11;

LAB15:    goto LAB13;

LAB17:    t12 = (t22 + 56U);
    t17 = *((char **)t12);
    t43 = *((double *)t17);
    t59 = (t43 / 2.0000000000000000);
    t12 = (t22 + 56U);
    t19 = *((char **)t12);
    t12 = (t19 + 0);
    *((double *)t12) = t59;
    goto LAB18;

LAB21:;
}

char *ieee_p_3972351953_sub_2938191189_2984157535(char *t1, double t2, double t3, double t4, int t5, unsigned char t6)
{
    char t7[488];
    char t8[40];
    char t12[8];
    char t18[8];
    char t24[8];
    char t30[8];
    char *t0;
    char *t9;
    char *t10;
    char *t11;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    unsigned char t38;
    int t39;
    int t40;
    char *t41;
    char *t42;
    double t43;
    char *t44;
    double t45;
    double t46;
    int t47;
    int t48;
    int t49;
    unsigned int t50;
    int t51;
    unsigned int t52;
    unsigned int t53;
    double t54;
    double t55;
    double t56;

LAB0:    t9 = (t7 + 4U);
    t10 = ((STD_STANDARD) + 472);
    t11 = (t9 + 88U);
    *((char **)t11) = t10;
    t13 = (t9 + 56U);
    *((char **)t13) = t12;
    *((double *)t12) = t2;
    t14 = (t9 + 80U);
    *((unsigned int *)t14) = 8U;
    t15 = (t7 + 124U);
    t16 = ((STD_STANDARD) + 472);
    t17 = (t15 + 88U);
    *((char **)t17) = t16;
    t19 = (t15 + 56U);
    *((char **)t19) = t18;
    *((double *)t18) = t3;
    t20 = (t15 + 80U);
    *((unsigned int *)t20) = 8U;
    t21 = (t7 + 244U);
    t22 = ((STD_STANDARD) + 472);
    t23 = (t21 + 88U);
    *((char **)t23) = t22;
    t25 = (t21 + 56U);
    *((char **)t25) = t24;
    *((double *)t24) = t4;
    t26 = (t21 + 80U);
    *((unsigned int *)t26) = 8U;
    t27 = (t7 + 364U);
    t28 = ((STD_STANDARD) + 472);
    t29 = (t27 + 88U);
    *((char **)t29) = t28;
    t31 = (t27 + 56U);
    *((char **)t31) = t30;
    xsi_type_set_default_value(t28, t30, 0);
    t32 = (t27 + 80U);
    *((unsigned int *)t32) = 8U;
    t33 = (t8 + 4U);
    *((double *)t33) = t2;
    t34 = (t8 + 12U);
    *((double *)t34) = t3;
    t35 = (t8 + 20U);
    *((double *)t35) = t4;
    t36 = (t8 + 28U);
    *((int *)t36) = t5;
    t37 = (t8 + 32U);
    *((unsigned char *)t37) = t6;
    t38 = (t6 == (unsigned char)0);
    if (t38 != 0)
        goto LAB2;

LAB4:    t39 = 0;
    t40 = t5;

LAB13:    if (t39 <= t40)
        goto LAB14;

LAB16:
LAB3:    t10 = xsi_get_transient_memory(24U);
    memset(t10, 0, 24U);
    t11 = t10;
    t13 = (t9 + 56U);
    t14 = *((char **)t13);
    t43 = *((double *)t14);
    *((double *)t11) = t43;
    t11 = (t11 + 8U);
    t13 = (t15 + 56U);
    t16 = *((char **)t13);
    t45 = *((double *)t16);
    *((double *)t11) = t45;
    t11 = (t11 + 8U);
    t13 = (t21 + 56U);
    t17 = *((char **)t13);
    t46 = *((double *)t17);
    *((double *)t11) = t46;
    xsi_vhdl_check_range_of_slice(0, 2, 1, 0, 2, 1);
    t0 = xsi_get_transient_memory(24U);
    memcpy(t0, t10, 24U);

LAB1:    return t0;
LAB2:    t39 = 0;
    t40 = t5;

LAB5:    if (t39 <= t40)
        goto LAB6;

LAB8:    goto LAB3;

LAB6:    t41 = (t9 + 56U);
    t42 = *((char **)t41);
    t43 = *((double *)t42);
    t41 = (t27 + 56U);
    t44 = *((char **)t41);
    t41 = (t44 + 0);
    *((double *)t41) = t43;
    t10 = (t21 + 56U);
    t11 = *((char **)t10);
    t43 = *((double *)t11);
    t38 = (t43 >= 0.00000000000000000);
    if (t38 != 0)
        goto LAB9;

LAB11:    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t43 = *((double *)t11);
    t10 = (t15 + 56U);
    t13 = *((char **)t10);
    t45 = *((double *)t13);
    t10 = (t1 + 4168U);
    t14 = *((char **)t10);
    t10 = (t1 + 9860U);
    t16 = (t10 + 0U);
    t47 = *((int *)t16);
    t17 = (t1 + 9860U);
    t19 = (t17 + 8U);
    t48 = *((int *)t19);
    t49 = (t39 - t47);
    t50 = (t49 * t48);
    t20 = (t1 + 9860U);
    t22 = (t20 + 4U);
    t51 = *((int *)t22);
    xsi_vhdl_check_range_of_index(t47, t51, t48, t39);
    t52 = (8U * t50);
    t53 = (0 + t52);
    t23 = (t14 + t53);
    t46 = *((double *)t23);
    t54 = (t45 * t46);
    t55 = (t43 + t54);
    t25 = (t9 + 56U);
    t26 = *((char **)t25);
    t25 = (t26 + 0);
    *((double *)t25) = t55;
    t10 = (t15 + 56U);
    t11 = *((char **)t10);
    t43 = *((double *)t11);
    t10 = (t27 + 56U);
    t13 = *((char **)t10);
    t45 = *((double *)t13);
    t10 = (t1 + 4168U);
    t14 = *((char **)t10);
    t10 = (t1 + 9860U);
    t16 = (t10 + 0U);
    t47 = *((int *)t16);
    t17 = (t1 + 9860U);
    t19 = (t17 + 8U);
    t48 = *((int *)t19);
    t49 = (t39 - t47);
    t50 = (t49 * t48);
    t20 = (t1 + 9860U);
    t22 = (t20 + 4U);
    t51 = *((int *)t22);
    xsi_vhdl_check_range_of_index(t47, t51, t48, t39);
    t52 = (8U * t50);
    t53 = (0 + t52);
    t23 = (t14 + t53);
    t46 = *((double *)t23);
    t54 = (t45 * t46);
    t55 = (t43 - t54);
    t25 = (t15 + 56U);
    t26 = *((char **)t25);
    t25 = (t26 + 0);
    *((double *)t25) = t55;
    t10 = (t21 + 56U);
    t11 = *((char **)t10);
    t43 = *((double *)t11);
    t10 = (t1 + 4288U);
    t13 = *((char **)t10);
    t47 = (t39 - 0);
    t50 = (t47 * 1);
    xsi_vhdl_check_range_of_index(0, 27, 1, t39);
    t52 = (8U * t50);
    t53 = (0 + t52);
    t10 = (t13 + t53);
    t45 = *((double *)t10);
    t46 = (t43 + t45);
    t14 = (t21 + 56U);
    t16 = *((char **)t14);
    t14 = (t16 + 0);
    *((double *)t14) = t46;

LAB10:
LAB7:    if (t39 == t40)
        goto LAB8;

LAB12:    t47 = (t39 + 1);
    t39 = t47;
    goto LAB5;

LAB9:    t10 = (t9 + 56U);
    t13 = *((char **)t10);
    t45 = *((double *)t13);
    t10 = (t15 + 56U);
    t14 = *((char **)t10);
    t46 = *((double *)t14);
    t10 = (t1 + 4168U);
    t16 = *((char **)t10);
    t10 = (t1 + 9860U);
    t17 = (t10 + 0U);
    t47 = *((int *)t17);
    t19 = (t1 + 9860U);
    t20 = (t19 + 8U);
    t48 = *((int *)t20);
    t49 = (t39 - t47);
    t50 = (t49 * t48);
    t22 = (t1 + 9860U);
    t23 = (t22 + 4U);
    t51 = *((int *)t23);
    xsi_vhdl_check_range_of_index(t47, t51, t48, t39);
    t52 = (8U * t50);
    t53 = (0 + t52);
    t25 = (t16 + t53);
    t54 = *((double *)t25);
    t55 = (t46 * t54);
    t56 = (t45 - t55);
    t26 = (t9 + 56U);
    t28 = *((char **)t26);
    t26 = (t28 + 0);
    *((double *)t26) = t56;
    t10 = (t15 + 56U);
    t11 = *((char **)t10);
    t43 = *((double *)t11);
    t10 = (t27 + 56U);
    t13 = *((char **)t10);
    t45 = *((double *)t13);
    t10 = (t1 + 4168U);
    t14 = *((char **)t10);
    t10 = (t1 + 9860U);
    t16 = (t10 + 0U);
    t47 = *((int *)t16);
    t17 = (t1 + 9860U);
    t19 = (t17 + 8U);
    t48 = *((int *)t19);
    t49 = (t39 - t47);
    t50 = (t49 * t48);
    t20 = (t1 + 9860U);
    t22 = (t20 + 4U);
    t51 = *((int *)t22);
    xsi_vhdl_check_range_of_index(t47, t51, t48, t39);
    t52 = (8U * t50);
    t53 = (0 + t52);
    t23 = (t14 + t53);
    t46 = *((double *)t23);
    t54 = (t45 * t46);
    t55 = (t43 + t54);
    t25 = (t15 + 56U);
    t26 = *((char **)t25);
    t25 = (t26 + 0);
    *((double *)t25) = t55;
    t10 = (t21 + 56U);
    t11 = *((char **)t10);
    t43 = *((double *)t11);
    t10 = (t1 + 4288U);
    t13 = *((char **)t10);
    t47 = (t39 - 0);
    t50 = (t47 * 1);
    xsi_vhdl_check_range_of_index(0, 27, 1, t39);
    t52 = (8U * t50);
    t53 = (0 + t52);
    t10 = (t13 + t53);
    t45 = *((double *)t10);
    t46 = (t43 - t45);
    t14 = (t21 + 56U);
    t16 = *((char **)t14);
    t14 = (t16 + 0);
    *((double *)t14) = t46;
    goto LAB10;

LAB14:    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t43 = *((double *)t11);
    t10 = (t27 + 56U);
    t13 = *((char **)t10);
    t10 = (t13 + 0);
    *((double *)t10) = t43;
    t10 = (t15 + 56U);
    t11 = *((char **)t10);
    t43 = *((double *)t11);
    t38 = (t43 < 0.00000000000000000);
    if (t38 != 0)
        goto LAB17;

LAB19:    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t43 = *((double *)t11);
    t10 = (t15 + 56U);
    t13 = *((char **)t10);
    t45 = *((double *)t13);
    t10 = (t1 + 4168U);
    t14 = *((char **)t10);
    t10 = (t1 + 9860U);
    t16 = (t10 + 0U);
    t47 = *((int *)t16);
    t17 = (t1 + 9860U);
    t19 = (t17 + 8U);
    t48 = *((int *)t19);
    t49 = (t39 - t47);
    t50 = (t49 * t48);
    t20 = (t1 + 9860U);
    t22 = (t20 + 4U);
    t51 = *((int *)t22);
    xsi_vhdl_check_range_of_index(t47, t51, t48, t39);
    t52 = (8U * t50);
    t53 = (0 + t52);
    t23 = (t14 + t53);
    t46 = *((double *)t23);
    t54 = (t45 * t46);
    t55 = (t43 + t54);
    t25 = (t9 + 56U);
    t26 = *((char **)t25);
    t25 = (t26 + 0);
    *((double *)t25) = t55;
    t10 = (t15 + 56U);
    t11 = *((char **)t10);
    t43 = *((double *)t11);
    t10 = (t27 + 56U);
    t13 = *((char **)t10);
    t45 = *((double *)t13);
    t10 = (t1 + 4168U);
    t14 = *((char **)t10);
    t10 = (t1 + 9860U);
    t16 = (t10 + 0U);
    t47 = *((int *)t16);
    t17 = (t1 + 9860U);
    t19 = (t17 + 8U);
    t48 = *((int *)t19);
    t49 = (t39 - t47);
    t50 = (t49 * t48);
    t20 = (t1 + 9860U);
    t22 = (t20 + 4U);
    t51 = *((int *)t22);
    xsi_vhdl_check_range_of_index(t47, t51, t48, t39);
    t52 = (8U * t50);
    t53 = (0 + t52);
    t23 = (t14 + t53);
    t46 = *((double *)t23);
    t54 = (t45 * t46);
    t55 = (t43 - t54);
    t25 = (t15 + 56U);
    t26 = *((char **)t25);
    t25 = (t26 + 0);
    *((double *)t25) = t55;
    t10 = (t21 + 56U);
    t11 = *((char **)t10);
    t43 = *((double *)t11);
    t10 = (t1 + 4288U);
    t13 = *((char **)t10);
    t47 = (t39 - 0);
    t50 = (t47 * 1);
    xsi_vhdl_check_range_of_index(0, 27, 1, t39);
    t52 = (8U * t50);
    t53 = (0 + t52);
    t10 = (t13 + t53);
    t45 = *((double *)t10);
    t46 = (t43 + t45);
    t14 = (t21 + 56U);
    t16 = *((char **)t14);
    t14 = (t16 + 0);
    *((double *)t14) = t46;

LAB18:
LAB15:    if (t39 == t40)
        goto LAB16;

LAB20:    t47 = (t39 + 1);
    t39 = t47;
    goto LAB13;

LAB17:    t10 = (t9 + 56U);
    t13 = *((char **)t10);
    t45 = *((double *)t13);
    t10 = (t15 + 56U);
    t14 = *((char **)t10);
    t46 = *((double *)t14);
    t10 = (t1 + 4168U);
    t16 = *((char **)t10);
    t10 = (t1 + 9860U);
    t17 = (t10 + 0U);
    t47 = *((int *)t17);
    t19 = (t1 + 9860U);
    t20 = (t19 + 8U);
    t48 = *((int *)t20);
    t49 = (t39 - t47);
    t50 = (t49 * t48);
    t22 = (t1 + 9860U);
    t23 = (t22 + 4U);
    t51 = *((int *)t23);
    xsi_vhdl_check_range_of_index(t47, t51, t48, t39);
    t52 = (8U * t50);
    t53 = (0 + t52);
    t25 = (t16 + t53);
    t54 = *((double *)t25);
    t55 = (t46 * t54);
    t56 = (t45 - t55);
    t26 = (t9 + 56U);
    t28 = *((char **)t26);
    t26 = (t28 + 0);
    *((double *)t26) = t56;
    t10 = (t15 + 56U);
    t11 = *((char **)t10);
    t43 = *((double *)t11);
    t10 = (t27 + 56U);
    t13 = *((char **)t10);
    t45 = *((double *)t13);
    t10 = (t1 + 4168U);
    t14 = *((char **)t10);
    t10 = (t1 + 9860U);
    t16 = (t10 + 0U);
    t47 = *((int *)t16);
    t17 = (t1 + 9860U);
    t19 = (t17 + 8U);
    t48 = *((int *)t19);
    t49 = (t39 - t47);
    t50 = (t49 * t48);
    t20 = (t1 + 9860U);
    t22 = (t20 + 4U);
    t51 = *((int *)t22);
    xsi_vhdl_check_range_of_index(t47, t51, t48, t39);
    t52 = (8U * t50);
    t53 = (0 + t52);
    t23 = (t14 + t53);
    t46 = *((double *)t23);
    t54 = (t45 * t46);
    t55 = (t43 + t54);
    t25 = (t15 + 56U);
    t26 = *((char **)t25);
    t25 = (t26 + 0);
    *((double *)t25) = t55;
    t10 = (t21 + 56U);
    t11 = *((char **)t10);
    t43 = *((double *)t11);
    t10 = (t1 + 4288U);
    t13 = *((char **)t10);
    t47 = (t39 - 0);
    t50 = (t47 * 1);
    xsi_vhdl_check_range_of_index(0, 27, 1, t39);
    t52 = (8U * t50);
    t53 = (0 + t52);
    t10 = (t13 + t53);
    t45 = *((double *)t10);
    t46 = (t43 - t45);
    t14 = (t21 + 56U);
    t16 = *((char **)t14);
    t14 = (t16 + 0);
    *((double *)t14) = t46;
    goto LAB18;

LAB21:;
}

double ieee_p_3972351953_sub_795735699_2984157535(char *t1, double t2)
{
    char t4[16];
    double t0;
    char *t5;
    unsigned char t6;
    double t7;

LAB0:    t5 = (t4 + 4U);
    *((double *)t5) = t2;
    t6 = (t2 > 0.00000000000000000);
    if (t6 != 0)
        goto LAB2;

LAB4:    t6 = (t2 < 0.00000000000000000);
    if (t6 != 0)
        goto LAB6;

LAB7:    t0 = 0.00000000000000000;

LAB1:    return t0;
LAB2:    t0 = 1.0000000000000000;
    goto LAB1;

LAB3:    xsi_error(ng1);
    t0 = 0;
    goto LAB1;

LAB5:    goto LAB3;

LAB6:    t7 = (-(1.0000000000000000));
    t0 = t7;
    goto LAB1;

LAB8:    goto LAB3;

LAB9:    goto LAB3;

}

double ieee_p_3972351953_sub_1147618771_2984157535(char *t1, double t2)
{
    char t3[248];
    char t4[16];
    char t9[8];
    char t15[8];
    double t0;
    int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t16;
    char *t17;
    char *t18;
    double t19;
    char *t20;
    char *t21;
    double t22;
    unsigned char t23;
    unsigned char t24;
    double t25;

LAB0:    if (-2147483648 > 2147483647)
        goto LAB2;

LAB3:    if (1 == -1)
        goto LAB7;

LAB8:    t5 = 2147483647;

LAB4:    t6 = (t3 + 4U);
    t7 = ((STD_STANDARD) + 472);
    t8 = (t6 + 88U);
    *((char **)t8) = t7;
    t10 = (t6 + 56U);
    *((char **)t10) = t9;
    *((double *)t9) = ((double)(t5));
    t11 = (t6 + 80U);
    *((unsigned int *)t11) = 8U;
    t12 = (t3 + 124U);
    t13 = ((STD_STANDARD) + 472);
    t14 = (t12 + 88U);
    *((char **)t14) = t13;
    t16 = (t12 + 56U);
    *((char **)t16) = t15;
    xsi_type_set_default_value(t13, t15, 0);
    t17 = (t12 + 80U);
    *((unsigned int *)t17) = 8U;
    t18 = (t4 + 4U);
    *((double *)t18) = t2;
    t19 = (t2>=0?t2: -t2);
    t20 = (t6 + 56U);
    t21 = *((char **)t20);
    t22 = *((double *)t21);
    t23 = (t19 >= t22);
    if (t23 != 0)
        goto LAB9;

LAB11:
LAB10:    t23 = (t2 >= 0);
    if (t23 == 1)
        goto LAB13;

LAB14:    t22 = (t2 - 0.50000000000000000);
    t5 = ((int)(t22));

LAB15:    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t7 = (t8 + 0);
    *((double *)t7) = ((double)(t5));
    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t19 = *((double *)t8);
    t23 = (t19 == t2);
    if (t23 != 0)
        goto LAB18;

LAB20:
LAB19:    t23 = (t2 > 0.00000000000000000);
    if (t23 != 0)
        goto LAB22;

LAB24:    t23 = (t2 == 0.00000000000000000);
    if (t23 != 0)
        goto LAB30;

LAB31:    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t19 = *((double *)t8);
    t23 = (t19 <= t2);
    if (t23 != 0)
        goto LAB33;

LAB35:    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t19 = *((double *)t8);
    t0 = t19;

LAB1:    return t0;
LAB2:    if (1 == 1)
        goto LAB5;

LAB6:    t5 = -2147483648;
    goto LAB4;

LAB5:    t5 = 2147483647;
    goto LAB4;

LAB7:    t5 = -2147483648;
    goto LAB4;

LAB9:    t0 = t2;
    goto LAB1;

LAB12:    goto LAB10;

LAB13:    t24 = (t2 >= 2147483647);
    if (t24 == 1)
        goto LAB16;

LAB17:    t19 = (t2 + 0.50000000000000000);
    t5 = ((int)(t19));
    goto LAB15;

LAB16:    t5 = 2147483647;
    goto LAB15;

LAB18:    t0 = t2;
    goto LAB1;

LAB21:    goto LAB19;

LAB22:    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t19 = *((double *)t8);
    t24 = (t19 >= t2);
    if (t24 != 0)
        goto LAB25;

LAB27:    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t19 = *((double *)t8);
    t22 = (t19 + 1.0000000000000000);
    t0 = t22;
    goto LAB1;

LAB23:    xsi_error(ng2);
    t0 = 0;
    goto LAB1;

LAB25:    t7 = (t12 + 56U);
    t10 = *((char **)t7);
    t22 = *((double *)t10);
    t0 = t22;
    goto LAB1;

LAB26:    goto LAB23;

LAB28:    goto LAB26;

LAB29:    goto LAB26;

LAB30:    t0 = 0.00000000000000000;
    goto LAB1;

LAB32:    goto LAB23;

LAB33:    t7 = (t12 + 56U);
    t10 = *((char **)t7);
    t22 = *((double *)t10);
    t25 = (t22 + 1.0000000000000000);
    t0 = t25;
    goto LAB1;

LAB34:    goto LAB23;

LAB36:    goto LAB34;

LAB37:    goto LAB34;

}

double ieee_p_3972351953_sub_28498392_2984157535(char *t1, double t2)
{
    char t3[248];
    char t4[16];
    char t9[8];
    char t15[8];
    double t0;
    int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t16;
    char *t17;
    char *t18;
    double t19;
    char *t20;
    char *t21;
    double t22;
    unsigned char t23;
    unsigned char t24;
    double t25;

LAB0:    if (-2147483648 > 2147483647)
        goto LAB2;

LAB3:    if (1 == -1)
        goto LAB7;

LAB8:    t5 = 2147483647;

LAB4:    t6 = (t3 + 4U);
    t7 = ((STD_STANDARD) + 472);
    t8 = (t6 + 88U);
    *((char **)t8) = t7;
    t10 = (t6 + 56U);
    *((char **)t10) = t9;
    *((double *)t9) = ((double)(t5));
    t11 = (t6 + 80U);
    *((unsigned int *)t11) = 8U;
    t12 = (t3 + 124U);
    t13 = ((STD_STANDARD) + 472);
    t14 = (t12 + 88U);
    *((char **)t14) = t13;
    t16 = (t12 + 56U);
    *((char **)t16) = t15;
    xsi_type_set_default_value(t13, t15, 0);
    t17 = (t12 + 80U);
    *((unsigned int *)t17) = 8U;
    t18 = (t4 + 4U);
    *((double *)t18) = t2;
    t19 = (t2>=0?t2: -t2);
    t20 = (t6 + 56U);
    t21 = *((char **)t20);
    t22 = *((double *)t21);
    t23 = (t19 >= t22);
    if (t23 != 0)
        goto LAB9;

LAB11:
LAB10:    t23 = (t2 >= 0);
    if (t23 == 1)
        goto LAB13;

LAB14:    t22 = (t2 - 0.50000000000000000);
    t5 = ((int)(t22));

LAB15:    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t7 = (t8 + 0);
    *((double *)t7) = ((double)(t5));
    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t19 = *((double *)t8);
    t23 = (t19 == t2);
    if (t23 != 0)
        goto LAB18;

LAB20:
LAB19:    t23 = (t2 > 0.00000000000000000);
    if (t23 != 0)
        goto LAB22;

LAB24:    t23 = (t2 == 0.00000000000000000);
    if (t23 != 0)
        goto LAB30;

LAB31:    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t19 = *((double *)t8);
    t23 = (t19 >= t2);
    if (t23 != 0)
        goto LAB33;

LAB35:    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t19 = *((double *)t8);
    t0 = t19;

LAB1:    return t0;
LAB2:    if (1 == 1)
        goto LAB5;

LAB6:    t5 = -2147483648;
    goto LAB4;

LAB5:    t5 = 2147483647;
    goto LAB4;

LAB7:    t5 = -2147483648;
    goto LAB4;

LAB9:    t0 = t2;
    goto LAB1;

LAB12:    goto LAB10;

LAB13:    t24 = (t2 >= 2147483647);
    if (t24 == 1)
        goto LAB16;

LAB17:    t19 = (t2 + 0.50000000000000000);
    t5 = ((int)(t19));
    goto LAB15;

LAB16:    t5 = 2147483647;
    goto LAB15;

LAB18:    t0 = t2;
    goto LAB1;

LAB21:    goto LAB19;

LAB22:    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t19 = *((double *)t8);
    t24 = (t19 <= t2);
    if (t24 != 0)
        goto LAB25;

LAB27:    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t19 = *((double *)t8);
    t22 = (t19 - 1.0000000000000000);
    t0 = t22;
    goto LAB1;

LAB23:    xsi_error(ng3);
    t0 = 0;
    goto LAB1;

LAB25:    t7 = (t12 + 56U);
    t10 = *((char **)t7);
    t22 = *((double *)t10);
    t0 = t22;
    goto LAB1;

LAB26:    goto LAB23;

LAB28:    goto LAB26;

LAB29:    goto LAB26;

LAB30:    t0 = 0.00000000000000000;
    goto LAB1;

LAB32:    goto LAB23;

LAB33:    t7 = (t12 + 56U);
    t10 = *((char **)t7);
    t22 = *((double *)t10);
    t25 = (t22 - 1.0000000000000000);
    t0 = t25;
    goto LAB1;

LAB34:    goto LAB23;

LAB36:    goto LAB34;

LAB37:    goto LAB34;

}

double ieee_p_3972351953_sub_1782959306_2984157535(char *t1, double t2)
{
    char t4[16];
    double t0;
    char *t5;
    unsigned char t6;
    double t7;
    double t8;

LAB0:    t5 = (t4 + 4U);
    *((double *)t5) = t2;
    t6 = (t2 > 0.00000000000000000);
    if (t6 != 0)
        goto LAB2;

LAB4:    t6 = (t2 < 0.00000000000000000);
    if (t6 != 0)
        goto LAB6;

LAB7:    t0 = 0.00000000000000000;

LAB1:    return t0;
LAB2:    t7 = (t2 + 0.50000000000000000);
    t8 = ieee_p_3972351953_sub_28498392_2984157535(t1, t7);
    t0 = t8;
    goto LAB1;

LAB3:    xsi_error(ng4);
    t0 = 0;
    goto LAB1;

LAB5:    goto LAB3;

LAB6:    t7 = (t2 - 0.50000000000000000);
    t8 = ieee_p_3972351953_sub_1147618771_2984157535(t1, t7);
    t0 = t8;
    goto LAB1;

LAB8:    goto LAB3;

LAB9:    goto LAB3;

}

double ieee_p_3972351953_sub_188333038_2984157535(char *t1, double t2)
{
    char t4[16];
    double t0;
    char *t5;
    unsigned char t6;
    double t7;

LAB0:    t5 = (t4 + 4U);
    *((double *)t5) = t2;
    t6 = (t2 > 0.00000000000000000);
    if (t6 != 0)
        goto LAB2;

LAB4:    t6 = (t2 < 0.00000000000000000);
    if (t6 != 0)
        goto LAB6;

LAB7:    t0 = 0.00000000000000000;

LAB1:    return t0;
LAB2:    t7 = ieee_p_3972351953_sub_28498392_2984157535(t1, t2);
    t0 = t7;
    goto LAB1;

LAB3:    xsi_error(ng5);
    t0 = 0;
    goto LAB1;

LAB5:    goto LAB3;

LAB6:    t7 = ieee_p_3972351953_sub_1147618771_2984157535(t1, t2);
    t0 = t7;
    goto LAB1;

LAB8:    goto LAB3;

LAB9:    goto LAB3;

}

double ieee_p_3972351953_sub_1635143497_2984157535(char *t1, double t2, double t3)
{
    char t4[368];
    char t5[24];
    char t10[8];
    char t17[8];
    char t23[8];
    double t0;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t11;
    char *t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    unsigned char t28;
    char *t29;
    double t31;
    double t32;
    double t33;
    double t34;
    double t35;
    double t36;
    double t37;

LAB0:    t6 = (t2 < 0.00000000000000000);
    t7 = (t4 + 4U);
    t8 = ((STD_STANDARD) + 0);
    t9 = (t7 + 88U);
    *((char **)t9) = t8;
    t11 = (t7 + 56U);
    *((char **)t11) = t10;
    *((unsigned char *)t10) = t6;
    t12 = (t7 + 80U);
    *((unsigned int *)t12) = 1U;
    t13 = (t3 < 0.00000000000000000);
    t14 = (t4 + 124U);
    t15 = ((STD_STANDARD) + 0);
    t16 = (t14 + 88U);
    *((char **)t16) = t15;
    t18 = (t14 + 56U);
    *((char **)t18) = t17;
    *((unsigned char *)t17) = t13;
    t19 = (t14 + 80U);
    *((unsigned int *)t19) = 1U;
    t20 = (t4 + 244U);
    t21 = ((STD_STANDARD) + 472);
    t22 = (t20 + 88U);
    *((char **)t22) = t21;
    t24 = (t20 + 56U);
    *((char **)t24) = t23;
    xsi_type_set_default_value(t21, t23, 0);
    t25 = (t20 + 80U);
    *((unsigned int *)t25) = 8U;
    t26 = (t5 + 4U);
    *((double *)t26) = t2;
    t27 = (t5 + 12U);
    *((double *)t27) = t3;
    t28 = (t3 == 0.00000000000000000);
    if (t28 != 0)
        goto LAB2;

LAB4:
LAB3:    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t6 = *((unsigned char *)t9);
    if (t6 != 0)
        goto LAB8;

LAB10:    t8 = (t14 + 56U);
    t9 = *((char **)t8);
    t6 = *((unsigned char *)t9);
    if (t6 != 0)
        goto LAB14;

LAB16:    t31 = (t2>=0?t2: -t2);
    t32 = (t3>=0?t3: -t3);
    t33 = (t31 / t32);
    t34 = ieee_p_3972351953_sub_28498392_2984157535(t1, t33);
    t35 = (t3>=0?t3: -t3);
    t36 = (t34 * t35);
    t37 = (t2 - t36);
    t8 = (t20 + 56U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    *((double *)t8) = t37;

LAB15:
LAB9:    t8 = (t20 + 56U);
    t9 = *((char **)t8);
    t31 = *((double *)t9);
    t0 = t31;

LAB1:    return t0;
LAB2:    if ((unsigned char)0 == 0)
        goto LAB5;

LAB6:    t0 = 0.00000000000000000;
    goto LAB1;

LAB5:    t29 = (t1 + 10572);
    xsi_report(t29, 24U, (unsigned char)2);
    goto LAB6;

LAB7:    goto LAB3;

LAB8:    t8 = (t14 + 56U);
    t11 = *((char **)t8);
    t13 = *((unsigned char *)t11);
    if (t13 != 0)
        goto LAB11;

LAB13:    t31 = (t2>=0?t2: -t2);
    t32 = (t3>=0?t3: -t3);
    t33 = (t31 / t32);
    t34 = ieee_p_3972351953_sub_1147618771_2984157535(t1, t33);
    t35 = (t3>=0?t3: -t3);
    t36 = (t34 * t35);
    t37 = (t2 + t36);
    t8 = (t20 + 56U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    *((double *)t8) = t37;

LAB12:    goto LAB9;

LAB11:    t31 = (t2>=0?t2: -t2);
    t32 = (t3>=0?t3: -t3);
    t33 = (t31 / t32);
    t34 = ieee_p_3972351953_sub_28498392_2984157535(t1, t33);
    t35 = (t3>=0?t3: -t3);
    t36 = (t34 * t35);
    t37 = (t2 + t36);
    t8 = (t20 + 56U);
    t12 = *((char **)t8);
    t8 = (t12 + 0);
    *((double *)t8) = t37;
    goto LAB12;

LAB14:    t31 = (t2>=0?t2: -t2);
    t32 = (t3>=0?t3: -t3);
    t33 = (t31 / t32);
    t34 = ieee_p_3972351953_sub_1147618771_2984157535(t1, t33);
    t35 = (t3>=0?t3: -t3);
    t36 = (t34 * t35);
    t37 = (t2 - t36);
    t8 = (t20 + 56U);
    t11 = *((char **)t8);
    t8 = (t11 + 0);
    *((double *)t8) = t37;
    goto LAB15;

LAB17:;
}

double ieee_p_3972351953_sub_2013354414_2984157535(char *t1, double t2, double t3)
{
    char t5[24];
    double t0;
    char *t6;
    char *t7;
    unsigned char t8;

LAB0:    t6 = (t5 + 4U);
    *((double *)t6) = t2;
    t7 = (t5 + 12U);
    *((double *)t7) = t3;
    t8 = (t2 >= t3);
    if (t8 != 0)
        goto LAB2;

LAB4:    t0 = t3;

LAB1:    return t0;
LAB2:    t0 = t2;
    goto LAB1;

LAB3:    xsi_error(ng6);
    t0 = 0;
    goto LAB1;

LAB5:    goto LAB3;

LAB6:    goto LAB3;

}

double ieee_p_3972351953_sub_2013631020_2984157535(char *t1, double t2, double t3)
{
    char t5[24];
    double t0;
    char *t6;
    char *t7;
    unsigned char t8;

LAB0:    t6 = (t5 + 4U);
    *((double *)t6) = t2;
    t7 = (t5 + 12U);
    *((double *)t7) = t3;
    t8 = (t2 <= t3);
    if (t8 != 0)
        goto LAB2;

LAB4:    t0 = t3;

LAB1:    return t0;
LAB2:    t0 = t2;
    goto LAB1;

LAB3:    xsi_error(ng7);
    t0 = 0;
    goto LAB1;

LAB5:    goto LAB3;

LAB6:    goto LAB3;

}

void ieee_p_3972351953_sub_3007962107_2984157535(char *t0, char *t1, char *t2, char *t3, char *t4)
{
    char t5[488];
    char t6[32];
    char t10[8];
    char t16[8];
    char t23[8];
    char t30[8];
    char *t7;
    char *t8;
    char *t9;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t17;
    char *t18;
    int t19;
    char *t20;
    char *t21;
    char *t22;
    char *t24;
    char *t25;
    int t26;
    char *t27;
    char *t28;
    char *t29;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    int t36;
    unsigned char t37;
    char *t38;
    int t40;
    int t41;
    int t42;
    int t43;
    int t44;
    double t45;

LAB0:    t7 = (t5 + 4U);
    t8 = ((STD_STANDARD) + 384);
    t9 = (t7 + 88U);
    *((char **)t9) = t8;
    t11 = (t7 + 56U);
    *((char **)t11) = t10;
    xsi_type_set_default_value(t8, t10, 0);
    t12 = (t7 + 80U);
    *((unsigned int *)t12) = 4U;
    t13 = (t5 + 124U);
    t14 = ((STD_STANDARD) + 384);
    t15 = (t13 + 88U);
    *((char **)t15) = t14;
    t17 = (t13 + 56U);
    *((char **)t17) = t16;
    xsi_type_set_default_value(t14, t16, 0);
    t18 = (t13 + 80U);
    *((unsigned int *)t18) = 4U;
    t19 = *((int *)t2);
    t20 = (t5 + 244U);
    t21 = ((STD_STANDARD) + 384);
    t22 = (t20 + 88U);
    *((char **)t22) = t21;
    t24 = (t20 + 56U);
    *((char **)t24) = t23;
    *((int *)t23) = t19;
    t25 = (t20 + 80U);
    *((unsigned int *)t25) = 4U;
    t26 = *((int *)t3);
    t27 = (t5 + 364U);
    t28 = ((STD_STANDARD) + 384);
    t29 = (t27 + 88U);
    *((char **)t29) = t28;
    t31 = (t27 + 56U);
    *((char **)t31) = t30;
    *((int *)t30) = t26;
    t32 = (t27 + 80U);
    *((unsigned int *)t32) = 4U;
    t33 = (t6 + 4U);
    *((char **)t33) = t2;
    t34 = (t6 + 12U);
    *((char **)t34) = t3;
    t35 = (t6 + 20U);
    *((char **)t35) = t4;
    t36 = *((int *)t2);
    t37 = (t36 > 2147483562);
    if (t37 != 0)
        goto LAB2;

LAB4:
LAB3:    t19 = *((int *)t3);
    t37 = (t19 > 2147483398);
    if (t37 != 0)
        goto LAB8;

LAB10:
LAB9:    t8 = (t20 + 56U);
    t9 = *((char **)t8);
    t19 = *((int *)t9);
    t26 = (t19 / 53668);
    t8 = (t13 + 56U);
    t11 = *((char **)t8);
    t8 = (t11 + 0);
    *((int *)t8) = t26;
    t8 = (t20 + 56U);
    t9 = *((char **)t8);
    t19 = *((int *)t9);
    t8 = (t13 + 56U);
    t11 = *((char **)t8);
    t26 = *((int *)t11);
    t36 = (t26 * 53668);
    t40 = (t19 - t36);
    t41 = (40014 * t40);
    t8 = (t13 + 56U);
    t12 = *((char **)t8);
    t42 = *((int *)t12);
    t43 = (t42 * 12211);
    t44 = (t41 - t43);
    t8 = (t20 + 56U);
    t14 = *((char **)t8);
    t8 = (t14 + 0);
    *((int *)t8) = t44;
    t8 = (t20 + 56U);
    t9 = *((char **)t8);
    t19 = *((int *)t9);
    t37 = (t19 < 0);
    if (t37 != 0)
        goto LAB14;

LAB16:
LAB15:    t8 = (t27 + 56U);
    t9 = *((char **)t8);
    t19 = *((int *)t9);
    t26 = (t19 / 52774);
    t8 = (t13 + 56U);
    t11 = *((char **)t8);
    t8 = (t11 + 0);
    *((int *)t8) = t26;
    t8 = (t27 + 56U);
    t9 = *((char **)t8);
    t19 = *((int *)t9);
    t8 = (t13 + 56U);
    t11 = *((char **)t8);
    t26 = *((int *)t11);
    t36 = (t26 * 52774);
    t40 = (t19 - t36);
    t41 = (40692 * t40);
    t8 = (t13 + 56U);
    t12 = *((char **)t8);
    t42 = *((int *)t12);
    t43 = (t42 * 3791);
    t44 = (t41 - t43);
    t8 = (t27 + 56U);
    t14 = *((char **)t8);
    t8 = (t14 + 0);
    *((int *)t8) = t44;
    t8 = (t27 + 56U);
    t9 = *((char **)t8);
    t19 = *((int *)t9);
    t37 = (t19 < 0);
    if (t37 != 0)
        goto LAB17;

LAB19:
LAB18:    t8 = (t20 + 56U);
    t9 = *((char **)t8);
    t19 = *((int *)t9);
    t8 = (t27 + 56U);
    t11 = *((char **)t8);
    t26 = *((int *)t11);
    t36 = (t19 - t26);
    t8 = (t7 + 56U);
    t12 = *((char **)t8);
    t8 = (t12 + 0);
    *((int *)t8) = t36;
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t19 = *((int *)t9);
    t37 = (t19 < 1);
    if (t37 != 0)
        goto LAB20;

LAB22:
LAB21:    t8 = (t20 + 56U);
    t9 = *((char **)t8);
    t19 = *((int *)t9);
    t8 = (t2 + 0);
    *((int *)t8) = t19;
    t8 = (t27 + 56U);
    t9 = *((char **)t8);
    t19 = *((int *)t9);
    t8 = (t3 + 0);
    *((int *)t8) = t19;
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t19 = *((int *)t9);
    t45 = ((((double)(t19))) * 4.6566130000000002E-010);
    t8 = (t4 + 0);
    *((double *)t8) = t45;

LAB1:    return;
LAB2:    if ((unsigned char)0 == 0)
        goto LAB5;

LAB6:    t8 = (t4 + 0);
    *((double *)t8) = 0.00000000000000000;
    goto LAB1;

LAB5:    t38 = (t0 + 10596);
    xsi_report(t38, 29U, (unsigned char)2);
    goto LAB6;

LAB7:    goto LAB3;

LAB8:    if ((unsigned char)0 == 0)
        goto LAB11;

LAB12:    t8 = (t4 + 0);
    *((double *)t8) = 0.00000000000000000;
    goto LAB1;

LAB11:    t8 = (t0 + 10625);
    xsi_report(t8, 29U, (unsigned char)2);
    goto LAB12;

LAB13:    goto LAB9;

LAB14:    t8 = (t20 + 56U);
    t11 = *((char **)t8);
    t26 = *((int *)t11);
    t36 = (t26 + 2147483563);
    t8 = (t20 + 56U);
    t12 = *((char **)t8);
    t8 = (t12 + 0);
    *((int *)t8) = t36;
    goto LAB15;

LAB17:    t8 = (t27 + 56U);
    t11 = *((char **)t8);
    t26 = *((int *)t11);
    t36 = (t26 + 2147483399);
    t8 = (t27 + 56U);
    t12 = *((char **)t8);
    t8 = (t12 + 0);
    *((int *)t8) = t36;
    goto LAB18;

LAB20:    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    t26 = *((int *)t11);
    t36 = (t26 + 2147483562);
    t8 = (t7 + 56U);
    t12 = *((char **)t8);
    t8 = (t12 + 0);
    *((int *)t8) = t36;
    goto LAB21;

}

double ieee_p_3972351953_sub_1722501855_2984157535(char *t1, double t2)
{
    char t3[608];
    char t4[16];
    char t13[8];
    char t19[8];
    char t25[8];
    char t31[8];
    char t37[8];
    double t0;
    char *t5;
    char *t6;
    double t7;
    char *t8;
    double t9;
    double t10;
    char *t11;
    char *t12;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t38;
    char *t39;
    char *t40;
    unsigned char t41;
    char *t42;
    double t44;
    double t45;
    unsigned char t46;
    double t47;
    double t48;
    unsigned char t49;
    double t50;
    double t51;
    double t52;
    double t53;
    double t54;
    unsigned char t55;
    int t56;
    int t57;
    unsigned char t58;
    double t59;

LAB0:    t5 = (t1 + 3928U);
    t6 = *((char **)t5);
    t7 = *((double *)t6);
    t5 = (t1 + 3928U);
    t8 = *((char **)t5);
    t9 = *((double *)t8);
    t10 = (t7 * t9);
    t5 = (t3 + 4U);
    t11 = ((STD_STANDARD) + 472);
    t12 = (t5 + 88U);
    *((char **)t12) = t11;
    t14 = (t5 + 56U);
    *((char **)t14) = t13;
    *((double *)t13) = t10;
    t15 = (t5 + 80U);
    *((unsigned int *)t15) = 8U;
    t16 = (t3 + 124U);
    t17 = ((STD_STANDARD) + 472);
    t18 = (t16 + 88U);
    *((char **)t18) = t17;
    t20 = (t16 + 56U);
    *((char **)t20) = t19;
    xsi_type_set_default_value(t17, t19, 0);
    t21 = (t16 + 80U);
    *((unsigned int *)t21) = 8U;
    t22 = (t3 + 244U);
    t23 = ((STD_STANDARD) + 472);
    t24 = (t22 + 88U);
    *((char **)t24) = t23;
    t26 = (t22 + 56U);
    *((char **)t26) = t25;
    xsi_type_set_default_value(t23, t25, 0);
    t27 = (t22 + 80U);
    *((unsigned int *)t27) = 8U;
    t28 = (t3 + 364U);
    t29 = ((STD_STANDARD) + 472);
    t30 = (t28 + 88U);
    *((char **)t30) = t29;
    t32 = (t28 + 56U);
    *((char **)t32) = t31;
    xsi_type_set_default_value(t29, t31, 0);
    t33 = (t28 + 80U);
    *((unsigned int *)t33) = 8U;
    t34 = (t3 + 484U);
    t35 = ((STD_STANDARD) + 384);
    t36 = (t34 + 88U);
    *((char **)t36) = t35;
    t38 = (t34 + 56U);
    *((char **)t38) = t37;
    *((int *)t37) = 1;
    t39 = (t34 + 80U);
    *((unsigned int *)t39) = 4U;
    t40 = (t4 + 4U);
    *((double *)t40) = t2;
    t41 = (t2 < 0.00000000000000000);
    if (t41 != 0)
        goto LAB2;

LAB4:
LAB3:    t41 = (t2 == 0.00000000000000000);
    if (t41 != 0)
        goto LAB8;

LAB10:    t41 = (t2 == 1.0000000000000000);
    if (t41 != 0)
        goto LAB12;

LAB14:
LAB13:
LAB9:    t7 = ieee_p_3972351953_sub_1543758017_2984157535(t1, t2);
    t9 = (t7 * 0.50000000000000000);
    t10 = ieee_p_3972351953_sub_785569749_2984157535(t1, t9);
    t6 = (t16 + 56U);
    t8 = *((char **)t6);
    t6 = (t8 + 0);
    *((double *)t6) = t10;
    t6 = (t16 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t22 + 56U);
    t11 = *((char **)t6);
    t6 = (t11 + 0);
    *((double *)t6) = t7;
    t6 = (t22 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t9 = (t2 / t7);
    t6 = (t22 + 56U);
    t11 = *((char **)t6);
    t10 = *((double *)t11);
    t44 = (t9 + t10);
    t45 = (t44 * 0.50000000000000000);
    t6 = (t28 + 56U);
    t12 = *((char **)t6);
    t6 = (t12 + 0);
    *((double *)t6) = t45;

LAB16:    t6 = (t28 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t22 + 56U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t10 = (t7 - t9);
    t6 = (t28 + 56U);
    t12 = *((char **)t6);
    t44 = *((double *)t12);
    t45 = (t10 / t44);
    t47 = (t45>=0?t45: -t45);
    t6 = (t5 + 56U);
    t14 = *((char **)t6);
    t48 = *((double *)t14);
    t49 = (t47 > t48);
    if (t49 == 1)
        goto LAB23;

LAB24:    t6 = (t28 + 56U);
    t15 = *((char **)t6);
    t50 = *((double *)t15);
    t6 = (t22 + 56U);
    t17 = *((char **)t6);
    t51 = *((double *)t17);
    t52 = (t50 - t51);
    t53 = (t52>=0?t52: -t52);
    t6 = (t5 + 56U);
    t18 = *((char **)t6);
    t54 = *((double *)t18);
    t55 = (t53 > t54);
    t46 = t55;

LAB25:    if (t46 == 1)
        goto LAB20;

LAB21:    t41 = (unsigned char)0;

LAB22:    if (t41 != 0)
        goto LAB17;

LAB19:    t6 = (t28 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t0 = t7;

LAB1:    return t0;
LAB2:    if ((unsigned char)0 == 0)
        goto LAB5;

LAB6:    t0 = 0.00000000000000000;
    goto LAB1;

LAB5:    t42 = (t1 + 10654);
    xsi_report(t42, 18U, (unsigned char)2);
    goto LAB6;

LAB7:    goto LAB3;

LAB8:    t0 = 0.00000000000000000;
    goto LAB1;

LAB11:    goto LAB9;

LAB12:    t0 = 1.0000000000000000;
    goto LAB1;

LAB15:    goto LAB13;

LAB17:    t6 = (t28 + 56U);
    t23 = *((char **)t6);
    t59 = *((double *)t23);
    t6 = (t22 + 56U);
    t24 = *((char **)t6);
    t6 = (t24 + 0);
    *((double *)t6) = t59;
    t6 = (t22 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t9 = (t2 / t7);
    t6 = (t22 + 56U);
    t11 = *((char **)t6);
    t10 = *((double *)t11);
    t44 = (t9 + t10);
    t45 = (t44 * 0.50000000000000000);
    t6 = (t28 + 56U);
    t12 = *((char **)t6);
    t6 = (t12 + 0);
    *((double *)t6) = t45;
    t6 = (t34 + 56U);
    t8 = *((char **)t6);
    t56 = *((int *)t8);
    t57 = (t56 + 1);
    t6 = (t34 + 56U);
    t11 = *((char **)t6);
    t6 = (t11 + 0);
    *((int *)t6) = t57;
    goto LAB16;

LAB18:;
LAB20:    t6 = (t34 + 56U);
    t20 = *((char **)t6);
    t56 = *((int *)t20);
    t6 = (t1 + 3808U);
    t21 = *((char **)t6);
    t57 = *((int *)t21);
    t58 = (t56 < t57);
    t41 = t58;
    goto LAB22;

LAB23:    t46 = (unsigned char)1;
    goto LAB25;

LAB26:;
}

double ieee_p_3972351953_sub_906367133_2984157535(char *t1, double t2)
{
    char t3[848];
    char t4[16];
    char t13[8];
    char t19[8];
    char t25[8];
    char t32[8];
    char t38[8];
    char t44[8];
    char t50[8];
    double t0;
    char *t5;
    char *t6;
    double t7;
    char *t8;
    double t9;
    double t10;
    char *t11;
    char *t12;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t26;
    char *t27;
    unsigned char t28;
    char *t29;
    char *t30;
    char *t31;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t51;
    char *t52;
    char *t53;
    unsigned char t54;
    double t55;
    double t56;
    double t57;
    double t58;
    double t59;
    double t60;
    unsigned char t61;
    double t62;
    double t63;
    double t64;
    unsigned char t65;
    int t66;
    int t67;
    unsigned char t68;
    double t69;

LAB0:    t5 = (t1 + 3928U);
    t6 = *((char **)t5);
    t7 = *((double *)t6);
    t5 = (t1 + 3928U);
    t8 = *((char **)t5);
    t9 = *((double *)t8);
    t10 = (t7 * t9);
    t5 = (t3 + 4U);
    t11 = ((STD_STANDARD) + 472);
    t12 = (t5 + 88U);
    *((char **)t12) = t11;
    t14 = (t5 + 56U);
    *((char **)t14) = t13;
    *((double *)t13) = t10;
    t15 = (t5 + 80U);
    *((unsigned int *)t15) = 8U;
    t16 = (t3 + 124U);
    t17 = ((STD_STANDARD) + 472);
    t18 = (t16 + 88U);
    *((char **)t18) = t17;
    t20 = (t16 + 56U);
    *((char **)t20) = t19;
    xsi_type_set_default_value(t17, t19, 0);
    t21 = (t16 + 80U);
    *((unsigned int *)t21) = 8U;
    t22 = (t3 + 244U);
    t23 = ((STD_STANDARD) + 472);
    t24 = (t22 + 88U);
    *((char **)t24) = t23;
    t26 = (t22 + 56U);
    *((char **)t26) = t25;
    *((double *)t25) = t2;
    t27 = (t22 + 80U);
    *((unsigned int *)t27) = 8U;
    t28 = (t2 < 0.00000000000000000);
    t29 = (t3 + 364U);
    t30 = ((STD_STANDARD) + 0);
    t31 = (t29 + 88U);
    *((char **)t31) = t30;
    t33 = (t29 + 56U);
    *((char **)t33) = t32;
    *((unsigned char *)t32) = t28;
    t34 = (t29 + 80U);
    *((unsigned int *)t34) = 1U;
    t35 = (t3 + 484U);
    t36 = ((STD_STANDARD) + 472);
    t37 = (t35 + 88U);
    *((char **)t37) = t36;
    t39 = (t35 + 56U);
    *((char **)t39) = t38;
    xsi_type_set_default_value(t36, t38, 0);
    t40 = (t35 + 80U);
    *((unsigned int *)t40) = 8U;
    t41 = (t3 + 604U);
    t42 = ((STD_STANDARD) + 472);
    t43 = (t41 + 88U);
    *((char **)t43) = t42;
    t45 = (t41 + 56U);
    *((char **)t45) = t44;
    xsi_type_set_default_value(t42, t44, 0);
    t46 = (t41 + 80U);
    *((unsigned int *)t46) = 8U;
    t47 = (t3 + 724U);
    t48 = ((STD_STANDARD) + 384);
    t49 = (t47 + 88U);
    *((char **)t49) = t48;
    t51 = (t47 + 56U);
    *((char **)t51) = t50;
    *((int *)t50) = 1;
    t52 = (t47 + 80U);
    *((unsigned int *)t52) = 4U;
    t53 = (t4 + 4U);
    *((double *)t53) = t2;
    t54 = (t2 == 0.00000000000000000);
    if (t54 != 0)
        goto LAB2;

LAB4:    t28 = (t2 == 1.0000000000000000);
    if (t28 != 0)
        goto LAB6;

LAB7:    t7 = (-(1.0000000000000000));
    t28 = (t2 == t7);
    if (t28 != 0)
        goto LAB9;

LAB11:
LAB10:
LAB3:    t6 = (t29 + 56U);
    t8 = *((char **)t6);
    t28 = *((unsigned char *)t8);
    if (t28 != 0)
        goto LAB13;

LAB15:
LAB14:    t6 = (t22 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t9 = ieee_p_3972351953_sub_1543758017_2984157535(t1, t7);
    t10 = (t9 / 3.0000000000000000);
    t55 = ieee_p_3972351953_sub_785569749_2984157535(t1, t10);
    t6 = (t16 + 56U);
    t11 = *((char **)t6);
    t6 = (t11 + 0);
    *((double *)t6) = t55;
    t6 = (t16 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t35 + 56U);
    t11 = *((char **)t6);
    t6 = (t11 + 0);
    *((double *)t6) = t7;
    t6 = (t22 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t35 + 56U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t6 = (t35 + 56U);
    t12 = *((char **)t6);
    t10 = *((double *)t12);
    t55 = (t9 * t10);
    t56 = (t7 / t55);
    t6 = (t35 + 56U);
    t14 = *((char **)t6);
    t57 = *((double *)t14);
    t58 = (2.0000000000000000 * t57);
    t59 = (t56 + t58);
    t60 = (t59 / 3.0000000000000000);
    t6 = (t41 + 56U);
    t15 = *((char **)t6);
    t6 = (t15 + 0);
    *((double *)t6) = t60;

LAB16:    t6 = (t41 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t35 + 56U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t10 = (t7 - t9);
    t6 = (t41 + 56U);
    t12 = *((char **)t6);
    t55 = *((double *)t12);
    t56 = (t10 / t55);
    t57 = (t56>=0?t56: -t56);
    t6 = (t5 + 56U);
    t14 = *((char **)t6);
    t58 = *((double *)t14);
    t61 = (t57 > t58);
    if (t61 == 1)
        goto LAB23;

LAB24:    t6 = (t41 + 56U);
    t15 = *((char **)t6);
    t59 = *((double *)t15);
    t6 = (t35 + 56U);
    t17 = *((char **)t6);
    t60 = *((double *)t17);
    t62 = (t59 - t60);
    t63 = (t62>=0?t62: -t62);
    t6 = (t5 + 56U);
    t18 = *((char **)t6);
    t64 = *((double *)t18);
    t65 = (t63 > t64);
    t54 = t65;

LAB25:    if (t54 == 1)
        goto LAB20;

LAB21:    t28 = (unsigned char)0;

LAB22:    if (t28 != 0)
        goto LAB17;

LAB19:    t6 = (t29 + 56U);
    t8 = *((char **)t6);
    t28 = *((unsigned char *)t8);
    if (t28 != 0)
        goto LAB26;

LAB28:
LAB27:    t6 = (t41 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t0 = t7;

LAB1:    return t0;
LAB2:    t0 = 0.00000000000000000;
    goto LAB1;

LAB5:    goto LAB3;

LAB6:    t0 = 1.0000000000000000;
    goto LAB1;

LAB8:    goto LAB3;

LAB9:    t9 = (-(1.0000000000000000));
    t0 = t9;
    goto LAB1;

LAB12:    goto LAB10;

LAB13:    t7 = (-(t2));
    t6 = (t22 + 56U);
    t11 = *((char **)t6);
    t6 = (t11 + 0);
    *((double *)t6) = t7;
    goto LAB14;

LAB17:    t6 = (t41 + 56U);
    t23 = *((char **)t6);
    t69 = *((double *)t23);
    t6 = (t35 + 56U);
    t24 = *((char **)t6);
    t6 = (t24 + 0);
    *((double *)t6) = t69;
    t6 = (t22 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t35 + 56U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t6 = (t35 + 56U);
    t12 = *((char **)t6);
    t10 = *((double *)t12);
    t55 = (t9 * t10);
    t56 = (t7 / t55);
    t6 = (t35 + 56U);
    t14 = *((char **)t6);
    t57 = *((double *)t14);
    t58 = (2.0000000000000000 * t57);
    t59 = (t56 + t58);
    t60 = (t59 / 3.0000000000000000);
    t6 = (t41 + 56U);
    t15 = *((char **)t6);
    t6 = (t15 + 0);
    *((double *)t6) = t60;
    t6 = (t47 + 56U);
    t8 = *((char **)t6);
    t66 = *((int *)t8);
    t67 = (t66 + 1);
    t6 = (t47 + 56U);
    t11 = *((char **)t6);
    t6 = (t11 + 0);
    *((int *)t6) = t67;
    goto LAB16;

LAB18:;
LAB20:    t6 = (t47 + 56U);
    t20 = *((char **)t6);
    t66 = *((int *)t20);
    t6 = (t1 + 3808U);
    t21 = *((char **)t6);
    t67 = *((int *)t21);
    t68 = (t66 < t67);
    t28 = t68;
    goto LAB22;

LAB23:    t54 = (unsigned char)1;
    goto LAB25;

LAB26:    t6 = (t41 + 56U);
    t11 = *((char **)t6);
    t7 = *((double *)t11);
    t9 = (-(t7));
    t6 = (t41 + 56U);
    t12 = *((char **)t6);
    t6 = (t12 + 0);
    *((double *)t6) = t9;
    goto LAB27;

LAB29:;
}

double ieee_p_3972351953_sub_2171244304_2984157535(char *t1, int t2, double t3)
{
    char t5[16];
    double t0;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    double t13;
    double t14;
    double t15;

LAB0:    t6 = (t5 + 4U);
    *((int *)t6) = t2;
    t7 = (t5 + 8U);
    *((double *)t7) = t3;
    t9 = (t2 < 0);
    if (t9 == 1)
        goto LAB5;

LAB6:    t8 = (unsigned char)0;

LAB7:    if (t8 != 0)
        goto LAB2;

LAB4:
LAB3:    t9 = (t2 == 0);
    if (t9 == 1)
        goto LAB14;

LAB15:    t8 = (unsigned char)0;

LAB16:    if (t8 != 0)
        goto LAB11;

LAB13:
LAB12:    t9 = (t2 == 0);
    if (t9 == 1)
        goto LAB23;

LAB24:    t8 = (unsigned char)0;

LAB25:    if (t8 != 0)
        goto LAB20;

LAB22:
LAB21:    t8 = (t2 == 1);
    if (t8 != 0)
        goto LAB27;

LAB29:
LAB28:    t9 = (t3 == 0.00000000000000000);
    if (t9 == 1)
        goto LAB34;

LAB35:    t8 = (unsigned char)0;

LAB36:    if (t8 != 0)
        goto LAB31;

LAB33:
LAB32:    t8 = (t3 == 1.0000000000000000);
    if (t8 != 0)
        goto LAB38;

LAB40:
LAB39:    t13 = ieee_p_3972351953_sub_1543758017_2984157535(t1, ((double)(t2)));
    t14 = (t3 * t13);
    t15 = ieee_p_3972351953_sub_785569749_2984157535(t1, t14);
    t0 = t15;

LAB1:    return t0;
LAB2:    if ((unsigned char)0 == 0)
        goto LAB8;

LAB9:    t0 = 0.00000000000000000;
    goto LAB1;

LAB5:    t10 = (t3 != 0.00000000000000000);
    t8 = t10;
    goto LAB7;

LAB8:    t11 = (t1 + 10672);
    xsi_report(t11, 26U, (unsigned char)2);
    goto LAB9;

LAB10:    goto LAB3;

LAB11:    if ((unsigned char)0 == 0)
        goto LAB17;

LAB18:    t0 = 0.00000000000000000;
    goto LAB1;

LAB14:    t10 = (t3 <= 0.00000000000000000);
    t8 = t10;
    goto LAB16;

LAB17:    t11 = (t1 + 10698);
    xsi_report(t11, 26U, (unsigned char)2);
    goto LAB18;

LAB19:    goto LAB12;

LAB20:    t0 = 0.00000000000000000;
    goto LAB1;

LAB23:    t10 = (t3 > 0.00000000000000000);
    t8 = t10;
    goto LAB25;

LAB26:    goto LAB21;

LAB27:    t0 = 1.0000000000000000;
    goto LAB1;

LAB30:    goto LAB28;

LAB31:    t0 = 1.0000000000000000;
    goto LAB1;

LAB34:    t10 = (t2 != 0);
    t8 = t10;
    goto LAB36;

LAB37:    goto LAB32;

LAB38:    t0 = ((double)(t2));
    goto LAB1;

LAB41:    goto LAB39;

LAB42:;
}

double ieee_p_3972351953_sub_2618671228_2984157535(char *t1, double t2, double t3)
{
    char t5[24];
    double t0;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    double t13;
    double t14;
    double t15;

LAB0:    t6 = (t5 + 4U);
    *((double *)t6) = t2;
    t7 = (t5 + 12U);
    *((double *)t7) = t3;
    t9 = (t2 < 0.00000000000000000);
    if (t9 == 1)
        goto LAB5;

LAB6:    t8 = (unsigned char)0;

LAB7:    if (t8 != 0)
        goto LAB2;

LAB4:
LAB3:    t9 = (t2 == 0.00000000000000000);
    if (t9 == 1)
        goto LAB14;

LAB15:    t8 = (unsigned char)0;

LAB16:    if (t8 != 0)
        goto LAB11;

LAB13:
LAB12:    t9 = (t2 == 0.00000000000000000);
    if (t9 == 1)
        goto LAB23;

LAB24:    t8 = (unsigned char)0;

LAB25:    if (t8 != 0)
        goto LAB20;

LAB22:
LAB21:    t8 = (t2 == 1.0000000000000000);
    if (t8 != 0)
        goto LAB27;

LAB29:
LAB28:    t9 = (t3 == 0.00000000000000000);
    if (t9 == 1)
        goto LAB34;

LAB35:    t8 = (unsigned char)0;

LAB36:    if (t8 != 0)
        goto LAB31;

LAB33:
LAB32:    t8 = (t3 == 1.0000000000000000);
    if (t8 != 0)
        goto LAB38;

LAB40:
LAB39:    t13 = ieee_p_3972351953_sub_1543758017_2984157535(t1, t2);
    t14 = (t3 * t13);
    t15 = ieee_p_3972351953_sub_785569749_2984157535(t1, t14);
    t0 = t15;

LAB1:    return t0;
LAB2:    if ((unsigned char)0 == 0)
        goto LAB8;

LAB9:    t0 = 0.00000000000000000;
    goto LAB1;

LAB5:    t10 = (t3 != 0.00000000000000000);
    t8 = t10;
    goto LAB7;

LAB8:    t11 = (t1 + 10724);
    xsi_report(t11, 28U, (unsigned char)2);
    goto LAB9;

LAB10:    goto LAB3;

LAB11:    if ((unsigned char)0 == 0)
        goto LAB17;

LAB18:    t0 = 0.00000000000000000;
    goto LAB1;

LAB14:    t10 = (t3 <= 0.00000000000000000);
    t8 = t10;
    goto LAB16;

LAB17:    t11 = (t1 + 10752);
    xsi_report(t11, 28U, (unsigned char)2);
    goto LAB18;

LAB19:    goto LAB12;

LAB20:    t0 = 0.00000000000000000;
    goto LAB1;

LAB23:    t10 = (t3 > 0.00000000000000000);
    t8 = t10;
    goto LAB25;

LAB26:    goto LAB21;

LAB27:    t0 = 1.0000000000000000;
    goto LAB1;

LAB30:    goto LAB28;

LAB31:    t0 = 1.0000000000000000;
    goto LAB1;

LAB34:    t10 = (t2 != 0.00000000000000000);
    t8 = t10;
    goto LAB36;

LAB37:    goto LAB32;

LAB38:    t0 = t2;
    goto LAB1;

LAB41:    goto LAB39;

LAB42:;
}

double ieee_p_3972351953_sub_785569749_2984157535(char *t1, double t2)
{
    char t3[968];
    char t4[16];
    char t16[8];
    char t23[8];
    char t30[8];
    char t36[8];
    char t42[8];
    char t48[8];
    char t54[8];
    char t60[8];
    double t0;
    char *t5;
    char *t6;
    double t7;
    char *t8;
    double t9;
    double t10;
    char *t11;
    double t12;
    double t13;
    char *t14;
    char *t15;
    char *t17;
    char *t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t24;
    char *t25;
    double t26;
    char *t27;
    char *t28;
    char *t29;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    char *t61;
    char *t62;
    char *t63;
    unsigned char t64;
    double t65;
    unsigned char t66;
    double t67;
    double t68;
    double t69;
    double t70;
    double t71;
    unsigned char t72;
    int t73;
    int t74;
    unsigned char t75;
    double t76;

LAB0:    t5 = (t1 + 3928U);
    t6 = *((char **)t5);
    t7 = *((double *)t6);
    t5 = (t1 + 3928U);
    t8 = *((char **)t5);
    t9 = *((double *)t8);
    t10 = (t7 * t9);
    t5 = (t1 + 3928U);
    t11 = *((char **)t5);
    t12 = *((double *)t11);
    t13 = (t10 * t12);
    t5 = (t3 + 4U);
    t14 = ((STD_STANDARD) + 472);
    t15 = (t5 + 88U);
    *((char **)t15) = t14;
    t17 = (t5 + 56U);
    *((char **)t17) = t16;
    *((double *)t16) = t13;
    t18 = (t5 + 80U);
    *((unsigned int *)t18) = 8U;
    t19 = (t2 < 0.00000000000000000);
    t20 = (t3 + 124U);
    t21 = ((STD_STANDARD) + 0);
    t22 = (t20 + 88U);
    *((char **)t22) = t21;
    t24 = (t20 + 56U);
    *((char **)t24) = t23;
    *((unsigned char *)t23) = t19;
    t25 = (t20 + 80U);
    *((unsigned int *)t25) = 1U;
    t26 = (t2>=0?t2: -t2);
    t27 = (t3 + 244U);
    t28 = ((STD_STANDARD) + 472);
    t29 = (t27 + 88U);
    *((char **)t29) = t28;
    t31 = (t27 + 56U);
    *((char **)t31) = t30;
    *((double *)t30) = t26;
    t32 = (t27 + 80U);
    *((unsigned int *)t32) = 8U;
    t33 = (t3 + 364U);
    t34 = ((STD_STANDARD) + 472);
    t35 = (t33 + 88U);
    *((char **)t35) = t34;
    t37 = (t33 + 56U);
    *((char **)t37) = t36;
    xsi_type_set_default_value(t34, t36, 0);
    t38 = (t33 + 80U);
    *((unsigned int *)t38) = 8U;
    t39 = (t3 + 484U);
    t40 = ((STD_STANDARD) + 384);
    t41 = (t39 + 88U);
    *((char **)t41) = t40;
    t43 = (t39 + 56U);
    *((char **)t43) = t42;
    xsi_type_set_default_value(t40, t42, 0);
    t44 = (t39 + 80U);
    *((unsigned int *)t44) = 4U;
    t45 = (t3 + 604U);
    t46 = ((STD_STANDARD) + 472);
    t47 = (t45 + 88U);
    *((char **)t47) = t46;
    t49 = (t45 + 56U);
    *((char **)t49) = t48;
    xsi_type_set_default_value(t46, t48, 0);
    t50 = (t45 + 80U);
    *((unsigned int *)t50) = 8U;
    t51 = (t3 + 724U);
    t52 = ((STD_STANDARD) + 472);
    t53 = (t51 + 88U);
    *((char **)t53) = t52;
    t55 = (t51 + 56U);
    *((char **)t55) = t54;
    xsi_type_set_default_value(t52, t54, 0);
    t56 = (t51 + 80U);
    *((unsigned int *)t56) = 8U;
    t57 = (t3 + 844U);
    t58 = ((STD_STANDARD) + 472);
    t59 = (t57 + 88U);
    *((char **)t59) = t58;
    t61 = (t57 + 56U);
    *((char **)t61) = t60;
    *((double *)t60) = 1.0000000000000000;
    t62 = (t57 + 80U);
    *((unsigned int *)t62) = 8U;
    t63 = (t4 + 4U);
    *((double *)t63) = t2;
    t64 = (t2 == 0.00000000000000000);
    if (t64 != 0)
        goto LAB2;

LAB4:
LAB3:    t6 = (t27 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t19 = (t7 == 1.0000000000000000);
    if (t19 != 0)
        goto LAB6;

LAB8:
LAB7:    t6 = (t27 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t19 = (t7 == 2.0000000000000000);
    if (t19 != 0)
        goto LAB14;

LAB16:
LAB15:    t6 = (t27 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t19 = (t7 == 10.000000000000000);
    if (t19 != 0)
        goto LAB22;

LAB24:
LAB23:    t6 = (t27 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    if (-1.7014111000000000E+308 > 1.7014111000000000E+308)
        goto LAB33;

LAB34:    if (1 == -1)
        goto LAB38;

LAB39:    t9 = 1.7014111000000000E+308;

LAB35:    t10 = ieee_p_3972351953_sub_1543758017_2984157535(t1, t9);
    t19 = (t7 > t10);
    if (t19 != 0)
        goto LAB30;

LAB32:
LAB31:
LAB54:    t6 = (t27 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t19 = (t7 > 10.000000000000000);
    if (t19 != 0)
        goto LAB55;

LAB57:
LAB58:    t6 = (t27 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t19 = (t7 > 1.0000000000000000);
    if (t19 != 0)
        goto LAB59;

LAB61:    t6 = (t33 + 56U);
    t8 = *((char **)t6);
    t6 = (t8 + 0);
    *((double *)t6) = 1.0000000000000000;
    t6 = (t27 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t51 + 56U);
    t11 = *((char **)t6);
    t6 = (t11 + 0);
    *((double *)t6) = t7;
    t6 = (t33 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t51 + 56U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t10 = (t7 + t9);
    t6 = (t45 + 56U);
    t14 = *((char **)t6);
    t6 = (t14 + 0);
    *((double *)t6) = t10;
    t6 = (t39 + 56U);
    t8 = *((char **)t6);
    t6 = (t8 + 0);
    *((int *)t6) = 2;

LAB62:    t6 = (t45 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t33 + 56U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t10 = (t7 - t9);
    t6 = (t45 + 56U);
    t14 = *((char **)t6);
    t12 = *((double *)t14);
    t13 = (t10 / t12);
    t26 = (t13>=0?t13: -t13);
    t6 = (t5 + 56U);
    t15 = *((char **)t6);
    t65 = *((double *)t15);
    t66 = (t26 > t65);
    if (t66 == 1)
        goto LAB69;

LAB70:    t6 = (t45 + 56U);
    t17 = *((char **)t6);
    t67 = *((double *)t17);
    t6 = (t33 + 56U);
    t18 = *((char **)t6);
    t68 = *((double *)t18);
    t69 = (t67 - t68);
    t70 = (t69>=0?t69: -t69);
    t6 = (t5 + 56U);
    t21 = *((char **)t6);
    t71 = *((double *)t21);
    t72 = (t70 > t71);
    t64 = t72;

LAB71:    if (t64 == 1)
        goto LAB66;

LAB67:    t19 = (unsigned char)0;

LAB68:    if (t19 != 0)
        goto LAB63;

LAB65:    t6 = (t45 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t57 + 56U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t10 = (t7 * t9);
    t6 = (t45 + 56U);
    t14 = *((char **)t6);
    t6 = (t14 + 0);
    *((double *)t6) = t10;
    t6 = (t20 + 56U);
    t8 = *((char **)t6);
    t19 = *((unsigned char *)t8);
    if (t19 != 0)
        goto LAB72;

LAB74:
LAB73:    t6 = (t45 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t0 = t7;

LAB1:    return t0;
LAB2:    t0 = 1.0000000000000000;
    goto LAB1;

LAB5:    goto LAB3;

LAB6:    t6 = (t20 + 56U);
    t11 = *((char **)t6);
    t64 = *((unsigned char *)t11);
    if (t64 != 0)
        goto LAB9;

LAB11:    t6 = (t1 + 1168U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t0 = t7;
    goto LAB1;

LAB9:    t6 = (t1 + 1288U);
    t14 = *((char **)t6);
    t9 = *((double *)t14);
    t0 = t9;
    goto LAB1;

LAB10:    goto LAB7;

LAB12:    goto LAB10;

LAB13:    goto LAB10;

LAB14:    t6 = (t20 + 56U);
    t11 = *((char **)t6);
    t64 = *((unsigned char *)t11);
    if (t64 != 0)
        goto LAB17;

LAB19:    t6 = (t1 + 3328U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t0 = t7;
    goto LAB1;

LAB17:    t6 = (t1 + 3328U);
    t14 = *((char **)t6);
    t9 = *((double *)t14);
    t10 = (1.0000000000000000 / t9);
    t0 = t10;
    goto LAB1;

LAB18:    goto LAB15;

LAB20:    goto LAB18;

LAB21:    goto LAB18;

LAB22:    t6 = (t20 + 56U);
    t11 = *((char **)t6);
    t64 = *((unsigned char *)t11);
    if (t64 != 0)
        goto LAB25;

LAB27:    t6 = (t1 + 3448U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t0 = t7;
    goto LAB1;

LAB25:    t6 = (t1 + 3448U);
    t14 = *((char **)t6);
    t9 = *((double *)t14);
    t10 = (1.0000000000000000 / t9);
    t0 = t10;
    goto LAB1;

LAB26:    goto LAB23;

LAB28:    goto LAB26;

LAB29:    goto LAB26;

LAB30:    t6 = (t20 + 56U);
    t11 = *((char **)t6);
    t64 = *((unsigned char *)t11);
    if (t64 != 0)
        goto LAB40;

LAB42:    if ((unsigned char)0 == 0)
        goto LAB44;

LAB45:    if (-1.7014111000000000E+308 > 1.7014111000000000E+308)
        goto LAB46;

LAB47:    if (1 == -1)
        goto LAB51;

LAB52:    t7 = 1.7014111000000000E+308;

LAB48:    t0 = t7;
    goto LAB1;

LAB33:    if (1 == 1)
        goto LAB36;

LAB37:    t9 = -1.7014111000000000E+308;
    goto LAB35;

LAB36:    t9 = 1.7014111000000000E+308;
    goto LAB35;

LAB38:    t9 = -1.7014111000000000E+308;
    goto LAB35;

LAB40:    t0 = 0.00000000000000000;
    goto LAB1;

LAB41:    goto LAB31;

LAB43:    goto LAB41;

LAB44:    t6 = (t1 + 10780);
    xsi_report(t6, 28U, (unsigned char)0);
    goto LAB45;

LAB46:    if (1 == 1)
        goto LAB49;

LAB50:    t7 = -1.7014111000000000E+308;
    goto LAB48;

LAB49:    t7 = 1.7014111000000000E+308;
    goto LAB48;

LAB51:    t7 = -1.7014111000000000E+308;
    goto LAB48;

LAB53:    goto LAB41;

LAB55:    t6 = (t27 + 56U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t10 = (t9 - 10.000000000000000);
    t6 = (t27 + 56U);
    t14 = *((char **)t6);
    t6 = (t14 + 0);
    *((double *)t6) = t10;
    t6 = (t57 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t1 + 3448U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t10 = (t7 * t9);
    t6 = (t57 + 56U);
    t14 = *((char **)t6);
    t6 = (t14 + 0);
    *((double *)t6) = t10;
    goto LAB54;

LAB56:;
LAB59:    t6 = (t27 + 56U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t10 = (t9 - 1.0000000000000000);
    t6 = (t27 + 56U);
    t14 = *((char **)t6);
    t6 = (t14 + 0);
    *((double *)t6) = t10;
    t6 = (t57 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t1 + 1168U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t10 = (t7 * t9);
    t6 = (t57 + 56U);
    t14 = *((char **)t6);
    t6 = (t14 + 0);
    *((double *)t6) = t10;
    goto LAB58;

LAB60:;
LAB63:    t6 = (t45 + 56U);
    t25 = *((char **)t6);
    t76 = *((double *)t25);
    t6 = (t33 + 56U);
    t28 = *((char **)t6);
    t6 = (t28 + 0);
    *((double *)t6) = t76;
    t6 = (t51 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t27 + 56U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t6 = (t39 + 56U);
    t14 = *((char **)t6);
    t73 = *((int *)t14);
    t10 = (t9 / (((double)(t73))));
    t12 = (t7 * t10);
    t6 = (t51 + 56U);
    t15 = *((char **)t6);
    t6 = (t15 + 0);
    *((double *)t6) = t12;
    t6 = (t33 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t51 + 56U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t10 = (t7 + t9);
    t6 = (t45 + 56U);
    t14 = *((char **)t6);
    t6 = (t14 + 0);
    *((double *)t6) = t10;
    t6 = (t39 + 56U);
    t8 = *((char **)t6);
    t73 = *((int *)t8);
    t74 = (t73 + 1);
    t6 = (t39 + 56U);
    t11 = *((char **)t6);
    t6 = (t11 + 0);
    *((int *)t6) = t74;
    goto LAB62;

LAB64:;
LAB66:    t6 = (t39 + 56U);
    t22 = *((char **)t6);
    t73 = *((int *)t22);
    t6 = (t1 + 3808U);
    t24 = *((char **)t6);
    t74 = *((int *)t24);
    t75 = (t73 < t74);
    t19 = t75;
    goto LAB68;

LAB69:    t64 = (unsigned char)1;
    goto LAB71;

LAB72:    t6 = (t45 + 56U);
    t11 = *((char **)t6);
    t7 = *((double *)t11);
    t9 = (1.0000000000000000 / t7);
    t6 = (t45 + 56U);
    t14 = *((char **)t6);
    t6 = (t14 + 0);
    *((double *)t6) = t9;
    goto LAB73;

LAB75:;
}

int ieee_p_3972351953_sub_1422932443_2984157535(char *t1, double t2)
{
    char t3[248];
    char t4[16];
    char t8[8];
    char t15[8];
    int t0;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    double t11;
    char *t12;
    char *t13;
    char *t14;
    char *t16;
    char *t17;
    char *t18;
    unsigned char t19;
    char *t20;
    char *t21;
    double t22;
    unsigned char t23;
    char *t24;
    double t25;
    unsigned char t26;
    double t27;
    int t28;
    int t29;

LAB0:    t5 = (t3 + 4U);
    t6 = ((STD_STANDARD) + 384);
    t7 = (t5 + 88U);
    *((char **)t7) = t6;
    t9 = (t5 + 56U);
    *((char **)t9) = t8;
    *((int *)t8) = 0;
    t10 = (t5 + 80U);
    *((unsigned int *)t10) = 4U;
    t11 = (t2>=0?t2: -t2);
    t12 = (t3 + 124U);
    t13 = ((STD_STANDARD) + 472);
    t14 = (t12 + 88U);
    *((char **)t14) = t13;
    t16 = (t12 + 56U);
    *((char **)t16) = t15;
    *((double *)t15) = t11;
    t17 = (t12 + 80U);
    *((unsigned int *)t17) = 8U;
    t18 = (t4 + 4U);
    *((double *)t18) = t2;
    t20 = (t12 + 56U);
    t21 = *((char **)t20);
    t22 = *((double *)t21);
    t23 = (t22 == 1.0000000000000000);
    if (t23 == 1)
        goto LAB5;

LAB6:    t20 = (t12 + 56U);
    t24 = *((char **)t20);
    t25 = *((double *)t24);
    t26 = (t25 == 0.00000000000000000);
    t19 = t26;

LAB7:    if (t19 != 0)
        goto LAB2;

LAB4:
LAB3:    t6 = (t12 + 56U);
    t7 = *((char **)t6);
    t11 = *((double *)t7);
    t19 = (t11 > 1.0000000000000000);
    if (t19 != 0)
        goto LAB9;

LAB11:
LAB10:
LAB17:    t6 = (t12 + 56U);
    t7 = *((char **)t6);
    t11 = *((double *)t7);
    t19 = (t11 < 1.0000000000000000);
    if (t19 != 0)
        goto LAB18;

LAB20:    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t28 = *((int *)t7);
    t0 = t28;

LAB1:    return t0;
LAB2:    t0 = 0;
    goto LAB1;

LAB5:    t19 = (unsigned char)1;
    goto LAB7;

LAB8:    goto LAB3;

LAB9:
LAB12:    t6 = (t12 + 56U);
    t9 = *((char **)t6);
    t22 = *((double *)t9);
    t23 = (t22 >= 2.0000000000000000);
    if (t23 != 0)
        goto LAB13;

LAB15:    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t28 = *((int *)t7);
    t0 = t28;
    goto LAB1;

LAB13:    t6 = (t12 + 56U);
    t10 = *((char **)t6);
    t25 = *((double *)t10);
    t27 = (t25 / 2.0000000000000000);
    t6 = (t12 + 56U);
    t13 = *((char **)t6);
    t6 = (t13 + 0);
    *((double *)t6) = t27;
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t28 = *((int *)t7);
    t29 = (t28 + 1);
    t6 = (t5 + 56U);
    t9 = *((char **)t6);
    t6 = (t9 + 0);
    *((int *)t6) = t29;
    goto LAB12;

LAB14:;
LAB16:    goto LAB10;

LAB18:    t6 = (t12 + 56U);
    t9 = *((char **)t6);
    t22 = *((double *)t9);
    t25 = (t22 * 2.0000000000000000);
    t6 = (t12 + 56U);
    t10 = *((char **)t6);
    t6 = (t10 + 0);
    *((double *)t6) = t25;
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t28 = *((int *)t7);
    t29 = (t28 - 1);
    t6 = (t5 + 56U);
    t9 = *((char **)t6);
    t6 = (t9 + 0);
    *((int *)t6) = t29;
    goto LAB17;

LAB19:;
LAB21:;
}

double ieee_p_3972351953_sub_3025794763_2984157535(char *t1, double t2, int t3)
{
    char t5[16];
    double t0;
    char *t6;
    char *t7;
    double t8;
    double t9;

LAB0:    t6 = (t5 + 4U);
    *((double *)t6) = t2;
    t7 = (t5 + 12U);
    *((int *)t7) = t3;
    t8 = xsi_vhdl_pow_double(2.0000000000000000, t3);
    t9 = (t2 * t8);
    t0 = t9;

LAB1:    return t0;
LAB2:;
}

double ieee_p_3972351953_sub_1543758017_2984157535(char *t1, double t2)
{
    char t3[2400];
    char t4[16];
    char t8[8];
    char t17[8];
    char t23[8];
    char t29[8];
    char t35[8];
    char t44[16];
    char t53[1032];
    char t122[16];
    char t131[1032];
    char t138[8];
    char t144[8];
    char t150[8];
    char t156[8];
    char t162[8];
    char t168[8];
    char t174[8];
    char t180[8];
    char t186[8];
    char t192[8];
    char t198[8];
    char t204[8];
    double t0;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    int t40;
    int t41;
    unsigned int t42;
    char *t43;
    char *t45;
    char *t46;
    int t47;
    char *t48;
    int t49;
    unsigned int t50;
    char *t51;
    char *t52;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    int t59;
    int t60;
    char *t61;
    double t62;
    double t63;
    double t64;
    double t65;
    double t66;
    double t67;
    double t68;
    double t69;
    double t70;
    double t71;
    double t72;
    double t73;
    double t74;
    double t75;
    double t76;
    double t77;
    double t78;
    double t79;
    double t80;
    double t81;
    double t82;
    double t83;
    double t84;
    double t85;
    double t86;
    double t87;
    double t88;
    double t89;
    double t90;
    double t91;
    double t92;
    double t93;
    double t94;
    double t95;
    double t96;
    double t97;
    double t98;
    double t99;
    double t100;
    double t101;
    double t102;
    double t103;
    double t104;
    double t105;
    double t106;
    double t107;
    double t108;
    double t109;
    double t110;
    double t111;
    double t112;
    double t113;
    double t114;
    double t115;
    double t116;
    double t117;
    double t118;
    double t119;
    double t120;
    double t121;
    char *t123;
    char *t124;
    int t125;
    char *t126;
    int t127;
    unsigned int t128;
    char *t129;
    char *t130;
    char *t132;
    char *t133;
    char *t134;
    char *t135;
    char *t136;
    char *t137;
    char *t139;
    char *t140;
    char *t141;
    char *t142;
    char *t143;
    char *t145;
    char *t146;
    char *t147;
    char *t148;
    char *t149;
    char *t151;
    char *t152;
    char *t153;
    char *t154;
    char *t155;
    char *t157;
    char *t158;
    char *t159;
    char *t160;
    char *t161;
    char *t163;
    char *t164;
    char *t165;
    char *t166;
    char *t167;
    char *t169;
    char *t170;
    char *t171;
    char *t172;
    char *t173;
    char *t175;
    char *t176;
    char *t177;
    char *t178;
    char *t179;
    char *t181;
    char *t182;
    char *t183;
    char *t184;
    char *t185;
    char *t187;
    char *t188;
    char *t189;
    char *t190;
    char *t191;
    char *t193;
    char *t194;
    char *t195;
    char *t196;
    char *t197;
    char *t199;
    char *t200;
    char *t201;
    char *t202;
    char *t203;
    char *t205;
    char *t206;
    char *t207;
    unsigned char t208;
    char *t209;
    unsigned char t211;
    unsigned char t212;
    unsigned int t213;
    unsigned int t214;
    unsigned int t215;

LAB0:    t5 = (t3 + 4U);
    t6 = ((STD_STANDARD) + 384);
    t7 = (t5 + 88U);
    *((char **)t7) = t6;
    t9 = (t5 + 56U);
    *((char **)t9) = t8;
    *((int *)t8) = 128;
    t10 = (t5 + 80U);
    *((unsigned int *)t10) = 4U;
    t11 = ((STD_STANDARD) + 472);
    t12 = ((STD_STANDARD) + 832);
    t13 = (t3 + 124U);
    xsi_create_unconstr_array_type(t13, ng8, t11, 1, t12);
    t14 = (t3 + 236U);
    t15 = ((STD_STANDARD) + 472);
    t16 = (t14 + 88U);
    *((char **)t16) = t15;
    t18 = (t14 + 56U);
    *((char **)t18) = t17;
    *((double *)t17) = 0.083333333333331802;
    t19 = (t14 + 80U);
    *((unsigned int *)t19) = 8U;
    t20 = (t3 + 356U);
    t21 = ((STD_STANDARD) + 472);
    t22 = (t20 + 88U);
    *((char **)t22) = t21;
    t24 = (t20 + 56U);
    *((char **)t24) = t23;
    *((double *)t23) = 0.012500000003771701;
    t25 = (t20 + 80U);
    *((unsigned int *)t25) = 8U;
    t26 = (t3 + 476U);
    t27 = ((STD_STANDARD) + 472);
    t28 = (t26 + 88U);
    *((char **)t28) = t27;
    t30 = (t26 + 56U);
    *((char **)t30) = t29;
    *((double *)t29) = 0.0022321399879194500;
    t31 = (t26 + 80U);
    *((unsigned int *)t31) = 8U;
    t32 = (t3 + 596U);
    t33 = ((STD_STANDARD) + 472);
    t34 = (t32 + 88U);
    *((char **)t34) = t33;
    t36 = (t32 + 56U);
    *((char **)t36) = t35;
    *((double *)t35) = 0.00043488777770761501;
    t37 = (t32 + 80U);
    *((unsigned int *)t37) = 8U;
    t38 = (t5 + 56U);
    t39 = *((char **)t38);
    t40 = *((int *)t39);
    t41 = (t40 - 0);
    t42 = (t41 * 1);
    t42 = (t42 + 1);
    t42 = (t42 * 8U);
    t38 = xsi_get_transient_memory(t42);
    memset(t38, 0, t42);
    t43 = t38;
    *((double *)t43) = 0.00000000000000000;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.0077821404420603804;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.015504186535963501;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.023167059281547601;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.030771658666765199;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.038318864302141299;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.045809536031242701;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.053244514518837598;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.060624621816487000;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.067950661908525903;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.075223421237524193;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.082443669210988405;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.089612158689760704;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.096729626458454704;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.10379679368156799;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.11081436634026400;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.11778303565643000;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.12470347850103300;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.13157635778861701;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.13840232285929199;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.14518200984457499;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.15191604202573200;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.15860503017665900;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.16524957289539099;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.17185025692651801;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.17840765747269000;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.18492233849383399;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.19139485299956499;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.19782574332975900;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.20421554142876600;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.21056476910735000;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.21687393830052301;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.22314355131402400;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.22937410106487699;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.23556607131286000;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.24171993688696600;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.24783616390459401;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.25391520998073203;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.25995752443668602;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.26596354849698400;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.27193371548401002;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.27786845100308699;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.28376817313073799;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.28963329258294801;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.29546421289342101;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.30126133057819998;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.30702503529482800;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.31275571000424002;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.31845373111809699;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.32411946865431701;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.32975328637257900;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.33535554192076200;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.34092658697045403;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.34646676734610099;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.35197642315688399;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.35745588892223201;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.36290549368914099;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.36832556115859899;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.37371640979381499;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.37907835293481201;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.38441169891029903;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.38971675114044002;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.39499380824054198;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.40024316412746003;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.40546510810781899;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.41065992498533899;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.41582789514359297;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.42096929464423699;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.42608439531068099;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.43117346481813001;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.43623676677452800;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.44127456080514099;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.44628710262804799;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.45127464413962998;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.45623743348187401;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.46117571512240801;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.46608972992453301;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.47097971521907300;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.47584590486985701;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.48068852934557099;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.48550781578160201;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.49030398804552500;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.49507726679803499;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.49982786955661102;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.50455601075191203;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.50926190179052400;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.51394575110134599;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.51860776420835497;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.52324814376515905;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.52786708962048601;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.53246479886911402;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.53704146589734603;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.54159728243212202;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.54613243759740704;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.55064711795239396;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.55514150754061098;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.55961578793540001;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.56407013828538799;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.56850473535268997;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.57291975356201896;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.57731536503524705;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.58169173963506204;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.58604904500316501;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.59038744660210796;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.59470710774621705;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.59900818964524705;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.60329085143894201;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.60755525022432300;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.61180154110661500;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.61602987721562397;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.62024040975120398;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.62443328801236897;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.62860865942275301;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.63276666957062799;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.63690746223619499;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.64103117942067900;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.64513796137362101;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.64922794662561500;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.65330127201195898;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.65735807270903002;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.66139848224520403;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.66542263254450496;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.66943065394298196;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.67342267521235000;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.67739882359091996;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.68135922480723798;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.68530400309828099;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.68923328123855798;
    t43 = (t43 + 8U);
    *((double *)t43) = 0.69314718056011804;
    t45 = (t5 + 56U);
    t46 = *((char **)t45);
    t47 = *((int *)t46);
    t45 = (t44 + 0U);
    t48 = (t45 + 0U);
    *((int *)t48) = 0;
    t48 = (t45 + 4U);
    *((int *)t48) = t47;
    t48 = (t45 + 8U);
    *((int *)t48) = 1;
    t49 = (t47 - 0);
    t50 = (t49 * 1);
    t50 = (t50 + 1);
    t48 = (t45 + 12U);
    *((unsigned int *)t48) = t50;
    t48 = (t3 + 716U);
    t51 = (t3 + 124U);
    t52 = (t48 + 88U);
    *((char **)t52) = t51;
    t54 = (t48 + 56U);
    *((char **)t54) = t53;
    memcpy(t53, t38, 1032U);
    t55 = (t48 + 64U);
    *((char **)t55) = t44;
    t56 = (t48 + 80U);
    *((unsigned int *)t56) = 1032U;
    t57 = (t5 + 56U);
    t58 = *((char **)t57);
    t59 = *((int *)t58);
    t60 = (t59 - 0);
    t50 = (t60 * 1);
    t50 = (t50 + 1);
    t50 = (t50 * 8U);
    t57 = xsi_get_transient_memory(t50);
    memset(t57, 0, t50);
    t61 = t57;
    *((double *)t61) = 0.00000000000000000;
    t61 = (t61 + 8U);
    t62 = (-(5.4322993842004899E-015));
    *((double *)t61) = t62;
    t61 = (t61 + 8U);
    *((double *)t61) = 1.7274567499706101E-015;
    t61 = (t61 + 8U);
    t63 = (-(1.3230178182292301E-014));
    *((double *)t61) = t63;
    t61 = (t61 + 8U);
    t64 = (-(1.1545276282898700E-014));
    *((double *)t61) = t64;
    t61 = (t61 + 8U);
    t65 = (-(4.6652946995829999E-015));
    *((double *)t61) = t65;
    t61 = (t61 + 8U);
    *((double *)t61) = 5.1488495726858101E-014;
    t61 = (t61 + 8U);
    t66 = (-(2.5321689431174500E-014));
    *((double *)t61) = t66;
    t61 = (t61 + 8U);
    t67 = (-(5.2136206391365003E-014));
    *((double *)t61) = t67;
    t61 = (t61 + 8U);
    t68 = (-(1.8195060030168799E-014));
    *((double *)t61) = t68;
    t61 = (t61 + 8U);
    *((double *)t61) = 6.3290659587245402E-014;
    t61 = (t61 + 8U);
    *((double *)t61) = 8.6145129360878094E-014;
    t61 = (t61 + 8U);
    t69 = (-(7.3557702194350299E-014));
    *((double *)t61) = t69;
    t61 = (t61 + 8U);
    *((double *)t61) = 9.6380676585522799E-014;
    t61 = (t61 + 8U);
    *((double *)t61) = 7.5986365971941402E-014;
    t61 = (t61 + 8U);
    *((double *)t61) = 2.5799991283069899E-014;
    t61 = (t61 + 8U);
    t70 = (-(4.6547297475984403E-014));
    *((double *)t61) = t70;
    t61 = (t61 + 8U);
    t71 = (-(7.5569206874513394E-014));
    *((double *)t61) = t71;
    t61 = (t61 + 8U);
    *((double *)t61) = 1.0195735223708500E-013;
    t61 = (t61 + 8U);
    t72 = (-(1.7319034406422300E-013));
    *((double *)t61) = t72;
    t61 = (t61 + 8U);
    t73 = (-(7.7180013368280998E-014));
    *((double *)t61) = t73;
    t61 = (t61 + 8U);
    *((double *)t61) = 1.0980754099855200E-013;
    t61 = (t61 + 8U);
    t74 = (-(2.0472357800461899E-014));
    *((double *)t61) = t74;
    t61 = (t61 + 8U);
    t75 = (-(8.3720910992359095E-014));
    *((double *)t61) = t75;
    t61 = (t61 + 8U);
    *((double *)t61) = 1.4088127937111100E-013;
    t61 = (t61 + 8U);
    *((double *)t61) = 1.2869017157588301E-013;
    t61 = (t61 + 8U);
    *((double *)t61) = 1.7788850778198099E-013;
    t61 = (t61 + 8U);
    *((double *)t61) = 6.4408561506968895E-014;
    t61 = (t61 + 8U);
    *((double *)t61) = 1.6132822667240801E-013;
    t61 = (t61 + 8U);
    t76 = (-(7.5409165119561901E-014));
    *((double *)t61) = t76;
    t61 = (t61 + 8U);
    t77 = (-(3.6507188831790000E-016));
    *((double *)t61) = t77;
    t61 = (t61 + 8U);
    *((double *)t61) = 9.1209372499149803E-014;
    t61 = (t61 + 8U);
    *((double *)t61) = 1.8567570959796001E-013;
    t61 = (t61 + 8U);
    t78 = (-(3.1492650651914800E-014));
    *((double *)t61) = t78;
    t61 = (t61 + 8U);
    t79 = (-(9.3094594951968895E-014));
    *((double *)t61) = t79;
    t61 = (t61 + 8U);
    *((double *)t61) = 1.7914338601329100E-013;
    t61 = (t61 + 8U);
    t80 = (-(1.3029797173308700E-014));
    *((double *)t61) = t80;
    t61 = (t61 + 8U);
    *((double *)t61) = 2.3097385217586899E-013;
    t61 = (t61 + 8U);
    *((double *)t61) = 2.3999540484211700E-013;
    t61 = (t61 + 8U);
    *((double *)t61) = 1.5393776174455400E-013;
    t61 = (t61 + 8U);
    t81 = (-(3.6870428315837699E-013));
    *((double *)t61) = t81;
    t61 = (t61 + 8U);
    *((double *)t61) = 3.6920375082080099E-013;
    t61 = (t61 + 8U);
    t82 = (-(9.3834172236637000E-014));
    *((double *)t61) = t82;
    t61 = (t61 + 8U);
    *((double *)t61) = 9.4333981895126903E-014;
    t61 = (t61 + 8U);
    *((double *)t61) = 4.1481318704258598E-013;
    t61 = (t61 + 8U);
    t83 = (-(3.7923164802093103E-014));
    *((double *)t61) = t83;
    t61 = (t61 + 8U);
    *((double *)t61) = 8.4031563047924195E-014;
    t61 = (t61 + 8U);
    t84 = (-(3.4262934348285398E-013));
    *((double *)t61) = t84;
    t61 = (t61 + 8U);
    *((double *)t61) = 4.3712191957429099E-013;
    t61 = (t61 + 8U);
    t85 = (-(1.0475750058776500E-013));
    *((double *)t61) = t85;
    t61 = (t61 + 8U);
    t86 = (-(1.1118671389559300E-013));
    *((double *)t61) = t86;
    t61 = (t61 + 8U);
    *((double *)t61) = 3.7549577257259901E-013;
    t61 = (t61 + 8U);
    *((double *)t61) = 1.3912841212197599E-013;
    t61 = (t61 + 8U);
    *((double *)t61) = 1.0775743037572600E-013;
    t61 = (t61 + 8U);
    *((double *)t61) = 2.9391859187648001E-013;
    t61 = (t61 + 8U);
    t87 = (-(4.2790509060060800E-013));
    *((double *)t61) = t87;
    t61 = (t61 + 8U);
    *((double *)t61) = 2.2774076114039602E-013;
    t61 = (t61 + 8U);
    *((double *)t61) = 1.0849569622967900E-013;
    t61 = (t61 + 8U);
    t88 = (-(2.3073801945705803E-013));
    *((double *)t61) = t88;
    t61 = (t61 + 8U);
    *((double *)t61) = 1.5761203773969400E-013;
    t61 = (t61 + 8U);
    *((double *)t61) = 3.3457102695440798E-014;
    t61 = (t61 + 8U);
    t89 = (-(4.1525158063436101E-013));
    *((double *)t61) = t89;
    t61 = (t61 + 8U);
    *((double *)t61) = 3.2655698896907100E-013;
    t61 = (t61 + 8U);
    t90 = (-(4.4704265010452399E-013));
    *((double *)t61) = t90;
    t61 = (t61 + 8U);
    *((double *)t61) = 3.4527647952039801E-013;
    t61 = (t61 + 8U);
    t91 = (-(7.0489623921097504E-014));
    *((double *)t61) = t91;
    t61 = (t61 + 8U);
    *((double *)t61) = 1.1776978751369199E-013;
    t61 = (t61 + 8U);
    t92 = (-(1.0774341461609599E-013));
    *((double *)t61) = t92;
    t61 = (t61 + 8U);
    *((double *)t61) = 2.1863343293215900E-013;
    t61 = (t61 + 8U);
    *((double *)t61) = 2.4132639491333101E-013;
    t61 = (t61 + 8U);
    *((double *)t61) = 3.9057462209830702E-013;
    t61 = (t61 + 8U);
    t93 = (-(2.6570679203560800E-013));
    *((double *)t61) = t93;
    t61 = (t61 + 8U);
    *((double *)t61) = 3.7135141919592001E-013;
    t61 = (t61 + 8U);
    t94 = (-(1.7166921336082399E-013));
    *((double *)t61) = t94;
    t61 = (t61 + 8U);
    t95 = (-(2.8658285157914399E-013));
    *((double *)t61) = t95;
    t61 = (t61 + 8U);
    t96 = (-(2.3812542263446802E-013));
    *((double *)t61) = t96;
    t61 = (t61 + 8U);
    *((double *)t61) = 6.5766597685800602E-014;
    t61 = (t61 + 8U);
    t97 = (-(2.8210143846181299E-013));
    *((double *)t61) = t97;
    t61 = (t61 + 8U);
    *((double *)t61) = 1.0701931762114300E-013;
    t61 = (t61 + 8U);
    *((double *)t61) = 1.8119346366441099E-013;
    t61 = (t61 + 8U);
    *((double *)t61) = 9.8404652782326295E-014;
    t61 = (t61 + 8U);
    t98 = (-(3.3149150282752501E-013));
    *((double *)t61) = t98;
    t61 = (t61 + 8U);
    t99 = (-(1.8302857356041701E-013));
    *((double *)t61) = t99;
    t61 = (t61 + 8U);
    t100 = (-(1.6207400156745001E-013));
    *((double *)t61) = t100;
    t61 = (t61 + 8U);
    *((double *)t61) = 4.8303314949553202E-013;
    t61 = (t61 + 8U);
    t101 = (-(7.1560553172382097E-013));
    *((double *)t61) = t101;
    t61 = (t61 + 8U);
    *((double *)t61) = 8.8821239518571905E-013;
    t61 = (t61 + 8U);
    t102 = (-(3.0900580513238202E-013));
    *((double *)t61) = t102;
    t61 = (t61 + 8U);
    t103 = (-(6.1076551972851495E-013));
    *((double *)t61) = t103;
    t61 = (t61 + 8U);
    *((double *)t61) = 3.5659969663347800E-013;
    t61 = (t61 + 8U);
    *((double *)t61) = 3.5782396591276399E-013;
    t61 = (t61 + 8U);
    t104 = (-(4.6226087001544597E-013));
    *((double *)t61) = t104;
    t61 = (t61 + 8U);
    *((double *)t61) = 6.2279762917225203E-013;
    t61 = (t61 + 8U);
    *((double *)t61) = 7.2838947272065696E-013;
    t61 = (t61 + 8U);
    *((double *)t61) = 2.6809646615211698E-013;
    t61 = (t61 + 8U);
    t105 = (-(1.0960825046059300E-013));
    *((double *)t61) = t105;
    t61 = (t61 + 8U);
    *((double *)t61) = 2.3119493838005400E-014;
    t61 = (t61 + 8U);
    t106 = (-(5.8469058005299204E-013));
    *((double *)t61) = t106;
    t61 = (t61 + 8U);
    t107 = (-(2.1037482511444901E-014));
    *((double *)t61) = t107;
    t61 = (t61 + 8U);
    t108 = (-(2.3323182945587398E-013));
    *((double *)t61) = t108;
    t61 = (t61 + 8U);
    t109 = (-(4.2333694288141900E-013));
    *((double *)t61) = t109;
    t61 = (t61 + 8U);
    t110 = (-(4.3933937969737802E-013));
    *((double *)t61) = t110;
    t61 = (t61 + 8U);
    *((double *)t61) = 4.1341647073835600E-013;
    t61 = (t61 + 8U);
    *((double *)t61) = 6.8417636415914704E-014;
    t61 = (t61 + 8U);
    *((double *)t61) = 4.7585534004430597E-013;
    t61 = (t61 + 8U);
    *((double *)t61) = 8.3679678674757704E-013;
    t61 = (t61 + 8U);
    t111 = (-(8.5763734646658599E-013));
    *((double *)t61) = t111;
    t61 = (t61 + 8U);
    *((double *)t61) = 2.1913281229340099E-013;
    t61 = (t61 + 8U);
    t112 = (-(6.2242842536431096E-013));
    *((double *)t61) = t112;
    t61 = (t61 + 8U);
    t113 = (-(1.0983594325438400E-013));
    *((double *)t61) = t113;
    t61 = (t61 + 8U);
    *((double *)t61) = 6.5310431377633704E-013;
    t61 = (t61 + 8U);
    t114 = (-(4.7580199021710796E-013));
    *((double *)t61) = t114;
    t61 = (t61 + 8U);
    t115 = (-(3.7854251265456999E-013));
    *((double *)t61) = t115;
    t61 = (t61 + 8U);
    *((double *)t61) = 4.0939233218678701E-013;
    t61 = (t61 + 8U);
    *((double *)t61) = 8.7424383914858299E-013;
    t61 = (t61 + 8U);
    *((double *)t61) = 2.5218188456842902E-013;
    t61 = (t61 + 8U);
    t116 = (-(3.6081313604225599E-014));
    *((double *)t61) = t116;
    t61 = (t61 + 8U);
    t117 = (-(5.0518555924280898E-013));
    *((double *)t61) = t117;
    t61 = (t61 + 8U);
    *((double *)t61) = 7.8699403323355302E-013;
    t61 = (t61 + 8U);
    t118 = (-(6.7020876961949105E-013));
    *((double *)t61) = t118;
    t61 = (t61 + 8U);
    *((double *)t61) = 1.6108575753932499E-013;
    t61 = (t61 + 8U);
    *((double *)t61) = 5.8527188436251501E-013;
    t61 = (t61 + 8U);
    t119 = (-(3.5246757297904799E-013));
    *((double *)t61) = t119;
    t61 = (t61 + 8U);
    t120 = (-(1.8372084495629099E-013));
    *((double *)t61) = t120;
    t61 = (t61 + 8U);
    *((double *)t61) = 8.8606689813494895E-013;
    t61 = (t61 + 8U);
    *((double *)t61) = 6.6486268071468701E-013;
    t61 = (t61 + 8U);
    *((double *)t61) = 6.3831615170646497E-013;
    t61 = (t61 + 8U);
    *((double *)t61) = 2.5144230728376100E-013;
    t61 = (t61 + 8U);
    t121 = (-(1.7239444525614799E-013));
    *((double *)t61) = t121;
    t123 = (t5 + 56U);
    t124 = *((char **)t123);
    t125 = *((int *)t124);
    t123 = (t122 + 0U);
    t126 = (t123 + 0U);
    *((int *)t126) = 0;
    t126 = (t123 + 4U);
    *((int *)t126) = t125;
    t126 = (t123 + 8U);
    *((int *)t126) = 1;
    t127 = (t125 - 0);
    t128 = (t127 * 1);
    t128 = (t128 + 1);
    t126 = (t123 + 12U);
    *((unsigned int *)t126) = t128;
    t126 = (t3 + 836U);
    t129 = (t3 + 124U);
    t130 = (t126 + 88U);
    *((char **)t130) = t129;
    t132 = (t126 + 56U);
    *((char **)t132) = t131;
    memcpy(t131, t57, 1032U);
    t133 = (t126 + 64U);
    *((char **)t133) = t122;
    t134 = (t126 + 80U);
    *((unsigned int *)t134) = 1032U;
    t135 = (t3 + 956U);
    t136 = ((STD_STANDARD) + 384);
    t137 = (t135 + 88U);
    *((char **)t137) = t136;
    t139 = (t135 + 56U);
    *((char **)t139) = t138;
    xsi_type_set_default_value(t136, t138, 0);
    t140 = (t135 + 80U);
    *((unsigned int *)t140) = 4U;
    t141 = (t3 + 1076U);
    t142 = ((STD_STANDARD) + 384);
    t143 = (t141 + 88U);
    *((char **)t143) = t142;
    t145 = (t141 + 56U);
    *((char **)t145) = t144;
    xsi_type_set_default_value(t142, t144, 0);
    t146 = (t141 + 80U);
    *((unsigned int *)t146) = 4U;
    t147 = (t3 + 1196U);
    t148 = ((STD_STANDARD) + 472);
    t149 = (t147 + 88U);
    *((char **)t149) = t148;
    t151 = (t147 + 56U);
    *((char **)t151) = t150;
    xsi_type_set_default_value(t148, t150, 0);
    t152 = (t147 + 80U);
    *((unsigned int *)t152) = 8U;
    t153 = (t3 + 1316U);
    t154 = ((STD_STANDARD) + 472);
    t155 = (t153 + 88U);
    *((char **)t155) = t154;
    t157 = (t153 + 56U);
    *((char **)t157) = t156;
    xsi_type_set_default_value(t154, t156, 0);
    t158 = (t153 + 80U);
    *((unsigned int *)t158) = 8U;
    t159 = (t3 + 1436U);
    t160 = ((STD_STANDARD) + 472);
    t161 = (t159 + 88U);
    *((char **)t161) = t160;
    t163 = (t159 + 56U);
    *((char **)t163) = t162;
    xsi_type_set_default_value(t160, t162, 0);
    t164 = (t159 + 80U);
    *((unsigned int *)t164) = 8U;
    t165 = (t3 + 1556U);
    t166 = ((STD_STANDARD) + 472);
    t167 = (t165 + 88U);
    *((char **)t167) = t166;
    t169 = (t165 + 56U);
    *((char **)t169) = t168;
    xsi_type_set_default_value(t166, t168, 0);
    t170 = (t165 + 80U);
    *((unsigned int *)t170) = 8U;
    t171 = (t3 + 1676U);
    t172 = ((STD_STANDARD) + 472);
    t173 = (t171 + 88U);
    *((char **)t173) = t172;
    t175 = (t171 + 56U);
    *((char **)t175) = t174;
    xsi_type_set_default_value(t172, t174, 0);
    t176 = (t171 + 80U);
    *((unsigned int *)t176) = 8U;
    t177 = (t3 + 1796U);
    t178 = ((STD_STANDARD) + 472);
    t179 = (t177 + 88U);
    *((char **)t179) = t178;
    t181 = (t177 + 56U);
    *((char **)t181) = t180;
    xsi_type_set_default_value(t178, t180, 0);
    t182 = (t177 + 80U);
    *((unsigned int *)t182) = 8U;
    t183 = (t3 + 1916U);
    t184 = ((STD_STANDARD) + 472);
    t185 = (t183 + 88U);
    *((char **)t185) = t184;
    t187 = (t183 + 56U);
    *((char **)t187) = t186;
    xsi_type_set_default_value(t184, t186, 0);
    t188 = (t183 + 80U);
    *((unsigned int *)t188) = 8U;
    t189 = (t3 + 2036U);
    t190 = ((STD_STANDARD) + 472);
    t191 = (t189 + 88U);
    *((char **)t191) = t190;
    t193 = (t189 + 56U);
    *((char **)t193) = t192;
    *((double *)t192) = 0.00000000000000000;
    t194 = (t189 + 80U);
    *((unsigned int *)t194) = 8U;
    t195 = (t3 + 2156U);
    t196 = ((STD_STANDARD) + 472);
    t197 = (t195 + 88U);
    *((char **)t197) = t196;
    t199 = (t195 + 56U);
    *((char **)t199) = t198;
    *((double *)t198) = 1.0000000000000000;
    t200 = (t195 + 80U);
    *((unsigned int *)t200) = 8U;
    t201 = (t3 + 2276U);
    t202 = ((STD_STANDARD) + 472);
    t203 = (t201 + 88U);
    *((char **)t203) = t202;
    t205 = (t201 + 56U);
    *((char **)t205) = t204;
    xsi_type_set_default_value(t202, t204, 0);
    t206 = (t201 + 80U);
    *((unsigned int *)t206) = 8U;
    t207 = (t4 + 4U);
    *((double *)t207) = t2;
    t208 = (t2 <= 0.00000000000000000);
    if (t208 != 0)
        goto LAB2;

LAB4:
LAB3:    t208 = (t2 == 1.0000000000000000);
    if (t208 != 0)
        goto LAB15;

LAB17:
LAB16:    t6 = (t1 + 1168U);
    t7 = *((char **)t6);
    t62 = *((double *)t7);
    t208 = (t2 == t62);
    if (t208 != 0)
        goto LAB19;

LAB21:
LAB20:    t40 = ieee_p_3972351953_sub_1422932443_2984157535(t1, t2);
    t6 = (t135 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    *((int *)t6) = t40;
    t6 = (t135 + 56U);
    t7 = *((char **)t6);
    t40 = *((int *)t7);
    t41 = (-(t40));
    t62 = ieee_p_3972351953_sub_3025794763_2984157535(t1, t2, t41);
    t6 = (t159 + 56U);
    t9 = *((char **)t6);
    t6 = (t9 + 0);
    *((double *)t6) = t62;
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t40 = *((int *)t7);
    t6 = (t159 + 56U);
    t9 = *((char **)t6);
    t62 = *((double *)t9);
    t63 = (t62 - 1.0000000000000000);
    t64 = ((((double)(t40))) * t63);
    t208 = (t64 >= 0);
    if (t208 == 1)
        goto LAB23;

LAB24:    t66 = (t64 - 0.50000000000000000);
    t41 = ((int)(t66));

LAB25:    t6 = (t141 + 56U);
    t10 = *((char **)t6);
    t6 = (t10 + 0);
    *((int *)t6) = t41;
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t40 = *((int *)t7);
    t62 = (1.0000000000000000 / (((double)(t40))));
    t6 = (t141 + 56U);
    t9 = *((char **)t6);
    t41 = *((int *)t9);
    t63 = (t62 * (((double)(t41))));
    t64 = (t63 + 1.0000000000000000);
    t6 = (t147 + 56U);
    t10 = *((char **)t6);
    t6 = (t10 + 0);
    *((double *)t6) = t64;
    t6 = (t159 + 56U);
    t7 = *((char **)t6);
    t62 = *((double *)t7);
    t6 = (t147 + 56U);
    t9 = *((char **)t6);
    t63 = *((double *)t9);
    t64 = (t62 - t63);
    t6 = (t153 + 56U);
    t10 = *((char **)t6);
    t6 = (t10 + 0);
    *((double *)t6) = t64;
    t6 = (t147 + 56U);
    t7 = *((char **)t6);
    t62 = *((double *)t7);
    t63 = (2.0000000000000000 * t62);
    t6 = (t153 + 56U);
    t9 = *((char **)t6);
    t64 = *((double *)t9);
    t65 = (t63 + t64);
    t66 = (1.0000000000000000 / t65);
    t6 = (t159 + 56U);
    t10 = *((char **)t6);
    t6 = (t10 + 0);
    *((double *)t6) = t66;
    t6 = (t153 + 56U);
    t7 = *((char **)t6);
    t62 = *((double *)t7);
    t63 = (2.0000000000000000 * t62);
    t6 = (t159 + 56U);
    t9 = *((char **)t6);
    t64 = *((double *)t9);
    t65 = (t63 * t64);
    t6 = (t171 + 56U);
    t10 = *((char **)t6);
    t6 = (t10 + 0);
    *((double *)t6) = t65;
    t6 = (t171 + 56U);
    t7 = *((char **)t6);
    t62 = *((double *)t7);
    t6 = (t171 + 56U);
    t9 = *((char **)t6);
    t63 = *((double *)t9);
    t64 = (t62 * t63);
    t6 = (t183 + 56U);
    t10 = *((char **)t6);
    t6 = (t10 + 0);
    *((double *)t6) = t64;
    t6 = (t171 + 56U);
    t7 = *((char **)t6);
    t62 = *((double *)t7);
    t6 = (t183 + 56U);
    t9 = *((char **)t6);
    t63 = *((double *)t9);
    t64 = (t62 * t63);
    t6 = (t14 + 56U);
    t10 = *((char **)t6);
    t65 = *((double *)t10);
    t6 = (t183 + 56U);
    t11 = *((char **)t6);
    t66 = *((double *)t11);
    t6 = (t20 + 56U);
    t12 = *((char **)t6);
    t67 = *((double *)t12);
    t6 = (t183 + 56U);
    t13 = *((char **)t6);
    t68 = *((double *)t13);
    t6 = (t26 + 56U);
    t15 = *((char **)t6);
    t69 = *((double *)t15);
    t6 = (t183 + 56U);
    t16 = *((char **)t6);
    t70 = *((double *)t16);
    t6 = (t32 + 56U);
    t18 = *((char **)t6);
    t71 = *((double *)t18);
    t72 = (t70 * t71);
    t73 = (t69 + t72);
    t74 = (t68 * t73);
    t75 = (t67 + t74);
    t76 = (t66 * t75);
    t77 = (t65 + t76);
    t78 = (t64 * t77);
    t6 = (t165 + 56U);
    t19 = *((char **)t6);
    t6 = (t19 + 0);
    *((double *)t6) = t78;
    t6 = (t141 + 56U);
    t7 = *((char **)t6);
    t40 = *((int *)t7);
    t211 = (t40 != 0);
    if (t211 == 1)
        goto LAB31;

LAB32:    t6 = (t135 + 56U);
    t9 = *((char **)t6);
    t41 = *((int *)t9);
    t212 = (t41 != 0);
    t208 = t212;

LAB33:    if (t208 != 0)
        goto LAB28;

LAB30:    t6 = (t171 + 56U);
    t7 = *((char **)t6);
    t62 = *((double *)t7);
    t6 = (t201 + 56U);
    t9 = *((char **)t6);
    t6 = (t9 + 0);
    *((double *)t6) = t62;

LAB29:    t6 = (t153 + 56U);
    t7 = *((char **)t6);
    t62 = *((double *)t7);
    t6 = (t147 + 56U);
    t9 = *((char **)t6);
    t63 = *((double *)t9);
    t6 = (t201 + 56U);
    t10 = *((char **)t6);
    t64 = *((double *)t10);
    t65 = (t63 * t64);
    t66 = (t62 - t65);
    t67 = (2.0000000000000000 * t66);
    t6 = (t201 + 56U);
    t11 = *((char **)t6);
    t68 = *((double *)t11);
    t6 = (t153 + 56U);
    t12 = *((char **)t6);
    t69 = *((double *)t12);
    t70 = (t68 * t69);
    t71 = (t67 - t70);
    t6 = (t159 + 56U);
    t13 = *((char **)t6);
    t72 = *((double *)t13);
    t73 = (t71 * t72);
    t6 = (t177 + 56U);
    t15 = *((char **)t6);
    t6 = (t15 + 0);
    *((double *)t6) = t73;
    t6 = (t201 + 56U);
    t7 = *((char **)t6);
    t62 = *((double *)t7);
    t6 = (t135 + 56U);
    t9 = *((char **)t6);
    t40 = *((int *)t9);
    t6 = (t48 + 56U);
    t10 = *((char **)t6);
    t6 = (t5 + 56U);
    t11 = *((char **)t6);
    t41 = *((int *)t11);
    t47 = (t41 - 0);
    t42 = (t47 * 1);
    t50 = (8U * t42);
    t128 = (0 + t50);
    t6 = (t10 + t128);
    t63 = *((double *)t6);
    t64 = ((((double)(t40))) * t63);
    t65 = (t62 + t64);
    t12 = (t48 + 56U);
    t13 = *((char **)t12);
    t12 = (t141 + 56U);
    t15 = *((char **)t12);
    t49 = *((int *)t15);
    t59 = (t49 - 0);
    t213 = (t59 * 1);
    xsi_vhdl_check_range_of_index(0, 128, 1, t49);
    t214 = (8U * t213);
    t215 = (0 + t214);
    t12 = (t13 + t215);
    t66 = *((double *)t12);
    t67 = (t65 + t66);
    t16 = (t201 + 56U);
    t18 = *((char **)t16);
    t16 = (t18 + 0);
    *((double *)t16) = t67;
    t6 = (t177 + 56U);
    t7 = *((char **)t6);
    t62 = *((double *)t7);
    t6 = (t126 + 56U);
    t9 = *((char **)t6);
    t6 = (t141 + 56U);
    t10 = *((char **)t6);
    t40 = *((int *)t10);
    t41 = (t40 - 0);
    t42 = (t41 * 1);
    xsi_vhdl_check_range_of_index(0, 128, 1, t40);
    t50 = (8U * t42);
    t128 = (0 + t50);
    t6 = (t9 + t128);
    t63 = *((double *)t6);
    t64 = (t62 + t63);
    t11 = (t165 + 56U);
    t12 = *((char **)t11);
    t65 = *((double *)t12);
    t66 = (t64 + t65);
    t11 = (t177 + 56U);
    t13 = *((char **)t11);
    t11 = (t13 + 0);
    *((double *)t11) = t66;
    t6 = (t177 + 56U);
    t7 = *((char **)t6);
    t62 = *((double *)t7);
    t6 = (t126 + 56U);
    t9 = *((char **)t6);
    t6 = (t5 + 56U);
    t10 = *((char **)t6);
    t40 = *((int *)t10);
    t41 = (t40 - 0);
    t42 = (t41 * 1);
    t50 = (8U * t42);
    t128 = (0 + t50);
    t6 = (t9 + t128);
    t63 = *((double *)t6);
    t11 = (t135 + 56U);
    t12 = *((char **)t11);
    t47 = *((int *)t12);
    t64 = (t63 * (((double)(t47))));
    t65 = (t62 + t64);
    t11 = (t177 + 56U);
    t13 = *((char **)t11);
    t11 = (t13 + 0);
    *((double *)t11) = t65;
    t6 = (t201 + 56U);
    t7 = *((char **)t6);
    t62 = *((double *)t7);
    t6 = (t177 + 56U);
    t9 = *((char **)t6);
    t63 = *((double *)t9);
    t64 = (t62 + t63);
    t0 = t64;

LAB1:    t6 = (t3 + 124U);
    xsi_delete_type(t6, 2);
    return t0;
LAB2:    if ((unsigned char)0 == 0)
        goto LAB5;

LAB6:    if (-1.7014111000000000E+308 > 1.7014111000000000E+308)
        goto LAB7;

LAB8:    if (1 == -1)
        goto LAB12;

LAB13:    t62 = -1.7014111000000000E+308;

LAB9:    t0 = t62;
    goto LAB1;

LAB5:    t209 = (t1 + 10808);
    xsi_report(t209, 18U, (unsigned char)2);
    goto LAB6;

LAB7:    if (1 == 1)
        goto LAB10;

LAB11:    t62 = 1.7014111000000000E+308;
    goto LAB9;

LAB10:    t62 = -1.7014111000000000E+308;
    goto LAB9;

LAB12:    t62 = 1.7014111000000000E+308;
    goto LAB9;

LAB14:    goto LAB3;

LAB15:    t0 = 0.00000000000000000;
    goto LAB1;

LAB18:    goto LAB16;

LAB19:    t0 = 1.0000000000000000;
    goto LAB1;

LAB22:    goto LAB20;

LAB23:    t211 = (t64 >= 2147483647);
    if (t211 == 1)
        goto LAB26;

LAB27:    t65 = (t64 + 0.50000000000000000);
    t41 = ((int)(t65));
    goto LAB25;

LAB26:    t41 = 2147483647;
    goto LAB25;

LAB28:    t6 = (t171 + 56U);
    t10 = *((char **)t6);
    t62 = *((double *)t10);
    t63 = (t62 + 513.00000000000000);
    t6 = (t201 + 56U);
    t11 = *((char **)t6);
    t6 = (t11 + 0);
    *((double *)t6) = t63;
    t6 = (t201 + 56U);
    t7 = *((char **)t6);
    t62 = *((double *)t7);
    t63 = (t62 - 513.00000000000000);
    t6 = (t201 + 56U);
    t9 = *((char **)t6);
    t6 = (t9 + 0);
    *((double *)t6) = t63;
    goto LAB29;

LAB31:    t208 = (unsigned char)1;
    goto LAB33;

LAB34:;
}

double ieee_p_3972351953_sub_528838134_2984157535(char *t1, double t2)
{
    char t4[16];
    double t0;
    char *t5;
    unsigned char t6;
    char *t7;
    char *t8;
    double t9;
    double t10;
    double t11;

LAB0:    t5 = (t4 + 4U);
    *((double *)t5) = t2;
    t6 = (t2 <= 0.00000000000000000);
    if (t6 != 0)
        goto LAB2;

LAB4:
LAB3:    t6 = (t2 == 1.0000000000000000);
    if (t6 != 0)
        goto LAB15;

LAB17:
LAB16:    t6 = (t2 == 2.0000000000000000);
    if (t6 != 0)
        goto LAB19;

LAB21:
LAB20:    t7 = (t1 + 2488U);
    t8 = *((char **)t7);
    t9 = *((double *)t8);
    t10 = ieee_p_3972351953_sub_1543758017_2984157535(t1, t2);
    t11 = (t9 * t10);
    t0 = t11;

LAB1:    return t0;
LAB2:    if ((unsigned char)0 == 0)
        goto LAB5;

LAB6:    if (-1.7014111000000000E+308 > 1.7014111000000000E+308)
        goto LAB7;

LAB8:    if (1 == -1)
        goto LAB12;

LAB13:    t9 = -1.7014111000000000E+308;

LAB9:    t0 = t9;
    goto LAB1;

LAB5:    t7 = (t1 + 10826);
    xsi_report(t7, 19U, (unsigned char)2);
    goto LAB6;

LAB7:    if (1 == 1)
        goto LAB10;

LAB11:    t9 = 1.7014111000000000E+308;
    goto LAB9;

LAB10:    t9 = -1.7014111000000000E+308;
    goto LAB9;

LAB12:    t9 = 1.7014111000000000E+308;
    goto LAB9;

LAB14:    goto LAB3;

LAB15:    t0 = 0.00000000000000000;
    goto LAB1;

LAB18:    goto LAB16;

LAB19:    t0 = 1.0000000000000000;
    goto LAB1;

LAB22:    goto LAB20;

LAB23:;
}

double ieee_p_3972351953_sub_2605234405_2984157535(char *t1, double t2)
{
    char t4[16];
    double t0;
    char *t5;
    unsigned char t6;
    char *t7;
    char *t8;
    double t9;
    double t10;
    double t11;

LAB0:    t5 = (t4 + 4U);
    *((double *)t5) = t2;
    t6 = (t2 <= 0.00000000000000000);
    if (t6 != 0)
        goto LAB2;

LAB4:
LAB3:    t6 = (t2 == 1.0000000000000000);
    if (t6 != 0)
        goto LAB15;

LAB17:
LAB16:    t6 = (t2 == 10.000000000000000);
    if (t6 != 0)
        goto LAB19;

LAB21:
LAB20:    t7 = (t1 + 2608U);
    t8 = *((char **)t7);
    t9 = *((double *)t8);
    t10 = ieee_p_3972351953_sub_1543758017_2984157535(t1, t2);
    t11 = (t9 * t10);
    t0 = t11;

LAB1:    return t0;
LAB2:    if ((unsigned char)0 == 0)
        goto LAB5;

LAB6:    if (-1.7014111000000000E+308 > 1.7014111000000000E+308)
        goto LAB7;

LAB8:    if (1 == -1)
        goto LAB12;

LAB13:    t9 = -1.7014111000000000E+308;

LAB9:    t0 = t9;
    goto LAB1;

LAB5:    t7 = (t1 + 10845);
    xsi_report(t7, 20U, (unsigned char)2);
    goto LAB6;

LAB7:    if (1 == 1)
        goto LAB10;

LAB11:    t9 = 1.7014111000000000E+308;
    goto LAB9;

LAB10:    t9 = -1.7014111000000000E+308;
    goto LAB9;

LAB12:    t9 = 1.7014111000000000E+308;
    goto LAB9;

LAB14:    goto LAB3;

LAB15:    t0 = 0.00000000000000000;
    goto LAB1;

LAB18:    goto LAB16;

LAB19:    t0 = 1.0000000000000000;
    goto LAB1;

LAB22:    goto LAB20;

LAB23:;
}

double ieee_p_3972351953_sub_1341592424_2984157535(char *t1, double t2, double t3)
{
    char t5[24];
    double t0;
    char *t6;
    char *t7;
    unsigned char t8;
    char *t9;
    double t11;
    unsigned char t12;
    unsigned char t13;
    double t14;
    double t15;

LAB0:    t6 = (t5 + 4U);
    *((double *)t6) = t2;
    t7 = (t5 + 12U);
    *((double *)t7) = t3;
    t8 = (t2 <= 0.00000000000000000);
    if (t8 != 0)
        goto LAB2;

LAB4:
LAB3:    t12 = (t3 <= 0.00000000000000000);
    if (t12 == 1)
        goto LAB18;

LAB19:    t13 = (t3 == 1.0000000000000000);
    t8 = t13;

LAB20:    if (t8 != 0)
        goto LAB15;

LAB17:
LAB16:    t8 = (t2 == 1.0000000000000000);
    if (t8 != 0)
        goto LAB31;

LAB33:
LAB32:    t8 = (t2 == t3);
    if (t8 != 0)
        goto LAB35;

LAB37:
LAB36:    t11 = ieee_p_3972351953_sub_1543758017_2984157535(t1, t2);
    t14 = ieee_p_3972351953_sub_1543758017_2984157535(t1, t3);
    t15 = (t11 / t14);
    t0 = t15;

LAB1:    return t0;
LAB2:    if ((unsigned char)0 == 0)
        goto LAB5;

LAB6:    if (-1.7014111000000000E+308 > 1.7014111000000000E+308)
        goto LAB7;

LAB8:    if (1 == -1)
        goto LAB12;

LAB13:    t11 = -1.7014111000000000E+308;

LAB9:    t0 = t11;
    goto LAB1;

LAB5:    t9 = (t1 + 10865);
    xsi_report(t9, 24U, (unsigned char)2);
    goto LAB6;

LAB7:    if (1 == 1)
        goto LAB10;

LAB11:    t11 = 1.7014111000000000E+308;
    goto LAB9;

LAB10:    t11 = -1.7014111000000000E+308;
    goto LAB9;

LAB12:    t11 = 1.7014111000000000E+308;
    goto LAB9;

LAB14:    goto LAB3;

LAB15:    if ((unsigned char)0 == 0)
        goto LAB21;

LAB22:    if (-1.7014111000000000E+308 > 1.7014111000000000E+308)
        goto LAB23;

LAB24:    if (1 == -1)
        goto LAB28;

LAB29:    t11 = -1.7014111000000000E+308;

LAB25:    t0 = t11;
    goto LAB1;

LAB18:    t8 = (unsigned char)1;
    goto LAB20;

LAB21:    t9 = (t1 + 10889);
    xsi_report(t9, 41U, (unsigned char)2);
    goto LAB22;

LAB23:    if (1 == 1)
        goto LAB26;

LAB27:    t11 = 1.7014111000000000E+308;
    goto LAB25;

LAB26:    t11 = -1.7014111000000000E+308;
    goto LAB25;

LAB28:    t11 = 1.7014111000000000E+308;
    goto LAB25;

LAB30:    goto LAB16;

LAB31:    t0 = 0.00000000000000000;
    goto LAB1;

LAB34:    goto LAB32;

LAB35:    t0 = 1.0000000000000000;
    goto LAB1;

LAB38:    goto LAB36;

LAB39:;
}

double ieee_p_3972351953_sub_1485185913_2984157535(char *t1, double t2)
{
    char t3[728];
    char t4[16];
    char t13[8];
    char t19[8];
    char t26[8];
    char t33[8];
    char t39[8];
    char t45[8];
    double t0;
    char *t5;
    char *t6;
    double t7;
    char *t8;
    double t9;
    double t10;
    char *t11;
    char *t12;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t20;
    char *t21;
    unsigned char t22;
    char *t23;
    char *t24;
    char *t25;
    char *t27;
    char *t28;
    double t29;
    char *t30;
    char *t31;
    char *t32;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    double t51;
    char *t52;
    double t53;
    unsigned char t54;
    char *t55;
    double t56;
    char *t57;
    double t58;
    double t59;
    double t60;
    char *t61;
    unsigned char t62;
    unsigned char t63;
    unsigned char t64;
    double t65;
    double t66;
    double t67;
    double t68;
    double t69;
    double t70;
    int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    int t75;
    int t76;

LAB0:    t5 = (t1 + 3928U);
    t6 = *((char **)t5);
    t7 = *((double *)t6);
    t5 = (t1 + 3928U);
    t8 = *((char **)t5);
    t9 = *((double *)t8);
    t10 = (t7 * t9);
    t5 = (t3 + 4U);
    t11 = ((STD_STANDARD) + 472);
    t12 = (t5 + 88U);
    *((char **)t12) = t11;
    t14 = (t5 + 56U);
    *((char **)t14) = t13;
    *((double *)t13) = t10;
    t15 = (t5 + 80U);
    *((unsigned int *)t15) = 8U;
    t16 = (t3 + 124U);
    t17 = ((STD_STANDARD) + 384);
    t18 = (t16 + 88U);
    *((char **)t18) = t17;
    t20 = (t16 + 56U);
    *((char **)t20) = t19;
    xsi_type_set_default_value(t17, t19, 0);
    t21 = (t16 + 80U);
    *((unsigned int *)t21) = 4U;
    t22 = (t2 < 0.00000000000000000);
    t23 = (t3 + 244U);
    t24 = ((STD_STANDARD) + 0);
    t25 = (t23 + 88U);
    *((char **)t25) = t24;
    t27 = (t23 + 56U);
    *((char **)t27) = t26;
    *((unsigned char *)t26) = t22;
    t28 = (t23 + 80U);
    *((unsigned int *)t28) = 1U;
    t29 = (t2>=0?t2: -t2);
    t30 = (t3 + 364U);
    t31 = ((STD_STANDARD) + 472);
    t32 = (t30 + 88U);
    *((char **)t32) = t31;
    t34 = (t30 + 56U);
    *((char **)t34) = t33;
    *((double *)t33) = t29;
    t35 = (t30 + 80U);
    *((unsigned int *)t35) = 8U;
    t36 = (t3 + 484U);
    t37 = ((STD_STANDARD) + 472);
    t38 = (t36 + 88U);
    *((char **)t38) = t37;
    t40 = (t36 + 56U);
    *((char **)t40) = t39;
    xsi_type_set_default_value(t37, t39, 0);
    t41 = (t36 + 80U);
    *((unsigned int *)t41) = 8U;
    t42 = (t3 + 604U);
    t43 = ((STD_STANDARD) + 472);
    t44 = (t42 + 88U);
    *((char **)t44) = t43;
    t46 = (t42 + 56U);
    *((char **)t46) = t45;
    xsi_type_set_default_value(t43, t45, 0);
    t47 = (t42 + 80U);
    *((unsigned int *)t47) = 8U;
    t48 = (t4 + 4U);
    *((double *)t48) = t2;
    t49 = (t30 + 56U);
    t50 = *((char **)t49);
    t51 = *((double *)t50);
    t49 = (t1 + 1528U);
    t52 = *((char **)t49);
    t53 = *((double *)t52);
    t54 = (t51 > t53);
    if (t54 != 0)
        goto LAB2;

LAB4:
LAB3:    t6 = (t30 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t22 = (t7 < 0.00000000000000000);
    if (t22 != 0)
        goto LAB5;

LAB7:
LAB6:    t6 = (t30 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t62 = (t7 == 0.00000000000000000);
    if (t62 == 1)
        goto LAB16;

LAB17:    t6 = (t30 + 56U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t6 = (t1 + 1528U);
    t12 = *((char **)t6);
    t10 = *((double *)t12);
    t63 = (t9 == t10);
    t54 = t63;

LAB18:    if (t54 == 1)
        goto LAB13;

LAB14:    t6 = (t30 + 56U);
    t14 = *((char **)t6);
    t29 = *((double *)t14);
    t6 = (t1 + 1408U);
    t15 = *((char **)t6);
    t51 = *((double *)t15);
    t64 = (t29 == t51);
    t22 = t64;

LAB15:    if (t22 != 0)
        goto LAB10;

LAB12:
LAB11:    t6 = (t30 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t1 + 1768U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t22 = (t7 == t9);
    if (t22 != 0)
        goto LAB20;

LAB22:
LAB21:    t6 = (t30 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t1 + 2128U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t22 = (t7 == t9);
    if (t22 != 0)
        goto LAB28;

LAB30:
LAB29:    t6 = (t30 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t5 + 56U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t22 = (t7 < t9);
    if (t22 != 0)
        goto LAB36;

LAB38:    t6 = (t30 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t1 + 3928U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t22 = (t7 < t9);
    if (t22 != 0)
        goto LAB44;

LAB46:
LAB45:
LAB37:    t6 = (t1 + 1408U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t30 + 56U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t10 = (t7 - t9);
    t6 = (t42 + 56U);
    t12 = *((char **)t6);
    t6 = (t12 + 0);
    *((double *)t6) = t10;
    t6 = (t42 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t9 = (t7>=0?t7: -t7);
    t6 = (t5 + 56U);
    t11 = *((char **)t6);
    t10 = *((double *)t11);
    t22 = (t9 < t10);
    if (t22 != 0)
        goto LAB52;

LAB54:    t6 = (t42 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t9 = (t7>=0?t7: -t7);
    t6 = (t1 + 3928U);
    t11 = *((char **)t6);
    t10 = *((double *)t11);
    t22 = (t9 < t10);
    if (t22 != 0)
        goto LAB60;

LAB62:
LAB61:
LAB53:    t6 = (t1 + 1528U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t30 + 56U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t10 = (t7 - t9);
    t6 = (t42 + 56U);
    t12 = *((char **)t6);
    t6 = (t12 + 0);
    *((double *)t6) = t10;
    t6 = (t42 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t9 = (t7>=0?t7: -t7);
    t6 = (t5 + 56U);
    t11 = *((char **)t6);
    t10 = *((double *)t11);
    t22 = (t9 < t10);
    if (t22 != 0)
        goto LAB68;

LAB70:    t6 = (t42 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t9 = (t7>=0?t7: -t7);
    t6 = (t1 + 3928U);
    t11 = *((char **)t6);
    t10 = *((double *)t11);
    t22 = (t9 < t10);
    if (t22 != 0)
        goto LAB76;

LAB78:
LAB77:
LAB69:    t6 = (t1 + 1768U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t30 + 56U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t10 = (t7 - t9);
    t29 = (t10>=0?t10: -t10);
    t6 = (t42 + 56U);
    t12 = *((char **)t6);
    t6 = (t12 + 0);
    *((double *)t6) = t29;
    t6 = (t42 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t5 + 56U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t22 = (t7 < t9);
    if (t22 != 0)
        goto LAB84;

LAB86:    t6 = (t42 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t1 + 3928U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t22 = (t7 < t9);
    if (t22 != 0)
        goto LAB92;

LAB94:
LAB93:
LAB85:    t6 = (t1 + 2128U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t30 + 56U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t10 = (t7 - t9);
    t29 = (t10>=0?t10: -t10);
    t6 = (t42 + 56U);
    t12 = *((char **)t6);
    t6 = (t12 + 0);
    *((double *)t6) = t29;
    t6 = (t42 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t5 + 56U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t22 = (t7 < t9);
    if (t22 != 0)
        goto LAB100;

LAB102:    t6 = (t42 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t1 + 3928U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t22 = (t7 < t9);
    if (t22 != 0)
        goto LAB108;

LAB110:
LAB109:
LAB101:    t6 = (t30 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t1 + 1768U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t54 = (t7 < t9);
    if (t54 == 1)
        goto LAB119;

LAB120:    t22 = (unsigned char)0;

LAB121:    if (t22 != 0)
        goto LAB116;

LAB118:
LAB117:    t6 = (t30 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t1 + 1768U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t10 = (t7 / t9);
    t29 = ieee_p_3972351953_sub_28498392_2984157535(t1, t10);
    t22 = (t29 >= 0);
    if (t22 == 1)
        goto LAB122;

LAB123:    t53 = (t29 - 0.50000000000000000);
    t71 = ((int)(t53));

LAB124:    t6 = (t16 + 56U);
    t12 = *((char **)t6);
    t6 = (t12 + 0);
    *((int *)t6) = t71;
    t6 = (t16 + 56U);
    t8 = *((char **)t6);
    t71 = *((int *)t8);
    t75 = xsi_vhdl_mod(t71, 4);
    if (t75 == 0)
        goto LAB128;

LAB132:    if (t75 == 1)
        goto LAB129;

LAB133:    if (t75 == 2)
        goto LAB130;

LAB134:
LAB131:    t6 = (t1 + 4048U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t30 + 56U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t6 = (t1 + 2128U);
    t12 = *((char **)t6);
    t10 = *((double *)t12);
    t29 = (t9 - t10);
    t6 = ieee_p_3972351953_sub_2938191189_2984157535(t1, t7, 0.00000000000000000, t29, 27, (unsigned char)0);
    t71 = (0 - 0);
    t72 = (t71 * 1);
    t73 = (8U * t72);
    t74 = (0 + t73);
    t14 = (t6 + t74);
    t51 = *((double *)t14);
    t53 = (-(t51));
    t15 = (t36 + 56U);
    t17 = *((char **)t15);
    t15 = (t17 + 0);
    *((double *)t15) = t53;

LAB127:    t6 = (t23 + 56U);
    t8 = *((char **)t6);
    t22 = *((unsigned char *)t8);
    if (t22 != 0)
        goto LAB136;

LAB138:    t6 = (t36 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t0 = t7;

LAB1:    return t0;
LAB2:    t49 = (t30 + 56U);
    t55 = *((char **)t49);
    t56 = *((double *)t55);
    t49 = (t1 + 1528U);
    t57 = *((char **)t49);
    t58 = *((double *)t57);
    t59 = (t56 / t58);
    t60 = ieee_p_3972351953_sub_28498392_2984157535(t1, t59);
    t49 = (t42 + 56U);
    t61 = *((char **)t49);
    t49 = (t61 + 0);
    *((double *)t49) = t60;
    t6 = (t30 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t42 + 56U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t6 = (t1 + 1528U);
    t12 = *((char **)t6);
    t10 = *((double *)t12);
    t29 = (t9 * t10);
    t51 = (t7 - t29);
    t6 = (t30 + 56U);
    t14 = *((char **)t6);
    t6 = (t14 + 0);
    *((double *)t6) = t51;
    goto LAB3;

LAB5:    if ((unsigned char)0 == 0)
        goto LAB8;

LAB9:    t6 = (t30 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t9 = (-(t7));
    t6 = (t30 + 56U);
    t11 = *((char **)t6);
    t6 = (t11 + 0);
    *((double *)t6) = t9;
    goto LAB6;

LAB8:    t6 = (t1 + 10930);
    xsi_report(t6, 39U, (unsigned char)2);
    goto LAB9;

LAB10:    t0 = 0.00000000000000000;
    goto LAB1;

LAB13:    t22 = (unsigned char)1;
    goto LAB15;

LAB16:    t54 = (unsigned char)1;
    goto LAB18;

LAB19:    goto LAB11;

LAB20:    t6 = (t23 + 56U);
    t12 = *((char **)t6);
    t54 = *((unsigned char *)t12);
    if (t54 != 0)
        goto LAB23;

LAB25:    t0 = 1.0000000000000000;
    goto LAB1;

LAB23:    t10 = (-(1.0000000000000000));
    t0 = t10;
    goto LAB1;

LAB24:    goto LAB21;

LAB26:    goto LAB24;

LAB27:    goto LAB24;

LAB28:    t6 = (t23 + 56U);
    t12 = *((char **)t6);
    t54 = *((unsigned char *)t12);
    if (t54 != 0)
        goto LAB31;

LAB33:    t7 = (-(1.0000000000000000));
    t0 = t7;
    goto LAB1;

LAB31:    t0 = 1.0000000000000000;
    goto LAB1;

LAB32:    goto LAB29;

LAB34:    goto LAB32;

LAB35:    goto LAB32;

LAB36:    t6 = (t23 + 56U);
    t12 = *((char **)t6);
    t54 = *((unsigned char *)t12);
    if (t54 != 0)
        goto LAB39;

LAB41:    t6 = (t30 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t0 = t7;
    goto LAB1;

LAB39:    t6 = (t30 + 56U);
    t14 = *((char **)t6);
    t10 = *((double *)t14);
    t29 = (-(t10));
    t0 = t29;
    goto LAB1;

LAB40:    goto LAB37;

LAB42:    goto LAB40;

LAB43:    goto LAB40;

LAB44:    t6 = (t30 + 56U);
    t12 = *((char **)t6);
    t10 = *((double *)t12);
    t6 = (t30 + 56U);
    t14 = *((char **)t6);
    t29 = *((double *)t14);
    t6 = (t30 + 56U);
    t15 = *((char **)t6);
    t51 = *((double *)t15);
    t53 = (t29 * t51);
    t6 = (t30 + 56U);
    t17 = *((char **)t6);
    t56 = *((double *)t17);
    t58 = (t53 * t56);
    t59 = (t58 / 6.0000000000000000);
    t60 = (t10 - t59);
    t6 = (t42 + 56U);
    t18 = *((char **)t6);
    t6 = (t18 + 0);
    *((double *)t6) = t60;
    t6 = (t23 + 56U);
    t8 = *((char **)t6);
    t22 = *((unsigned char *)t8);
    if (t22 != 0)
        goto LAB47;

LAB49:    t6 = (t42 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t0 = t7;
    goto LAB1;

LAB47:    t6 = (t42 + 56U);
    t11 = *((char **)t6);
    t7 = *((double *)t11);
    t9 = (-(t7));
    t0 = t9;
    goto LAB1;

LAB48:    goto LAB45;

LAB50:    goto LAB48;

LAB51:    goto LAB48;

LAB52:    t6 = (t23 + 56U);
    t12 = *((char **)t6);
    t54 = *((unsigned char *)t12);
    if (t54 != 0)
        goto LAB55;

LAB57:    t6 = (t42 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t0 = t7;
    goto LAB1;

LAB55:    t6 = (t42 + 56U);
    t14 = *((char **)t6);
    t29 = *((double *)t14);
    t51 = (-(t29));
    t0 = t51;
    goto LAB1;

LAB56:    goto LAB53;

LAB58:    goto LAB56;

LAB59:    goto LAB56;

LAB60:    t6 = (t42 + 56U);
    t12 = *((char **)t6);
    t29 = *((double *)t12);
    t6 = (t42 + 56U);
    t14 = *((char **)t6);
    t51 = *((double *)t14);
    t6 = (t42 + 56U);
    t15 = *((char **)t6);
    t53 = *((double *)t15);
    t56 = (t51 * t53);
    t6 = (t42 + 56U);
    t17 = *((char **)t6);
    t58 = *((double *)t17);
    t59 = (t56 * t58);
    t60 = (t59 / 6.0000000000000000);
    t65 = (t29 - t60);
    t6 = (t42 + 56U);
    t18 = *((char **)t6);
    t6 = (t18 + 0);
    *((double *)t6) = t65;
    t6 = (t23 + 56U);
    t8 = *((char **)t6);
    t22 = *((unsigned char *)t8);
    if (t22 != 0)
        goto LAB63;

LAB65:    t6 = (t42 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t0 = t7;
    goto LAB1;

LAB63:    t6 = (t42 + 56U);
    t11 = *((char **)t6);
    t7 = *((double *)t11);
    t9 = (-(t7));
    t0 = t9;
    goto LAB1;

LAB64:    goto LAB61;

LAB66:    goto LAB64;

LAB67:    goto LAB64;

LAB68:    t6 = (t23 + 56U);
    t12 = *((char **)t6);
    t54 = *((unsigned char *)t12);
    if (t54 != 0)
        goto LAB71;

LAB73:    t6 = (t42 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t9 = (-(t7));
    t0 = t9;
    goto LAB1;

LAB71:    t6 = (t42 + 56U);
    t14 = *((char **)t6);
    t29 = *((double *)t14);
    t0 = t29;
    goto LAB1;

LAB72:    goto LAB69;

LAB74:    goto LAB72;

LAB75:    goto LAB72;

LAB76:    t6 = (t42 + 56U);
    t12 = *((char **)t6);
    t29 = *((double *)t12);
    t6 = (t42 + 56U);
    t14 = *((char **)t6);
    t51 = *((double *)t14);
    t6 = (t42 + 56U);
    t15 = *((char **)t6);
    t53 = *((double *)t15);
    t56 = (t51 * t53);
    t6 = (t42 + 56U);
    t17 = *((char **)t6);
    t58 = *((double *)t17);
    t59 = (t56 * t58);
    t60 = (t59 / 6.0000000000000000);
    t65 = (t29 - t60);
    t6 = (t42 + 56U);
    t18 = *((char **)t6);
    t6 = (t18 + 0);
    *((double *)t6) = t65;
    t6 = (t23 + 56U);
    t8 = *((char **)t6);
    t22 = *((unsigned char *)t8);
    if (t22 != 0)
        goto LAB79;

LAB81:    t6 = (t42 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t9 = (-(t7));
    t0 = t9;
    goto LAB1;

LAB79:    t6 = (t42 + 56U);
    t11 = *((char **)t6);
    t7 = *((double *)t11);
    t0 = t7;
    goto LAB1;

LAB80:    goto LAB77;

LAB82:    goto LAB80;

LAB83:    goto LAB80;

LAB84:    t6 = (t42 + 56U);
    t12 = *((char **)t6);
    t10 = *((double *)t12);
    t6 = (t42 + 56U);
    t14 = *((char **)t6);
    t29 = *((double *)t14);
    t51 = (t10 * t29);
    t53 = (t51 * 0.50000000000000000);
    t56 = (1.0000000000000000 - t53);
    t6 = (t42 + 56U);
    t15 = *((char **)t6);
    t6 = (t15 + 0);
    *((double *)t6) = t56;
    t6 = (t23 + 56U);
    t8 = *((char **)t6);
    t22 = *((unsigned char *)t8);
    if (t22 != 0)
        goto LAB87;

LAB89:    t6 = (t42 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t0 = t7;
    goto LAB1;

LAB87:    t6 = (t42 + 56U);
    t11 = *((char **)t6);
    t7 = *((double *)t11);
    t9 = (-(t7));
    t0 = t9;
    goto LAB1;

LAB88:    goto LAB85;

LAB90:    goto LAB88;

LAB91:    goto LAB88;

LAB92:    t6 = (t42 + 56U);
    t12 = *((char **)t6);
    t10 = *((double *)t12);
    t6 = (t42 + 56U);
    t14 = *((char **)t6);
    t29 = *((double *)t14);
    t51 = (t10 * t29);
    t53 = (t51 * 0.50000000000000000);
    t56 = (1.0000000000000000 - t53);
    t6 = (t42 + 56U);
    t15 = *((char **)t6);
    t58 = *((double *)t15);
    t6 = (t42 + 56U);
    t17 = *((char **)t6);
    t59 = *((double *)t17);
    t60 = (t58 * t59);
    t6 = (t42 + 56U);
    t18 = *((char **)t6);
    t65 = *((double *)t18);
    t66 = (t60 * t65);
    t6 = (t42 + 56U);
    t20 = *((char **)t6);
    t67 = *((double *)t20);
    t68 = (t66 * t67);
    t69 = (t68 / 24.000000000000000);
    t70 = (t56 + t69);
    t6 = (t42 + 56U);
    t21 = *((char **)t6);
    t6 = (t21 + 0);
    *((double *)t6) = t70;
    t6 = (t23 + 56U);
    t8 = *((char **)t6);
    t22 = *((unsigned char *)t8);
    if (t22 != 0)
        goto LAB95;

LAB97:    t6 = (t42 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t0 = t7;
    goto LAB1;

LAB95:    t6 = (t42 + 56U);
    t11 = *((char **)t6);
    t7 = *((double *)t11);
    t9 = (-(t7));
    t0 = t9;
    goto LAB1;

LAB96:    goto LAB93;

LAB98:    goto LAB96;

LAB99:    goto LAB96;

LAB100:    t6 = (t42 + 56U);
    t12 = *((char **)t6);
    t10 = *((double *)t12);
    t6 = (t42 + 56U);
    t14 = *((char **)t6);
    t29 = *((double *)t14);
    t51 = (t10 * t29);
    t53 = (t51 * 0.50000000000000000);
    t56 = (1.0000000000000000 - t53);
    t6 = (t42 + 56U);
    t15 = *((char **)t6);
    t6 = (t15 + 0);
    *((double *)t6) = t56;
    t6 = (t23 + 56U);
    t8 = *((char **)t6);
    t22 = *((unsigned char *)t8);
    if (t22 != 0)
        goto LAB103;

LAB105:    t6 = (t42 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t9 = (-(t7));
    t0 = t9;
    goto LAB1;

LAB103:    t6 = (t42 + 56U);
    t11 = *((char **)t6);
    t7 = *((double *)t11);
    t0 = t7;
    goto LAB1;

LAB104:    goto LAB101;

LAB106:    goto LAB104;

LAB107:    goto LAB104;

LAB108:    t6 = (t42 + 56U);
    t12 = *((char **)t6);
    t10 = *((double *)t12);
    t6 = (t42 + 56U);
    t14 = *((char **)t6);
    t29 = *((double *)t14);
    t51 = (t10 * t29);
    t53 = (t51 * 0.50000000000000000);
    t56 = (1.0000000000000000 - t53);
    t6 = (t42 + 56U);
    t15 = *((char **)t6);
    t58 = *((double *)t15);
    t6 = (t42 + 56U);
    t17 = *((char **)t6);
    t59 = *((double *)t17);
    t60 = (t58 * t59);
    t6 = (t42 + 56U);
    t18 = *((char **)t6);
    t65 = *((double *)t18);
    t66 = (t60 * t65);
    t6 = (t42 + 56U);
    t20 = *((char **)t6);
    t67 = *((double *)t20);
    t68 = (t66 * t67);
    t69 = (t68 / 24.000000000000000);
    t70 = (t56 + t69);
    t6 = (t42 + 56U);
    t21 = *((char **)t6);
    t6 = (t21 + 0);
    *((double *)t6) = t70;
    t6 = (t23 + 56U);
    t8 = *((char **)t6);
    t22 = *((unsigned char *)t8);
    if (t22 != 0)
        goto LAB111;

LAB113:    t6 = (t42 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t9 = (-(t7));
    t0 = t9;
    goto LAB1;

LAB111:    t6 = (t42 + 56U);
    t11 = *((char **)t6);
    t7 = *((double *)t11);
    t0 = t7;
    goto LAB1;

LAB112:    goto LAB109;

LAB114:    goto LAB112;

LAB115:    goto LAB112;

LAB116:    t6 = (t1 + 4048U);
    t14 = *((char **)t6);
    t29 = *((double *)t14);
    t6 = ieee_p_3972351953_sub_2938191189_2984157535(t1, t29, 0.00000000000000000, t2, 27, (unsigned char)0);
    t71 = (1 - 0);
    t72 = (t71 * 1);
    t73 = (8U * t72);
    t74 = (0 + t73);
    t15 = (t6 + t74);
    t51 = *((double *)t15);
    t17 = (t36 + 56U);
    t18 = *((char **)t17);
    t17 = (t18 + 0);
    *((double *)t17) = t51;
    goto LAB117;

LAB119:    t6 = (t30 + 56U);
    t12 = *((char **)t6);
    t10 = *((double *)t12);
    t62 = (t10 > 0.00000000000000000);
    t22 = t62;
    goto LAB121;

LAB122:    t54 = (t29 >= 2147483647);
    if (t54 == 1)
        goto LAB125;

LAB126:    t51 = (t29 + 0.50000000000000000);
    t71 = ((int)(t51));
    goto LAB124;

LAB125:    t71 = 2147483647;
    goto LAB124;

LAB128:    t6 = (t1 + 4048U);
    t11 = *((char **)t6);
    t7 = *((double *)t11);
    t6 = (t30 + 56U);
    t12 = *((char **)t6);
    t9 = *((double *)t12);
    t6 = ieee_p_3972351953_sub_2938191189_2984157535(t1, t7, 0.00000000000000000, t9, 27, (unsigned char)0);
    t76 = (1 - 0);
    t72 = (t76 * 1);
    t73 = (8U * t72);
    t74 = (0 + t73);
    t14 = (t6 + t74);
    t10 = *((double *)t14);
    t15 = (t36 + 56U);
    t17 = *((char **)t15);
    t15 = (t17 + 0);
    *((double *)t15) = t10;
    goto LAB127;

LAB129:    t6 = (t1 + 4048U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t30 + 56U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t6 = (t1 + 1768U);
    t12 = *((char **)t6);
    t10 = *((double *)t12);
    t29 = (t9 - t10);
    t6 = ieee_p_3972351953_sub_2938191189_2984157535(t1, t7, 0.00000000000000000, t29, 27, (unsigned char)0);
    t71 = (0 - 0);
    t72 = (t71 * 1);
    t73 = (8U * t72);
    t74 = (0 + t73);
    t14 = (t6 + t74);
    t51 = *((double *)t14);
    t15 = (t36 + 56U);
    t17 = *((char **)t15);
    t15 = (t17 + 0);
    *((double *)t15) = t51;
    goto LAB127;

LAB130:    t6 = (t1 + 4048U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t30 + 56U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t6 = (t1 + 1408U);
    t12 = *((char **)t6);
    t10 = *((double *)t12);
    t29 = (t9 - t10);
    t6 = ieee_p_3972351953_sub_2938191189_2984157535(t1, t7, 0.00000000000000000, t29, 27, (unsigned char)0);
    t71 = (1 - 0);
    t72 = (t71 * 1);
    t73 = (8U * t72);
    t74 = (0 + t73);
    t14 = (t6 + t74);
    t51 = *((double *)t14);
    t53 = (-(t51));
    t15 = (t36 + 56U);
    t17 = *((char **)t15);
    t15 = (t17 + 0);
    *((double *)t15) = t53;
    goto LAB127;

LAB135:;
LAB136:    t6 = (t36 + 56U);
    t11 = *((char **)t6);
    t7 = *((double *)t11);
    t9 = (-(t7));
    t0 = t9;
    goto LAB1;

LAB137:    xsi_error(ng9);
    t0 = 0;
    goto LAB1;

LAB139:    goto LAB137;

LAB140:    goto LAB137;

}

double ieee_p_3972351953_sub_773523744_2984157535(char *t1, double t2)
{
    char t3[488];
    char t4[16];
    char t13[8];
    char t20[8];
    char t26[8];
    char t32[8];
    double t0;
    char *t5;
    char *t6;
    double t7;
    char *t8;
    double t9;
    double t10;
    char *t11;
    char *t12;
    char *t14;
    char *t15;
    double t16;
    char *t17;
    char *t18;
    char *t19;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    double t38;
    char *t39;
    double t40;
    unsigned char t41;
    char *t42;
    double t43;
    char *t44;
    double t45;
    double t46;
    double t47;
    char *t48;
    unsigned char t49;
    unsigned char t50;
    double t51;
    double t52;
    double t53;
    double t54;
    double t55;
    double t56;
    double t57;

LAB0:    t5 = (t1 + 3928U);
    t6 = *((char **)t5);
    t7 = *((double *)t6);
    t5 = (t1 + 3928U);
    t8 = *((char **)t5);
    t9 = *((double *)t8);
    t10 = (t7 * t9);
    t5 = (t3 + 4U);
    t11 = ((STD_STANDARD) + 472);
    t12 = (t5 + 88U);
    *((char **)t12) = t11;
    t14 = (t5 + 56U);
    *((char **)t14) = t13;
    *((double *)t13) = t10;
    t15 = (t5 + 80U);
    *((unsigned int *)t15) = 8U;
    t16 = (t2>=0?t2: -t2);
    t17 = (t3 + 124U);
    t18 = ((STD_STANDARD) + 472);
    t19 = (t17 + 88U);
    *((char **)t19) = t18;
    t21 = (t17 + 56U);
    *((char **)t21) = t20;
    *((double *)t20) = t16;
    t22 = (t17 + 80U);
    *((unsigned int *)t22) = 8U;
    t23 = (t3 + 244U);
    t24 = ((STD_STANDARD) + 472);
    t25 = (t23 + 88U);
    *((char **)t25) = t24;
    t27 = (t23 + 56U);
    *((char **)t27) = t26;
    xsi_type_set_default_value(t24, t26, 0);
    t28 = (t23 + 80U);
    *((unsigned int *)t28) = 8U;
    t29 = (t3 + 364U);
    t30 = ((STD_STANDARD) + 472);
    t31 = (t29 + 88U);
    *((char **)t31) = t30;
    t33 = (t29 + 56U);
    *((char **)t33) = t32;
    xsi_type_set_default_value(t30, t32, 0);
    t34 = (t29 + 80U);
    *((unsigned int *)t34) = 8U;
    t35 = (t4 + 4U);
    *((double *)t35) = t2;
    t36 = (t17 + 56U);
    t37 = *((char **)t36);
    t38 = *((double *)t37);
    t36 = (t1 + 1528U);
    t39 = *((char **)t36);
    t40 = *((double *)t39);
    t41 = (t38 > t40);
    if (t41 != 0)
        goto LAB2;

LAB4:
LAB3:    t6 = (t17 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t41 = (t7 < 0.00000000000000000);
    if (t41 != 0)
        goto LAB5;

LAB7:
LAB6:    t6 = (t17 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t49 = (t7 == 0.00000000000000000);
    if (t49 == 1)
        goto LAB13;

LAB14:    t6 = (t17 + 56U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t6 = (t1 + 1528U);
    t12 = *((char **)t6);
    t10 = *((double *)t12);
    t50 = (t9 == t10);
    t41 = t50;

LAB15:    if (t41 != 0)
        goto LAB10;

LAB12:
LAB11:    t6 = (t17 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t1 + 1408U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t41 = (t7 == t9);
    if (t41 != 0)
        goto LAB17;

LAB19:
LAB18:    t6 = (t17 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t1 + 1768U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t49 = (t7 == t9);
    if (t49 == 1)
        goto LAB24;

LAB25:    t6 = (t17 + 56U);
    t12 = *((char **)t6);
    t10 = *((double *)t12);
    t6 = (t1 + 2128U);
    t14 = *((char **)t6);
    t16 = *((double *)t14);
    t50 = (t10 == t16);
    t41 = t50;

LAB26:    if (t41 != 0)
        goto LAB21;

LAB23:
LAB22:    t6 = (t17 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t9 = (t7>=0?t7: -t7);
    t6 = (t29 + 56U);
    t11 = *((char **)t6);
    t6 = (t11 + 0);
    *((double *)t6) = t9;
    t6 = (t29 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t5 + 56U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t41 = (t7 < t9);
    if (t41 != 0)
        goto LAB28;

LAB30:    t6 = (t29 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t1 + 3928U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t41 = (t7 < t9);
    if (t41 != 0)
        goto LAB32;

LAB34:
LAB33:
LAB29:    t6 = (t17 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t1 + 1528U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t10 = (t7 - t9);
    t16 = (t10>=0?t10: -t10);
    t6 = (t29 + 56U);
    t12 = *((char **)t6);
    t6 = (t12 + 0);
    *((double *)t6) = t16;
    t6 = (t29 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t5 + 56U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t41 = (t7 < t9);
    if (t41 != 0)
        goto LAB36;

LAB38:    t6 = (t29 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t1 + 3928U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t41 = (t7 < t9);
    if (t41 != 0)
        goto LAB40;

LAB42:
LAB41:
LAB37:    t6 = (t17 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t1 + 1408U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t10 = (t7 - t9);
    t16 = (t10>=0?t10: -t10);
    t6 = (t29 + 56U);
    t12 = *((char **)t6);
    t6 = (t12 + 0);
    *((double *)t6) = t16;
    t6 = (t29 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t5 + 56U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t41 = (t7 < t9);
    if (t41 != 0)
        goto LAB44;

LAB46:    t6 = (t29 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t1 + 3928U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t41 = (t7 < t9);
    if (t41 != 0)
        goto LAB48;

LAB50:
LAB49:
LAB45:    t6 = (t1 + 1768U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t17 + 56U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t10 = (t7 - t9);
    t16 = ieee_p_3972351953_sub_1485185913_2984157535(t1, t10);
    t0 = t16;

LAB1:    return t0;
LAB2:    t36 = (t17 + 56U);
    t42 = *((char **)t36);
    t43 = *((double *)t42);
    t36 = (t1 + 1528U);
    t44 = *((char **)t36);
    t45 = *((double *)t44);
    t46 = (t43 / t45);
    t47 = ieee_p_3972351953_sub_28498392_2984157535(t1, t46);
    t36 = (t29 + 56U);
    t48 = *((char **)t36);
    t36 = (t48 + 0);
    *((double *)t36) = t47;
    t6 = (t17 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t29 + 56U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t6 = (t1 + 1528U);
    t12 = *((char **)t6);
    t10 = *((double *)t12);
    t16 = (t9 * t10);
    t38 = (t7 - t16);
    t6 = (t17 + 56U);
    t14 = *((char **)t6);
    t6 = (t14 + 0);
    *((double *)t6) = t38;
    goto LAB3;

LAB5:    if ((unsigned char)0 == 0)
        goto LAB8;

LAB9:    t6 = (t17 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t9 = (-(t7));
    t6 = (t17 + 56U);
    t11 = *((char **)t6);
    t6 = (t11 + 0);
    *((double *)t6) = t9;
    goto LAB6;

LAB8:    t6 = (t1 + 10969);
    xsi_report(t6, 39U, (unsigned char)2);
    goto LAB9;

LAB10:    t0 = 1.0000000000000000;
    goto LAB1;

LAB13:    t41 = (unsigned char)1;
    goto LAB15;

LAB16:    goto LAB11;

LAB17:    t10 = (-(1.0000000000000000));
    t0 = t10;
    goto LAB1;

LAB20:    goto LAB18;

LAB21:    t0 = 0.00000000000000000;
    goto LAB1;

LAB24:    t41 = (unsigned char)1;
    goto LAB26;

LAB27:    goto LAB22;

LAB28:    t6 = (t29 + 56U);
    t12 = *((char **)t6);
    t10 = *((double *)t12);
    t16 = (0.50000000000000000 * t10);
    t6 = (t29 + 56U);
    t14 = *((char **)t6);
    t38 = *((double *)t14);
    t40 = (t16 * t38);
    t43 = (1.0000000000000000 - t40);
    t0 = t43;
    goto LAB1;

LAB31:    goto LAB29;

LAB32:    t6 = (t29 + 56U);
    t12 = *((char **)t6);
    t10 = *((double *)t12);
    t16 = (0.50000000000000000 * t10);
    t6 = (t29 + 56U);
    t14 = *((char **)t6);
    t38 = *((double *)t14);
    t40 = (t16 * t38);
    t43 = (1.0000000000000000 - t40);
    t6 = (t29 + 56U);
    t15 = *((char **)t6);
    t45 = *((double *)t15);
    t6 = (t29 + 56U);
    t18 = *((char **)t6);
    t46 = *((double *)t18);
    t47 = (t45 * t46);
    t6 = (t29 + 56U);
    t19 = *((char **)t6);
    t51 = *((double *)t19);
    t52 = (t47 * t51);
    t6 = (t29 + 56U);
    t21 = *((char **)t6);
    t53 = *((double *)t21);
    t54 = (t52 * t53);
    t55 = (t54 / 24.000000000000000);
    t56 = (t43 + t55);
    t0 = t56;
    goto LAB1;

LAB35:    goto LAB33;

LAB36:    t6 = (t29 + 56U);
    t12 = *((char **)t6);
    t10 = *((double *)t12);
    t16 = (0.50000000000000000 * t10);
    t6 = (t29 + 56U);
    t14 = *((char **)t6);
    t38 = *((double *)t14);
    t40 = (t16 * t38);
    t43 = (1.0000000000000000 - t40);
    t0 = t43;
    goto LAB1;

LAB39:    goto LAB37;

LAB40:    t6 = (t29 + 56U);
    t12 = *((char **)t6);
    t10 = *((double *)t12);
    t16 = (0.50000000000000000 * t10);
    t6 = (t29 + 56U);
    t14 = *((char **)t6);
    t38 = *((double *)t14);
    t40 = (t16 * t38);
    t43 = (1.0000000000000000 - t40);
    t6 = (t29 + 56U);
    t15 = *((char **)t6);
    t45 = *((double *)t15);
    t6 = (t29 + 56U);
    t18 = *((char **)t6);
    t46 = *((double *)t18);
    t47 = (t45 * t46);
    t6 = (t29 + 56U);
    t19 = *((char **)t6);
    t51 = *((double *)t19);
    t52 = (t47 * t51);
    t6 = (t29 + 56U);
    t21 = *((char **)t6);
    t53 = *((double *)t21);
    t54 = (t52 * t53);
    t55 = (t54 / 24.000000000000000);
    t56 = (t43 + t55);
    t0 = t56;
    goto LAB1;

LAB43:    goto LAB41;

LAB44:    t10 = (-(1.0000000000000000));
    t6 = (t29 + 56U);
    t12 = *((char **)t6);
    t16 = *((double *)t12);
    t38 = (0.50000000000000000 * t16);
    t6 = (t29 + 56U);
    t14 = *((char **)t6);
    t40 = *((double *)t14);
    t43 = (t38 * t40);
    t45 = (t10 + t43);
    t0 = t45;
    goto LAB1;

LAB47:    goto LAB45;

LAB48:    t10 = (-(1.0000000000000000));
    t6 = (t29 + 56U);
    t12 = *((char **)t6);
    t16 = *((double *)t12);
    t38 = (0.50000000000000000 * t16);
    t6 = (t29 + 56U);
    t14 = *((char **)t6);
    t40 = *((double *)t14);
    t43 = (t38 * t40);
    t45 = (t10 + t43);
    t6 = (t29 + 56U);
    t15 = *((char **)t6);
    t46 = *((double *)t15);
    t6 = (t29 + 56U);
    t18 = *((char **)t6);
    t47 = *((double *)t18);
    t51 = (t46 * t47);
    t6 = (t29 + 56U);
    t19 = *((char **)t6);
    t52 = *((double *)t19);
    t53 = (t51 * t52);
    t6 = (t29 + 56U);
    t21 = *((char **)t6);
    t54 = *((double *)t21);
    t55 = (t53 * t54);
    t56 = (t55 / 24.000000000000000);
    t57 = (t45 - t56);
    t0 = t57;
    goto LAB1;

LAB51:    goto LAB49;

LAB52:;
}

double ieee_p_3972351953_sub_1125417762_2984157535(char *t1, double t2)
{
    char t3[488];
    char t4[16];
    char t9[8];
    char t16[8];
    char t22[8];
    char t28[8];
    double t0;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    double t12;
    char *t13;
    char *t14;
    char *t15;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    double t34;
    char *t35;
    double t36;
    unsigned char t37;
    char *t38;
    double t39;
    char *t40;
    double t41;
    double t42;
    double t43;
    char *t44;
    unsigned char t45;

LAB0:    t5 = (t2 < 0.00000000000000000);
    t6 = (t3 + 4U);
    t7 = ((STD_STANDARD) + 0);
    t8 = (t6 + 88U);
    *((char **)t8) = t7;
    t10 = (t6 + 56U);
    *((char **)t10) = t9;
    *((unsigned char *)t9) = t5;
    t11 = (t6 + 80U);
    *((unsigned int *)t11) = 1U;
    t12 = (t2>=0?t2: -t2);
    t13 = (t3 + 124U);
    t14 = ((STD_STANDARD) + 472);
    t15 = (t13 + 88U);
    *((char **)t15) = t14;
    t17 = (t13 + 56U);
    *((char **)t17) = t16;
    *((double *)t16) = t12;
    t18 = (t13 + 80U);
    *((unsigned int *)t18) = 8U;
    t19 = (t3 + 244U);
    t20 = ((STD_STANDARD) + 472);
    t21 = (t19 + 88U);
    *((char **)t21) = t20;
    t23 = (t19 + 56U);
    *((char **)t23) = t22;
    xsi_type_set_default_value(t20, t22, 0);
    t24 = (t19 + 80U);
    *((unsigned int *)t24) = 8U;
    t25 = (t3 + 364U);
    t26 = ((STD_STANDARD) + 472);
    t27 = (t25 + 88U);
    *((char **)t27) = t26;
    t29 = (t25 + 56U);
    *((char **)t29) = t28;
    xsi_type_set_default_value(t26, t28, 0);
    t30 = (t25 + 80U);
    *((unsigned int *)t30) = 8U;
    t31 = (t4 + 4U);
    *((double *)t31) = t2;
    t32 = (t13 + 56U);
    t33 = *((char **)t32);
    t34 = *((double *)t33);
    t32 = (t1 + 1528U);
    t35 = *((char **)t32);
    t36 = *((double *)t35);
    t37 = (t34 > t36);
    if (t37 != 0)
        goto LAB2;

LAB4:
LAB3:    t7 = (t13 + 56U);
    t8 = *((char **)t7);
    t12 = *((double *)t8);
    t5 = (t12 < 0.00000000000000000);
    if (t5 != 0)
        goto LAB5;

LAB7:
LAB6:    t7 = (t13 + 56U);
    t8 = *((char **)t7);
    t12 = *((double *)t8);
    t7 = (t1 + 1768U);
    t10 = *((char **)t7);
    t34 = *((double *)t10);
    t5 = (t12 == t34);
    if (t5 != 0)
        goto LAB10;

LAB12:
LAB11:    t7 = (t13 + 56U);
    t8 = *((char **)t7);
    t12 = *((double *)t8);
    t7 = (t1 + 2128U);
    t10 = *((char **)t7);
    t34 = *((double *)t10);
    t5 = (t12 == t34);
    if (t5 != 0)
        goto LAB34;

LAB36:
LAB35:    t7 = (t13 + 56U);
    t8 = *((char **)t7);
    t12 = *((double *)t8);
    t37 = (t12 == 0.00000000000000000);
    if (t37 == 1)
        goto LAB61;

LAB62:    t7 = (t13 + 56U);
    t10 = *((char **)t7);
    t34 = *((double *)t10);
    t7 = (t1 + 1408U);
    t11 = *((char **)t7);
    t36 = *((double *)t11);
    t45 = (t34 == t36);
    t5 = t45;

LAB63:    if (t5 != 0)
        goto LAB58;

LAB60:
LAB59:    t7 = (t13 + 56U);
    t8 = *((char **)t7);
    t12 = *((double *)t8);
    t34 = ieee_p_3972351953_sub_1485185913_2984157535(t1, t12);
    t7 = (t13 + 56U);
    t10 = *((char **)t7);
    t36 = *((double *)t10);
    t39 = ieee_p_3972351953_sub_773523744_2984157535(t1, t36);
    t41 = (t34 / t39);
    t7 = (t19 + 56U);
    t11 = *((char **)t7);
    t7 = (t11 + 0);
    *((double *)t7) = t41;
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t5 = *((unsigned char *)t8);
    if (t5 != 0)
        goto LAB65;

LAB67:    t7 = (t19 + 56U);
    t8 = *((char **)t7);
    t12 = *((double *)t8);
    t0 = t12;

LAB1:    return t0;
LAB2:    t32 = (t13 + 56U);
    t38 = *((char **)t32);
    t39 = *((double *)t38);
    t32 = (t1 + 1528U);
    t40 = *((char **)t32);
    t41 = *((double *)t40);
    t42 = (t39 / t41);
    t43 = ieee_p_3972351953_sub_28498392_2984157535(t1, t42);
    t32 = (t25 + 56U);
    t44 = *((char **)t32);
    t32 = (t44 + 0);
    *((double *)t32) = t43;
    t7 = (t13 + 56U);
    t8 = *((char **)t7);
    t12 = *((double *)t8);
    t7 = (t25 + 56U);
    t10 = *((char **)t7);
    t34 = *((double *)t10);
    t7 = (t1 + 1528U);
    t11 = *((char **)t7);
    t36 = *((double *)t11);
    t39 = (t34 * t36);
    t41 = (t12 - t39);
    t7 = (t13 + 56U);
    t14 = *((char **)t7);
    t7 = (t14 + 0);
    *((double *)t7) = t41;
    goto LAB3;

LAB5:    if ((unsigned char)0 == 0)
        goto LAB8;

LAB9:    t7 = (t13 + 56U);
    t8 = *((char **)t7);
    t12 = *((double *)t8);
    t34 = (-(t12));
    t7 = (t13 + 56U);
    t10 = *((char **)t7);
    t7 = (t10 + 0);
    *((double *)t7) = t34;
    goto LAB6;

LAB8:    t7 = (t1 + 11008);
    xsi_report(t7, 39U, (unsigned char)2);
    goto LAB9;

LAB10:    if ((unsigned char)0 == 0)
        goto LAB13;

LAB14:    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t5 = *((unsigned char *)t8);
    if (t5 != 0)
        goto LAB15;

LAB17:    if (-1.7014111000000000E+308 > 1.7014111000000000E+308)
        goto LAB26;

LAB27:    if (1 == -1)
        goto LAB31;

LAB32:    t12 = 1.7014111000000000E+308;

LAB28:    t0 = t12;
    goto LAB1;

LAB13:    t7 = (t1 + 11047);
    xsi_report(t7, 43U, (unsigned char)2);
    goto LAB14;

LAB15:    if (-1.7014111000000000E+308 > 1.7014111000000000E+308)
        goto LAB18;

LAB19:    if (1 == -1)
        goto LAB23;

LAB24:    t12 = -1.7014111000000000E+308;

LAB20:    t0 = t12;
    goto LAB1;

LAB16:    goto LAB11;

LAB18:    if (1 == 1)
        goto LAB21;

LAB22:    t12 = 1.7014111000000000E+308;
    goto LAB20;

LAB21:    t12 = -1.7014111000000000E+308;
    goto LAB20;

LAB23:    t12 = 1.7014111000000000E+308;
    goto LAB20;

LAB25:    goto LAB16;

LAB26:    if (1 == 1)
        goto LAB29;

LAB30:    t12 = -1.7014111000000000E+308;
    goto LAB28;

LAB29:    t12 = 1.7014111000000000E+308;
    goto LAB28;

LAB31:    t12 = -1.7014111000000000E+308;
    goto LAB28;

LAB33:    goto LAB16;

LAB34:    if ((unsigned char)0 == 0)
        goto LAB37;

LAB38:    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t5 = *((unsigned char *)t8);
    if (t5 != 0)
        goto LAB39;

LAB41:    if (-1.7014111000000000E+308 > 1.7014111000000000E+308)
        goto LAB50;

LAB51:    if (1 == -1)
        goto LAB55;

LAB56:    t12 = -1.7014111000000000E+308;

LAB52:    t0 = t12;
    goto LAB1;

LAB37:    t7 = (t1 + 11090);
    xsi_report(t7, 45U, (unsigned char)2);
    goto LAB38;

LAB39:    if (-1.7014111000000000E+308 > 1.7014111000000000E+308)
        goto LAB42;

LAB43:    if (1 == -1)
        goto LAB47;

LAB48:    t12 = 1.7014111000000000E+308;

LAB44:    t0 = t12;
    goto LAB1;

LAB40:    goto LAB35;

LAB42:    if (1 == 1)
        goto LAB45;

LAB46:    t12 = -1.7014111000000000E+308;
    goto LAB44;

LAB45:    t12 = 1.7014111000000000E+308;
    goto LAB44;

LAB47:    t12 = -1.7014111000000000E+308;
    goto LAB44;

LAB49:    goto LAB40;

LAB50:    if (1 == 1)
        goto LAB53;

LAB54:    t12 = 1.7014111000000000E+308;
    goto LAB52;

LAB53:    t12 = -1.7014111000000000E+308;
    goto LAB52;

LAB55:    t12 = 1.7014111000000000E+308;
    goto LAB52;

LAB57:    goto LAB40;

LAB58:    t0 = 0.00000000000000000;
    goto LAB1;

LAB61:    t5 = (unsigned char)1;
    goto LAB63;

LAB64:    goto LAB59;

LAB65:    t7 = (t19 + 56U);
    t10 = *((char **)t7);
    t12 = *((double *)t10);
    t34 = (-(t12));
    t0 = t34;
    goto LAB1;

LAB66:    xsi_error(ng10);
    t0 = 0;
    goto LAB1;

LAB68:    goto LAB66;

LAB69:    goto LAB66;

}

double ieee_p_3972351953_sub_1898361299_2984157535(char *t1, double t2)
{
    char t3[368];
    char t4[16];
    char t9[8];
    char t16[8];
    char t22[8];
    double t0;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    double t12;
    char *t13;
    char *t14;
    char *t15;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    double t28;
    unsigned char t29;
    double t31;
    double t32;
    double t33;
    double t34;
    double t35;
    double t36;
    double t37;
    double t38;

LAB0:    t5 = (t2 < 0.00000000000000000);
    t6 = (t3 + 4U);
    t7 = ((STD_STANDARD) + 0);
    t8 = (t6 + 88U);
    *((char **)t8) = t7;
    t10 = (t6 + 56U);
    *((char **)t10) = t9;
    *((unsigned char *)t9) = t5;
    t11 = (t6 + 80U);
    *((unsigned int *)t11) = 1U;
    t12 = (t2>=0?t2: -t2);
    t13 = (t3 + 124U);
    t14 = ((STD_STANDARD) + 472);
    t15 = (t13 + 88U);
    *((char **)t15) = t14;
    t17 = (t13 + 56U);
    *((char **)t17) = t16;
    *((double *)t16) = t12;
    t18 = (t13 + 80U);
    *((unsigned int *)t18) = 8U;
    t19 = (t3 + 244U);
    t20 = ((STD_STANDARD) + 472);
    t21 = (t19 + 88U);
    *((char **)t21) = t20;
    t23 = (t19 + 56U);
    *((char **)t23) = t22;
    xsi_type_set_default_value(t20, t22, 0);
    t24 = (t19 + 80U);
    *((unsigned int *)t24) = 8U;
    t25 = (t4 + 4U);
    *((double *)t25) = t2;
    t26 = (t13 + 56U);
    t27 = *((char **)t26);
    t28 = *((double *)t27);
    t29 = (t28 > 1.0000000000000000);
    if (t29 != 0)
        goto LAB2;

LAB4:
LAB3:    t7 = (t13 + 56U);
    t8 = *((char **)t7);
    t12 = *((double *)t8);
    t5 = (t12 == 0.00000000000000000);
    if (t5 != 0)
        goto LAB8;

LAB10:    t7 = (t13 + 56U);
    t8 = *((char **)t7);
    t12 = *((double *)t8);
    t5 = (t12 == 1.0000000000000000);
    if (t5 != 0)
        goto LAB12;

LAB13:
LAB9:    t7 = (t13 + 56U);
    t8 = *((char **)t7);
    t12 = *((double *)t8);
    t5 = (t12 < 0.90000000000000002);
    if (t5 != 0)
        goto LAB19;

LAB21:    t7 = (t1 + 1768U);
    t8 = *((char **)t7);
    t12 = *((double *)t8);
    t7 = (t13 + 56U);
    t10 = *((char **)t7);
    t28 = *((double *)t10);
    t7 = (t13 + 56U);
    t11 = *((char **)t7);
    t31 = *((double *)t11);
    t32 = (t28 * t31);
    t33 = (1.0000000000000000 - t32);
    t34 = ieee_p_3972351953_sub_1722501855_2984157535(t1, t33);
    t7 = (t13 + 56U);
    t14 = *((char **)t7);
    t35 = *((double *)t14);
    t36 = (t34 / t35);
    t37 = ieee_p_3972351953_sub_1487517033_2984157535(t1, t36);
    t38 = (t12 - t37);
    t7 = (t19 + 56U);
    t15 = *((char **)t7);
    t7 = (t15 + 0);
    *((double *)t7) = t38;

LAB20:    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t5 = *((unsigned char *)t8);
    if (t5 != 0)
        goto LAB22;

LAB24:
LAB23:    t7 = (t19 + 56U);
    t8 = *((char **)t7);
    t12 = *((double *)t8);
    t0 = t12;

LAB1:    return t0;
LAB2:    if ((unsigned char)0 == 0)
        goto LAB5;

LAB6:    t0 = t2;
    goto LAB1;

LAB5:    t26 = (t1 + 11135);
    xsi_report(t26, 25U, (unsigned char)2);
    goto LAB6;

LAB7:    goto LAB3;

LAB8:    t0 = 0.00000000000000000;
    goto LAB1;

LAB11:    goto LAB9;

LAB12:    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    t29 = *((unsigned char *)t10);
    if (t29 != 0)
        goto LAB14;

LAB16:    t7 = (t1 + 1768U);
    t8 = *((char **)t7);
    t12 = *((double *)t8);
    t0 = t12;
    goto LAB1;

LAB14:    t7 = (t1 + 1768U);
    t11 = *((char **)t7);
    t28 = *((double *)t11);
    t31 = (-(t28));
    t0 = t31;
    goto LAB1;

LAB15:    goto LAB9;

LAB17:    goto LAB15;

LAB18:    goto LAB15;

LAB19:    t7 = (t13 + 56U);
    t10 = *((char **)t7);
    t28 = *((double *)t10);
    t7 = (t13 + 56U);
    t11 = *((char **)t7);
    t31 = *((double *)t11);
    t7 = (t13 + 56U);
    t14 = *((char **)t7);
    t32 = *((double *)t14);
    t33 = (t31 * t32);
    t34 = (1.0000000000000000 - t33);
    t35 = ieee_p_3972351953_sub_1722501855_2984157535(t1, t34);
    t36 = (t28 / t35);
    t37 = ieee_p_3972351953_sub_1487517033_2984157535(t1, t36);
    t7 = (t19 + 56U);
    t15 = *((char **)t7);
    t7 = (t15 + 0);
    *((double *)t7) = t37;
    goto LAB20;

LAB22:    t7 = (t19 + 56U);
    t10 = *((char **)t7);
    t12 = *((double *)t10);
    t28 = (-(t12));
    t7 = (t19 + 56U);
    t11 = *((char **)t7);
    t7 = (t11 + 0);
    *((double *)t7) = t28;
    goto LAB23;

LAB25:;
}

double ieee_p_3972351953_sub_1879607630_2984157535(char *t1, double t2)
{
    char t3[368];
    char t4[16];
    char t9[8];
    char t16[8];
    char t22[8];
    double t0;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    double t12;
    char *t13;
    char *t14;
    char *t15;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    double t28;
    unsigned char t29;
    double t31;
    double t32;
    double t33;
    double t34;
    double t35;
    double t36;
    double t37;
    double t38;

LAB0:    t5 = (t2 < 0.00000000000000000);
    t6 = (t3 + 4U);
    t7 = ((STD_STANDARD) + 0);
    t8 = (t6 + 88U);
    *((char **)t8) = t7;
    t10 = (t6 + 56U);
    *((char **)t10) = t9;
    *((unsigned char *)t9) = t5;
    t11 = (t6 + 80U);
    *((unsigned int *)t11) = 1U;
    t12 = (t2>=0?t2: -t2);
    t13 = (t3 + 124U);
    t14 = ((STD_STANDARD) + 472);
    t15 = (t13 + 88U);
    *((char **)t15) = t14;
    t17 = (t13 + 56U);
    *((char **)t17) = t16;
    *((double *)t16) = t12;
    t18 = (t13 + 80U);
    *((unsigned int *)t18) = 8U;
    t19 = (t3 + 244U);
    t20 = ((STD_STANDARD) + 472);
    t21 = (t19 + 88U);
    *((char **)t21) = t20;
    t23 = (t19 + 56U);
    *((char **)t23) = t22;
    xsi_type_set_default_value(t20, t22, 0);
    t24 = (t19 + 80U);
    *((unsigned int *)t24) = 8U;
    t25 = (t4 + 4U);
    *((double *)t25) = t2;
    t26 = (t13 + 56U);
    t27 = *((char **)t26);
    t28 = *((double *)t27);
    t29 = (t28 > 1.0000000000000000);
    if (t29 != 0)
        goto LAB2;

LAB4:
LAB3:    t5 = (t2 == 1.0000000000000000);
    if (t5 != 0)
        goto LAB8;

LAB10:    t5 = (t2 == 0.00000000000000000);
    if (t5 != 0)
        goto LAB12;

LAB13:    t12 = (-(1.0000000000000000));
    t5 = (t2 == t12);
    if (t5 != 0)
        goto LAB15;

LAB16:
LAB9:    t7 = (t13 + 56U);
    t8 = *((char **)t7);
    t12 = *((double *)t8);
    t5 = (t12 > 0.90000000000000002);
    if (t5 != 0)
        goto LAB18;

LAB20:    t7 = (t1 + 1768U);
    t8 = *((char **)t7);
    t12 = *((double *)t8);
    t7 = (t13 + 56U);
    t10 = *((char **)t7);
    t28 = *((double *)t10);
    t7 = (t13 + 56U);
    t11 = *((char **)t7);
    t31 = *((double *)t11);
    t7 = (t13 + 56U);
    t14 = *((char **)t7);
    t32 = *((double *)t14);
    t33 = (t31 * t32);
    t34 = (1.0000000000000000 - t33);
    t35 = ieee_p_3972351953_sub_1722501855_2984157535(t1, t34);
    t36 = (t28 / t35);
    t37 = ieee_p_3972351953_sub_1487517033_2984157535(t1, t36);
    t38 = (t12 - t37);
    t7 = (t19 + 56U);
    t15 = *((char **)t7);
    t7 = (t15 + 0);
    *((double *)t7) = t38;

LAB19:    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t5 = *((unsigned char *)t8);
    if (t5 != 0)
        goto LAB21;

LAB23:
LAB22:    t7 = (t19 + 56U);
    t8 = *((char **)t7);
    t12 = *((double *)t8);
    t0 = t12;

LAB1:    return t0;
LAB2:    if ((unsigned char)0 == 0)
        goto LAB5;

LAB6:    t0 = t2;
    goto LAB1;

LAB5:    t26 = (t1 + 11160);
    xsi_report(t26, 25U, (unsigned char)2);
    goto LAB6;

LAB7:    goto LAB3;

LAB8:    t0 = 0.00000000000000000;
    goto LAB1;

LAB11:    goto LAB9;

LAB12:    t7 = (t1 + 1768U);
    t8 = *((char **)t7);
    t12 = *((double *)t8);
    t0 = t12;
    goto LAB1;

LAB14:    goto LAB9;

LAB15:    t7 = (t1 + 1408U);
    t8 = *((char **)t7);
    t28 = *((double *)t8);
    t0 = t28;
    goto LAB1;

LAB17:    goto LAB9;

LAB18:    t7 = (t13 + 56U);
    t10 = *((char **)t7);
    t28 = *((double *)t10);
    t7 = (t13 + 56U);
    t11 = *((char **)t7);
    t31 = *((double *)t11);
    t32 = (t28 * t31);
    t33 = (1.0000000000000000 - t32);
    t34 = ieee_p_3972351953_sub_1722501855_2984157535(t1, t33);
    t7 = (t13 + 56U);
    t14 = *((char **)t7);
    t35 = *((double *)t14);
    t36 = (t34 / t35);
    t37 = ieee_p_3972351953_sub_1487517033_2984157535(t1, t36);
    t7 = (t19 + 56U);
    t15 = *((char **)t7);
    t7 = (t15 + 0);
    *((double *)t7) = t37;
    goto LAB19;

LAB21:    t7 = (t1 + 1408U);
    t10 = *((char **)t7);
    t12 = *((double *)t10);
    t7 = (t19 + 56U);
    t11 = *((char **)t7);
    t28 = *((double *)t11);
    t31 = (t12 - t28);
    t7 = (t19 + 56U);
    t14 = *((char **)t7);
    t7 = (t14 + 0);
    *((double *)t7) = t31;
    goto LAB22;

LAB24:;
}

double ieee_p_3972351953_sub_1487517033_2984157535(char *t1, double t2)
{
    char t3[608];
    char t4[16];
    char t16[8];
    char t23[8];
    char t29[8];
    char t36[8];
    char t42[8];
    double t0;
    char *t5;
    char *t6;
    double t7;
    char *t8;
    double t9;
    double t10;
    char *t11;
    double t12;
    double t13;
    char *t14;
    char *t15;
    char *t17;
    char *t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t30;
    char *t31;
    double t32;
    char *t33;
    char *t34;
    char *t35;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    double t48;
    unsigned char t49;
    char *t50;
    double t51;
    double t52;
    char *t53;
    unsigned char t54;
    int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;

LAB0:    t5 = (t1 + 3928U);
    t6 = *((char **)t5);
    t7 = *((double *)t6);
    t5 = (t1 + 3928U);
    t8 = *((char **)t5);
    t9 = *((double *)t8);
    t10 = (t7 * t9);
    t5 = (t1 + 3928U);
    t11 = *((char **)t5);
    t12 = *((double *)t11);
    t13 = (t10 * t12);
    t5 = (t3 + 4U);
    t14 = ((STD_STANDARD) + 472);
    t15 = (t5 + 88U);
    *((char **)t15) = t14;
    t17 = (t5 + 56U);
    *((char **)t17) = t16;
    *((double *)t16) = t13;
    t18 = (t5 + 80U);
    *((unsigned int *)t18) = 8U;
    t19 = (t2 < 0.00000000000000000);
    t20 = (t3 + 124U);
    t21 = ((STD_STANDARD) + 0);
    t22 = (t20 + 88U);
    *((char **)t22) = t21;
    t24 = (t20 + 56U);
    *((char **)t24) = t23;
    *((unsigned char *)t23) = t19;
    t25 = (t20 + 80U);
    *((unsigned int *)t25) = 1U;
    t26 = (t3 + 244U);
    t27 = ((STD_STANDARD) + 0);
    t28 = (t26 + 88U);
    *((char **)t28) = t27;
    t30 = (t26 + 56U);
    *((char **)t30) = t29;
    xsi_type_set_default_value(t27, t29, 0);
    t31 = (t26 + 80U);
    *((unsigned int *)t31) = 1U;
    t32 = (t2>=0?t2: -t2);
    t33 = (t3 + 364U);
    t34 = ((STD_STANDARD) + 472);
    t35 = (t33 + 88U);
    *((char **)t35) = t34;
    t37 = (t33 + 56U);
    *((char **)t37) = t36;
    *((double *)t36) = t32;
    t38 = (t33 + 80U);
    *((unsigned int *)t38) = 8U;
    t39 = (t3 + 484U);
    t40 = ((STD_STANDARD) + 472);
    t41 = (t39 + 88U);
    *((char **)t41) = t40;
    t43 = (t39 + 56U);
    *((char **)t43) = t42;
    xsi_type_set_default_value(t40, t42, 0);
    t44 = (t39 + 80U);
    *((unsigned int *)t44) = 8U;
    t45 = (t4 + 4U);
    *((double *)t45) = t2;
    t46 = (t33 + 56U);
    t47 = *((char **)t46);
    t48 = *((double *)t47);
    t49 = (t48 > 1.0000000000000000);
    if (t49 != 0)
        goto LAB2;

LAB4:    t6 = (t26 + 56U);
    t8 = *((char **)t6);
    t6 = (t8 + 0);
    *((unsigned char *)t6) = (unsigned char)0;

LAB3:    t6 = (t33 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t19 = (t7 == 0.00000000000000000);
    if (t19 != 0)
        goto LAB5;

LAB7:
LAB6:    t6 = (t33 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = (t5 + 56U);
    t11 = *((char **)t6);
    t9 = *((double *)t11);
    t19 = (t7 < t9);
    if (t19 != 0)
        goto LAB17;

LAB19:
LAB18:    t6 = (t33 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t6 = ieee_p_3972351953_sub_2938191189_2984157535(t1, 1.0000000000000000, t7, 0.00000000000000000, 27, (unsigned char)1);
    t55 = (2 - 0);
    t56 = (t55 * 1);
    t57 = (8U * t56);
    t58 = (0 + t57);
    t11 = (t6 + t58);
    t9 = *((double *)t11);
    t14 = (t39 + 56U);
    t15 = *((char **)t14);
    t14 = (t15 + 0);
    *((double *)t14) = t9;
    t6 = (t26 + 56U);
    t8 = *((char **)t6);
    t19 = *((unsigned char *)t8);
    if (t19 != 0)
        goto LAB33;

LAB35:
LAB34:    t6 = (t20 + 56U);
    t8 = *((char **)t6);
    t19 = *((unsigned char *)t8);
    if (t19 != 0)
        goto LAB36;

LAB38:
LAB37:    t6 = (t39 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t0 = t7;

LAB1:    return t0;
LAB2:    t46 = (t33 + 56U);
    t50 = *((char **)t46);
    t51 = *((double *)t50);
    t52 = (1.0000000000000000 / t51);
    t46 = (t33 + 56U);
    t53 = *((char **)t46);
    t46 = (t53 + 0);
    *((double *)t46) = t52;
    t6 = (t26 + 56U);
    t8 = *((char **)t6);
    t6 = (t8 + 0);
    *((unsigned char *)t6) = (unsigned char)1;
    goto LAB3;

LAB5:    t6 = (t26 + 56U);
    t11 = *((char **)t6);
    t49 = *((unsigned char *)t11);
    if (t49 != 0)
        goto LAB8;

LAB10:    t0 = 0.00000000000000000;
    goto LAB1;

LAB8:    t6 = (t20 + 56U);
    t14 = *((char **)t6);
    t54 = *((unsigned char *)t14);
    if (t54 != 0)
        goto LAB11;

LAB13:    t6 = (t1 + 1768U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t0 = t7;
    goto LAB1;

LAB9:    goto LAB6;

LAB11:    t6 = (t1 + 1768U);
    t15 = *((char **)t6);
    t9 = *((double *)t15);
    t10 = (-(t9));
    t0 = t10;
    goto LAB1;

LAB12:    goto LAB9;

LAB14:    goto LAB12;

LAB15:    goto LAB12;

LAB16:    goto LAB9;

LAB17:    t6 = (t20 + 56U);
    t14 = *((char **)t6);
    t49 = *((unsigned char *)t14);
    if (t49 != 0)
        goto LAB20;

LAB22:    t6 = (t26 + 56U);
    t8 = *((char **)t6);
    t19 = *((unsigned char *)t8);
    if (t19 != 0)
        goto LAB28;

LAB30:    t6 = (t33 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t0 = t7;
    goto LAB1;

LAB20:    t6 = (t26 + 56U);
    t15 = *((char **)t6);
    t54 = *((unsigned char *)t15);
    if (t54 != 0)
        goto LAB23;

LAB25:    t6 = (t33 + 56U);
    t8 = *((char **)t6);
    t7 = *((double *)t8);
    t9 = (-(t7));
    t0 = t9;
    goto LAB1;

LAB21:    goto LAB18;

LAB23:    t6 = (t1 + 1768U);
    t17 = *((char **)t6);
    t10 = *((double *)t17);
    t12 = (-(t10));
    t6 = (t33 + 56U);
    t18 = *((char **)t6);
    t13 = *((double *)t18);
    t32 = (t12 + t13);
    t0 = t32;
    goto LAB1;

LAB24:    goto LAB21;

LAB26:    goto LAB24;

LAB27:    goto LAB24;

LAB28:    t6 = (t1 + 1768U);
    t11 = *((char **)t6);
    t7 = *((double *)t11);
    t6 = (t33 + 56U);
    t14 = *((char **)t6);
    t9 = *((double *)t14);
    t10 = (t7 - t9);
    t0 = t10;
    goto LAB1;

LAB29:    goto LAB21;

LAB31:    goto LAB29;

LAB32:    goto LAB29;

LAB33:    t6 = (t1 + 1768U);
    t11 = *((char **)t6);
    t7 = *((double *)t11);
    t6 = (t39 + 56U);
    t14 = *((char **)t6);
    t9 = *((double *)t14);
    t10 = (t7 - t9);
    t6 = (t39 + 56U);
    t15 = *((char **)t6);
    t6 = (t15 + 0);
    *((double *)t6) = t10;
    goto LAB34;

LAB36:    t6 = (t39 + 56U);
    t11 = *((char **)t6);
    t7 = *((double *)t11);
    t9 = (-(t7));
    t6 = (t39 + 56U);
    t14 = *((char **)t6);
    t6 = (t14 + 0);
    *((double *)t6) = t9;
    goto LAB37;

LAB39:;
}

double ieee_p_3972351953_sub_1311584390_2984157535(char *t1, double t2, double t3)
{
    char t4[248];
    char t5[24];
    char t9[8];
    char t15[8];
    double t0;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    unsigned char t20;
    unsigned char t21;
    unsigned char t22;
    char *t23;
    double t25;
    double t26;
    double t27;

LAB0:    t6 = (t4 + 4U);
    t7 = ((STD_STANDARD) + 472);
    t8 = (t6 + 88U);
    *((char **)t8) = t7;
    t10 = (t6 + 56U);
    *((char **)t10) = t9;
    xsi_type_set_default_value(t7, t9, 0);
    t11 = (t6 + 80U);
    *((unsigned int *)t11) = 8U;
    t12 = (t4 + 124U);
    t13 = ((STD_STANDARD) + 472);
    t14 = (t12 + 88U);
    *((char **)t14) = t13;
    t16 = (t12 + 56U);
    *((char **)t16) = t15;
    xsi_type_set_default_value(t13, t15, 0);
    t17 = (t12 + 80U);
    *((unsigned int *)t17) = 8U;
    t18 = (t5 + 4U);
    *((double *)t18) = t2;
    t19 = (t5 + 12U);
    *((double *)t19) = t3;
    t21 = (t2 == 0.00000000000000000);
    if (t21 == 1)
        goto LAB5;

LAB6:    t20 = (unsigned char)0;

LAB7:    if (t20 != 0)
        goto LAB2;

LAB4:
LAB3:    t20 = (t2 == 0.00000000000000000);
    if (t20 != 0)
        goto LAB11;

LAB13:
LAB12:    t20 = (t3 == 0.00000000000000000);
    if (t20 != 0)
        goto LAB19;

LAB21:
LAB20:    t25 = (t2 / t3);
    t26 = (t25>=0?t25: -t25);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t7 = (t8 + 0);
    *((double *)t7) = t26;
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t25 = *((double *)t8);
    t26 = ieee_p_3972351953_sub_1487517033_2984157535(t1, t25);
    t7 = (t12 + 56U);
    t10 = *((char **)t7);
    t7 = (t10 + 0);
    *((double *)t7) = t26;
    t20 = (t3 < 0.00000000000000000);
    if (t20 != 0)
        goto LAB27;

LAB29:
LAB28:    t20 = (t2 < 0.00000000000000000);
    if (t20 != 0)
        goto LAB30;

LAB32:
LAB31:    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t25 = *((double *)t8);
    t0 = t25;

LAB1:    return t0;
LAB2:    if ((unsigned char)0 == 0)
        goto LAB8;

LAB9:    t0 = 0.00000000000000000;
    goto LAB1;

LAB5:    t22 = (t3 == 0.00000000000000000);
    t20 = t22;
    goto LAB7;

LAB8:    t23 = (t1 + 11185);
    xsi_report(t23, 32U, (unsigned char)2);
    goto LAB9;

LAB10:    goto LAB3;

LAB11:    t21 = (t3 > 0.00000000000000000);
    if (t21 != 0)
        goto LAB14;

LAB16:    t7 = (t1 + 1408U);
    t8 = *((char **)t7);
    t25 = *((double *)t8);
    t0 = t25;
    goto LAB1;

LAB14:    t0 = 0.00000000000000000;
    goto LAB1;

LAB15:    goto LAB12;

LAB17:    goto LAB15;

LAB18:    goto LAB15;

LAB19:    t21 = (t2 > 0.00000000000000000);
    if (t21 != 0)
        goto LAB22;

LAB24:    t7 = (t1 + 1768U);
    t8 = *((char **)t7);
    t25 = *((double *)t8);
    t26 = (-(t25));
    t0 = t26;
    goto LAB1;

LAB22:    t7 = (t1 + 1768U);
    t8 = *((char **)t7);
    t25 = *((double *)t8);
    t0 = t25;
    goto LAB1;

LAB23:    goto LAB20;

LAB25:    goto LAB23;

LAB26:    goto LAB23;

LAB27:    t7 = (t1 + 1408U);
    t8 = *((char **)t7);
    t25 = *((double *)t8);
    t7 = (t12 + 56U);
    t10 = *((char **)t7);
    t26 = *((double *)t10);
    t27 = (t25 - t26);
    t7 = (t12 + 56U);
    t11 = *((char **)t7);
    t7 = (t11 + 0);
    *((double *)t7) = t27;
    goto LAB28;

LAB30:    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t25 = *((double *)t8);
    t26 = (-(t25));
    t7 = (t12 + 56U);
    t10 = *((char **)t7);
    t7 = (t10 + 0);
    *((double *)t7) = t26;
    goto LAB31;

LAB33:;
}

double ieee_p_3972351953_sub_1792801001_2984157535(char *t1, double t2)
{
    char t3[488];
    char t4[16];
    char t9[8];
    char t16[8];
    char t22[8];
    char t28[8];
    double t0;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    double t12;
    char *t13;
    char *t14;
    char *t15;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    double t34;
    unsigned char t35;
    double t36;
    double t37;
    double t38;

LAB0:    t5 = (t2 < 0.00000000000000000);
    t6 = (t3 + 4U);
    t7 = ((STD_STANDARD) + 0);
    t8 = (t6 + 88U);
    *((char **)t8) = t7;
    t10 = (t6 + 56U);
    *((char **)t10) = t9;
    *((unsigned char *)t9) = t5;
    t11 = (t6 + 80U);
    *((unsigned int *)t11) = 1U;
    t12 = (t2>=0?t2: -t2);
    t13 = (t3 + 124U);
    t14 = ((STD_STANDARD) + 472);
    t15 = (t13 + 88U);
    *((char **)t15) = t14;
    t17 = (t13 + 56U);
    *((char **)t17) = t16;
    *((double *)t16) = t12;
    t18 = (t13 + 80U);
    *((unsigned int *)t18) = 8U;
    t19 = (t3 + 244U);
    t20 = ((STD_STANDARD) + 472);
    t21 = (t19 + 88U);
    *((char **)t21) = t20;
    t23 = (t19 + 56U);
    *((char **)t23) = t22;
    xsi_type_set_default_value(t20, t22, 0);
    t24 = (t19 + 80U);
    *((unsigned int *)t24) = 8U;
    t25 = (t3 + 364U);
    t26 = ((STD_STANDARD) + 472);
    t27 = (t25 + 88U);
    *((char **)t27) = t26;
    t29 = (t25 + 56U);
    *((char **)t29) = t28;
    xsi_type_set_default_value(t26, t28, 0);
    t30 = (t25 + 80U);
    *((unsigned int *)t30) = 8U;
    t31 = (t4 + 4U);
    *((double *)t31) = t2;
    t32 = (t13 + 56U);
    t33 = *((char **)t32);
    t34 = *((double *)t33);
    t35 = (t34 == 0.00000000000000000);
    if (t35 != 0)
        goto LAB2;

LAB4:
LAB3:    t7 = (t13 + 56U);
    t8 = *((char **)t7);
    t12 = *((double *)t8);
    t34 = ieee_p_3972351953_sub_785569749_2984157535(t1, t12);
    t7 = (t19 + 56U);
    t10 = *((char **)t7);
    t7 = (t10 + 0);
    *((double *)t7) = t34;
    t7 = (t19 + 56U);
    t8 = *((char **)t7);
    t12 = *((double *)t8);
    t7 = (t19 + 56U);
    t10 = *((char **)t7);
    t34 = *((double *)t10);
    t36 = (1.0000000000000000 / t34);
    t37 = (t12 - t36);
    t38 = (t37 * 0.50000000000000000);
    t7 = (t25 + 56U);
    t11 = *((char **)t7);
    t7 = (t11 + 0);
    *((double *)t7) = t38;
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t5 = *((unsigned char *)t8);
    if (t5 != 0)
        goto LAB6;

LAB8:
LAB7:    t7 = (t25 + 56U);
    t8 = *((char **)t7);
    t12 = *((double *)t8);
    t0 = t12;

LAB1:    return t0;
LAB2:    t0 = 0.00000000000000000;
    goto LAB1;

LAB5:    goto LAB3;

LAB6:    t7 = (t25 + 56U);
    t10 = *((char **)t7);
    t12 = *((double *)t10);
    t34 = (-(t12));
    t7 = (t25 + 56U);
    t11 = *((char **)t7);
    t7 = (t11 + 0);
    *((double *)t7) = t34;
    goto LAB7;

LAB9:;
}

double ieee_p_3972351953_sub_160431096_2984157535(char *t1, double t2)
{
    char t3[368];
    char t4[16];
    char t9[8];
    char t15[8];
    char t21[8];
    double t0;
    double t5;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    double t27;
    unsigned char t28;
    double t29;
    double t30;
    double t31;

LAB0:    t5 = (t2>=0?t2: -t2);
    t6 = (t3 + 4U);
    t7 = ((STD_STANDARD) + 472);
    t8 = (t6 + 88U);
    *((char **)t8) = t7;
    t10 = (t6 + 56U);
    *((char **)t10) = t9;
    *((double *)t9) = t5;
    t11 = (t6 + 80U);
    *((unsigned int *)t11) = 8U;
    t12 = (t3 + 124U);
    t13 = ((STD_STANDARD) + 472);
    t14 = (t12 + 88U);
    *((char **)t14) = t13;
    t16 = (t12 + 56U);
    *((char **)t16) = t15;
    xsi_type_set_default_value(t13, t15, 0);
    t17 = (t12 + 80U);
    *((unsigned int *)t17) = 8U;
    t18 = (t3 + 244U);
    t19 = ((STD_STANDARD) + 472);
    t20 = (t18 + 88U);
    *((char **)t20) = t19;
    t22 = (t18 + 56U);
    *((char **)t22) = t21;
    xsi_type_set_default_value(t19, t21, 0);
    t23 = (t18 + 80U);
    *((unsigned int *)t23) = 8U;
    t24 = (t4 + 4U);
    *((double *)t24) = t2;
    t25 = (t6 + 56U);
    t26 = *((char **)t25);
    t27 = *((double *)t26);
    t28 = (t27 == 0.00000000000000000);
    if (t28 != 0)
        goto LAB2;

LAB4:
LAB3:    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t5 = *((double *)t8);
    t27 = ieee_p_3972351953_sub_785569749_2984157535(t1, t5);
    t7 = (t12 + 56U);
    t10 = *((char **)t7);
    t7 = (t10 + 0);
    *((double *)t7) = t27;
    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t5 = *((double *)t8);
    t7 = (t12 + 56U);
    t10 = *((char **)t7);
    t27 = *((double *)t10);
    t29 = (1.0000000000000000 / t27);
    t30 = (t5 + t29);
    t31 = (t30 * 0.50000000000000000);
    t7 = (t18 + 56U);
    t11 = *((char **)t7);
    t7 = (t11 + 0);
    *((double *)t7) = t31;
    t7 = (t18 + 56U);
    t8 = *((char **)t7);
    t5 = *((double *)t8);
    t0 = t5;

LAB1:    return t0;
LAB2:    t0 = 1.0000000000000000;
    goto LAB1;

LAB5:    goto LAB3;

LAB6:;
}

double ieee_p_3972351953_sub_1822449026_2984157535(char *t1, double t2)
{
    char t3[488];
    char t4[16];
    char t9[8];
    char t16[8];
    char t22[8];
    char t28[8];
    double t0;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    double t12;
    char *t13;
    char *t14;
    char *t15;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    double t34;
    unsigned char t35;
    double t36;
    double t37;
    double t38;
    double t39;
    double t40;
    double t41;
    double t42;

LAB0:    t5 = (t2 < 0.00000000000000000);
    t6 = (t3 + 4U);
    t7 = ((STD_STANDARD) + 0);
    t8 = (t6 + 88U);
    *((char **)t8) = t7;
    t10 = (t6 + 56U);
    *((char **)t10) = t9;
    *((unsigned char *)t9) = t5;
    t11 = (t6 + 80U);
    *((unsigned int *)t11) = 1U;
    t12 = (t2>=0?t2: -t2);
    t13 = (t3 + 124U);
    t14 = ((STD_STANDARD) + 472);
    t15 = (t13 + 88U);
    *((char **)t15) = t14;
    t17 = (t13 + 56U);
    *((char **)t17) = t16;
    *((double *)t16) = t12;
    t18 = (t13 + 80U);
    *((unsigned int *)t18) = 8U;
    t19 = (t3 + 244U);
    t20 = ((STD_STANDARD) + 472);
    t21 = (t19 + 88U);
    *((char **)t21) = t20;
    t23 = (t19 + 56U);
    *((char **)t23) = t22;
    xsi_type_set_default_value(t20, t22, 0);
    t24 = (t19 + 80U);
    *((unsigned int *)t24) = 8U;
    t25 = (t3 + 364U);
    t26 = ((STD_STANDARD) + 472);
    t27 = (t25 + 88U);
    *((char **)t27) = t26;
    t29 = (t25 + 56U);
    *((char **)t29) = t28;
    xsi_type_set_default_value(t26, t28, 0);
    t30 = (t25 + 80U);
    *((unsigned int *)t30) = 8U;
    t31 = (t4 + 4U);
    *((double *)t31) = t2;
    t32 = (t13 + 56U);
    t33 = *((char **)t32);
    t34 = *((double *)t33);
    t35 = (t34 == 0.00000000000000000);
    if (t35 != 0)
        goto LAB2;

LAB4:
LAB3:    t7 = (t13 + 56U);
    t8 = *((char **)t7);
    t12 = *((double *)t8);
    t34 = ieee_p_3972351953_sub_785569749_2984157535(t1, t12);
    t7 = (t19 + 56U);
    t10 = *((char **)t7);
    t7 = (t10 + 0);
    *((double *)t7) = t34;
    t7 = (t19 + 56U);
    t8 = *((char **)t7);
    t12 = *((double *)t8);
    t7 = (t19 + 56U);
    t10 = *((char **)t7);
    t34 = *((double *)t10);
    t36 = (1.0000000000000000 / t34);
    t37 = (t12 - t36);
    t7 = (t19 + 56U);
    t11 = *((char **)t7);
    t38 = *((double *)t11);
    t7 = (t19 + 56U);
    t14 = *((char **)t7);
    t39 = *((double *)t14);
    t40 = (1.0000000000000000 / t39);
    t41 = (t38 + t40);
    t42 = (t37 / t41);
    t7 = (t25 + 56U);
    t15 = *((char **)t7);
    t7 = (t15 + 0);
    *((double *)t7) = t42;
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t5 = *((unsigned char *)t8);
    if (t5 != 0)
        goto LAB6;

LAB8:    t7 = (t25 + 56U);
    t8 = *((char **)t7);
    t12 = *((double *)t8);
    t0 = t12;

LAB1:    return t0;
LAB2:    t0 = 0.00000000000000000;
    goto LAB1;

LAB5:    goto LAB3;

LAB6:    t7 = (t25 + 56U);
    t10 = *((char **)t7);
    t12 = *((double *)t10);
    t34 = (-(t12));
    t0 = t34;
    goto LAB1;

LAB7:    xsi_error(ng11);
    t0 = 0;
    goto LAB1;

LAB9:    goto LAB7;

LAB10:    goto LAB7;

}

double ieee_p_3972351953_sub_921458122_2984157535(char *t1, double t2)
{
    char t4[16];
    double t0;
    char *t5;
    unsigned char t6;
    double t7;
    double t8;
    double t9;
    double t10;
    double t11;

LAB0:    t5 = (t4 + 4U);
    *((double *)t5) = t2;
    t6 = (t2 == 0.00000000000000000);
    if (t6 != 0)
        goto LAB2;

LAB4:
LAB3:    t7 = (t2 * t2);
    t8 = (t7 + 1.0000000000000000);
    t9 = ieee_p_3972351953_sub_1722501855_2984157535(t1, t8);
    t10 = (t2 + t9);
    t11 = ieee_p_3972351953_sub_1543758017_2984157535(t1, t10);
    t0 = t11;

LAB1:    return t0;
LAB2:    t0 = 0.00000000000000000;
    goto LAB1;

LAB5:    goto LAB3;

LAB6:;
}

double ieee_p_3972351953_sub_302587045_2984157535(char *t1, double t2)
{
    char t4[16];
    double t0;
    char *t5;
    unsigned char t6;
    char *t7;
    double t9;
    double t10;
    double t11;
    double t12;
    double t13;

LAB0:    t5 = (t4 + 4U);
    *((double *)t5) = t2;
    t6 = (t2 < 1.0000000000000000);
    if (t6 != 0)
        goto LAB2;

LAB4:
LAB3:    t6 = (t2 == 1.0000000000000000);
    if (t6 != 0)
        goto LAB8;

LAB10:
LAB9:    t9 = (t2 * t2);
    t10 = (t9 - 1.0000000000000000);
    t11 = ieee_p_3972351953_sub_1722501855_2984157535(t1, t10);
    t12 = (t2 + t11);
    t13 = ieee_p_3972351953_sub_1543758017_2984157535(t1, t12);
    t0 = t13;

LAB1:    return t0;
LAB2:    if ((unsigned char)0 == 0)
        goto LAB5;

LAB6:    t0 = t2;
    goto LAB1;

LAB5:    t7 = (t1 + 11217);
    xsi_report(t7, 21U, (unsigned char)2);
    goto LAB6;

LAB7:    goto LAB3;

LAB8:    t0 = 0.00000000000000000;
    goto LAB1;

LAB11:    goto LAB9;

LAB12:;
}

double ieee_p_3972351953_sub_951106147_2984157535(char *t1, double t2)
{
    char t4[16];
    double t0;
    char *t5;
    double t6;
    unsigned char t7;
    char *t8;
    double t10;
    double t11;
    double t12;
    double t13;

LAB0:    t5 = (t4 + 4U);
    *((double *)t5) = t2;
    t6 = (t2>=0?t2: -t2);
    t7 = (t6 >= 1.0000000000000000);
    if (t7 != 0)
        goto LAB2;

LAB4:
LAB3:    t7 = (t2 == 0.00000000000000000);
    if (t7 != 0)
        goto LAB8;

LAB10:
LAB9:    t6 = (1.0000000000000000 + t2);
    t10 = (1.0000000000000000 - t2);
    t11 = (t6 / t10);
    t12 = ieee_p_3972351953_sub_1543758017_2984157535(t1, t11);
    t13 = (0.50000000000000000 * t12);
    t0 = t13;

LAB1:    return t0;
LAB2:    if ((unsigned char)0 == 0)
        goto LAB5;

LAB6:    t0 = t2;
    goto LAB1;

LAB5:    t8 = (t1 + 11238);
    xsi_report(t8, 27U, (unsigned char)2);
    goto LAB6;

LAB7:    goto LAB3;

LAB8:    t0 = 0.00000000000000000;
    goto LAB1;

LAB11:    goto LAB9;

LAB12:;
}


extern void ieee_p_3972351953_init()
{
	static char *se[] = {(void *)ieee_p_3972351953_sub_597906855_2984157535,(void *)ieee_p_3972351953_sub_2938191189_2984157535,(void *)ieee_p_3972351953_sub_795735699_2984157535,(void *)ieee_p_3972351953_sub_1147618771_2984157535,(void *)ieee_p_3972351953_sub_28498392_2984157535,(void *)ieee_p_3972351953_sub_1782959306_2984157535,(void *)ieee_p_3972351953_sub_188333038_2984157535,(void *)ieee_p_3972351953_sub_1635143497_2984157535,(void *)ieee_p_3972351953_sub_2013354414_2984157535,(void *)ieee_p_3972351953_sub_2013631020_2984157535,(void *)ieee_p_3972351953_sub_3007962107_2984157535,(void *)ieee_p_3972351953_sub_1722501855_2984157535,(void *)ieee_p_3972351953_sub_906367133_2984157535,(void *)ieee_p_3972351953_sub_2171244304_2984157535,(void *)ieee_p_3972351953_sub_2618671228_2984157535,(void *)ieee_p_3972351953_sub_785569749_2984157535,(void *)ieee_p_3972351953_sub_1422932443_2984157535,(void *)ieee_p_3972351953_sub_3025794763_2984157535,(void *)ieee_p_3972351953_sub_1543758017_2984157535,(void *)ieee_p_3972351953_sub_528838134_2984157535,(void *)ieee_p_3972351953_sub_2605234405_2984157535,(void *)ieee_p_3972351953_sub_1341592424_2984157535,(void *)ieee_p_3972351953_sub_1485185913_2984157535,(void *)ieee_p_3972351953_sub_773523744_2984157535,(void *)ieee_p_3972351953_sub_1125417762_2984157535,(void *)ieee_p_3972351953_sub_1898361299_2984157535,(void *)ieee_p_3972351953_sub_1879607630_2984157535,(void *)ieee_p_3972351953_sub_1487517033_2984157535,(void *)ieee_p_3972351953_sub_1311584390_2984157535,(void *)ieee_p_3972351953_sub_1792801001_2984157535,(void *)ieee_p_3972351953_sub_160431096_2984157535,(void *)ieee_p_3972351953_sub_1822449026_2984157535,(void *)ieee_p_3972351953_sub_921458122_2984157535,(void *)ieee_p_3972351953_sub_302587045_2984157535,(void *)ieee_p_3972351953_sub_951106147_2984157535};
	xsi_register_didat("ieee_p_3972351953", "isim/precompiled.exe.sim/ieee/p_3972351953.didat");
	xsi_register_subprogram_executes(se);
}
