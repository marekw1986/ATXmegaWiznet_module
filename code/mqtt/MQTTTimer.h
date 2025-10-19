#ifndef MQTT_TIMER_H
#define MQTT_TIMER_H

#include <stdint.h>

typedef struct Timer {
    uint32_t end_time;
} Timer;

// Initialize a timer
void TimerInit(Timer* t);

// Check if timer expired
char TimerIsExpired(Timer* t);

// Set countdown in milliseconds
void TimerCountdownMS(Timer* t, unsigned int ms);

// Set countdown in seconds
void TimerCountdown(Timer* t, unsigned int seconds);

// Get milliseconds left
int TimerLeftMS(Timer* t);

#endif // MQTT_TIMER_H
