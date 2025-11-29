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
SOURCEFILES_QUOTED_IF_SPACED=fatfs/ff.c fatfs/ffsystem.c fatfs/ffunicode.c fatfs/sd.c fatfs/diskio.c wiznet/Ethernet/W5100/w5100.c wiznet/Ethernet/socket.c wiznet/Ethernet/wizchip_conf.c main.c time/time.c wdt_driver.c wizchip_spi.c wiznet/Internet/MQTT/MQTTClient.c wiznet/Internet/MQTT/mqtt_interface.c hamqtt.c wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.c wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.c wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.c wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.c wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.c wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.c wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.c wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.c wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.c wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/fatfs/ff.o ${OBJECTDIR}/fatfs/ffsystem.o ${OBJECTDIR}/fatfs/ffunicode.o ${OBJECTDIR}/fatfs/sd.o ${OBJECTDIR}/fatfs/diskio.o ${OBJECTDIR}/wiznet/Ethernet/W5100/w5100.o ${OBJECTDIR}/wiznet/Ethernet/socket.o ${OBJECTDIR}/wiznet/Ethernet/wizchip_conf.o ${OBJECTDIR}/main.o ${OBJECTDIR}/time/time.o ${OBJECTDIR}/wdt_driver.o ${OBJECTDIR}/wizchip_spi.o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTClient.o ${OBJECTDIR}/wiznet/Internet/MQTT/mqtt_interface.o ${OBJECTDIR}/hamqtt.o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.o
POSSIBLE_DEPFILES=${OBJECTDIR}/fatfs/ff.o.d ${OBJECTDIR}/fatfs/ffsystem.o.d ${OBJECTDIR}/fatfs/ffunicode.o.d ${OBJECTDIR}/fatfs/sd.o.d ${OBJECTDIR}/fatfs/diskio.o.d ${OBJECTDIR}/wiznet/Ethernet/W5100/w5100.o.d ${OBJECTDIR}/wiznet/Ethernet/socket.o.d ${OBJECTDIR}/wiznet/Ethernet/wizchip_conf.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/time/time.o.d ${OBJECTDIR}/wdt_driver.o.d ${OBJECTDIR}/wizchip_spi.o.d ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTClient.o.d ${OBJECTDIR}/wiznet/Internet/MQTT/mqtt_interface.o.d ${OBJECTDIR}/hamqtt.o.d ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.o.d ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.o.d ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.o.d ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.o.d ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.o.d ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.o.d ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.o.d ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.o.d ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.o.d ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/fatfs/ff.o ${OBJECTDIR}/fatfs/ffsystem.o ${OBJECTDIR}/fatfs/ffunicode.o ${OBJECTDIR}/fatfs/sd.o ${OBJECTDIR}/fatfs/diskio.o ${OBJECTDIR}/wiznet/Ethernet/W5100/w5100.o ${OBJECTDIR}/wiznet/Ethernet/socket.o ${OBJECTDIR}/wiznet/Ethernet/wizchip_conf.o ${OBJECTDIR}/main.o ${OBJECTDIR}/time/time.o ${OBJECTDIR}/wdt_driver.o ${OBJECTDIR}/wizchip_spi.o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTClient.o ${OBJECTDIR}/wiznet/Internet/MQTT/mqtt_interface.o ${OBJECTDIR}/hamqtt.o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.o

