/* 
 * File:   time.h
 * Author: marek
 *
 * Created on 25 sierpnia 2019, 11:55
 */

#ifndef MY_TIME_H
#define	MY_TIME_H

#include <stdio.h>
#include <stdlib.h>
#include <avr/io.h>  
#include <inttypes.h>

#ifdef	__cplusplus
extern "C" {
#endif


void time_init (void);
uint32_t millis (void);
uint32_t rtc_get_timestamp(void);
void rtc_set_timestamp(uint32_t new);
#ifdef	__cplusplus
}
#endif

#endif	/* MY_TIME_H */

