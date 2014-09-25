#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/ALARM_WITH_TIME.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/ALARM_WITH_TIME.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../MAIN_FUNC.S ../VECTOR_TABLE.S ../time.S ../button_check.S ../char_check.S ../time_set.S ../config.s

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/MAIN_FUNC.o ${OBJECTDIR}/_ext/1472/VECTOR_TABLE.o ${OBJECTDIR}/_ext/1472/time.o ${OBJECTDIR}/_ext/1472/button_check.o ${OBJECTDIR}/_ext/1472/char_check.o ${OBJECTDIR}/_ext/1472/time_set.o ${OBJECTDIR}/_ext/1472/config.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/MAIN_FUNC.o.d ${OBJECTDIR}/_ext/1472/VECTOR_TABLE.o.d ${OBJECTDIR}/_ext/1472/time.o.d ${OBJECTDIR}/_ext/1472/button_check.o.d ${OBJECTDIR}/_ext/1472/char_check.o.d ${OBJECTDIR}/_ext/1472/time_set.o.d ${OBJECTDIR}/_ext/1472/config.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/MAIN_FUNC.o ${OBJECTDIR}/_ext/1472/VECTOR_TABLE.o ${OBJECTDIR}/_ext/1472/time.o ${OBJECTDIR}/_ext/1472/button_check.o ${OBJECTDIR}/_ext/1472/char_check.o ${OBJECTDIR}/_ext/1472/time_set.o ${OBJECTDIR}/_ext/1472/config.o

# Source Files
SOURCEFILES=../MAIN_FUNC.S ../VECTOR_TABLE.S ../time.S ../button_check.S ../char_check.S ../time_set.S ../config.s


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
	${MAKE} ${MAKE_OPTIONS} -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/ALARM_WITH_TIME.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX460F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/config.o: ../config.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/config.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/config.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"." -o ${OBJECTDIR}/_ext/1472/config.o ../config.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/_ext/1472/config.o.d",-I"..",-I"." -gdwarf-2
else
${OBJECTDIR}/_ext/1472/config.o: ../config.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/config.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/config.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"." -o ${OBJECTDIR}/_ext/1472/config.o ../config.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/_ext/1472/config.o.d",-I"..",-I"." -gdwarf-2
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/MAIN_FUNC.o: ../MAIN_FUNC.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MAIN_FUNC.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MAIN_FUNC.o.ok ${OBJECTDIR}/_ext/1472/MAIN_FUNC.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/MAIN_FUNC.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MAIN_FUNC.o.d" "${OBJECTDIR}/_ext/1472/MAIN_FUNC.o.asm.d" -t $(SILENT)  -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"." -MMD -MF "${OBJECTDIR}/_ext/1472/MAIN_FUNC.o.d"  -o ${OBJECTDIR}/_ext/1472/MAIN_FUNC.o ../MAIN_FUNC.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1472/MAIN_FUNC.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-I"..",-I"." -gdwarf-2
	
${OBJECTDIR}/_ext/1472/VECTOR_TABLE.o: ../VECTOR_TABLE.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/VECTOR_TABLE.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/VECTOR_TABLE.o.ok ${OBJECTDIR}/_ext/1472/VECTOR_TABLE.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/VECTOR_TABLE.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/VECTOR_TABLE.o.d" "${OBJECTDIR}/_ext/1472/VECTOR_TABLE.o.asm.d" -t $(SILENT)  -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"." -MMD -MF "${OBJECTDIR}/_ext/1472/VECTOR_TABLE.o.d"  -o ${OBJECTDIR}/_ext/1472/VECTOR_TABLE.o ../VECTOR_TABLE.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1472/VECTOR_TABLE.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-I"..",-I"." -gdwarf-2
	
${OBJECTDIR}/_ext/1472/time.o: ../time.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/time.o.ok ${OBJECTDIR}/_ext/1472/time.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/time.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/time.o.d" "${OBJECTDIR}/_ext/1472/time.o.asm.d" -t $(SILENT)  -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"." -MMD -MF "${OBJECTDIR}/_ext/1472/time.o.d"  -o ${OBJECTDIR}/_ext/1472/time.o ../time.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1472/time.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-I"..",-I"." -gdwarf-2
	
${OBJECTDIR}/_ext/1472/button_check.o: ../button_check.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/button_check.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/button_check.o.ok ${OBJECTDIR}/_ext/1472/button_check.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/button_check.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/button_check.o.d" "${OBJECTDIR}/_ext/1472/button_check.o.asm.d" -t $(SILENT)  -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"." -MMD -MF "${OBJECTDIR}/_ext/1472/button_check.o.d"  -o ${OBJECTDIR}/_ext/1472/button_check.o ../button_check.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1472/button_check.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-I"..",-I"." -gdwarf-2
	
${OBJECTDIR}/_ext/1472/char_check.o: ../char_check.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/char_check.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/char_check.o.ok ${OBJECTDIR}/_ext/1472/char_check.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/char_check.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/char_check.o.d" "${OBJECTDIR}/_ext/1472/char_check.o.asm.d" -t $(SILENT)  -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"." -MMD -MF "${OBJECTDIR}/_ext/1472/char_check.o.d"  -o ${OBJECTDIR}/_ext/1472/char_check.o ../char_check.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1472/char_check.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-I"..",-I"." -gdwarf-2
	
