/* $Id: */
/******************************************************************************
*
* (c) Copyright 2009 - 2010 Xilinx, Inc. All rights reserved.
*
* This file contains confidential and proprietary information
* of Xilinx, Inc. and is protected under U.S. and
* international copyright and other intellectual property
* laws.
*
* DISCLAIMER
* This disclaimer is not a license and does not grant any
* rights to the materials distributed herewith. Except as
* otherwise provided in a valid license issued to you by
* Xilinx, and to the maximum extent permitted by applicable
* law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
* WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
* AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
* BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
* INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
* (2) Xilinx shall not be liable (whether in contract or tort,
* including negligence, or under any other theory of
* liability) for any loss or damage of any kind or nature
* related to, arising under or in connection with these
* materials, including for any direct, or any indirect,
* special, incidental, or consequential loss or damage
* (including loss of data, profits, goodwill, or any type of
* loss or damage suffered as a result of any action brought
* by a third party) even if such damage or loss was
* reasonably foreseeable or Xilinx had been advised of the
* possibility of the same.
*
* CRITICAL APPLICATIONS
* Xilinx products are not designed or intended to be fail-
* safe, or for use in any application requiring fail-safe
* performance, such as life-support or safety devices or
* systems, Class III medical devices, nuclear facilities,
* applications related to the deployment of airbags, or any
* other applications that could lead to death, personal
* injury, or severe property or environmental damage
* (individually and collectively, "Critical
* Applications"). Customer assumes the sole risk and
* liability of any use of Xilinx products in Critical
* Applications, subject only to applicable laws and
* regulations governing limitations on product liability.
*
* THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
* PART OF THIS FILE AT ALL TIMES.
*
******************************************************************************/
/*****************************************************************************/
/**
*
* @file xosd_g.c
*
* This file contains a template for configuration table of Xilinx MVI Video
* On-Screen-Display (OSD) devices. For a real hardware system, Xilinx Platform
* Studio (XPS) will automatically generate a real configuration table to match
* the configuration of the OSD devices.
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who  Date     Changes
* ----- ---- -------- -------------------------------------------------------
* 1.00a xd   08/18/08 First release
* </pre>
*
******************************************************************************/


/***************************** Include Files *********************************/


#include "xparameters.h"
#include "xosd.h"

/**
 * The configuration table for On-Screen-Display devices
 */
