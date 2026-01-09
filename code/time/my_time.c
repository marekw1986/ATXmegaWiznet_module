#include <avr/interrupt.h>
#include <util/atomic.h>
#include <time.h>
#include "my_time.h"
#include "../wiznet/Internet/DHCP/dhcp.h"

volatile uint32_t milliseconds = 0;
volatile uint32_t rtc = 0;

void time_init (void) {
    TCC0_PER =  32000; //0x7D00;
    TCC0.CTRLA = TC_CLKSEL_DIV1_gc;
    TCC0.CTRLB = TC_WGMODE_NORMAL_gc; 
    TCC0.INTCTRLA = TC_OVFINTLVL_LO_gc;
}

uint32_t millis (void) {
    uint32_t tmp;
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
        tmp = milliseconds;
    }
    return tmp;
}

uint32_t rtc_get_timestamp(void) {
    uint32_t tmp;
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
        tmp = rtc;
    }
    return tmp;
}

void rtc_set_timestamp(uint32_t new) {
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
        rtc = new;
    }    
}

uint32_t get_fattime (void) {
    time_t rawtime;
    struct tm* current_time;
    
    rawtime = rtc_get_timestamp()-UNIX_OFFSET;
    current_time = localtime(&rawtime);
    return ((uint32_t)(current_time->tm_year - 80) << 25)
         | ((uint32_t)(current_time->tm_mon + 1) << 21)
         | ((uint32_t)current_time->tm_mday << 16)
         | ((uint32_t)current_time->tm_hour << 11)
         | ((uint32_t)current_time->tm_min << 5)
         | ((uint32_t)current_time->tm_sec >> 1);
//    return 0xFFFFFFFF;
}

ISR(TCC0_OVF_vect) {
    milliseconds++;
    if ((milliseconds % 1000) == 0) {
        rtc++;
        DHCP_time_handler();
    }
}