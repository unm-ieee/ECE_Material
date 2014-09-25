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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_1242562249;
char *UNISIM_P_0947159679;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    unisim_p_0947159679_init();
    unisim_a_2661327437_0605893366_init();
    unisim_a_3055263662_1392679692_init();
    work_a_1807618482_3212880686_init();
    work_a_2802753317_3212880686_init();


    xsi_register_tops("work_a_2802753317_3212880686");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");

    return xsi_run_simulation(argc, argv);

}
