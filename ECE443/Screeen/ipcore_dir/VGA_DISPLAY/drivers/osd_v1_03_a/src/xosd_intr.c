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
* @file xosd_intr.c
*
* This code contains interrupt related functions of Xilinx MVI Video
* On-Screen-Display device driver. Please see xosd.h for more details of
* the driver.
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver	Who  Date     Changes
* ----- ---- -------- -------------------------------------------------------
* 1.00a xd   08/18/08 First release
* </pre>
*
******************************************************************************/

#include "xosd.h"

/*****************************************************************************/
/**
*
* This function is the interrupt handler for the On-Screen-Display driver.
*
* This handler reads the pending interrupt from the IER/ISR, determines the
* source of the interrupts, calls according callbacks, and finally clears the
* interrupts.
*
* The application is responsible for connecting this function to the interrupt
* system. Application beyond this driver is also responsible for providing
* callbacks to	handle interrupts and installing the callbacks using
* XOSD_SetCallBack() during initialization phase. An example delivered with
* this driver demonstrates how this could be done.
*
* @param   InstancePtr is a pointer to the XOSD instance that just interrupted.
* @return  None.
* @note	   None.
*
******************************************************************************/
void XOSD_IntrHandler(void *InstancePtr)
{
	u32 PendingIntr;
	u32 ErrorStatus;
	XOSD *XOSDPtr;

	XOSDPtr = (XOSD *)InstancePtr;

	/* Validate parameters */
	XASSERT_VOID(XOSDPtr != NULL);
	XASSERT_VOID(XOSDPtr->IsReady == XCOMPONENT_IS_READY);

	/* Get pending interrupts */
	PendingIntr = XOSD_IntrGetPending(XOSDPtr);

	/* Clear pending interrupts */
	XOSD_IntrClear(XOSDPtr, PendingIntr);

	/* Error interrupt is occurring or spurious interrupt */
	if ((0 == (PendingIntr & XOSD_IXR_ALLINTR_MASK)) ||
		(PendingIntr & XOSD_IXR_ALLIERR_MASK)) {

		ErrorStatus = PendingIntr & XOSD_IXR_ALLIERR_MASK;
		XOSDPtr->ErrCallBack(XOSDPtr->ErrRef, ErrorStatus);

		/* The Error CallBack should reset the device and so
		 * there is no need to handle other interrupts
		 */
		return;
	}

	/* A VBI Start has happened */
	if ((PendingIntr & XOSD_IXR_VBIS_MASK))
		XOSDPtr->VbiStartCallBack(XOSDPtr->VbiStartRef);

	/* A VBI End has happened */
	if ((PendingIntr & XOSD_IXR_VBIE_MASK))
		XOSDPtr->VbiEndCallBack(XOSDPtr->VbiEndRef);

	/* A Frame Done interrupt has happened */
	if ((PendingIntr & XOSD_IXR_FD_MASK))
		XOSDPtr->FrameDoneCallBack(XOSDPtr->FrameDoneRef);

}

/*****************************************************************************/
/**
*
* This routine installs an asynchronous callback function for the given
* HandlerType:
*
* <pre>
* HandlerType		   Callback Function Type
* -----------------------  ---------------------------
* XOSD_HANDLER_VBISTART	   XOSD_CallBack
* XOSD_HANDLER_VBIEND	   XOSD_CallBack
* XOSD_HANDLER_FRAMEDONE   XOSD_CallBack
* XOSD_HANDLER_ERROR	   XOSD_ErrCallBack
*
* HandlerType		   Invoked by this driver when:
* -----------------------  --------------------------------------------------
* XOSD_HANDLER_VBISTART	   A Vertical Blank Interval Start Interrupt happens
* XOSD_HANDLER_VBIEND	   A Vertical Blank Interval End Interrupt happens
* XOSD_HANDLER_FRAMEDONE   A Frame Done Interrupt happens
* XOSD_HANDLER_ERROR	   An error condition happens
*
* </pre>
*
* @param	InstancePtr is a pointer to the XOSD instance to be worked on.
* @param	HandlerType specifies which callback is to be attached.
* @param	CallbackFunc is the address of the callback function.
* @param	CallbackRef is a user data item that will be passed to the
*		callback function when it is invoked.
*
* @return
*  - XST_SUCCESS when handler is installed.
*  - XST_INVALID_PARAM when HandlerType is invalid.
*
* @note
* Invoking this function for a handler that already has been installed replaces
* it with the new handler.
*
******************************************************************************/
int XOSD_SetCallBack(XOSD *InstancePtr, u32 HandlerType,
			 void *CallBackFunc, void *CallBackRef)
{
	XASSERT_NONVOID(InstancePtr != NULL);
	XASSERT_NONVOID(InstancePtr->IsReady == XCOMPONENT_IS_READY);
	XASSERT_NONVOID(CallBackFunc != NULL);
	XASSERT_NONVOID(CallBackRef != NULL);

	switch (HandlerType) {
	case XOSD_HANDLER_VBISTART:
		InstancePtr->VbiStartCallBack = (XOSD_CallBack)CallBackFunc;
		InstancePtr->VbiStartRef = CallBackRef;
		break;

	case XOSD_HANDLER_VBIEND:
		InstancePtr->VbiEndCallBack = (XOSD_CallBack)CallBackFunc;
		InstancePtr->VbiEndRef = CallBackRef;
		break;

	case XOSD_HANDLER_FRAMEDONE:
		InstancePtr->FrameDoneCallBack = (XOSD_CallBack)CallBackFunc;
		InstancePtr->FrameDoneRef = CallBackRef;
		break;

	case XOSD_HANDLER_ERROR:
		InstancePtr->ErrCallBack = (XOSD_ErrorCallBack)CallBackFunc;
		InstancePtr->ErrRef = CallBackRef;
		break;

	default:
		return XST_INVALID_PARAM;

	}
	return XST_SUCCESS;
}
