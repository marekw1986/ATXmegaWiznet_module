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
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/code.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/code.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=fatfs/ff.c fatfs/ffsystem.c fatfs/ffunicode.c fatfs/sd.c fatfs/diskio.c w5100/w5100.c w5100/w5100_func.c main.c time/time.c wdt_driver.c mqtt/MQTTClient.c mqtt/MQTTConnectClient.c mqtt/MQTTConnectServer.c mqtt/MQTTDeserializePublish.c mqtt/MQTTFormat.c mqtt/MQTTPacket.c mqtt/MQTTSerializePublish.c mqtt/MQTTSubscribeClient.c mqtt/MQTTSubscribeServer.c mqtt/MQTTUnsubscribeClient.c mqtt/MQTTUnsubscribeServer.c mqtt/MQTTTimer.c mqtt/MQTTNetwork.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/fatfs/ff.o ${OBJECTDIR}/fatfs/ffsystem.o ${OBJECTDIR}/fatfs/ffunicode.o ${OBJECTDIR}/fatfs/sd.o ${OBJECTDIR}/fatfs/diskio.o ${OBJECTDIR}/w5100/w5100.o ${OBJECTDIR}/w5100/w5100_func.o ${OBJECTDIR}/main.o ${OBJECTDIR}/time/time.o ${OBJECTDIR}/wdt_driver.o ${OBJECTDIR}/mqtt/MQTTClient.o ${OBJECTDIR}/mqtt/MQTTConnectClient.o ${OBJECTDIR}/mqtt/MQTTConnectServer.o ${OBJECTDIR}/mqtt/MQTTDeserializePublish.o ${OBJECTDIR}/mqtt/MQTTFormat.o ${OBJECTDIR}/mqtt/MQTTPacket.o ${OBJECTDIR}/mqtt/MQTTSerializePublish.o ${OBJECTDIR}/mqtt/MQTTSubscribeClient.o ${OBJECTDIR}/mqtt/MQTTSubscribeServer.o ${OBJECTDIR}/mqtt/MQTTUnsubscribeClient.o ${OBJECTDIR}/mqtt/MQTTUnsubscribeServer.o ${OBJECTDIR}/mqtt/MQTTTimer.o ${OBJECTDIR}/mqtt/MQTTNetwork.o
POSSIBLE_DEPFILES=${OBJECTDIR}/fatfs/ff.o.d ${OBJECTDIR}/fatfs/ffsystem.o.d ${OBJECTDIR}/fatfs/ffunicode.o.d ${OBJECTDIR}/fatfs/sd.o.d ${OBJECTDIR}/fatfs/diskio.o.d ${OBJECTDIR}/w5100/w5100.o.d ${OBJECTDIR}/w5100/w5100_func.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/time/time.o.d ${OBJECTDIR}/wdt_driver.o.d ${OBJECTDIR}/mqtt/MQTTClient.o.d ${OBJECTDIR}/mqtt/MQTTConnectClient.o.d ${OBJECTDIR}/mqtt/MQTTConnectServer.o.d ${OBJECTDIR}/mqtt/MQTTDeserializePublish.o.d ${OBJECTDIR}/mqtt/MQTTFormat.o.d ${OBJECTDIR}/mqtt/MQTTPacket.o.d ${OBJECTDIR}/mqtt/MQTTSerializePublish.o.d ${OBJECTDIR}/mqtt/MQTTSubscribeClient.o.d ${OBJECTDIR}/mqtt/MQTTSubscribeServer.o.d ${OBJECTDIR}/mqtt/MQTTUnsubscribeClient.o.d ${OBJECTDIR}/mqtt/MQTTUnsubscribeServer.o.d ${OBJECTDIR}/mqtt/MQTTTimer.o.d ${OBJECTDIR}/mqtt/MQTTNetwork.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/fatfs/ff.o ${OBJECTDIR}/fatfs/ffsystem.o ${OBJECTDIR}/fatfs/ffunicode.o ${OBJECTDIR}/fatfs/sd.o ${OBJECTDIR}/fatfs/diskio.o ${OBJECTDIR}/w5100/w5100.o ${OBJECTDIR}/w5100/w5100_func.o ${OBJECTDIR}/main.o ${OBJECTDIR}/time/time.o ${OBJECTDIR}/wdt_driver.o ${OBJECTDIR}/mqtt/MQTTClient.o ${OBJECTDIR}/mqtt/MQTTConnectClient.o ${OBJECTDIR}/mqtt/MQTTConnectServer.o ${OBJECTDIR}/mqtt/MQTTDeserializePublish.o ${OBJECTDIR}/mqtt/MQTTFormat.o ${OBJECTDIR}/mqtt/MQTTPacket.o ${OBJECTDIR}/mqtt/MQTTSerializePublish.o ${OBJECTDIR}/mqtt/MQTTSubscribeClient.o ${OBJECTDIR}/mqtt/MQTTSubscribeServer.o ${OBJECTDIR}/mqtt/MQTTUnsubscribeClient.o ${OBJECTDIR}/mqtt/MQTTUnsubscribeServer.o ${OBJECTDIR}/mqtt/MQTTTimer.o ${OBJECTDIR}/mqtt/MQTTNetwork.o

