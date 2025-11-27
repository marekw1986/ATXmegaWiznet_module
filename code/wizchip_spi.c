/**
    Copyright (c) 2022 WIZnet Co.,Ltd

    SPDX-License-Identifier: BSD-3-Clause
*/

/**
    ----------------------------------------------------------------------------------------------------
    Includes
    ----------------------------------------------------------------------------------------------------
*/
#include <stdio.h>
#include <avr/io.h>
#include <util/delay.h>

#include "./wiznet/Ethernet/wizchip_conf.h"
#include "wizchip_spi.h"

static inline void wizchip_select(void) {
    PORTC.OUTCLR = PIN4_bm; 
}

static inline void wizchip_deselect(void) {
    PORTC.OUTSET = PIN4_bm; 
}

static void wizchip_critical_section_lock(void) {

}

static void wizchip_critical_section_unlock(void) {

}

void wizchip_reset() {
	PORTC_OUTCLR = PIN3_bm; //W5100_RST high
    _delay_ms(5);           // let the device reset
    PORTC_OUTSET = PIN3_bm; //W5100_RST high
    _delay_ms(10);          // let the chip wake up
}

static uint8_t wizchip_read(void) {
    uint8_t rx_data = 0;

    SPIC.DATA = 0xFF;
    while (!(SPIC.STATUS & SPI_IF_bm)) {}
    rx_data = SPIC.DATA;

    return rx_data;
}

static void wizchip_write(uint8_t tx_data) {
    SPIC.DATA = tx_data;
    while (!(SPIC.STATUS & SPI_IF_bm)) {}
    // read and discard read-back value to clear FIFO
    (void)SPIC.DATA;
}

void wizchip_spi_initialize(void) {
    // Enable SPI, Master Mode 0
	SPIC.CTRL = SPI_ENABLE_bm | SPI_MASTER_bm;
	//set the clock rate fck/2
	SPIC.CTRL |= SPI_PRESCALER_DIV4_gc;
}

void wizchip_cris_initialize(void) {
//    critical_section_init(&g_wizchip_cri_sec);
//    reg_wizchip_cris_cbfunc(wizchip_critical_section_lock, wizchip_critical_section_unlock);
}

void wizchip_initialize(void) {
    /* Deselect the FLASH : chip select high */
    wizchip_deselect();
    /* CS function register */
    reg_wizchip_cs_cbfunc(wizchip_select, wizchip_deselect);
    /* SPI function register */

    reg_wizchip_spi_cbfunc(wizchip_read, wizchip_write);

    /* W5x00, W6x00 initialize */
    uint8_t temp;
#if (_WIZCHIP_ == W5100)
uint8_t memsize[2][4] = {{2, 2, 2, 2}, {2, 2, 2, 2}};
#elif (_WIZCHIP_ == W5100S)
    uint8_t memsize[2][4] = {{2, 2, 2, 2}, {2, 2, 2, 2}};
#elif (_WIZCHIP_ == W5500)
    uint8_t memsize[2][8] = {{2, 2, 2, 2, 2, 2, 2, 2}, {2, 2, 2, 2, 2, 2, 2, 2}};
#elif (_WIZCHIP_ == W6100)
    uint8_t memsize[2][8] = {{2, 2, 2, 2, 2, 2, 2, 2}, {2, 2, 2, 2, 2, 2, 2, 2}};
#elif (_WIZCHIP_ == W6300)
    uint8_t memsize[2][8] = {{4, 4, 4, 4, 4, 4, 4, 4}, {4, 4, 4, 4, 4, 4, 4, 4}};
#endif

    if (ctlwizchip(CW_INIT_WIZCHIP, (void *)memsize) == -1) {
#if _WIZCHIP_ <= W5500
        printf(" W5x00 initialized fail\n");
#else
        printf(" W6x00 initialized fail\n");
#endif

        return;
    }
    /* Check PHY link status */
    do {
        if (ctlwizchip(CW_GET_PHYLINK, (void *)&temp) == -1) {
            printf(" Unknown PHY link status\n");

            return;
        }
    } while (temp == PHY_LINK_OFF);
}

void wizchip_check(void) {
#if (_WIZCHIP_ == W5100S)
    /* Read version register */
    if (getVER() != 0x51) {
        printf(" ACCESS ERR : VERSION != 0x51, read value = 0x%02x\n", getVER());

        while (1)
            ;
    }
#elif (_WIZCHIP_ == W5500)
    /* Read version register */
    if (getVERSIONR() != 0x04) {
        printf(" ACCESS ERR : VERSION != 0x04, read value = 0x%02x\n", getVERSIONR());

        while (1)
            ;
    }
#elif (_WIZCHIP_ == W6100)
    /* Read version register */
    if (getCIDR() != 0x6100) {
        printf(" ACCESS ERR : VERSION != 0x6100, read value = 0x%02x\n", getCIDR());

        while (1)
            ;
    }
#elif (_WIZCHIP_ == W6300)
    /* Read version register */
    if (getCIDR() != 0x6300) {
        printf(" ACCESS ERR : VERSION != 0x6100, read value = 0x%02x\n", getCIDR());

        while (1)
            ;
    }
#endif
}

