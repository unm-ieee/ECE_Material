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
static const char *ng0 = "C:/Users/sseppala/Desktop/MIPS_CPU_IMPLEMENTED/One_Bit.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_2115884226_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_2507238156_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );


static void work_a_0578461483_3760189924_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t4;
    unsigned int t5;
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
    char *t18;

LAB0:    xsi_set_current_line(30, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 10700);
    t4 = 1;
    if (4U == 4U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB3;

LAB4:
LAB11:    t13 = (t0 + 7104);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t13);

LAB2:    t18 = (t0 + 6896);
    *((int *)t18) = 1;

LAB1:    return;
LAB3:    t8 = (t0 + 7104);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t8);
    goto LAB2;

LAB5:    t5 = 0;

LAB8:    if (t5 < 4U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB12:    goto LAB2;

}

static void work_a_0578461483_3760189924_p_1(char *t0)
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
    unsigned char t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    unsigned char t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    unsigned char t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    unsigned char t40;
    unsigned int t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    unsigned char t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    unsigned char t54;
    unsigned int t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    unsigned char t60;
    char *t61;
    char *t62;
    char *t63;
    char *t64;
    char *t65;
    char *t66;
    unsigned char t68;
    unsigned int t69;
    char *t70;
    char *t71;
    char *t72;
    char *t73;
    unsigned char t74;
    char *t75;
    char *t76;
    char *t77;
    char *t78;
    char *t79;
    char *t80;
    unsigned char t82;
    unsigned int t83;
    char *t84;
    char *t85;
    char *t86;
    char *t87;
    unsigned char t88;
    char *t89;
    char *t90;
    char *t91;
    char *t92;
    char *t93;
    char *t94;
    unsigned char t96;
    unsigned int t97;
    char *t98;
    char *t99;
    char *t100;
    char *t101;
    unsigned char t102;
    char *t103;
    char *t104;
    char *t105;
    char *t106;
    char *t107;
    char *t108;
    unsigned char t110;
    unsigned int t111;
    char *t112;
    char *t113;
    char *t114;
    char *t115;
    char *t116;
    char *t117;
    char *t118;
    char *t119;

LAB0:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB3;

LAB4:    t9 = (t0 + 1512U);
    t10 = *((char **)t9);
    t9 = (t0 + 10704);
    t12 = 1;
    if (4U == 4U)
        goto LAB7;

LAB8:    t12 = 0;

LAB9:    if (t12 != 0)
        goto LAB5;

LAB6:    t23 = (t0 + 1512U);
    t24 = *((char **)t23);
    t23 = (t0 + 10708);
    t26 = 1;
    if (4U == 4U)
        goto LAB15;

LAB16:    t26 = 0;

LAB17:    if (t26 != 0)
        goto LAB13;

LAB14:    t37 = (t0 + 1512U);
    t38 = *((char **)t37);
    t37 = (t0 + 10712);
    t40 = 1;
    if (4U == 4U)
        goto LAB23;

LAB24:    t40 = 0;

LAB25:    if (t40 != 0)
        goto LAB21;

LAB22:    t51 = (t0 + 1512U);
    t52 = *((char **)t51);
    t51 = (t0 + 10716);
    t54 = 1;
    if (4U == 4U)
        goto LAB31;

LAB32:    t54 = 0;

LAB33:    if (t54 != 0)
        goto LAB29;

LAB30:    t65 = (t0 + 1512U);
    t66 = *((char **)t65);
    t65 = (t0 + 10720);
    t68 = 1;
    if (4U == 4U)
        goto LAB39;

LAB40:    t68 = 0;

LAB41:    if (t68 != 0)
        goto LAB37;

LAB38:    t79 = (t0 + 1512U);
    t80 = *((char **)t79);
    t79 = (t0 + 10724);
    t82 = 1;
    if (4U == 4U)
        goto LAB47;

LAB48:    t82 = 0;

LAB49:    if (t82 != 0)
        goto LAB45;

LAB46:    t93 = (t0 + 1512U);
    t94 = *((char **)t93);
    t93 = (t0 + 10728);
    t96 = 1;
    if (4U == 4U)
        goto LAB55;

