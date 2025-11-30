/* 
 * File:   main.c
 * Author: marek
 *
 * Created on 29 maja 2019, 09:37
 */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <avr/io.h>  
#include <avr/interrupt.h>
#include <util/delay.h>
#include <avr/pgmspace.h>
#include <time.h>

#include "wdt_driver.h"
#include "time/my_time.h"
#include "fatfs/ff.h"
#include "fatfs/ffconf.h"
#include "fatfs/diskio.h"
#include "wizchip_spi.h"
#include "wiznet/Ethernet/wizchip_conf.h"
#include "wiznet/Internet/MQTT/mqtt_interface.h"
#include "wiznet/Internet/MQTT/MQTTClient.h"
#include "wiznet/Internet/DHCP/dhcp.h"
#include "wiznet/Internet/SNTP/sntp.h"
#include "hamqtt.h"
//#include "usb/usb_xmega.h"

#define SOCKET_DHCP 1
#define SOCKET_SNTP 2
#define DHCP_RETRY_COUNT 10
#define TIMEZONE 21      // For UTC

//USB_ENDPOINTS(0);

FATFS SDFatFS;

static wiz_NetInfo g_net_info =
{
    .mac = {0x00, 0x08, 0xDC, 0x12, 0x34, 0x56}, // MAC address
    .ip = {192, 168, 1, 37},                     // IP address
    .sn = {255, 255, 255, 0},                    // Subnet Mask
    .gw = {192, 168, 1, 1},                     // Gateway
    .dns = {8, 8, 8, 8},                         // DNS server
    .dhcp = NETINFO_DHCP        
};

static uint8_t g_sntp_server_ip[4] = {192, 168, 1, 61};

uint8_t g_dhcp_get_ip_flag = 0;

static uint8_t g_ethernet_buf[512];
static uint8_t g_sntp_buf[64];

void dhcp_handle(void);
void sntp_handle(void);
time_t convertToUnixTimestamp(datetime t);

static void uart_init (void);
static int uart_putchar(char c, FILE *stream);
static void inline initialize_clock (void);
static void inline initialize_peripherals (void);
static void handle_blink (void);
static inline void handle_write(void);
static FILE mystdout = FDEV_SETUP_STREAM (uart_putchar, NULL, _FDEV_SETUP_WRITE);
static void wizchip_dhcp_assign(void);
static void wizchip_dhcp_conflict(void);

/*
 * 
 */
int main(int argc, char** argv) {
    FRESULT res;
    static uint32_t watchdog_timer = 0;
    static uint32_t test_timer = 0;
    //unsigned int sockaddr;
	//unsigned char mysocket;
    
    initialize_clock();
    initialize_peripherals();
    uart_init();    
    
    stdout = &mystdout;
    
	//usb_configure_clock();

	// Enable USB interrupts
	//USB.INTCTRLA = /*USB_SOFIE_bm |*/ USB_BUSEVIE_bm | USB_INTLVL_MED_gc;
	//USB.INTCTRLB = USB_TRNIE_bm | USB_SETUPIE_bm;

	//usb_init();    
    
    printf(PSTR("Start...\r\n"));
    
    time_init();
    
    wizchip_initialize();
    
    res = f_mount(&SDFatFS, "", 0);
    if (res != FR_OK) {printf_P(PSTR("SD f_mount error code: %i\r\n"), res);}
    else {printf_P(PSTR("SD f_mount OK\r\n"));}
    
    wizchip_reset();
    wizchip_initialize();
    wizchip_check();
    
    if (g_net_info.dhcp == NETINFO_DHCP) { // DHCP
        printf_P(PSTR("DHCP client running\r\n"));
        DHCP_init(SOCKET_DHCP, g_ethernet_buf);
        reg_dhcp_cbfunc(wizchip_dhcp_assign, wizchip_dhcp_assign, wizchip_dhcp_conflict);
    }
    else {
        network_initialize(g_net_info);
        /* Get network information */
        print_network_information(g_net_info);
    }
    
    SNTP_init(SOCKET_SNTP, g_sntp_server_ip, TIMEZONE, g_sntp_buf);
    
    PMIC.CTRL = PMIC_LOLVLEN_bm;        //Without USB 
    //PMIC.CTRL = PMIC_LOLVLEN_bm | PMIC_MEDLVLEN_bm | PMIC_HILVLEN_bm; 
    sei();
    
    //usb_attach();
    
    WDT_Disable();
    WDT_EnableAndSetTimeout(WDT_PER_2KCLK_gc);
    
    while (1) {
        dhcp_handle();
        sntp_handle();
        mqtt_handle();
        handle_blink();
        handle_write();
        disk_timerproc();
        
        if ((uint32_t)(millis() - watchdog_timer) > 200) {
            watchdog_timer = millis();
            WDT_Reset();
        }
        
        if ((uint32_t)(millis() - test_timer) > 5000) {
            test_timer = millis();
            //printf_P("Testing function writeSPI()\r\n");
            //writeSPI(0xFF);
        }        
    }

    return (EXIT_SUCCESS);
}

