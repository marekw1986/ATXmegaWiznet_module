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
SOURCEFILES_QUOTED_IF_SPACED=fatfs/ff.c fatfs/ffsystem.c fatfs/ffunicode.c fatfs/sd.c fatfs/diskio.c wiznet/Ethernet/W5100/w5100.c wiznet/Ethernet/socket.c wiznet/Ethernet/wizchip_conf.c wiznet/Internet/DHCP/dhcp.c wiznet/Internet/SNTP/sntp.c wolfmqtt/mqtt_client.c wolfmqtt/mqtt_sn_client.c wolfmqtt/mqtt_sn_packet.c wolfmqtt/mqtt_socket.c wolfmqtt/mqtt_packet.c wolfmqtt/mqttnet.c main.c wdt_driver.c wizchip_spi.c hamqtt.c time/my_time.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/fatfs/ff.o ${OBJECTDIR}/fatfs/ffsystem.o ${OBJECTDIR}/fatfs/ffunicode.o ${OBJECTDIR}/fatfs/sd.o ${OBJECTDIR}/fatfs/diskio.o ${OBJECTDIR}/wiznet/Ethernet/W5100/w5100.o ${OBJECTDIR}/wiznet/Ethernet/socket.o ${OBJECTDIR}/wiznet/Ethernet/wizchip_conf.o ${OBJECTDIR}/wiznet/Internet/DHCP/dhcp.o ${OBJECTDIR}/wiznet/Internet/SNTP/sntp.o ${OBJECTDIR}/wolfmqtt/mqtt_client.o ${OBJECTDIR}/wolfmqtt/mqtt_sn_client.o ${OBJECTDIR}/wolfmqtt/mqtt_sn_packet.o ${OBJECTDIR}/wolfmqtt/mqtt_socket.o ${OBJECTDIR}/wolfmqtt/mqtt_packet.o ${OBJECTDIR}/wolfmqtt/mqttnet.o ${OBJECTDIR}/main.o ${OBJECTDIR}/wdt_driver.o ${OBJECTDIR}/wizchip_spi.o ${OBJECTDIR}/hamqtt.o ${OBJECTDIR}/time/my_time.o
POSSIBLE_DEPFILES=${OBJECTDIR}/fatfs/ff.o.d ${OBJECTDIR}/fatfs/ffsystem.o.d ${OBJECTDIR}/fatfs/ffunicode.o.d ${OBJECTDIR}/fatfs/sd.o.d ${OBJECTDIR}/fatfs/diskio.o.d ${OBJECTDIR}/wiznet/Ethernet/W5100/w5100.o.d ${OBJECTDIR}/wiznet/Ethernet/socket.o.d ${OBJECTDIR}/wiznet/Ethernet/wizchip_conf.o.d ${OBJECTDIR}/wiznet/Internet/DHCP/dhcp.o.d ${OBJECTDIR}/wiznet/Internet/SNTP/sntp.o.d ${OBJECTDIR}/wolfmqtt/mqtt_client.o.d ${OBJECTDIR}/wolfmqtt/mqtt_sn_client.o.d ${OBJECTDIR}/wolfmqtt/mqtt_sn_packet.o.d ${OBJECTDIR}/wolfmqtt/mqtt_socket.o.d ${OBJECTDIR}/wolfmqtt/mqtt_packet.o.d ${OBJECTDIR}/wolfmqtt/mqttnet.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/wdt_driver.o.d ${OBJECTDIR}/wizchip_spi.o.d ${OBJECTDIR}/hamqtt.o.d ${OBJECTDIR}/time/my_time.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/fatfs/ff.o ${OBJECTDIR}/fatfs/ffsystem.o ${OBJECTDIR}/fatfs/ffunicode.o ${OBJECTDIR}/fatfs/sd.o ${OBJECTDIR}/fatfs/diskio.o ${OBJECTDIR}/wiznet/Ethernet/W5100/w5100.o ${OBJECTDIR}/wiznet/Ethernet/socket.o ${OBJECTDIR}/wiznet/Ethernet/wizchip_conf.o ${OBJECTDIR}/wiznet/Internet/DHCP/dhcp.o ${OBJECTDIR}/wiznet/Internet/SNTP/sntp.o ${OBJECTDIR}/wolfmqtt/mqtt_client.o ${OBJECTDIR}/wolfmqtt/mqtt_sn_client.o ${OBJECTDIR}/wolfmqtt/mqtt_sn_packet.o ${OBJECTDIR}/wolfmqtt/mqtt_socket.o ${OBJECTDIR}/wolfmqtt/mqtt_packet.o ${OBJECTDIR}/wolfmqtt/mqttnet.o ${OBJECTDIR}/main.o ${OBJECTDIR}/wdt_driver.o ${OBJECTDIR}/wizchip_spi.o ${OBJECTDIR}/hamqtt.o ${OBJECTDIR}/time/my_time.o