LAB56:    t96 = 0;

LAB57:    if (t96 != 0)
        goto LAB53;

LAB54:    t107 = (t0 + 1512U);
    t108 = *((char **)t107);
    t107 = (t0 + 10732);
    t110 = 1;
    if (4U == 4U)
        goto LAB63;

LAB64:    t110 = 0;

LAB65:    if (t110 != 0)
        goto LAB61;

LAB62:
LAB2:    t119 = (t0 + 6912);
    *((int *)t119) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 7168);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB5:    t16 = (t0 + 2472U);
    t17 = *((char **)t16);
    t18 = *((unsigned char *)t17);
    t16 = (t0 + 7168);
    t19 = (t16 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    *((unsigned char *)t22) = t18;
    xsi_driver_first_trans_fast_port(t16);
    goto LAB2;

LAB7:    t13 = 0;

LAB10:    if (t13 < 4U)
        goto LAB11;
    else
        goto LAB9;

LAB11:    t14 = (t10 + t13);
    t15 = (t9 + t13);
    if (*((unsigned char *)t14) != *((unsigned char *)t15))
        goto LAB8;

LAB12:    t13 = (t13 + 1);
    goto LAB10;

LAB13:    t30 = (t0 + 2632U);
    t31 = *((char **)t30);
    t32 = *((unsigned char *)t31);
    t30 = (t0 + 7168);
    t33 = (t30 + 56U);
    t34 = *((char **)t33);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    *((unsigned char *)t36) = t32;
    xsi_driver_first_trans_fast_port(t30);
    goto LAB2;

LAB15:    t27 = 0;

LAB18:    if (t27 < 4U)
        goto LAB19;
    else
        goto LAB17;

LAB19:    t28 = (t24 + t27);
    t29 = (t23 + t27);
    if (*((unsigned char *)t28) != *((unsigned char *)t29))
        goto LAB16;

LAB20:    t27 = (t27 + 1);
    goto LAB18;

LAB21:    t44 = (t0 + 2792U);
    t45 = *((char **)t44);
    t46 = *((unsigned char *)t45);
    t44 = (t0 + 7168);
    t47 = (t44 + 56U);
    t48 = *((char **)t47);
    t49 = (t48 + 56U);
    t50 = *((char **)t49);
    *((unsigned char *)t50) = t46;
    xsi_driver_first_trans_fast_port(t44);
    goto LAB2;

LAB23:    t41 = 0;

LAB26:    if (t41 < 4U)
        goto LAB27;
    else
        goto LAB25;

LAB27:    t42 = (t38 + t41);
    t43 = (t37 + t41);
    if (*((unsigned char *)t42) != *((unsigned char *)t43))
        goto LAB24;

LAB28:    t41 = (t41 + 1);
    goto LAB26;

LAB29:    t58 = (t0 + 1352U);
    t59 = *((char **)t58);
    t60 = *((unsigned char *)t59);
    t58 = (t0 + 7168);
    t61 = (t58 + 56U);
    t62 = *((char **)t61);
    t63 = (t62 + 56U);
    t64 = *((char **)t63);
    *((unsigned char *)t64) = t60;
    xsi_driver_first_trans_fast_port(t58);
    goto LAB2;

LAB31:    t55 = 0;

LAB34:    if (t55 < 4U)
        goto LAB35;
    else
        goto LAB33;

LAB35:    t56 = (t52 + t55);
    t57 = (t51 + t55);
    if (*((unsigned char *)t56) != *((unsigned char *)t57))
        goto LAB32;

LAB36:    t55 = (t55 + 1);
    goto LAB34;

LAB37:    t72 = (t0 + 1192U);
    t73 = *((char **)t72);
    t74 = *((unsigned char *)t73);
    t72 = (t0 + 7168);
    t75 = (t72 + 56U);
    t76 = *((char **)t75);
    t77 = (t76 + 56U);
    t78 = *((char **)t77);
    *((unsigned char *)t78) = t74;
    xsi_driver_first_trans_fast_port(t72);
    goto LAB2;

LAB39:    t69 = 0;

LAB42:    if (t69 < 4U)
        goto LAB43;
    else
        goto LAB41;

LAB43:    t70 = (t66 + t69);
    t71 = (t65 + t69);
    if (*((unsigned char *)t70) != *((unsigned char *)t71))
        goto LAB40;

LAB44:    t69 = (t69 + 1);
    goto LAB42;

LAB45:    t86 = (t0 + 3112U);
    t87 = *((char **)t86);
    t88 = *((unsigned char *)t87);
    t86 = (t0 + 7168);
    t89 = (t86 + 56U);
    t90 = *((char **)t89);
    t91 = (t90 + 56U);
    t92 = *((char **)t91);
    *((unsigned char *)t92) = t88;
    xsi_driver_first_trans_fast_port(t86);
    goto LAB2;

LAB47:    t83 = 0;

LAB50:    if (t83 < 4U)
        goto LAB51;
    else
        goto LAB49;

LAB51:    t84 = (t80 + t83);
    t85 = (t79 + t83);
    if (*((unsigned char *)t84) != *((unsigned char *)t85))
        goto LAB48;

LAB52:    t83 = (t83 + 1);
    goto LAB50;

LAB53:    t100 = (t0 + 3432U);
    t101 = *((char **)t100);
    t102 = *((unsigned char *)t101);
    t100 = (t0 + 7168);
    t103 = (t100 + 56U);
    t104 = *((char **)t103);
    t105 = (t104 + 56U);
    t106 = *((char **)t105);
    *((unsigned char *)t106) = t102;
    xsi_driver_first_trans_fast_port(t100);
    goto LAB2;

LAB55:    t97 = 0;

LAB58:    if (t97 < 4U)
        goto LAB59;
    else
        goto LAB57;

LAB59:    t98 = (t94 + t97);
    t99 = (t93 + t97);
    if (*((unsigned char *)t98) != *((unsigned char *)t99))
        goto LAB56;

LAB60:    t97 = (t97 + 1);
    goto LAB58;

LAB61:    t114 = (t0 + 7168);
    t115 = (t114 + 56U);
    t116 = *((char **)t115);
    t117 = (t116 + 56U);
    t118 = *((char **)t117);
    *((unsigned char *)t118) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t114);
    goto LAB2;