# Source Files
SOURCEFILES=fatfs/ff.c fatfs/ffsystem.c fatfs/ffunicode.c fatfs/sd.c fatfs/diskio.c wiznet/Ethernet/W5100/w5100.c wiznet/Ethernet/socket.c wiznet/Ethernet/wizchip_conf.c main.c time/time.c wdt_driver.c wizchip_spi.c wiznet/Internet/MQTT/MQTTClient.c wiznet/Internet/MQTT/mqtt_interface.c hamqtt.c wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.c wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.c wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.c wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.c wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.c wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.c wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.c wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.c wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.c wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.c

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
${OBJECTDIR}/fatfs/ff.o: fatfs/ff.c  .generated_files/flags/default/42cc6a6a0b262afb48c821dd2a49c88e1ccc04c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/fatfs" 
	@${RM} ${OBJECTDIR}/fatfs/ff.o.d 
	@${RM} ${OBJECTDIR}/fatfs/ff.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/fatfs/ff.o.d" -MT "${OBJECTDIR}/fatfs/ff.o.d" -MT ${OBJECTDIR}/fatfs/ff.o  -o ${OBJECTDIR}/fatfs/ff.o fatfs/ff.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/fatfs/ffsystem.o: fatfs/ffsystem.c  .generated_files/flags/default/aa045e0c5825fb3143bc7c62e04af87ea8b6c8c3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/fatfs" 
	@${RM} ${OBJECTDIR}/fatfs/ffsystem.o.d 
	@${RM} ${OBJECTDIR}/fatfs/ffsystem.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/fatfs/ffsystem.o.d" -MT "${OBJECTDIR}/fatfs/ffsystem.o.d" -MT ${OBJECTDIR}/fatfs/ffsystem.o  -o ${OBJECTDIR}/fatfs/ffsystem.o fatfs/ffsystem.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/fatfs/ffunicode.o: fatfs/ffunicode.c  .generated_files/flags/default/2d1b117423ee55a7c2858d1a5803cf551c859930 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/fatfs" 
	@${RM} ${OBJECTDIR}/fatfs/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/fatfs/ffunicode.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/fatfs/ffunicode.o.d" -MT "${OBJECTDIR}/fatfs/ffunicode.o.d" -MT ${OBJECTDIR}/fatfs/ffunicode.o  -o ${OBJECTDIR}/fatfs/ffunicode.o fatfs/ffunicode.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/fatfs/sd.o: fatfs/sd.c  .generated_files/flags/default/39653eb1537e491414f1a9eeac3f8fea36a624e7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/fatfs" 
	@${RM} ${OBJECTDIR}/fatfs/sd.o.d 
	@${RM} ${OBJECTDIR}/fatfs/sd.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/fatfs/sd.o.d" -MT "${OBJECTDIR}/fatfs/sd.o.d" -MT ${OBJECTDIR}/fatfs/sd.o  -o ${OBJECTDIR}/fatfs/sd.o fatfs/sd.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/fatfs/diskio.o: fatfs/diskio.c  .generated_files/flags/default/196b95971dc885d7ff0e6a2754105b2009b5d018 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/fatfs" 
	@${RM} ${OBJECTDIR}/fatfs/diskio.o.d 
	@${RM} ${OBJECTDIR}/fatfs/diskio.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/fatfs/diskio.o.d" -MT "${OBJECTDIR}/fatfs/diskio.o.d" -MT ${OBJECTDIR}/fatfs/diskio.o  -o ${OBJECTDIR}/fatfs/diskio.o fatfs/diskio.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Ethernet/W5100/w5100.o: wiznet/Ethernet/W5100/w5100.c  .generated_files/flags/default/6f5a377a0b35ae69f594a0cff97b6ad4fa5d5e1e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Ethernet/W5100" 
	@${RM} ${OBJECTDIR}/wiznet/Ethernet/W5100/w5100.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Ethernet/W5100/w5100.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Ethernet/W5100/w5100.o.d" -MT "${OBJECTDIR}/wiznet/Ethernet/W5100/w5100.o.d" -MT ${OBJECTDIR}/wiznet/Ethernet/W5100/w5100.o  -o ${OBJECTDIR}/wiznet/Ethernet/W5100/w5100.o wiznet/Ethernet/W5100/w5100.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Ethernet/socket.o: wiznet/Ethernet/socket.c  .generated_files/flags/default/6334c89b5441219296f2ea0ecd72703f2fc735de .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Ethernet" 
	@${RM} ${OBJECTDIR}/wiznet/Ethernet/socket.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Ethernet/socket.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Ethernet/socket.o.d" -MT "${OBJECTDIR}/wiznet/Ethernet/socket.o.d" -MT ${OBJECTDIR}/wiznet/Ethernet/socket.o  -o ${OBJECTDIR}/wiznet/Ethernet/socket.o wiznet/Ethernet/socket.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Ethernet/wizchip_conf.o: wiznet/Ethernet/wizchip_conf.c  .generated_files/flags/default/996dd07b485c4ac53fb5e67f8a9b8d8d46a6a5d9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Ethernet" 
	@${RM} ${OBJECTDIR}/wiznet/Ethernet/wizchip_conf.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Ethernet/wizchip_conf.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Ethernet/wizchip_conf.o.d" -MT "${OBJECTDIR}/wiznet/Ethernet/wizchip_conf.o.d" -MT ${OBJECTDIR}/wiznet/Ethernet/wizchip_conf.o  -o ${OBJECTDIR}/wiznet/Ethernet/wizchip_conf.o wiznet/Ethernet/wizchip_conf.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/ca1862f4b3432671b753195ccaeae2262309cdd6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o  -o ${OBJECTDIR}/main.o main.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/time/time.o: time/time.c  .generated_files/flags/default/f1646fddae8f48a516222987d341295bc7361695 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/time" 
	@${RM} ${OBJECTDIR}/time/time.o.d 
	@${RM} ${OBJECTDIR}/time/time.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/time/time.o.d" -MT "${OBJECTDIR}/time/time.o.d" -MT ${OBJECTDIR}/time/time.o  -o ${OBJECTDIR}/time/time.o time/time.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wdt_driver.o: wdt_driver.c  .generated_files/flags/default/7d4274c3decde05a58b2a2e967d104cb801f8e5c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/wdt_driver.o.d 
	@${RM} ${OBJECTDIR}/wdt_driver.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/wdt_driver.o.d" -MT "${OBJECTDIR}/wdt_driver.o.d" -MT ${OBJECTDIR}/wdt_driver.o  -o ${OBJECTDIR}/wdt_driver.o wdt_driver.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wizchip_spi.o: wizchip_spi.c  .generated_files/flags/default/533c3c492fa7f8fc921af5e79466882ba597c6ba .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/wizchip_spi.o.d 
	@${RM} ${OBJECTDIR}/wizchip_spi.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/wizchip_spi.o.d" -MT "${OBJECTDIR}/wizchip_spi.o.d" -MT ${OBJECTDIR}/wizchip_spi.o  -o ${OBJECTDIR}/wizchip_spi.o wizchip_spi.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTClient.o: wiznet/Internet/MQTT/MQTTClient.c  .generated_files/flags/default/801d0d2b60a00ea2b3a462a4afc8e36ae7cc68ad .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTClient.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTClient.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTClient.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTClient.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTClient.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTClient.o wiznet/Internet/MQTT/MQTTClient.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/mqtt_interface.o: wiznet/Internet/MQTT/mqtt_interface.c  .generated_files/flags/default/3609d785f0c0437efa68daa3f142a613ec1bc3c7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/mqtt_interface.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/mqtt_interface.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/mqtt_interface.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/mqtt_interface.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/mqtt_interface.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/mqtt_interface.o wiznet/Internet/MQTT/mqtt_interface.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hamqtt.o: hamqtt.c  .generated_files/flags/default/565197ada7d8db3539b48e7c6dac75f8d69dc1c9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/hamqtt.o.d 
	@${RM} ${OBJECTDIR}/hamqtt.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/hamqtt.o.d" -MT "${OBJECTDIR}/hamqtt.o.d" -MT ${OBJECTDIR}/hamqtt.o  -o ${OBJECTDIR}/hamqtt.o hamqtt.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.c  .generated_files/flags/default/c070998418cd9cf2b3451889d62f4691cba812a0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.c  .generated_files/flags/default/76d0cc64366a70b65cdefbfd33fb53738c49a579 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.c  .generated_files/flags/default/13b4d5b095a1160f5d170fcab9e75dbf0a2fe6f6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.c  .generated_files/flags/default/502d5f07148fc3c1b02fccf4f658539274f3c891 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.c  .generated_files/flags/default/ac5e97105db9cf82c18d3ed2cc645deb6871c1c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.c  .generated_files/flags/default/df4af90d3ae87b19ad130f1c5e7430c626468bc4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.c  .generated_files/flags/default/95f002d86fe3f2266a529bd359f7cffe9de53b0e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.c  .generated_files/flags/default/2e7604fcba31ce744ee2ddb081cb54e5f6a58c3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.c  .generated_files/flags/default/26fb045d243d0abac8e49bb08265409df7a4be9b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.c  .generated_files/flags/default/4388f1bd70e3b90f59cf4f7e45d2ab1f45609279 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/fatfs/ff.o: fatfs/ff.c  .generated_files/flags/default/726b024c042dd92f62fed1cbdbc2a163a70d30ce .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/fatfs" 
	@${RM} ${OBJECTDIR}/fatfs/ff.o.d 
	@${RM} ${OBJECTDIR}/fatfs/ff.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/fatfs/ff.o.d" -MT "${OBJECTDIR}/fatfs/ff.o.d" -MT ${OBJECTDIR}/fatfs/ff.o  -o ${OBJECTDIR}/fatfs/ff.o fatfs/ff.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/fatfs/ffsystem.o: fatfs/ffsystem.c  .generated_files/flags/default/dbb874ca623b2cd041b68a7e1feee3fc36df00f1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/fatfs" 
	@${RM} ${OBJECTDIR}/fatfs/ffsystem.o.d 
	@${RM} ${OBJECTDIR}/fatfs/ffsystem.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/fatfs/ffsystem.o.d" -MT "${OBJECTDIR}/fatfs/ffsystem.o.d" -MT ${OBJECTDIR}/fatfs/ffsystem.o  -o ${OBJECTDIR}/fatfs/ffsystem.o fatfs/ffsystem.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/fatfs/ffunicode.o: fatfs/ffunicode.c  .generated_files/flags/default/330d4612537715a2e93eea855d4310c04fd2bf04 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/fatfs" 
	@${RM} ${OBJECTDIR}/fatfs/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/fatfs/ffunicode.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/fatfs/ffunicode.o.d" -MT "${OBJECTDIR}/fatfs/ffunicode.o.d" -MT ${OBJECTDIR}/fatfs/ffunicode.o  -o ${OBJECTDIR}/fatfs/ffunicode.o fatfs/ffunicode.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/fatfs/sd.o: fatfs/sd.c  .generated_files/flags/default/6a9917a3e4f8234112e6a0df0edb5c6b7e1df9d8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/fatfs" 
	@${RM} ${OBJECTDIR}/fatfs/sd.o.d 
	@${RM} ${OBJECTDIR}/fatfs/sd.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/fatfs/sd.o.d" -MT "${OBJECTDIR}/fatfs/sd.o.d" -MT ${OBJECTDIR}/fatfs/sd.o  -o ${OBJECTDIR}/fatfs/sd.o fatfs/sd.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/fatfs/diskio.o: fatfs/diskio.c  .generated_files/flags/default/c2f166e573b97cda528592980d7effcd1ca8a114 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/fatfs" 
	@${RM} ${OBJECTDIR}/fatfs/diskio.o.d 
	@${RM} ${OBJECTDIR}/fatfs/diskio.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/fatfs/diskio.o.d" -MT "${OBJECTDIR}/fatfs/diskio.o.d" -MT ${OBJECTDIR}/fatfs/diskio.o  -o ${OBJECTDIR}/fatfs/diskio.o fatfs/diskio.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Ethernet/W5100/w5100.o: wiznet/Ethernet/W5100/w5100.c  .generated_files/flags/default/8f260c19eaffcef54bba92b122a4d5681b944f56 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Ethernet/W5100" 
	@${RM} ${OBJECTDIR}/wiznet/Ethernet/W5100/w5100.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Ethernet/W5100/w5100.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Ethernet/W5100/w5100.o.d" -MT "${OBJECTDIR}/wiznet/Ethernet/W5100/w5100.o.d" -MT ${OBJECTDIR}/wiznet/Ethernet/W5100/w5100.o  -o ${OBJECTDIR}/wiznet/Ethernet/W5100/w5100.o wiznet/Ethernet/W5100/w5100.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Ethernet/socket.o: wiznet/Ethernet/socket.c  .generated_files/flags/default/6a75c7706e54b3cb0a3d112a970688009ca905fb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Ethernet" 
	@${RM} ${OBJECTDIR}/wiznet/Ethernet/socket.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Ethernet/socket.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Ethernet/socket.o.d" -MT "${OBJECTDIR}/wiznet/Ethernet/socket.o.d" -MT ${OBJECTDIR}/wiznet/Ethernet/socket.o  -o ${OBJECTDIR}/wiznet/Ethernet/socket.o wiznet/Ethernet/socket.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Ethernet/wizchip_conf.o: wiznet/Ethernet/wizchip_conf.c  .generated_files/flags/default/636b6ddf0d8d3a7ac6f9a05d34ba4ac056ee56c0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Ethernet" 
	@${RM} ${OBJECTDIR}/wiznet/Ethernet/wizchip_conf.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Ethernet/wizchip_conf.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Ethernet/wizchip_conf.o.d" -MT "${OBJECTDIR}/wiznet/Ethernet/wizchip_conf.o.d" -MT ${OBJECTDIR}/wiznet/Ethernet/wizchip_conf.o  -o ${OBJECTDIR}/wiznet/Ethernet/wizchip_conf.o wiznet/Ethernet/wizchip_conf.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/598c761ade54bda558258882fbaaf4841a12ff4c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o  -o ${OBJECTDIR}/main.o main.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/time/time.o: time/time.c  .generated_files/flags/default/d7dff39210060ce34e142118ccf2de0c45fbd3a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/time" 
	@${RM} ${OBJECTDIR}/time/time.o.d 
	@${RM} ${OBJECTDIR}/time/time.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/time/time.o.d" -MT "${OBJECTDIR}/time/time.o.d" -MT ${OBJECTDIR}/time/time.o  -o ${OBJECTDIR}/time/time.o time/time.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wdt_driver.o: wdt_driver.c  .generated_files/flags/default/e2b70039d81b17ab367c4da990f608a71568f8a4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/wdt_driver.o.d 
	@${RM} ${OBJECTDIR}/wdt_driver.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/wdt_driver.o.d" -MT "${OBJECTDIR}/wdt_driver.o.d" -MT ${OBJECTDIR}/wdt_driver.o  -o ${OBJECTDIR}/wdt_driver.o wdt_driver.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wizchip_spi.o: wizchip_spi.c  .generated_files/flags/default/b362a1447e082cf6fa77b859fa2d4c0c821731b5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/wizchip_spi.o.d 
	@${RM} ${OBJECTDIR}/wizchip_spi.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/wizchip_spi.o.d" -MT "${OBJECTDIR}/wizchip_spi.o.d" -MT ${OBJECTDIR}/wizchip_spi.o  -o ${OBJECTDIR}/wizchip_spi.o wizchip_spi.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTClient.o: wiznet/Internet/MQTT/MQTTClient.c  .generated_files/flags/default/6382142bea215ea960f77082aeaff0ce44540db6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTClient.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTClient.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTClient.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTClient.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTClient.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTClient.o wiznet/Internet/MQTT/MQTTClient.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/mqtt_interface.o: wiznet/Internet/MQTT/mqtt_interface.c  .generated_files/flags/default/feab97c2349eefa6eb5f36cdd0117a392951eef2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/mqtt_interface.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/mqtt_interface.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/mqtt_interface.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/mqtt_interface.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/mqtt_interface.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/mqtt_interface.o wiznet/Internet/MQTT/mqtt_interface.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hamqtt.o: hamqtt.c  .generated_files/flags/default/8079b51b778d06df27523e6dc56aa921414bb670 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/hamqtt.o.d 
	@${RM} ${OBJECTDIR}/hamqtt.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/hamqtt.o.d" -MT "${OBJECTDIR}/hamqtt.o.d" -MT ${OBJECTDIR}/hamqtt.o  -o ${OBJECTDIR}/hamqtt.o hamqtt.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.c  .generated_files/flags/default/4a24447154593463f5663993cd935bf1a5b73375 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.c  .generated_files/flags/default/1a6524fd926bac6d379b35452ea2af434aa5f3d0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.c  .generated_files/flags/default/bcb6acc9317f17bf8211440e5ad0e87cdf647250 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.c  .generated_files/flags/default/bcf42edd38ffb0427dc1838e8ecf273b2574ece .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.c  .generated_files/flags/default/a150a19131eafed030deae0d7466b0189443a317 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.c  .generated_files/flags/default/d67c29b0dfc9ac9deae7acce9f5f8a8985a321d7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.c  .generated_files/flags/default/6eb48b0483f820ef5b58dd3e3a2c3491472d154a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.c  .generated_files/flags/default/6aba9445de36bf0b3800c0f8066bc43a78850834 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.c  .generated_files/flags/default/4ea105d822fd51d09268151e6bf9da20be8cf23a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.c  .generated_files/flags/default/78f1f281f4b73019d749fed3d2fc3157dc1d539b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
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