static void uart_init (void) {
    USARTD0_CTRLB |= USART_RXEN_bm|USART_TXEN_bm; //enable usart receiver and transmitter
    USARTD0_CTRLC |= USART_CHSIZE1_bm|USART_CHSIZE0_bm; //asynchronous usart char size 8-bit, 1 stop bit, no parity
    USARTD0_BAUDCTRLA = 0x2E; //BSEL is 2094 (0x082E)
    USARTD0_BAUDCTRLB = 0x98; //BSCALE is -7    
}

static int uart_putchar(char c, FILE *stream) {
    // Wait for the transmit buffer to be empty
    while ( !( USARTD0.STATUS & USART_DREIF_bm) );
    // Put our character into the transmit buffer
    USARTD0.DATA = c; 
    return 0;
}

static inline void initialize_clock (void) {
        // ========= System Clock configuration =========
    // Set to external 8Mhz crystal, using the PLL at *2
    // set it to be a 2-9Mhz crystal with a slow start-up time.
    OSC.XOSCCTRL = OSC_FRQRANGE_2TO9_gc | OSC_XOSCSEL_XTAL_16KCLK_gc ;
    OSC.CTRL |= OSC_XOSCEN_bm ; // enable it
    while( (OSC.STATUS & OSC_XOSCRDY_bm) == 0 ){} // wait until it's stable
    
    // The external crystal is now running and stable.
    // (Note that it's not yet selected as the clock source)
    // Now configure the PLL to be eXternal oscillator * 2
    OSC.PLLCTRL = OSC_PLLSRC_XOSC_gc | 4;
    
    // now enable the PLL...
    OSC.CTRL |= OSC_PLLEN_bm ; // enable the PLL...
    while( (OSC.STATUS & OSC_PLLRDY_bm) == 0 ){} // wait until it's stable
    
    // And now, *finally*, we can switch from the internal 2Mhz clock to the PLL
    CCP = CCP_IOREG_gc;	// protected write follows   
    CLK.CTRL = CLK_SCLKSEL_PLL_gc;	// The System clock is now  PLL (16Mhz * 2)    
}

static inline void initialize_peripherals (void) {
    PORTF_DIRSET = PIN2_bm; //LED1
    PORTF_DIRSET = PIN3_bm; //LED2
    PORTD_DIRCLR = PIN2_bm; //PD2 is RX
    PORTD_DIRSET = PIN3_bm; //PD3 is TX
    PORTE_DIRCLR = PIN0_bm; //KEY 1 input
    PORTE_OUTSET = PIN0_bm; //KEY 1 pullup
    PORTE_DIRCLR = PIN1_bm; //KEY 2 input
    PORTE_OUTSET = PIN1_bm; //KEY 2 pullup
    PORTE_DIRCLR = PIN2_bm; //KEY 3 input
    PORTE_OUTSET = PIN2_bm; //KEY 3 pullup
    PORTE_DIRCLR = PIN3_bm; //SD PRESENT input
    PORTE_DIRSET = PIN4_bm; //PE4 is SPIE SS, should be an output to avoid issues.
    PORTE_DIRSET = PIN5_bm; //SD_SCK output
    PORTE_DIRCLR = PIN6_bm; //SD_MISO input
    PORTE_DIRSET = PIN7_bm; //SD_MOSI output
    PORTF_DIRSET = PIN0_bm; //SD_CS output
    PORTF_OUTSET = PIN0_bm; //SD_CS high
    PORTF_DIRSET = PIN1_bm; //SD_LED output
    PORTC_DIRCLR = PIN2_bm; //W5100_INT input
    PORTC_DIRSET = PIN3_bm; //W5100_RST output
    PORTC_OUTSET = PIN3_bm; //W5100_RST high
    PORTC_DIRSET = PIN4_bm; //W5100_CS output
    PORTC_OUTSET = PIN4_bm; //W5100_CS high
    PORTC_DIRSET = PIN5_bm; //W5100_SCK output
    PORTC_DIRCLR = PIN6_bm; //W5100_MISO input
    PORTC_DIRSET = PIN7_bm; //W5100_MOSI output
    
    //INITIALIZE SPI INTERFACES!
    
    //SWAP MOSI and SCK pins on PORTC and PORTE
    PORTC.REMAP = PORT_SPI_bm;
    PORTE.REMAP = PORT_SPI_bm;
    // Enable SPI, Master Mode 0
	SPIC.CTRL = SPI_ENABLE_bm | SPI_MASTER_bm;
	//set the clock rate fck/2
	SPIC.CTRL |= SPI_PRESCALER_DIV4_gc;
    // Enable SPI, Master Mode 0
	SPIE.CTRL = SPI_ENABLE_bm | SPI_MASTER_bm;
	//set the clock rate fck/2
	SPIE.CTRL |= SPI_PRESCALER_DIV4_gc;    
}