LAB63:    t111 = 0;

LAB66:    if (t111 < 4U)
        goto LAB67;
    else
        goto LAB65;

LAB67:    t112 = (t108 + t111);
    t113 = (t107 + t111);
    if (*((unsigned char *)t112) != *((unsigned char *)t113))
        goto LAB64;

LAB68:    t111 = (t111 + 1);
    goto LAB66;

}

static void work_a_0578461483_3760189924_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    char *t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    unsigned char t15;
    char *t16;
    unsigned char t17;
    unsigned char t18;
    unsigned char t19;
    char *t20;
    unsigned char t21;
    char *t22;
    unsigned char t23;
    unsigned char t24;
    unsigned char t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    unsigned char t32;
    char *t33;
    unsigned char t34;
    unsigned char t35;
    char *t36;
    unsigned char t37;
    char *t38;
    unsigned char t39;
    unsigned char t40;
    unsigned char t41;
    char *t42;
    unsigned char t43;
    char *t44;
    unsigned char t45;
    unsigned char t46;
    unsigned char t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;

LAB0:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 10736);
    t4 = 1;
    if (4U == 4U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB3;

LAB4:
LAB11:    t30 = (t0 + 1192U);
    t31 = *((char **)t30);
    t32 = *((unsigned char *)t31);
    t30 = (t0 + 1352U);
    t33 = *((char **)t30);
    t34 = *((unsigned char *)t33);
    t35 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t32, t34);
    t30 = (t0 + 1192U);
    t36 = *((char **)t30);
    t37 = *((unsigned char *)t36);
    t30 = (t0 + 1672U);
    t38 = *((char **)t30);
    t39 = *((unsigned char *)t38);
    t40 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t37, t39);
    t41 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t35, t40);
    t30 = (t0 + 1352U);
    t42 = *((char **)t30);
    t43 = *((unsigned char *)t42);
    t30 = (t0 + 1672U);
    t44 = *((char **)t30);
    t45 = *((unsigned char *)t44);
    t46 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t43, t45);
    t47 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t41, t46);
    t30 = (t0 + 7232);
    t48 = (t30 + 56U);
    t49 = *((char **)t48);
    t50 = (t49 + 56U);
    t51 = *((char **)t50);
    *((unsigned char *)t51) = t47;
    xsi_driver_first_trans_fast_port(t30);

