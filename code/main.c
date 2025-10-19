/* 
 * File:   main.c
 * Author: marek
 *
 * Created on 29 maja 2019, 09:37
 */

#include <stdio.h>
#include <stdlib.h>
#include <avr/io.h>  
#include <avr/interrupt.h>
#include <util/delay.h>
#include <avr/pgmspace.h>

#include "wdt_driver.h"
#include "time/time.h"
#include "w5100/w5100.h"
#include "w5100/w5100_func.h"
#include "fatfs/ff.h"
#include "fatfs/ffconf.h"
#include "fatfs/diskio.h"
#include "mqtt/MQTTTimer.h"
#include "mqtt/MQTTClient.h"
//#include "usb/usb_xmega.h"

//USB_ENDPOINTS(0);

W5100_CFG w5100_default_conf = {
	{0x00, 0x08, 0xDC, 0x55, 0x00, 0x01},	// MAC address
	{192, 168, 1, 35},                     // IP address
	{255, 255, 255, 0},                     // Subnet mask
	{192, 168, 1, 1},                     // Gateway
};

FATFS SDFatFS;


static void uart_init (void);
static int uart_putchar(char c, FILE *stream);
static void inline initialize_clock (void);
static void inline initialize_peripherals (void);
static void handle_blink (void);
static inline void handle_write(void);
static FILE mystdout = FDEV_SETUP_STREAM (uart_putchar, NULL, _FDEV_SETUP_WRITE);

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

	//mysocket = 0;		
	//sockaddr = W5100_SKT_BASE(mysocket);    
    W51_init();
    _delay_ms(1000);
	W51_config(&w5100_default_conf);	// config the W5100 (MAC, TCP address, subnet, etc
    _delay_ms(100);
    
    res = f_mount(&SDFatFS, "", 0);
    if (res != FR_OK) {printf_P(PSTR("SD f_mount error code: %i\r\n"), res);}
    else {printf_P(PSTR("SD f_mount OK\r\n"));}    
    
    PMIC.CTRL = PMIC_LOLVLEN_bm;        //Without USB 
    //PMIC.CTRL = PMIC_LOLVLEN_bm | PMIC_MEDLVLEN_bm | PMIC_HILVLEN_bm; 
    sei();
    
    //usb_attach();
    
    WDT_Disable();
    WDT_EnableAndSetTimeout(WDT_PER_2KCLK_gc);
    
    
    while (1) {
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
        printf_P(PSTR("Test! Millis: %lu\r\n"), millis());
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