# Source Files
SOURCEFILES=fatfs/ff.c fatfs/ffsystem.c fatfs/ffunicode.c fatfs/sd.c fatfs/diskio.c w5100/w5100.c w5100/w5100_func.c main.c time/time.c wdt_driver.c mqtt/MQTTClient.c mqtt/MQTTConnectClient.c mqtt/MQTTConnectServer.c mqtt/MQTTDeserializePublish.c mqtt/MQTTFormat.c mqtt/MQTTPacket.c mqtt/MQTTSerializePublish.c mqtt/MQTTSubscribeClient.c mqtt/MQTTSubscribeServer.c mqtt/MQTTUnsubscribeClient.c mqtt/MQTTUnsubscribeServer.c mqtt/MQTTTimer.c mqtt/MQTTNetwork.c

# Pack Options 
PACK_COMPILER_OPTIONS=-I "${DFP_DIR}/include"
PACK_COMMON_OPTIONS=-B "${DFP_DIR}/gcc/dev/atxmega128a3u"



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
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/code.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATxmega128A3U
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/fatfs/ff.o: fatfs/ff.c  .generated_files/flags/default/36c7f9fc0c33df7ef65a40129c8896cc37829089 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/fatfs" 
	@${RM} ${OBJECTDIR}/fatfs/ff.o.d 
	@${RM} ${OBJECTDIR}/fatfs/ff.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/fatfs/ff.o.d" -MT "${OBJECTDIR}/fatfs/ff.o.d" -MT ${OBJECTDIR}/fatfs/ff.o  -o ${OBJECTDIR}/fatfs/ff.o fatfs/ff.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/fatfs/ffsystem.o: fatfs/ffsystem.c  .generated_files/flags/default/ef0e44c70a6245c59d5f1cae9caefba985092970 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/fatfs" 
	@${RM} ${OBJECTDIR}/fatfs/ffsystem.o.d 
	@${RM} ${OBJECTDIR}/fatfs/ffsystem.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/fatfs/ffsystem.o.d" -MT "${OBJECTDIR}/fatfs/ffsystem.o.d" -MT ${OBJECTDIR}/fatfs/ffsystem.o  -o ${OBJECTDIR}/fatfs/ffsystem.o fatfs/ffsystem.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/fatfs/ffunicode.o: fatfs/ffunicode.c  .generated_files/flags/default/8b5eb28e8269b24d4d6e10965ebad2788e2ee16d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/fatfs" 
	@${RM} ${OBJECTDIR}/fatfs/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/fatfs/ffunicode.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/fatfs/ffunicode.o.d" -MT "${OBJECTDIR}/fatfs/ffunicode.o.d" -MT ${OBJECTDIR}/fatfs/ffunicode.o  -o ${OBJECTDIR}/fatfs/ffunicode.o fatfs/ffunicode.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/fatfs/sd.o: fatfs/sd.c  .generated_files/flags/default/6330f7fd0a3b2748d704bea7f508c0546e5c9985 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/fatfs" 
	@${RM} ${OBJECTDIR}/fatfs/sd.o.d 
	@${RM} ${OBJECTDIR}/fatfs/sd.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/fatfs/sd.o.d" -MT "${OBJECTDIR}/fatfs/sd.o.d" -MT ${OBJECTDIR}/fatfs/sd.o  -o ${OBJECTDIR}/fatfs/sd.o fatfs/sd.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/fatfs/diskio.o: fatfs/diskio.c  .generated_files/flags/default/88423c489fefdd1f8160cca42646732dfd1ebab5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/fatfs" 
	@${RM} ${OBJECTDIR}/fatfs/diskio.o.d 
	@${RM} ${OBJECTDIR}/fatfs/diskio.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/fatfs/diskio.o.d" -MT "${OBJECTDIR}/fatfs/diskio.o.d" -MT ${OBJECTDIR}/fatfs/diskio.o  -o ${OBJECTDIR}/fatfs/diskio.o fatfs/diskio.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/w5100/w5100.o: w5100/w5100.c  .generated_files/flags/default/22e3322e2d43e5fc12fad268f5a5f53eb661708b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/w5100" 
	@${RM} ${OBJECTDIR}/w5100/w5100.o.d 
	@${RM} ${OBJECTDIR}/w5100/w5100.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/w5100/w5100.o.d" -MT "${OBJECTDIR}/w5100/w5100.o.d" -MT ${OBJECTDIR}/w5100/w5100.o  -o ${OBJECTDIR}/w5100/w5100.o w5100/w5100.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/w5100/w5100_func.o: w5100/w5100_func.c  .generated_files/flags/default/543e87f3896c4ea2ec9ba910bb900bdd9822f95a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/w5100" 
	@${RM} ${OBJECTDIR}/w5100/w5100_func.o.d 
	@${RM} ${OBJECTDIR}/w5100/w5100_func.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/w5100/w5100_func.o.d" -MT "${OBJECTDIR}/w5100/w5100_func.o.d" -MT ${OBJECTDIR}/w5100/w5100_func.o  -o ${OBJECTDIR}/w5100/w5100_func.o w5100/w5100_func.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/a2f43252225fd874d97b8bfd75db799a7cb1e7f8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o  -o ${OBJECTDIR}/main.o main.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/time/time.o: time/time.c  .generated_files/flags/default/396a2c8c403d86e70cc0cb2c26fc5e5ff4fb7336 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/time" 
	@${RM} ${OBJECTDIR}/time/time.o.d 
	@${RM} ${OBJECTDIR}/time/time.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/time/time.o.d" -MT "${OBJECTDIR}/time/time.o.d" -MT ${OBJECTDIR}/time/time.o  -o ${OBJECTDIR}/time/time.o time/time.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wdt_driver.o: wdt_driver.c  .generated_files/flags/default/839a18765fa6c7b3923305636a813705c71e58fc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/wdt_driver.o.d 
	@${RM} ${OBJECTDIR}/wdt_driver.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/wdt_driver.o.d" -MT "${OBJECTDIR}/wdt_driver.o.d" -MT ${OBJECTDIR}/wdt_driver.o  -o ${OBJECTDIR}/wdt_driver.o wdt_driver.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mqtt/MQTTClient.o: mqtt/MQTTClient.c  .generated_files/flags/default/3816ec2f07e6b7f3ae96c46fe16fe6ca188bef7b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mqtt" 
	@${RM} ${OBJECTDIR}/mqtt/MQTTClient.o.d 
	@${RM} ${OBJECTDIR}/mqtt/MQTTClient.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mqtt/MQTTClient.o.d" -MT "${OBJECTDIR}/mqtt/MQTTClient.o.d" -MT ${OBJECTDIR}/mqtt/MQTTClient.o  -o ${OBJECTDIR}/mqtt/MQTTClient.o mqtt/MQTTClient.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mqtt/MQTTConnectClient.o: mqtt/MQTTConnectClient.c  .generated_files/flags/default/50f5df083ba5039d7a24911f3ff6ca9d37b746f6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mqtt" 
	@${RM} ${OBJECTDIR}/mqtt/MQTTConnectClient.o.d 
	@${RM} ${OBJECTDIR}/mqtt/MQTTConnectClient.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mqtt/MQTTConnectClient.o.d" -MT "${OBJECTDIR}/mqtt/MQTTConnectClient.o.d" -MT ${OBJECTDIR}/mqtt/MQTTConnectClient.o  -o ${OBJECTDIR}/mqtt/MQTTConnectClient.o mqtt/MQTTConnectClient.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mqtt/MQTTConnectServer.o: mqtt/MQTTConnectServer.c  .generated_files/flags/default/8917f281b32bf3bec2707064c9195b45662f4e23 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mqtt" 
	@${RM} ${OBJECTDIR}/mqtt/MQTTConnectServer.o.d 
	@${RM} ${OBJECTDIR}/mqtt/MQTTConnectServer.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mqtt/MQTTConnectServer.o.d" -MT "${OBJECTDIR}/mqtt/MQTTConnectServer.o.d" -MT ${OBJECTDIR}/mqtt/MQTTConnectServer.o  -o ${OBJECTDIR}/mqtt/MQTTConnectServer.o mqtt/MQTTConnectServer.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mqtt/MQTTDeserializePublish.o: mqtt/MQTTDeserializePublish.c  .generated_files/flags/default/437282c4c08a3b3408846418074adca3796f57a4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mqtt" 
	@${RM} ${OBJECTDIR}/mqtt/MQTTDeserializePublish.o.d 
	@${RM} ${OBJECTDIR}/mqtt/MQTTDeserializePublish.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mqtt/MQTTDeserializePublish.o.d" -MT "${OBJECTDIR}/mqtt/MQTTDeserializePublish.o.d" -MT ${OBJECTDIR}/mqtt/MQTTDeserializePublish.o  -o ${OBJECTDIR}/mqtt/MQTTDeserializePublish.o mqtt/MQTTDeserializePublish.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mqtt/MQTTFormat.o: mqtt/MQTTFormat.c  .generated_files/flags/default/52ea66aae880230e354c6db4ae68db5533e11c40 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mqtt" 
	@${RM} ${OBJECTDIR}/mqtt/MQTTFormat.o.d 
	@${RM} ${OBJECTDIR}/mqtt/MQTTFormat.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mqtt/MQTTFormat.o.d" -MT "${OBJECTDIR}/mqtt/MQTTFormat.o.d" -MT ${OBJECTDIR}/mqtt/MQTTFormat.o  -o ${OBJECTDIR}/mqtt/MQTTFormat.o mqtt/MQTTFormat.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mqtt/MQTTPacket.o: mqtt/MQTTPacket.c  .generated_files/flags/default/d70806eeda77c7d249e26b2526ed87bc6730f403 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mqtt" 
	@${RM} ${OBJECTDIR}/mqtt/MQTTPacket.o.d 
	@${RM} ${OBJECTDIR}/mqtt/MQTTPacket.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mqtt/MQTTPacket.o.d" -MT "${OBJECTDIR}/mqtt/MQTTPacket.o.d" -MT ${OBJECTDIR}/mqtt/MQTTPacket.o  -o ${OBJECTDIR}/mqtt/MQTTPacket.o mqtt/MQTTPacket.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mqtt/MQTTSerializePublish.o: mqtt/MQTTSerializePublish.c  .generated_files/flags/default/d1ad8088e20c44cc3d4105027139adc98c9640f8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mqtt" 
	@${RM} ${OBJECTDIR}/mqtt/MQTTSerializePublish.o.d 
	@${RM} ${OBJECTDIR}/mqtt/MQTTSerializePublish.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mqtt/MQTTSerializePublish.o.d" -MT "${OBJECTDIR}/mqtt/MQTTSerializePublish.o.d" -MT ${OBJECTDIR}/mqtt/MQTTSerializePublish.o  -o ${OBJECTDIR}/mqtt/MQTTSerializePublish.o mqtt/MQTTSerializePublish.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mqtt/MQTTSubscribeClient.o: mqtt/MQTTSubscribeClient.c  .generated_files/flags/default/b7083d462fc994cb14f5646be2840d241bcedf08 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mqtt" 
	@${RM} ${OBJECTDIR}/mqtt/MQTTSubscribeClient.o.d 
	@${RM} ${OBJECTDIR}/mqtt/MQTTSubscribeClient.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mqtt/MQTTSubscribeClient.o.d" -MT "${OBJECTDIR}/mqtt/MQTTSubscribeClient.o.d" -MT ${OBJECTDIR}/mqtt/MQTTSubscribeClient.o  -o ${OBJECTDIR}/mqtt/MQTTSubscribeClient.o mqtt/MQTTSubscribeClient.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mqtt/MQTTSubscribeServer.o: mqtt/MQTTSubscribeServer.c  .generated_files/flags/default/a143ea93f1b2cce5f0361d10a2e2b7a4019542d4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mqtt" 
	@${RM} ${OBJECTDIR}/mqtt/MQTTSubscribeServer.o.d 
	@${RM} ${OBJECTDIR}/mqtt/MQTTSubscribeServer.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mqtt/MQTTSubscribeServer.o.d" -MT "${OBJECTDIR}/mqtt/MQTTSubscribeServer.o.d" -MT ${OBJECTDIR}/mqtt/MQTTSubscribeServer.o  -o ${OBJECTDIR}/mqtt/MQTTSubscribeServer.o mqtt/MQTTSubscribeServer.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mqtt/MQTTUnsubscribeClient.o: mqtt/MQTTUnsubscribeClient.c  .generated_files/flags/default/8b592e5ccc700091bedea03ea9d63fbb562ec16a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mqtt" 
	@${RM} ${OBJECTDIR}/mqtt/MQTTUnsubscribeClient.o.d 
	@${RM} ${OBJECTDIR}/mqtt/MQTTUnsubscribeClient.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mqtt/MQTTUnsubscribeClient.o.d" -MT "${OBJECTDIR}/mqtt/MQTTUnsubscribeClient.o.d" -MT ${OBJECTDIR}/mqtt/MQTTUnsubscribeClient.o  -o ${OBJECTDIR}/mqtt/MQTTUnsubscribeClient.o mqtt/MQTTUnsubscribeClient.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mqtt/MQTTUnsubscribeServer.o: mqtt/MQTTUnsubscribeServer.c  .generated_files/flags/default/75bd12af3a41bd7c64bfc80dc33dcf413b536212 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mqtt" 
	@${RM} ${OBJECTDIR}/mqtt/MQTTUnsubscribeServer.o.d 
	@${RM} ${OBJECTDIR}/mqtt/MQTTUnsubscribeServer.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mqtt/MQTTUnsubscribeServer.o.d" -MT "${OBJECTDIR}/mqtt/MQTTUnsubscribeServer.o.d" -MT ${OBJECTDIR}/mqtt/MQTTUnsubscribeServer.o  -o ${OBJECTDIR}/mqtt/MQTTUnsubscribeServer.o mqtt/MQTTUnsubscribeServer.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mqtt/MQTTTimer.o: mqtt/MQTTTimer.c  .generated_files/flags/default/5a98b2e7ba3c937a8df1d4a49462b956e8969043 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mqtt" 
	@${RM} ${OBJECTDIR}/mqtt/MQTTTimer.o.d 
	@${RM} ${OBJECTDIR}/mqtt/MQTTTimer.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mqtt/MQTTTimer.o.d" -MT "${OBJECTDIR}/mqtt/MQTTTimer.o.d" -MT ${OBJECTDIR}/mqtt/MQTTTimer.o  -o ${OBJECTDIR}/mqtt/MQTTTimer.o mqtt/MQTTTimer.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mqtt/MQTTNetwork.o: mqtt/MQTTNetwork.c  .generated_files/flags/default/14d19da7073df0e1bea8405db22a06c44c0c0da .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mqtt" 
	@${RM} ${OBJECTDIR}/mqtt/MQTTNetwork.o.d 
	@${RM} ${OBJECTDIR}/mqtt/MQTTNetwork.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mqtt/MQTTNetwork.o.d" -MT "${OBJECTDIR}/mqtt/MQTTNetwork.o.d" -MT ${OBJECTDIR}/mqtt/MQTTNetwork.o  -o ${OBJECTDIR}/mqtt/MQTTNetwork.o mqtt/MQTTNetwork.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/fatfs/ff.o: fatfs/ff.c  .generated_files/flags/default/45e7a807dc35949bc556697f10e0fc79b339f41e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/fatfs" 
	@${RM} ${OBJECTDIR}/fatfs/ff.o.d 
	@${RM} ${OBJECTDIR}/fatfs/ff.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/fatfs/ff.o.d" -MT "${OBJECTDIR}/fatfs/ff.o.d" -MT ${OBJECTDIR}/fatfs/ff.o  -o ${OBJECTDIR}/fatfs/ff.o fatfs/ff.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/fatfs/ffsystem.o: fatfs/ffsystem.c  .generated_files/flags/default/e420aa0c2819bcaa07930b9caad1ddaf8eb712f3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/fatfs" 
	@${RM} ${OBJECTDIR}/fatfs/ffsystem.o.d 
	@${RM} ${OBJECTDIR}/fatfs/ffsystem.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/fatfs/ffsystem.o.d" -MT "${OBJECTDIR}/fatfs/ffsystem.o.d" -MT ${OBJECTDIR}/fatfs/ffsystem.o  -o ${OBJECTDIR}/fatfs/ffsystem.o fatfs/ffsystem.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/fatfs/ffunicode.o: fatfs/ffunicode.c  .generated_files/flags/default/d89cfd89ec593b1966bb7ce6df86960da4682403 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/fatfs" 
	@${RM} ${OBJECTDIR}/fatfs/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/fatfs/ffunicode.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/fatfs/ffunicode.o.d" -MT "${OBJECTDIR}/fatfs/ffunicode.o.d" -MT ${OBJECTDIR}/fatfs/ffunicode.o  -o ${OBJECTDIR}/fatfs/ffunicode.o fatfs/ffunicode.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/fatfs/sd.o: fatfs/sd.c  .generated_files/flags/default/db1694b01603b4ebaafbec80c5a9afce46439106 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/fatfs" 
	@${RM} ${OBJECTDIR}/fatfs/sd.o.d 
	@${RM} ${OBJECTDIR}/fatfs/sd.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/fatfs/sd.o.d" -MT "${OBJECTDIR}/fatfs/sd.o.d" -MT ${OBJECTDIR}/fatfs/sd.o  -o ${OBJECTDIR}/fatfs/sd.o fatfs/sd.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/fatfs/diskio.o: fatfs/diskio.c  .generated_files/flags/default/ad571f7fd36a4f2866b7669564514a44d8982da4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/fatfs" 
	@${RM} ${OBJECTDIR}/fatfs/diskio.o.d 
	@${RM} ${OBJECTDIR}/fatfs/diskio.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/fatfs/diskio.o.d" -MT "${OBJECTDIR}/fatfs/diskio.o.d" -MT ${OBJECTDIR}/fatfs/diskio.o  -o ${OBJECTDIR}/fatfs/diskio.o fatfs/diskio.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/w5100/w5100.o: w5100/w5100.c  .generated_files/flags/default/c983813fabf20b8f9d0db61ed3d69a9b59ebe004 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/w5100" 
	@${RM} ${OBJECTDIR}/w5100/w5100.o.d 
	@${RM} ${OBJECTDIR}/w5100/w5100.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/w5100/w5100.o.d" -MT "${OBJECTDIR}/w5100/w5100.o.d" -MT ${OBJECTDIR}/w5100/w5100.o  -o ${OBJECTDIR}/w5100/w5100.o w5100/w5100.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/w5100/w5100_func.o: w5100/w5100_func.c  .generated_files/flags/default/118bb96de77f0d6e8360c6bcaad57a8394a418b5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/w5100" 
	@${RM} ${OBJECTDIR}/w5100/w5100_func.o.d 
	@${RM} ${OBJECTDIR}/w5100/w5100_func.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/w5100/w5100_func.o.d" -MT "${OBJECTDIR}/w5100/w5100_func.o.d" -MT ${OBJECTDIR}/w5100/w5100_func.o  -o ${OBJECTDIR}/w5100/w5100_func.o w5100/w5100_func.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/b75f73841bbc082191dca8d30e5988b1e0789271 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o  -o ${OBJECTDIR}/main.o main.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/time/time.o: time/time.c  .generated_files/flags/default/75bf59ec81f834708f10e2ce5e6e0be3cc7a0da1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/time" 
	@${RM} ${OBJECTDIR}/time/time.o.d 
	@${RM} ${OBJECTDIR}/time/time.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/time/time.o.d" -MT "${OBJECTDIR}/time/time.o.d" -MT ${OBJECTDIR}/time/time.o  -o ${OBJECTDIR}/time/time.o time/time.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wdt_driver.o: wdt_driver.c  .generated_files/flags/default/f62a8dc4773238314ea59020dbd7972030d85613 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/wdt_driver.o.d 
	@${RM} ${OBJECTDIR}/wdt_driver.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/wdt_driver.o.d" -MT "${OBJECTDIR}/wdt_driver.o.d" -MT ${OBJECTDIR}/wdt_driver.o  -o ${OBJECTDIR}/wdt_driver.o wdt_driver.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mqtt/MQTTClient.o: mqtt/MQTTClient.c  .generated_files/flags/default/89d20c54334e8653abeaaab841d5b5c3bcb923 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mqtt" 
	@${RM} ${OBJECTDIR}/mqtt/MQTTClient.o.d 
	@${RM} ${OBJECTDIR}/mqtt/MQTTClient.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mqtt/MQTTClient.o.d" -MT "${OBJECTDIR}/mqtt/MQTTClient.o.d" -MT ${OBJECTDIR}/mqtt/MQTTClient.o  -o ${OBJECTDIR}/mqtt/MQTTClient.o mqtt/MQTTClient.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mqtt/MQTTConnectClient.o: mqtt/MQTTConnectClient.c  .generated_files/flags/default/390d65ff8349ebebde471c069406057dd3ecb233 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mqtt" 
	@${RM} ${OBJECTDIR}/mqtt/MQTTConnectClient.o.d 
	@${RM} ${OBJECTDIR}/mqtt/MQTTConnectClient.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mqtt/MQTTConnectClient.o.d" -MT "${OBJECTDIR}/mqtt/MQTTConnectClient.o.d" -MT ${OBJECTDIR}/mqtt/MQTTConnectClient.o  -o ${OBJECTDIR}/mqtt/MQTTConnectClient.o mqtt/MQTTConnectClient.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mqtt/MQTTConnectServer.o: mqtt/MQTTConnectServer.c  .generated_files/flags/default/f4f6678827a0db2a0a9928b8480b4eb7e38c53d9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mqtt" 
	@${RM} ${OBJECTDIR}/mqtt/MQTTConnectServer.o.d 
	@${RM} ${OBJECTDIR}/mqtt/MQTTConnectServer.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mqtt/MQTTConnectServer.o.d" -MT "${OBJECTDIR}/mqtt/MQTTConnectServer.o.d" -MT ${OBJECTDIR}/mqtt/MQTTConnectServer.o  -o ${OBJECTDIR}/mqtt/MQTTConnectServer.o mqtt/MQTTConnectServer.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mqtt/MQTTDeserializePublish.o: mqtt/MQTTDeserializePublish.c  .generated_files/flags/default/e2b8188781681129e111e221d081d17af7cd06c9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mqtt" 
	@${RM} ${OBJECTDIR}/mqtt/MQTTDeserializePublish.o.d 
	@${RM} ${OBJECTDIR}/mqtt/MQTTDeserializePublish.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mqtt/MQTTDeserializePublish.o.d" -MT "${OBJECTDIR}/mqtt/MQTTDeserializePublish.o.d" -MT ${OBJECTDIR}/mqtt/MQTTDeserializePublish.o  -o ${OBJECTDIR}/mqtt/MQTTDeserializePublish.o mqtt/MQTTDeserializePublish.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mqtt/MQTTFormat.o: mqtt/MQTTFormat.c  .generated_files/flags/default/4f61ef9b689b3a57e26314db4c632dd6d9ed1faf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mqtt" 
	@${RM} ${OBJECTDIR}/mqtt/MQTTFormat.o.d 
	@${RM} ${OBJECTDIR}/mqtt/MQTTFormat.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mqtt/MQTTFormat.o.d" -MT "${OBJECTDIR}/mqtt/MQTTFormat.o.d" -MT ${OBJECTDIR}/mqtt/MQTTFormat.o  -o ${OBJECTDIR}/mqtt/MQTTFormat.o mqtt/MQTTFormat.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mqtt/MQTTPacket.o: mqtt/MQTTPacket.c  .generated_files/flags/default/82120d346855f54d9ef27e8781f8eb7ba081c19e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mqtt" 
	@${RM} ${OBJECTDIR}/mqtt/MQTTPacket.o.d 
	@${RM} ${OBJECTDIR}/mqtt/MQTTPacket.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mqtt/MQTTPacket.o.d" -MT "${OBJECTDIR}/mqtt/MQTTPacket.o.d" -MT ${OBJECTDIR}/mqtt/MQTTPacket.o  -o ${OBJECTDIR}/mqtt/MQTTPacket.o mqtt/MQTTPacket.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mqtt/MQTTSerializePublish.o: mqtt/MQTTSerializePublish.c  .generated_files/flags/default/9993bab5319e44a6b89c6ffa4e3efb7cff53db72 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mqtt" 
	@${RM} ${OBJECTDIR}/mqtt/MQTTSerializePublish.o.d 
	@${RM} ${OBJECTDIR}/mqtt/MQTTSerializePublish.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mqtt/MQTTSerializePublish.o.d" -MT "${OBJECTDIR}/mqtt/MQTTSerializePublish.o.d" -MT ${OBJECTDIR}/mqtt/MQTTSerializePublish.o  -o ${OBJECTDIR}/mqtt/MQTTSerializePublish.o mqtt/MQTTSerializePublish.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mqtt/MQTTSubscribeClient.o: mqtt/MQTTSubscribeClient.c  .generated_files/flags/default/7966dc1080f51be397d4f7ebeb83063a6f716adb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mqtt" 
	@${RM} ${OBJECTDIR}/mqtt/MQTTSubscribeClient.o.d 
	@${RM} ${OBJECTDIR}/mqtt/MQTTSubscribeClient.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mqtt/MQTTSubscribeClient.o.d" -MT "${OBJECTDIR}/mqtt/MQTTSubscribeClient.o.d" -MT ${OBJECTDIR}/mqtt/MQTTSubscribeClient.o  -o ${OBJECTDIR}/mqtt/MQTTSubscribeClient.o mqtt/MQTTSubscribeClient.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mqtt/MQTTSubscribeServer.o: mqtt/MQTTSubscribeServer.c  .generated_files/flags/default/38bcce66b8df0ad467e048304c6f70b261d4d2c9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mqtt" 
	@${RM} ${OBJECTDIR}/mqtt/MQTTSubscribeServer.o.d 
	@${RM} ${OBJECTDIR}/mqtt/MQTTSubscribeServer.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mqtt/MQTTSubscribeServer.o.d" -MT "${OBJECTDIR}/mqtt/MQTTSubscribeServer.o.d" -MT ${OBJECTDIR}/mqtt/MQTTSubscribeServer.o  -o ${OBJECTDIR}/mqtt/MQTTSubscribeServer.o mqtt/MQTTSubscribeServer.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mqtt/MQTTUnsubscribeClient.o: mqtt/MQTTUnsubscribeClient.c  .generated_files/flags/default/d0d01c21cc2d71b9764b1047976b7458e2623dd8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mqtt" 
	@${RM} ${OBJECTDIR}/mqtt/MQTTUnsubscribeClient.o.d 
	@${RM} ${OBJECTDIR}/mqtt/MQTTUnsubscribeClient.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mqtt/MQTTUnsubscribeClient.o.d" -MT "${OBJECTDIR}/mqtt/MQTTUnsubscribeClient.o.d" -MT ${OBJECTDIR}/mqtt/MQTTUnsubscribeClient.o  -o ${OBJECTDIR}/mqtt/MQTTUnsubscribeClient.o mqtt/MQTTUnsubscribeClient.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mqtt/MQTTUnsubscribeServer.o: mqtt/MQTTUnsubscribeServer.c  .generated_files/flags/default/17e8522fa8f2a99e867b63277420fce6c9c477cc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mqtt" 
	@${RM} ${OBJECTDIR}/mqtt/MQTTUnsubscribeServer.o.d 
	@${RM} ${OBJECTDIR}/mqtt/MQTTUnsubscribeServer.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mqtt/MQTTUnsubscribeServer.o.d" -MT "${OBJECTDIR}/mqtt/MQTTUnsubscribeServer.o.d" -MT ${OBJECTDIR}/mqtt/MQTTUnsubscribeServer.o  -o ${OBJECTDIR}/mqtt/MQTTUnsubscribeServer.o mqtt/MQTTUnsubscribeServer.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mqtt/MQTTTimer.o: mqtt/MQTTTimer.c  .generated_files/flags/default/22ca652e3b638e69c37535f878585ef2d31e0a0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mqtt" 
	@${RM} ${OBJECTDIR}/mqtt/MQTTTimer.o.d 
	@${RM} ${OBJECTDIR}/mqtt/MQTTTimer.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mqtt/MQTTTimer.o.d" -MT "${OBJECTDIR}/mqtt/MQTTTimer.o.d" -MT ${OBJECTDIR}/mqtt/MQTTTimer.o  -o ${OBJECTDIR}/mqtt/MQTTTimer.o mqtt/MQTTTimer.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mqtt/MQTTNetwork.o: mqtt/MQTTNetwork.c  .generated_files/flags/default/2b3e2806d46be0cbd2c663baf5164a67f35f3a0a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mqtt" 
	@${RM} ${OBJECTDIR}/mqtt/MQTTNetwork.o.d 
	@${RM} ${OBJECTDIR}/mqtt/MQTTNetwork.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mqtt/MQTTNetwork.o.d" -MT "${OBJECTDIR}/mqtt/MQTTNetwork.o.d" -MT ${OBJECTDIR}/mqtt/MQTTNetwork.o  -o ${OBJECTDIR}/mqtt/MQTTNetwork.o mqtt/MQTTNetwork.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/code.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mmcu=atxmega128a3u ${PACK_COMMON_OPTIONS}   -gdwarf-2 -D__$(MP_PROCESSOR_OPTION)__  -Wl,-Map="${DISTDIR}/code.${IMAGE_TYPE}.map"    -o ${DISTDIR}/code.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1 -Wl,--gc-sections -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	
	
	
	
	
	
else
${DISTDIR}/code.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mmcu=atxmega128a3u ${PACK_COMMON_OPTIONS}  -D__$(MP_PROCESSOR_OPTION)__  -Wl,-Map="${DISTDIR}/code.${IMAGE_TYPE}.map"    -o ${DISTDIR}/code.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION) -Wl,--gc-sections -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}/avr-objcopy -O ihex "${DISTDIR}/code.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/code.${IMAGE_TYPE}.hex"
	
	
	
	
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