LAB2:    t52 = (t0 + 6928);
    *((int *)t52) = 1;

LAB1:    return;
LAB3:    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t8 = (t0 + 2952U);
    t11 = *((char **)t8);
    t12 = *((unsigned char *)t11);
    t13 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t10, t12);
    t8 = (t0 + 1192U);
    t14 = *((char **)t8);
    t15 = *((unsigned char *)t14);
    t8 = (t0 + 1672U);
    t16 = *((char **)t8);
    t17 = *((unsigned char *)t16);
    t18 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t15, t17);
    t19 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t13, t18);
    t8 = (t0 + 2952U);
    t20 = *((char **)t8);
    t21 = *((unsigned char *)t20);
    t8 = (t0 + 1672U);
    t22 = *((char **)t8);
    t23 = *((unsigned char *)t22);
    t24 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t21, t23);
    t25 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t19, t24);
    t8 = (t0 + 7232);
    t26 = (t8 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    *((unsigned char *)t29) = t25;
    xsi_driver_first_trans_fast_port(t8);
    goto LAB2;

LAB5:    t5 = 0;

LAB8:    if (t5 < 4U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB12:    goto LAB2;

}

static void work_a_0578461483_3760189924_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(46, ng0);

LAB3:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1352U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t3, t5);
    t1 = (t0 + 7296);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_fast(t1);

LAB2:    t11 = (t0 + 6944);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0578461483_3760189924_p_4(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(48, ng0);

LAB3:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1352U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t3, t5);
    t1 = (t0 + 7360);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_fast(t1);

LAB2:    t11 = (t0 + 6960);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0578461483_3760189924_p_5(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(50, ng0);

LAB3:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1352U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t3, t5);
    t1 = (t0 + 1672U);
    t7 = *((char **)t1);
    t8 = *((unsigned char *)t7);
    t9 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t6, t8);
    t1 = (t0 + 7424);
    t10 = (t1 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t9;
    xsi_driver_first_trans_fast(t1);

LAB2:    t14 = (t0 + 6976);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0578461483_3760189924_p_6(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(52, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t5 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t4, (unsigned char)3);
    t1 = (t0 + 7488);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t5;
    xsi_driver_first_trans_fast(t1);

LAB2:    t10 = (t0 + 6992);
    *((int *)t10) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0578461483_3760189924_p_7(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(54, ng0);

LAB3:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 2952U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t3, t5);
    t1 = (t0 + 1672U);
    t7 = *((char **)t1);
    t8 = *((unsigned char *)t7);
    t9 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t6, t8);
    t1 = (t0 + 7552);
    t10 = (t1 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t9;
    xsi_driver_first_trans_fast(t1);

LAB2:    t14 = (t0 + 7008);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0578461483_3760189924_p_8(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(56, ng0);

LAB3:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1352U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_2115884226_503743352(IEEE_P_2592010699, t3, t5);
    t1 = (t0 + 7616);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_fast(t1);

LAB2:    t11 = (t0 + 7024);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0578461483_3760189924_init()
{
	static char *pe[] = {(void *)work_a_0578461483_3760189924_p_0,(void *)work_a_0578461483_3760189924_p_1,(void *)work_a_0578461483_3760189924_p_2,(void *)work_a_0578461483_3760189924_p_3,(void *)work_a_0578461483_3760189924_p_4,(void *)work_a_0578461483_3760189924_p_5,(void *)work_a_0578461483_3760189924_p_6,(void *)work_a_0578461483_3760189924_p_7,(void *)work_a_0578461483_3760189924_p_8};
	xsi_register_didat("work_a_0578461483_3760189924", "isim/TB_MIPS_Top_isim_beh.exe.sim/work/a_0578461483_3760189924.didat");
	xsi_register_executes(pe);
}