# Source Files
SOURCEFILES=fatfs/ff.c fatfs/ffsystem.c fatfs/ffunicode.c fatfs/sd.c fatfs/diskio.c wiznet/Ethernet/W5100/w5100.c wiznet/Ethernet/socket.c wiznet/Ethernet/wizchip_conf.c wiznet/Internet/DHCP/dhcp.c wiznet/Internet/SNTP/sntp.c wolfmqtt/mqtt_client.c wolfmqtt/mqtt_sn_client.c wolfmqtt/mqtt_sn_packet.c wolfmqtt/mqtt_socket.c wolfmqtt/mqtt_packet.c wolfmqtt/mqttnet.c main.c wdt_driver.c wizchip_spi.c hamqtt.c time/my_time.c

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
	
${OBJECTDIR}/wiznet/Internet/DHCP/dhcp.o: wiznet/Internet/DHCP/dhcp.c  .generated_files/flags/default/34b2e1983ea2cb4c2ad91482904bd8f6f72f3eb0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/DHCP" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/DHCP/dhcp.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/DHCP/dhcp.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/DHCP/dhcp.o.d" -MT "${OBJECTDIR}/wiznet/Internet/DHCP/dhcp.o.d" -MT ${OBJECTDIR}/wiznet/Internet/DHCP/dhcp.o  -o ${OBJECTDIR}/wiznet/Internet/DHCP/dhcp.o wiznet/Internet/DHCP/dhcp.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/SNTP/sntp.o: wiznet/Internet/SNTP/sntp.c  .generated_files/flags/default/7237d6336f1d0247c85fd8cb8e9283c29403d23c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/SNTP" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/SNTP/sntp.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/SNTP/sntp.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/SNTP/sntp.o.d" -MT "${OBJECTDIR}/wiznet/Internet/SNTP/sntp.o.d" -MT ${OBJECTDIR}/wiznet/Internet/SNTP/sntp.o  -o ${OBJECTDIR}/wiznet/Internet/SNTP/sntp.o wiznet/Internet/SNTP/sntp.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wolfmqtt/mqtt_client.o: wolfmqtt/mqtt_client.c  .generated_files/flags/default/f8028d5a2319549eaa75859fe00731fc77cc6d3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wolfmqtt" 
	@${RM} ${OBJECTDIR}/wolfmqtt/mqtt_client.o.d 
	@${RM} ${OBJECTDIR}/wolfmqtt/mqtt_client.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wolfmqtt/mqtt_client.o.d" -MT "${OBJECTDIR}/wolfmqtt/mqtt_client.o.d" -MT ${OBJECTDIR}/wolfmqtt/mqtt_client.o  -o ${OBJECTDIR}/wolfmqtt/mqtt_client.o wolfmqtt/mqtt_client.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wolfmqtt/mqtt_sn_client.o: wolfmqtt/mqtt_sn_client.c  .generated_files/flags/default/1fb365348000d9c7652037798ade63fe984ca688 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wolfmqtt" 
	@${RM} ${OBJECTDIR}/wolfmqtt/mqtt_sn_client.o.d 
	@${RM} ${OBJECTDIR}/wolfmqtt/mqtt_sn_client.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wolfmqtt/mqtt_sn_client.o.d" -MT "${OBJECTDIR}/wolfmqtt/mqtt_sn_client.o.d" -MT ${OBJECTDIR}/wolfmqtt/mqtt_sn_client.o  -o ${OBJECTDIR}/wolfmqtt/mqtt_sn_client.o wolfmqtt/mqtt_sn_client.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wolfmqtt/mqtt_sn_packet.o: wolfmqtt/mqtt_sn_packet.c  .generated_files/flags/default/62c9e0276ab7f5e67e1263228070071a4d633d6e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wolfmqtt" 
	@${RM} ${OBJECTDIR}/wolfmqtt/mqtt_sn_packet.o.d 
	@${RM} ${OBJECTDIR}/wolfmqtt/mqtt_sn_packet.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wolfmqtt/mqtt_sn_packet.o.d" -MT "${OBJECTDIR}/wolfmqtt/mqtt_sn_packet.o.d" -MT ${OBJECTDIR}/wolfmqtt/mqtt_sn_packet.o  -o ${OBJECTDIR}/wolfmqtt/mqtt_sn_packet.o wolfmqtt/mqtt_sn_packet.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wolfmqtt/mqtt_socket.o: wolfmqtt/mqtt_socket.c  .generated_files/flags/default/efcb0ea790d7db5a8af77df5b66963e56fbe829b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wolfmqtt" 
	@${RM} ${OBJECTDIR}/wolfmqtt/mqtt_socket.o.d 
	@${RM} ${OBJECTDIR}/wolfmqtt/mqtt_socket.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wolfmqtt/mqtt_socket.o.d" -MT "${OBJECTDIR}/wolfmqtt/mqtt_socket.o.d" -MT ${OBJECTDIR}/wolfmqtt/mqtt_socket.o  -o ${OBJECTDIR}/wolfmqtt/mqtt_socket.o wolfmqtt/mqtt_socket.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wolfmqtt/mqtt_packet.o: wolfmqtt/mqtt_packet.c  .generated_files/flags/default/5f47c9b0f55ac5407d55174a28f1db31b31e6bc4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wolfmqtt" 
	@${RM} ${OBJECTDIR}/wolfmqtt/mqtt_packet.o.d 
	@${RM} ${OBJECTDIR}/wolfmqtt/mqtt_packet.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wolfmqtt/mqtt_packet.o.d" -MT "${OBJECTDIR}/wolfmqtt/mqtt_packet.o.d" -MT ${OBJECTDIR}/wolfmqtt/mqtt_packet.o  -o ${OBJECTDIR}/wolfmqtt/mqtt_packet.o wolfmqtt/mqtt_packet.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wolfmqtt/mqttnet.o: wolfmqtt/mqttnet.c  .generated_files/flags/default/992641c6063d05615abb2d7d06a828120c91dc9c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wolfmqtt" 
	@${RM} ${OBJECTDIR}/wolfmqtt/mqttnet.o.d 
	@${RM} ${OBJECTDIR}/wolfmqtt/mqttnet.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wolfmqtt/mqttnet.o.d" -MT "${OBJECTDIR}/wolfmqtt/mqttnet.o.d" -MT ${OBJECTDIR}/wolfmqtt/mqttnet.o  -o ${OBJECTDIR}/wolfmqtt/mqttnet.o wolfmqtt/mqttnet.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/2757e7b6eeafcfcf0c1f86c653917ac2c3a0be58 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o  -o ${OBJECTDIR}/main.o main.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
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
	
