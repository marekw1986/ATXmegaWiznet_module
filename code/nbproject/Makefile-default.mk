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
${OBJECTDIR}/fatfs/ff.o: fatfs/ff.c  .generated_files/flags/default/9528a9ef0d53e9f5d0f8082cbd0039c1ca3d5241 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/fatfs" 
	@${RM} ${OBJECTDIR}/fatfs/ff.o.d 
	@${RM} ${OBJECTDIR}/fatfs/ff.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/fatfs/ff.o.d" -MT "${OBJECTDIR}/fatfs/ff.o.d" -MT ${OBJECTDIR}/fatfs/ff.o  -o ${OBJECTDIR}/fatfs/ff.o fatfs/ff.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/fatfs/ffsystem.o: fatfs/ffsystem.c  .generated_files/flags/default/4db50b2cfd19377c25387e436bffcb0c0b107583 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/fatfs" 
	@${RM} ${OBJECTDIR}/fatfs/ffsystem.o.d 
	@${RM} ${OBJECTDIR}/fatfs/ffsystem.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/fatfs/ffsystem.o.d" -MT "${OBJECTDIR}/fatfs/ffsystem.o.d" -MT ${OBJECTDIR}/fatfs/ffsystem.o  -o ${OBJECTDIR}/fatfs/ffsystem.o fatfs/ffsystem.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/fatfs/ffunicode.o: fatfs/ffunicode.c  .generated_files/flags/default/9f49c222df79212b8143786c2c4ccce9960aafce .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/fatfs" 
	@${RM} ${OBJECTDIR}/fatfs/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/fatfs/ffunicode.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/fatfs/ffunicode.o.d" -MT "${OBJECTDIR}/fatfs/ffunicode.o.d" -MT ${OBJECTDIR}/fatfs/ffunicode.o  -o ${OBJECTDIR}/fatfs/ffunicode.o fatfs/ffunicode.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/fatfs/sd.o: fatfs/sd.c  .generated_files/flags/default/d5ebc0b907c6587ea87f78903d6496ec3fa3566 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/fatfs" 
	@${RM} ${OBJECTDIR}/fatfs/sd.o.d 
	@${RM} ${OBJECTDIR}/fatfs/sd.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/fatfs/sd.o.d" -MT "${OBJECTDIR}/fatfs/sd.o.d" -MT ${OBJECTDIR}/fatfs/sd.o  -o ${OBJECTDIR}/fatfs/sd.o fatfs/sd.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/fatfs/diskio.o: fatfs/diskio.c  .generated_files/flags/default/8dad44ec00c3720be22fcb48175dc302a0a9a839 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/fatfs" 
	@${RM} ${OBJECTDIR}/fatfs/diskio.o.d 
	@${RM} ${OBJECTDIR}/fatfs/diskio.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/fatfs/diskio.o.d" -MT "${OBJECTDIR}/fatfs/diskio.o.d" -MT ${OBJECTDIR}/fatfs/diskio.o  -o ${OBJECTDIR}/fatfs/diskio.o fatfs/diskio.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Ethernet/W5100/w5100.o: wiznet/Ethernet/W5100/w5100.c  .generated_files/flags/default/6389232249086ec0a006e22911097ccea66d508f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Ethernet/W5100" 
	@${RM} ${OBJECTDIR}/wiznet/Ethernet/W5100/w5100.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Ethernet/W5100/w5100.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Ethernet/W5100/w5100.o.d" -MT "${OBJECTDIR}/wiznet/Ethernet/W5100/w5100.o.d" -MT ${OBJECTDIR}/wiznet/Ethernet/W5100/w5100.o  -o ${OBJECTDIR}/wiznet/Ethernet/W5100/w5100.o wiznet/Ethernet/W5100/w5100.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Ethernet/socket.o: wiznet/Ethernet/socket.c  .generated_files/flags/default/9b661d6817ab7555fbeadc7791d515c4470ab2ed .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Ethernet" 
	@${RM} ${OBJECTDIR}/wiznet/Ethernet/socket.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Ethernet/socket.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Ethernet/socket.o.d" -MT "${OBJECTDIR}/wiznet/Ethernet/socket.o.d" -MT ${OBJECTDIR}/wiznet/Ethernet/socket.o  -o ${OBJECTDIR}/wiznet/Ethernet/socket.o wiznet/Ethernet/socket.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Ethernet/wizchip_conf.o: wiznet/Ethernet/wizchip_conf.c  .generated_files/flags/default/3cfe8076f5cc6ab3837be1e0697dad3d746252f0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Ethernet" 
	@${RM} ${OBJECTDIR}/wiznet/Ethernet/wizchip_conf.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Ethernet/wizchip_conf.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Ethernet/wizchip_conf.o.d" -MT "${OBJECTDIR}/wiznet/Ethernet/wizchip_conf.o.d" -MT ${OBJECTDIR}/wiznet/Ethernet/wizchip_conf.o  -o ${OBJECTDIR}/wiznet/Ethernet/wizchip_conf.o wiznet/Ethernet/wizchip_conf.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/2757e7b6eeafcfcf0c1f86c653917ac2c3a0be58 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o  -o ${OBJECTDIR}/main.o main.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/time/time.o: time/time.c  .generated_files/flags/default/e0a28ae3065d865f8880518332e59f945af095c3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/time" 
	@${RM} ${OBJECTDIR}/time/time.o.d 
	@${RM} ${OBJECTDIR}/time/time.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/time/time.o.d" -MT "${OBJECTDIR}/time/time.o.d" -MT ${OBJECTDIR}/time/time.o  -o ${OBJECTDIR}/time/time.o time/time.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wdt_driver.o: wdt_driver.c  .generated_files/flags/default/b61fed92df8d5254033d90800c2a0b88878821bb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/wdt_driver.o.d 
	@${RM} ${OBJECTDIR}/wdt_driver.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wdt_driver.o.d" -MT "${OBJECTDIR}/wdt_driver.o.d" -MT ${OBJECTDIR}/wdt_driver.o  -o ${OBJECTDIR}/wdt_driver.o wdt_driver.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wizchip_spi.o: wizchip_spi.c  .generated_files/flags/default/70375af84cf7f25eac75380a9dd8a59e8cd9e942 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/wizchip_spi.o.d 
	@${RM} ${OBJECTDIR}/wizchip_spi.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wizchip_spi.o.d" -MT "${OBJECTDIR}/wizchip_spi.o.d" -MT ${OBJECTDIR}/wizchip_spi.o  -o ${OBJECTDIR}/wizchip_spi.o wizchip_spi.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTClient.o: wiznet/Internet/MQTT/MQTTClient.c  .generated_files/flags/default/86619a2c271382a9a24c9c6744354b843220a4e6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTClient.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTClient.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTClient.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTClient.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTClient.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTClient.o wiznet/Internet/MQTT/MQTTClient.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/mqtt_interface.o: wiznet/Internet/MQTT/mqtt_interface.c  .generated_files/flags/default/b9bf282c4ef789f29d06d00176655d92a9b3393b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/mqtt_interface.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/mqtt_interface.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/mqtt_interface.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/mqtt_interface.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/mqtt_interface.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/mqtt_interface.o wiznet/Internet/MQTT/mqtt_interface.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hamqtt.o: hamqtt.c  .generated_files/flags/default/89d07690d7d2f25fd9b8a93f2d1cb235f2354b4b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/hamqtt.o.d 
	@${RM} ${OBJECTDIR}/hamqtt.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/hamqtt.o.d" -MT "${OBJECTDIR}/hamqtt.o.d" -MT ${OBJECTDIR}/hamqtt.o  -o ${OBJECTDIR}/hamqtt.o hamqtt.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.c  .generated_files/flags/default/6173f615fa2ef108f5fa33cc01d8dc1bb3cb3ae3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.c  .generated_files/flags/default/464d3a2d795d1227d05624cf44b8b72093eb4c75 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.c  .generated_files/flags/default/beb3f3d384f7920cab0733017b772020ffe2a440 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.c  .generated_files/flags/default/8cd0e22774c564cd71bb9a3297c8e9d06e5f4117 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.c  .generated_files/flags/default/d7d69e90fcc5b613084e49366dc66274ee6983e9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.c  .generated_files/flags/default/39ae85bd4071e86e9b4ccfb37a81974d25253d9e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.c  .generated_files/flags/default/6944472f08c336f168dc6ade1c52ea9cdbee9c75 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.c  .generated_files/flags/default/2615f7756b4865a4659e010c0ac0bb57780a462c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.c  .generated_files/flags/default/8f089ff65656eaab601e3ed60d6565d8b10b7ede .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.c  .generated_files/flags/default/6f6976782a3a3dbacca608f22cade3c46b9b61c0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/fatfs/ff.o: fatfs/ff.c  .generated_files/flags/default/130c18d4450cd619d4860c0a46e807dcec4ea96c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/fatfs" 
	@${RM} ${OBJECTDIR}/fatfs/ff.o.d 
	@${RM} ${OBJECTDIR}/fatfs/ff.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/fatfs/ff.o.d" -MT "${OBJECTDIR}/fatfs/ff.o.d" -MT ${OBJECTDIR}/fatfs/ff.o  -o ${OBJECTDIR}/fatfs/ff.o fatfs/ff.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/fatfs/ffsystem.o: fatfs/ffsystem.c  .generated_files/flags/default/96dc5939269cb344e5e2961513ba73604e42467e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/fatfs" 
	@${RM} ${OBJECTDIR}/fatfs/ffsystem.o.d 
	@${RM} ${OBJECTDIR}/fatfs/ffsystem.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/fatfs/ffsystem.o.d" -MT "${OBJECTDIR}/fatfs/ffsystem.o.d" -MT ${OBJECTDIR}/fatfs/ffsystem.o  -o ${OBJECTDIR}/fatfs/ffsystem.o fatfs/ffsystem.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/fatfs/ffunicode.o: fatfs/ffunicode.c  .generated_files/flags/default/e97b612e00f0b6da8f57eeef0596ea406ae3bc31 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/fatfs" 
	@${RM} ${OBJECTDIR}/fatfs/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/fatfs/ffunicode.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/fatfs/ffunicode.o.d" -MT "${OBJECTDIR}/fatfs/ffunicode.o.d" -MT ${OBJECTDIR}/fatfs/ffunicode.o  -o ${OBJECTDIR}/fatfs/ffunicode.o fatfs/ffunicode.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/fatfs/sd.o: fatfs/sd.c  .generated_files/flags/default/562405278a353e6da626a0b066a1e6dc4301790c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/fatfs" 
	@${RM} ${OBJECTDIR}/fatfs/sd.o.d 
	@${RM} ${OBJECTDIR}/fatfs/sd.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/fatfs/sd.o.d" -MT "${OBJECTDIR}/fatfs/sd.o.d" -MT ${OBJECTDIR}/fatfs/sd.o  -o ${OBJECTDIR}/fatfs/sd.o fatfs/sd.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/fatfs/diskio.o: fatfs/diskio.c  .generated_files/flags/default/906db59c806636be75f76bdf566b7649fab2f107 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/fatfs" 
	@${RM} ${OBJECTDIR}/fatfs/diskio.o.d 
	@${RM} ${OBJECTDIR}/fatfs/diskio.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/fatfs/diskio.o.d" -MT "${OBJECTDIR}/fatfs/diskio.o.d" -MT ${OBJECTDIR}/fatfs/diskio.o  -o ${OBJECTDIR}/fatfs/diskio.o fatfs/diskio.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Ethernet/W5100/w5100.o: wiznet/Ethernet/W5100/w5100.c  .generated_files/flags/default/2fb7b0a384192972bf5597bda9616232c357b211 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Ethernet/W5100" 
	@${RM} ${OBJECTDIR}/wiznet/Ethernet/W5100/w5100.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Ethernet/W5100/w5100.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Ethernet/W5100/w5100.o.d" -MT "${OBJECTDIR}/wiznet/Ethernet/W5100/w5100.o.d" -MT ${OBJECTDIR}/wiznet/Ethernet/W5100/w5100.o  -o ${OBJECTDIR}/wiznet/Ethernet/W5100/w5100.o wiznet/Ethernet/W5100/w5100.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Ethernet/socket.o: wiznet/Ethernet/socket.c  .generated_files/flags/default/cf6c3e39f298c1688d3c55db8ec595ef397659b7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Ethernet" 
	@${RM} ${OBJECTDIR}/wiznet/Ethernet/socket.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Ethernet/socket.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Ethernet/socket.o.d" -MT "${OBJECTDIR}/wiznet/Ethernet/socket.o.d" -MT ${OBJECTDIR}/wiznet/Ethernet/socket.o  -o ${OBJECTDIR}/wiznet/Ethernet/socket.o wiznet/Ethernet/socket.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Ethernet/wizchip_conf.o: wiznet/Ethernet/wizchip_conf.c  .generated_files/flags/default/f1e77251bdc5bd7659e3c774d8da0fdbcb8cf6ca .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Ethernet" 
	@${RM} ${OBJECTDIR}/wiznet/Ethernet/wizchip_conf.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Ethernet/wizchip_conf.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Ethernet/wizchip_conf.o.d" -MT "${OBJECTDIR}/wiznet/Ethernet/wizchip_conf.o.d" -MT ${OBJECTDIR}/wiznet/Ethernet/wizchip_conf.o  -o ${OBJECTDIR}/wiznet/Ethernet/wizchip_conf.o wiznet/Ethernet/wizchip_conf.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/8a2413f11eabf8cf6d74d90da81ef5a01b8315f7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o  -o ${OBJECTDIR}/main.o main.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/time/time.o: time/time.c  .generated_files/flags/default/ff439d58813912df3a352438b721deb13f53227d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/time" 
	@${RM} ${OBJECTDIR}/time/time.o.d 
	@${RM} ${OBJECTDIR}/time/time.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/time/time.o.d" -MT "${OBJECTDIR}/time/time.o.d" -MT ${OBJECTDIR}/time/time.o  -o ${OBJECTDIR}/time/time.o time/time.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wdt_driver.o: wdt_driver.c  .generated_files/flags/default/c0e10bac20de5fc59ae4826d10311a628bd52fbc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/wdt_driver.o.d 
	@${RM} ${OBJECTDIR}/wdt_driver.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wdt_driver.o.d" -MT "${OBJECTDIR}/wdt_driver.o.d" -MT ${OBJECTDIR}/wdt_driver.o  -o ${OBJECTDIR}/wdt_driver.o wdt_driver.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wizchip_spi.o: wizchip_spi.c  .generated_files/flags/default/e923b5c8d0cdab4324b1e0554cdae306de6c9fad .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/wizchip_spi.o.d 
	@${RM} ${OBJECTDIR}/wizchip_spi.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wizchip_spi.o.d" -MT "${OBJECTDIR}/wizchip_spi.o.d" -MT ${OBJECTDIR}/wizchip_spi.o  -o ${OBJECTDIR}/wizchip_spi.o wizchip_spi.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTClient.o: wiznet/Internet/MQTT/MQTTClient.c  .generated_files/flags/default/27ec029711947d8c6a117752582060bf0a988d86 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTClient.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTClient.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTClient.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTClient.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTClient.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTClient.o wiznet/Internet/MQTT/MQTTClient.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/mqtt_interface.o: wiznet/Internet/MQTT/mqtt_interface.c  .generated_files/flags/default/18c39922d7be11316726eff63c7bd8d63c012c92 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/mqtt_interface.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/mqtt_interface.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/mqtt_interface.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/mqtt_interface.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/mqtt_interface.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/mqtt_interface.o wiznet/Internet/MQTT/mqtt_interface.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hamqtt.o: hamqtt.c  .generated_files/flags/default/b56d8df7937d45cf7f5c71b0e524031827032c91 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/hamqtt.o.d 
	@${RM} ${OBJECTDIR}/hamqtt.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/hamqtt.o.d" -MT "${OBJECTDIR}/hamqtt.o.d" -MT ${OBJECTDIR}/hamqtt.o  -o ${OBJECTDIR}/hamqtt.o hamqtt.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.c  .generated_files/flags/default/26deda6104ec89bfe076f82efa0bf0e0ef902519 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.c  .generated_files/flags/default/19d35bacda634a550d59640d3313fd6b5cf094e1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.c  .generated_files/flags/default/105ad49ff8bc370c63055b3dd786cd070e5133fb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.c  .generated_files/flags/default/136231f33cdd06270708a87a3196c439d121d4a5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTFormat.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.c  .generated_files/flags/default/df77b3fadbed21add331a2b60d76010512ed458b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTPacket.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.c  .generated_files/flags/default/55bd5db4c1b9ad24418715c52cf948441e99173b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.c  .generated_files/flags/default/e14da14f7c1f2bf1e5aa4b4414a7be4efc46a63f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.c  .generated_files/flags/default/dab009dc2d155fc67b73b4f7edfc1aa60ff881e6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.c  .generated_files/flags/default/ce04f90a6e04dfb3dbdb6a40665a0dbda99f3865 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.o: wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.c  .generated_files/flags/default/4267c2597e6089cbc3135057199a122d28f1a312 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.o.d" -MT "${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.o.d" -MT ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.o  -o ${OBJECTDIR}/wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.o wiznet/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
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