/* Network */
void network_initialize(wiz_NetInfo net_info) {
#if _WIZCHIP_ <= W5500
    ctlnetwork(CN_SET_NETINFO, (void *)&net_info);
#else
    uint8_t syslock = SYS_NET_LOCK;
    ctlwizchip(CW_SYS_UNLOCK, &syslock);
    ctlnetwork(CN_SET_NETINFO, (void *)&net_info);
#endif
}

void print_network_information(wiz_NetInfo net_info) {
    uint8_t tmp_str[8] = {
        0,
    };

    ctlnetwork(CN_GET_NETINFO, (void *)&net_info);
    ctlwizchip(CW_GET_ID, (void *)tmp_str);
#if _WIZCHIP_ <= W5500
    if (net_info.dhcp == NETINFO_DHCP) {
        printf("====================================================================================================\n");
        printf(" %s network configuration : DHCP\n\n", (char *)tmp_str);
    } else {
        printf("====================================================================================================\n");
        printf(" %s network configuration : static\n\n", (char *)tmp_str);
    }

    printf(" MAC         : %02X:%02X:%02X:%02X:%02X:%02X\n", net_info.mac[0], net_info.mac[1], net_info.mac[2], net_info.mac[3], net_info.mac[4], net_info.mac[5]);
    printf(" IP          : %d.%d.%d.%d\n", net_info.ip[0], net_info.ip[1], net_info.ip[2], net_info.ip[3]);
    printf(" Subnet Mask : %d.%d.%d.%d\n", net_info.sn[0], net_info.sn[1], net_info.sn[2], net_info.sn[3]);
    printf(" Gateway     : %d.%d.%d.%d\n", net_info.gw[0], net_info.gw[1], net_info.gw[2], net_info.gw[3]);
    printf(" DNS         : %d.%d.%d.%d\n", net_info.dns[0], net_info.dns[1], net_info.dns[2], net_info.dns[3]);
    printf("====================================================================================================\n\n");
#else
    printf("==========================================================\n");
    printf(" %s network configuration\n\n", (char *)tmp_str);

    printf(" MAC         : %02X:%02X:%02X:%02X:%02X:%02X\n", net_info.mac[0], net_info.mac[1], net_info.mac[2], net_info.mac[3], net_info.mac[4], net_info.mac[5]);
    printf(" IP          : %d.%d.%d.%d\n", net_info.ip[0], net_info.ip[1], net_info.ip[2], net_info.ip[3]);
    printf(" Subnet Mask : %d.%d.%d.%d\n", net_info.sn[0], net_info.sn[1], net_info.sn[2], net_info.sn[3]);
    printf(" Gateway     : %d.%d.%d.%d\n", net_info.gw[0], net_info.gw[1], net_info.gw[2], net_info.gw[3]);
    printf(" DNS         : %d.%d.%d.%d\n", net_info.dns[0], net_info.dns[1], net_info.dns[2], net_info.dns[3]);
    print_ipv6_addr(" GW6 ", net_info.gw6);
    print_ipv6_addr(" LLA ", net_info.lla);
    print_ipv6_addr(" GUA ", net_info.gua);
    print_ipv6_addr(" SUB6", net_info.sn6);
    print_ipv6_addr(" DNS6", net_info.dns6);
    printf("==========================================================\n\n");
#endif
}

void print_ipv6_addr(uint8_t* name, uint8_t* ip6addr) {
    printf("%s        : ", name);
    printf("%04X:%04X", ((uint16_t)ip6addr[0] << 8) | ((uint16_t)ip6addr[1]), ((uint16_t)ip6addr[2] << 8) | ((uint16_t)ip6addr[3]));
    printf(":%04X:%04X", ((uint16_t)ip6addr[4] << 8) | ((uint16_t)ip6addr[5]), ((uint16_t)ip6addr[6] << 8) | ((uint16_t)ip6addr[7]));
    printf(":%04X:%04X", ((uint16_t)ip6addr[8] << 8) | ((uint16_t)ip6addr[9]), ((uint16_t)ip6addr[10] << 8) | ((uint16_t)ip6addr[11]));
    printf(":%04X:%04X\r\n", ((uint16_t)ip6addr[12] << 8) | ((uint16_t)ip6addr[13]), ((uint16_t)ip6addr[14] << 8) | ((uint16_t)ip6addr[15]));
}

void wizchip_setup(void)
{
    WIZCHIP.CS._select   = wizchip_select;
    WIZCHIP.CS._deselect = wizchip_deselect;

    WIZCHIP.IF.SPI._read_byte   = wizchip_read;
    WIZCHIP.IF.SPI._write_byte  = wizchip_write;
    WIZCHIP.IF.SPI._read_burst  = NULL;
    WIZCHIP.IF.SPI._write_burst = NULL;
    
    WIZCHIP.CRIS._enter = wizchip_critical_section_lock;
    WIZCHIP.CRIS._exit = wizchip_critical_section_unlock;

    wizchip_initialize();
}