${OBJECTDIR}/hamqtt.o: hamqtt.c  .generated_files/flags/default/89d07690d7d2f25fd9b8a93f2d1cb235f2354b4b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/hamqtt.o.d 
	@${RM} ${OBJECTDIR}/hamqtt.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/hamqtt.o.d" -MT "${OBJECTDIR}/hamqtt.o.d" -MT ${OBJECTDIR}/hamqtt.o  -o ${OBJECTDIR}/hamqtt.o hamqtt.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/time/my_time.o: time/my_time.c  .generated_files/flags/default/c762f724c2676da82c80333ca33ab6388a319cd0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/time" 
	@${RM} ${OBJECTDIR}/time/my_time.o.d 
	@${RM} ${OBJECTDIR}/time/my_time.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/time/my_time.o.d" -MT "${OBJECTDIR}/time/my_time.o.d" -MT ${OBJECTDIR}/time/my_time.o  -o ${OBJECTDIR}/time/my_time.o time/my_time.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
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
	
${OBJECTDIR}/wiznet/Internet/DHCP/dhcp.o: wiznet/Internet/DHCP/dhcp.c  .generated_files/flags/default/b8d5450de04976c3641439248e1453f25f36d015 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/DHCP" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/DHCP/dhcp.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/DHCP/dhcp.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/DHCP/dhcp.o.d" -MT "${OBJECTDIR}/wiznet/Internet/DHCP/dhcp.o.d" -MT ${OBJECTDIR}/wiznet/Internet/DHCP/dhcp.o  -o ${OBJECTDIR}/wiznet/Internet/DHCP/dhcp.o wiznet/Internet/DHCP/dhcp.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wiznet/Internet/SNTP/sntp.o: wiznet/Internet/SNTP/sntp.c  .generated_files/flags/default/894e7c6e9da7d4a2e20202d85f0b3313acd1cd33 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wiznet/Internet/SNTP" 
	@${RM} ${OBJECTDIR}/wiznet/Internet/SNTP/sntp.o.d 
	@${RM} ${OBJECTDIR}/wiznet/Internet/SNTP/sntp.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wiznet/Internet/SNTP/sntp.o.d" -MT "${OBJECTDIR}/wiznet/Internet/SNTP/sntp.o.d" -MT ${OBJECTDIR}/wiznet/Internet/SNTP/sntp.o  -o ${OBJECTDIR}/wiznet/Internet/SNTP/sntp.o wiznet/Internet/SNTP/sntp.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wolfmqtt/mqtt_client.o: wolfmqtt/mqtt_client.c  .generated_files/flags/default/a90daf21bc5d19d821ff67e941424755e584d8a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wolfmqtt" 
	@${RM} ${OBJECTDIR}/wolfmqtt/mqtt_client.o.d 
	@${RM} ${OBJECTDIR}/wolfmqtt/mqtt_client.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wolfmqtt/mqtt_client.o.d" -MT "${OBJECTDIR}/wolfmqtt/mqtt_client.o.d" -MT ${OBJECTDIR}/wolfmqtt/mqtt_client.o  -o ${OBJECTDIR}/wolfmqtt/mqtt_client.o wolfmqtt/mqtt_client.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wolfmqtt/mqtt_sn_client.o: wolfmqtt/mqtt_sn_client.c  .generated_files/flags/default/4585ff00f7bc98187f540e00abce0eaf636989ce .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wolfmqtt" 
	@${RM} ${OBJECTDIR}/wolfmqtt/mqtt_sn_client.o.d 
	@${RM} ${OBJECTDIR}/wolfmqtt/mqtt_sn_client.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wolfmqtt/mqtt_sn_client.o.d" -MT "${OBJECTDIR}/wolfmqtt/mqtt_sn_client.o.d" -MT ${OBJECTDIR}/wolfmqtt/mqtt_sn_client.o  -o ${OBJECTDIR}/wolfmqtt/mqtt_sn_client.o wolfmqtt/mqtt_sn_client.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wolfmqtt/mqtt_sn_packet.o: wolfmqtt/mqtt_sn_packet.c  .generated_files/flags/default/46becacc8bbe82eda255f6c731b0b4f26b20f7f5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wolfmqtt" 
	@${RM} ${OBJECTDIR}/wolfmqtt/mqtt_sn_packet.o.d 
	@${RM} ${OBJECTDIR}/wolfmqtt/mqtt_sn_packet.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wolfmqtt/mqtt_sn_packet.o.d" -MT "${OBJECTDIR}/wolfmqtt/mqtt_sn_packet.o.d" -MT ${OBJECTDIR}/wolfmqtt/mqtt_sn_packet.o  -o ${OBJECTDIR}/wolfmqtt/mqtt_sn_packet.o wolfmqtt/mqtt_sn_packet.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wolfmqtt/mqtt_socket.o: wolfmqtt/mqtt_socket.c  .generated_files/flags/default/c1697e6eee343c074a37739112c969db1ea65ffe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wolfmqtt" 
	@${RM} ${OBJECTDIR}/wolfmqtt/mqtt_socket.o.d 
	@${RM} ${OBJECTDIR}/wolfmqtt/mqtt_socket.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wolfmqtt/mqtt_socket.o.d" -MT "${OBJECTDIR}/wolfmqtt/mqtt_socket.o.d" -MT ${OBJECTDIR}/wolfmqtt/mqtt_socket.o  -o ${OBJECTDIR}/wolfmqtt/mqtt_socket.o wolfmqtt/mqtt_socket.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wolfmqtt/mqtt_packet.o: wolfmqtt/mqtt_packet.c  .generated_files/flags/default/e12db7fc23192898d7f6d663eca92ea153b76e6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wolfmqtt" 
	@${RM} ${OBJECTDIR}/wolfmqtt/mqtt_packet.o.d 
	@${RM} ${OBJECTDIR}/wolfmqtt/mqtt_packet.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wolfmqtt/mqtt_packet.o.d" -MT "${OBJECTDIR}/wolfmqtt/mqtt_packet.o.d" -MT ${OBJECTDIR}/wolfmqtt/mqtt_packet.o  -o ${OBJECTDIR}/wolfmqtt/mqtt_packet.o wolfmqtt/mqtt_packet.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/wolfmqtt/mqttnet.o: wolfmqtt/mqttnet.c  .generated_files/flags/default/2fda92355ec9eefef8c8444fac34eff4484434f2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/wolfmqtt" 
	@${RM} ${OBJECTDIR}/wolfmqtt/mqttnet.o.d 
	@${RM} ${OBJECTDIR}/wolfmqtt/mqttnet.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/wolfmqtt/mqttnet.o.d" -MT "${OBJECTDIR}/wolfmqtt/mqttnet.o.d" -MT ${OBJECTDIR}/wolfmqtt/mqttnet.o  -o ${OBJECTDIR}/wolfmqtt/mqttnet.o wolfmqtt/mqttnet.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/8a2413f11eabf8cf6d74d90da81ef5a01b8315f7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o  -o ${OBJECTDIR}/main.o main.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
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
	
${OBJECTDIR}/hamqtt.o: hamqtt.c  .generated_files/flags/default/b56d8df7937d45cf7f5c71b0e524031827032c91 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/hamqtt.o.d 
	@${RM} ${OBJECTDIR}/hamqtt.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/hamqtt.o.d" -MT "${OBJECTDIR}/hamqtt.o.d" -MT ${OBJECTDIR}/hamqtt.o  -o ${OBJECTDIR}/hamqtt.o hamqtt.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/time/my_time.o: time/my_time.c  .generated_files/flags/default/67f3bab1a02ef249a1c4de1bf57685a893d1be2f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/time" 
	@${RM} ${OBJECTDIR}/time/my_time.o.d 
	@${RM} ${OBJECTDIR}/time/my_time.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=atxmega128a3u ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -DF_CPU=32000000 -D_WIZCHIP_=W5100  -I "wiznet/Ethernet" -Wall -MD -MP -MF "${OBJECTDIR}/time/my_time.o.d" -MT "${OBJECTDIR}/time/my_time.o.d" -MT ${OBJECTDIR}/time/my_time.o  -o ${OBJECTDIR}/time/my_time.o time/my_time.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
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