XOSD_Config XOSD_ConfigTable[] =
{
	{
		XPAR_OSD_0_DEVICE_ID,
		XPAR_OSD_0_BASEADDR,
		XPAR_OSD_0_NUM_LAYERS,

		XPAR_OSD_0_LAYER0_TYPE,
		XPAR_OSD_0_LAYER1_TYPE,
		XPAR_OSD_0_LAYER2_TYPE,
		XPAR_OSD_0_LAYER3_TYPE,
		XPAR_OSD_0_LAYER4_TYPE,
		XPAR_OSD_0_LAYER5_TYPE,
		XPAR_OSD_0_LAYER6_TYPE,
		XPAR_OSD_0_LAYER7_TYPE,

		XPAR_OSD_0_LAYER0_IMEM_SIZE,
		XPAR_OSD_0_LAYER0_INS_BOX_EN,
		XPAR_OSD_0_LAYER0_INS_LINE_EN,
		XPAR_OSD_0_LAYER0_INS_TEXT_EN,
		XPAR_OSD_0_LAYER0_CLUT_SIZE,
		XPAR_OSD_0_LAYER0_CLUT_MEMTYPE,
		XPAR_OSD_0_LAYER0_FONT_NUM_CHARS,
		XPAR_OSD_0_LAYER0_FONT_WIDTH,
		XPAR_OSD_0_LAYER0_FONT_HEIGHT,
		XPAR_OSD_0_LAYER0_FONT_BPP,
		XPAR_OSD_0_LAYER0_FONT_ASCII_OFFSET,
		XPAR_OSD_0_LAYER0_TEXT_NUM_STRINGS,
      		  XPAR_OSD_0_LAYER0_TEXT_MAX_STRING_LENGTH,

		XPAR_OSD_0_LAYER1_IMEM_SIZE,
		XPAR_OSD_0_LAYER1_INS_BOX_EN,
		XPAR_OSD_0_LAYER1_INS_LINE_EN,
		XPAR_OSD_0_LAYER1_INS_TEXT_EN,
		XPAR_OSD_0_LAYER1_CLUT_SIZE,
		XPAR_OSD_0_LAYER1_CLUT_MEMTYPE,
		XPAR_OSD_0_LAYER1_FONT_NUM_CHARS,
		XPAR_OSD_0_LAYER1_FONT_WIDTH,
		XPAR_OSD_0_LAYER1_FONT_HEIGHT,
		XPAR_OSD_0_LAYER1_FONT_BPP,
		XPAR_OSD_0_LAYER1_FONT_ASCII_OFFSET,
		XPAR_OSD_0_LAYER1_TEXT_NUM_STRINGS,
		XPAR_OSD_0_LAYER1_TEXT_MAX_STRING_LENGTH,

		XPAR_OSD_0_LAYER2_IMEM_SIZE,
		XPAR_OSD_0_LAYER2_INS_BOX_EN,
		XPAR_OSD_0_LAYER2_INS_LINE_EN,
		XPAR_OSD_0_LAYER2_INS_TEXT_EN,
		XPAR_OSD_0_LAYER2_CLUT_SIZE,
		XPAR_OSD_0_LAYER2_CLUT_MEMTYPE,
		XPAR_OSD_0_LAYER2_FONT_NUM_CHARS,
		XPAR_OSD_0_LAYER2_FONT_WIDTH,
		XPAR_OSD_0_LAYER2_FONT_HEIGHT,
		XPAR_OSD_0_LAYER2_FONT_BPP,
		XPAR_OSD_0_LAYER2_FONT_ASCII_OFFSET,
		XPAR_OSD_0_LAYER2_TEXT_NUM_STRINGS,
		XPAR_OSD_0_LAYER2_TEXT_MAX_STRING_LENGTH,

		XPAR_OSD_0_LAYER3_IMEM_SIZE,
		XPAR_OSD_0_LAYER3_INS_BOX_EN,
		XPAR_OSD_0_LAYER3_INS_LINE_EN,
		XPAR_OSD_0_LAYER3_INS_TEXT_EN,
		XPAR_OSD_0_LAYER3_CLUT_SIZE,
		XPAR_OSD_0_LAYER3_CLUT_MEMTYPE,
		XPAR_OSD_0_LAYER3_FONT_NUM_CHARS,
		XPAR_OSD_0_LAYER3_FONT_WIDTH,
		XPAR_OSD_0_LAYER3_FONT_HEIGHT,
		XPAR_OSD_0_LAYER3_FONT_BPP,
		XPAR_OSD_0_LAYER3_FONT_ASCII_OFFSET,
		XPAR_OSD_0_LAYER3_TEXT_NUM_STRINGS,
		XPAR_OSD_0_LAYER3_TEXT_MAX_STRING_LENGTH,

		XPAR_OSD_0_LAYER4_IMEM_SIZE,
		XPAR_OSD_0_LAYER4_INS_BOX_EN,
		XPAR_OSD_0_LAYER4_INS_LINE_EN,
		XPAR_OSD_0_LAYER4_INS_TEXT_EN,
		XPAR_OSD_0_LAYER4_CLUT_SIZE,
		XPAR_OSD_0_LAYER4_CLUT_MEMTYPE,
		XPAR_OSD_0_LAYER4_FONT_NUM_CHARS,
		XPAR_OSD_0_LAYER4_FONT_WIDTH,
		XPAR_OSD_0_LAYER4_FONT_HEIGHT,
		XPAR_OSD_0_LAYER4_FONT_BPP,
		XPAR_OSD_0_LAYER4_FONT_ASCII_OFFSET,
		XPAR_OSD_0_LAYER4_TEXT_NUM_STRINGS,
		XPAR_OSD_0_LAYER4_TEXT_MAX_STRING_LENGTH,

		XPAR_OSD_0_LAYER5_IMEM_SIZE,
		XPAR_OSD_0_LAYER5_INS_BOX_EN,
		XPAR_OSD_0_LAYER5_INS_LINE_EN,
		XPAR_OSD_0_LAYER5_INS_TEXT_EN,
		XPAR_OSD_0_LAYER5_CLUT_SIZE,
		XPAR_OSD_0_LAYER5_CLUT_MEMTYPE,
		XPAR_OSD_0_LAYER5_FONT_NUM_CHARS,
		XPAR_OSD_0_LAYER5_FONT_WIDTH,
		XPAR_OSD_0_LAYER5_FONT_HEIGHT,
		XPAR_OSD_0_LAYER5_FONT_BPP,
		XPAR_OSD_0_LAYER5_FONT_ASCII_OFFSET,
		XPAR_OSD_0_LAYER5_TEXT_NUM_STRINGS,
		XPAR_OSD_0_LAYER5_TEXT_MAX_STRING_LENGTH,

		XPAR_OSD_0_LAYER6_IMEM_SIZE,
		XPAR_OSD_0_LAYER6_INS_BOX_EN,
		XPAR_OSD_0_LAYER6_INS_LINE_EN,
		XPAR_OSD_0_LAYER6_INS_TEXT_EN,
		XPAR_OSD_0_LAYER6_CLUT_SIZE,
		XPAR_OSD_0_LAYER6_CLUT_MEMTYPE,
		XPAR_OSD_0_LAYER6_FONT_NUM_CHARS,
		XPAR_OSD_0_LAYER6_FONT_WIDTH,
		XPAR_OSD_0_LAYER6_FONT_HEIGHT,
		XPAR_OSD_0_LAYER6_FONT_BPP,
		XPAR_OSD_0_LAYER6_FONT_ASCII_OFFSET,
		XPAR_OSD_0_LAYER6_TEXT_NUM_STRINGS,
		XPAR_OSD_0_LAYER6_TEXT_MAX_STRING_LENGTH,

		XPAR_OSD_0_LAYER7_IMEM_SIZE,
		XPAR_OSD_0_LAYER7_INS_BOX_EN,
		XPAR_OSD_0_LAYER7_INS_LINE_EN,
		XPAR_OSD_0_LAYER7_INS_TEXT_EN,
		XPAR_OSD_0_LAYER7_CLUT_SIZE,
		XPAR_OSD_0_LAYER7_CLUT_MEMTYPE,
		XPAR_OSD_0_LAYER7_FONT_NUM_CHARS,
		XPAR_OSD_0_LAYER7_FONT_WIDTH,
		XPAR_OSD_0_LAYER7_FONT_HEIGHT,
		XPAR_OSD_0_LAYER7_FONT_BPP,
		XPAR_OSD_0_LAYER7_FONT_ASCII_OFFSET,
		XPAR_OSD_0_LAYER7_TEXT_NUM_STRINGS,
		XPAR_OSD_0_LAYER7_TEXT_MAX_STRING_LENGTH
	}
};