${OBJECTDIR}/_ext/1472/time_set.o: ../time_set.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/time_set.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/time_set.o.ok ${OBJECTDIR}/_ext/1472/time_set.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/time_set.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/time_set.o.d" "${OBJECTDIR}/_ext/1472/time_set.o.asm.d" -t $(SILENT)  -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"." -MMD -MF "${OBJECTDIR}/_ext/1472/time_set.o.d"  -o ${OBJECTDIR}/_ext/1472/time_set.o ../time_set.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1472/time_set.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-I"..",-I"." -gdwarf-2
	
else
${OBJECTDIR}/_ext/1472/MAIN_FUNC.o: ../MAIN_FUNC.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MAIN_FUNC.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MAIN_FUNC.o.ok ${OBJECTDIR}/_ext/1472/MAIN_FUNC.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/MAIN_FUNC.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MAIN_FUNC.o.d" "${OBJECTDIR}/_ext/1472/MAIN_FUNC.o.asm.d" -t $(SILENT)  -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"." -MMD -MF "${OBJECTDIR}/_ext/1472/MAIN_FUNC.o.d"  -o ${OBJECTDIR}/_ext/1472/MAIN_FUNC.o ../MAIN_FUNC.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1472/MAIN_FUNC.o.asm.d",--gdwarf-2,-I"..",-I"." -gdwarf-2
	
${OBJECTDIR}/_ext/1472/VECTOR_TABLE.o: ../VECTOR_TABLE.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/VECTOR_TABLE.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/VECTOR_TABLE.o.ok ${OBJECTDIR}/_ext/1472/VECTOR_TABLE.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/VECTOR_TABLE.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/VECTOR_TABLE.o.d" "${OBJECTDIR}/_ext/1472/VECTOR_TABLE.o.asm.d" -t $(SILENT)  -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"." -MMD -MF "${OBJECTDIR}/_ext/1472/VECTOR_TABLE.o.d"  -o ${OBJECTDIR}/_ext/1472/VECTOR_TABLE.o ../VECTOR_TABLE.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1472/VECTOR_TABLE.o.asm.d",--gdwarf-2,-I"..",-I"." -gdwarf-2
	
${OBJECTDIR}/_ext/1472/time.o: ../time.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/time.o.ok ${OBJECTDIR}/_ext/1472/time.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/time.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/time.o.d" "${OBJECTDIR}/_ext/1472/time.o.asm.d" -t $(SILENT)  -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"." -MMD -MF "${OBJECTDIR}/_ext/1472/time.o.d"  -o ${OBJECTDIR}/_ext/1472/time.o ../time.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1472/time.o.asm.d",--gdwarf-2,-I"..",-I"." -gdwarf-2
	
${OBJECTDIR}/_ext/1472/button_check.o: ../button_check.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/button_check.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/button_check.o.ok ${OBJECTDIR}/_ext/1472/button_check.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/button_check.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/button_check.o.d" "${OBJECTDIR}/_ext/1472/button_check.o.asm.d" -t $(SILENT)  -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"." -MMD -MF "${OBJECTDIR}/_ext/1472/button_check.o.d"  -o ${OBJECTDIR}/_ext/1472/button_check.o ../button_check.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1472/button_check.o.asm.d",--gdwarf-2,-I"..",-I"." -gdwarf-2
	
${OBJECTDIR}/_ext/1472/char_check.o: ../char_check.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/char_check.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/char_check.o.ok ${OBJECTDIR}/_ext/1472/char_check.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/char_check.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/char_check.o.d" "${OBJECTDIR}/_ext/1472/char_check.o.asm.d" -t $(SILENT)  -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"." -MMD -MF "${OBJECTDIR}/_ext/1472/char_check.o.d"  -o ${OBJECTDIR}/_ext/1472/char_check.o ../char_check.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1472/char_check.o.asm.d",--gdwarf-2,-I"..",-I"." -gdwarf-2
	
${OBJECTDIR}/_ext/1472/time_set.o: ../time_set.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/time_set.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/time_set.o.ok ${OBJECTDIR}/_ext/1472/time_set.o.err 
	@${RM} ${OBJECTDIR}/_ext/1472/time_set.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/time_set.o.d" "${OBJECTDIR}/_ext/1472/time_set.o.asm.d" -t $(SILENT)  -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"." -MMD -MF "${OBJECTDIR}/_ext/1472/time_set.o.d"  -o ${OBJECTDIR}/_ext/1472/time_set.o ../time_set.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1472/time_set.o.asm.d",--gdwarf-2,-I"..",-I"." -gdwarf-2
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/ALARM_WITH_TIME.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/ALARM_WITH_TIME.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}       -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-L"../../../../../../../Program Files/Microchip/MPLAB C32 Suite/lib",-L"../../../../../../../Program Files/Microchip/MPLAB C32 Suite/pic32mx/lib",-L".",-Map="${DISTDIR}/ALARM_WITH_TIME.X.${IMAGE_TYPE}.map" 
else
dist/${CND_CONF}/${IMAGE_TYPE}/ALARM_WITH_TIME.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/ALARM_WITH_TIME.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}       -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),-L"../../../../../../../Program Files/Microchip/MPLAB C32 Suite/lib",-L"../../../../../../../Program Files/Microchip/MPLAB C32 Suite/pic32mx/lib",-L".",-Map="${DISTDIR}/ALARM_WITH_TIME.X.${IMAGE_TYPE}.map"
	${MP_CC_DIR}\\pic32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/ALARM_WITH_TIME.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
