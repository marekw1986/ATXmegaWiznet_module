/**
    Copyright (c) 2022 WIZnet Co.,Ltd

    SPDX-License-Identifier: BSD-3-Clause
*/

#ifndef _WIZCHIP_SPI_H_
#define _WIZCHIP_SPI_H_

#include "wiznet/Ethernet/wizchip_conf.h"


/*! \brief Initialize SPI instances and Set DMA channel
    \ingroup wizchip_spi

    Set GPIO to spi0.
    Puts the SPI into a known state, and enable it.
    Set DMA channel completion channel.

    \param none
*/
void wizchip_spi_initialize(void);

/*! \brief Initialize a critical section structure
    \ingroup wizchip_spi

    The critical section is initialized ready for use.
    Registers callback function for critical section for WIZchip.

    \param none
*/
void wizchip_cris_initialize(void);

/*! \brief wizchip reset
    \ingroup wizchip_spi

    Set a reset pin and reset.

    \param none
*/
void wizchip_reset(void);

/*! \brief Initialize WIZchip
    \ingroup wizchip_spi

    Set callback function to read/write byte using SPI & QSPI.
    Set callback function for WIZchip select/deselect.
    Set memory size of wizchip and monitor PHY link status.

    \param none
*/
void wizchip_initialize(void);

/*! \brief Check chip version
    \ingroup wizchip_spi

    Get version information.

    \param none
*/
void wizchip_check(void);

/* Network */
/*! \brief Initialize network
    \ingroup wizchip_spi

    Set network information.

    \param net_info network information.
*/
void network_initialize(wiz_NetInfo net_info);

/*! \brief Print network information
    \ingroup wizchip_spi

    Print network information about MAC address, IP address, Subnet mask, Gateway, DHCP and DNS address.

    \param net_info network information.
*/
void print_network_information(wiz_NetInfo net_info);

/*! \brief Print IPv6 Address
    \ingroup wizchip_spi

    Print IPv6 Address.

    \param net_info network information.
*/
void print_ipv6_addr(uint8_t* name, uint8_t* ip6addr);

#endif /* _WIZCHIP_SPI_H_ */
