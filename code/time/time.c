#include <avr/interrupt.h>
#include <util/atomic.h>
#include "time.h"

volatile uint32_t milliseconds = 0;

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

uint32_t get_fattime (void) {
    return 0xFFFFFFFF;
}

ISR(TCC0_OVF_vect) {
    milliseconds++;
}