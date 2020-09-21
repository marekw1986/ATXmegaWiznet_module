/* 
 * File:   time.h
 * Author: marek
 *
 * Created on 25 sierpnia 2019, 11:55
 */

#ifndef TIME_H
#define	TIME_H

#include <stdio.h>
#include <stdlib.h>
#include <avr/io.h>  
#include <inttypes.h>

#ifdef	__cplusplus
extern "C" {
#endif


void time_init (void);
uint32_t millis (void);

#ifdef	__cplusplus
}
#endif

#endif	/* TIME_H */