static void handle_blink (void) {
    static uint32_t blink_timer1 = 0;
    static uint32_t blink_timer2 = 0;
    static uint32_t blink_timer3 = 0;
    
    if ((uint32_t)(millis()-blink_timer1) > 1000) {
        blink_timer1 = millis();
        PORTF_OUTTGL = PIN2_bm;
        printf_P(PSTR("Test! Millis: %lu RTC: %lu\r\n"), millis(), rtc_get_timestamp());
    }
    
    if ((uint32_t)(millis()-blink_timer2) > 2000) {
        blink_timer2 = millis();
        PORTF_OUTTGL = PIN1_bm;
    }
    
    if ((uint32_t)(millis()-blink_timer3) > 4000) {
        blink_timer3 = millis();
        PORTF_OUTTGL = PIN3_bm;
    }    
}

static inline void handle_write(void) {
    static uint32_t wrt_timer = 0;
    FRESULT res;
    FIL file;
    if ( (uint32_t)(millis()-wrt_timer) > 10000) {
        wrt_timer = millis();
        printf_P(PSTR("Zapis do pliku\r\n"));
        
        printf_P(PSTR("f_open\r\n"));
        res = f_open(&file, "test.txt", (FA_OPEN_ALWAYS | FA_WRITE));
        if (res != FR_OK) {
            printf_P(PSTR("f_open error code: %i\r\n"), res);
            return;
        }
        //printf((ROM char*)"f_lseek\r\n");
        res = f_lseek(&file, f_size(&file));
        if (res != FR_OK) {
            printf_P(PSTR("f_lseek error code: %i\r\n"), res); 
            f_close(&file);
            return;
        }
        printf(PSTR("f_puts\r\n"));
        f_puts("Testowy zapis\r\n", &file);
        //f_sync(&file);
        printf_P(PSTR("f_close\r\n"));
        f_close(&file);
    }
}

static void wizchip_dhcp_assign(void) {
    getIPfromDHCP(g_net_info.ip);
    getGWfromDHCP(g_net_info.gw);
    getSNfromDHCP(g_net_info.sn);
    getDNSfromDHCP(g_net_info.dns);

    g_net_info.dhcp = NETINFO_DHCP;

    /* Network initialize */
    network_initialize(g_net_info); // apply from DHCP

    print_network_information(g_net_info);
    printf(" DHCP leased time : %ld seconds\r\n", getDHCPLeasetime());
}

static void wizchip_dhcp_conflict(void) {
    printf(" Conflict IP from DHCP\r\n");
    // halt or reset or any...
    while (1); // this example is halt.
}

void dhcp_handle(void) {
    int32_t retval = 0;
    static uint8_t dhcp_retry = 0;
    
    if (g_net_info.dhcp == NETINFO_DHCP) {
            retval = DHCP_run();

        if (retval == DHCP_IP_LEASED) {
            if (g_dhcp_get_ip_flag == 0) {
                printf(" DHCP success\r\n");

                g_dhcp_get_ip_flag = 1;
            }
        } else if (retval == DHCP_FAILED) {
            g_dhcp_get_ip_flag = 0;
            dhcp_retry++;

            if (dhcp_retry <= DHCP_RETRY_COUNT) {
                printf(" DHCP timeout occurred and retry %d\r\n", dhcp_retry);
            }
        }

        if (dhcp_retry > DHCP_RETRY_COUNT) {
            printf(" DHCP failed\r\n");

            DHCP_stop();

            while (1)
                ;
        }
    }
}

void sntp_handle(void)
{
    static uint32_t last_update = 0;
    static uint8_t in_progress = 0;
    static datetime time;
    int8_t retval;

    // Re-sync every 1 hour (3600000 ms)
    uint8_t should_sync = ((uint32_t)(millis() - last_update) >= 3600000UL) || rtc_get_timestamp() < 1764539075;
    if (g_dhcp_get_ip_flag && !in_progress && should_sync)
    {
        in_progress = 1;
        SNTP_run(&time);   // Start SNTP (sends request)
        return;
    }

    if (in_progress)
    {
        
        retval = SNTP_run(&time);   // continue processing
        
        if (retval == 1)
        {
            printf_P(PSTR("Time updated: %d-%d-%d %02d:%02d:%02d\r\n"),
                     time.yy, time.mo, time.dd, time.hh, time.mm, time.ss);
            
            uint64_t timestamp = convertToUnixTimestamp(time);
            printf_P(PSTR("Timestamp: %lu\r\n"), timestamp);
            rtc_set_timestamp(timestamp);

            last_update = millis();
            in_progress = 0;
        }
        else if (retval == -1)
        {
            printf_P(PSTR("SNTP error or timeout.\r\n"));
            last_update = millis() + 60000; // retry in 1 minute
            in_progress = 0;
        }
    }
}

time_t convertToUnixTimestamp(datetime t) {
    struct tm tm_time;

    tm_time.tm_year = t.yy - 1900;  // tm_year = years since 1900
    tm_time.tm_mon  = t.mo - 1;     // tm_mon = 0-11
    tm_time.tm_mday = t.dd;         // tm_mday = 1-31
    tm_time.tm_hour = t.hh;         // tm_hour = 0-23
    tm_time.tm_min  = t.mm;         // tm_min = 0-59
    tm_time.tm_sec  = t.ss;         // tm_sec = 0-59
    tm_time.tm_isdst = 0;           // not considering daylight saving

    return mktime(&tm_time) + UNIX_OFFSET;        // returns time_t (Unix timestamp)
}