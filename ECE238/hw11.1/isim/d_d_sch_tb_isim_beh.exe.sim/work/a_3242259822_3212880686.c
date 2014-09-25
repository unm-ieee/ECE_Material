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
static const char *ng0 = "C:/Users/Ryan/Desktop/School/ECE238L/hw11.1/CXZVXZ.vhd";



static void work_a_3242259822_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    t1 = (t0 + 2352U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

}


extern void work_a_3242259822_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3242259822_3212880686_p_0};
	xsi_register_didat("work_a_3242259822_3212880686", "isim/d_d_sch_tb_isim_beh.exe.sim/work/a_3242259822_3212880686.didat");
	xsi_register_executes(pe);
}
