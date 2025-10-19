#include "MQTTTimer.h"

// You must provide this function using a hardware timer
// It should return milliseconds since MCU start
extern uint32_t millis(void);

void TimerInit(Timer* t) {
    t->end_time = 0;
}

char TimerIsExpired(Timer* t) {
    // handle overflow correctly
    return (int32_t)(millis() - t->end_time) >= 0;
}

void TimerCountdownMS(Timer* t, unsigned int ms) {
    t->end_time = millis() + ms;
}

void TimerCountdown(Timer* t, unsigned int seconds) {
    t->end_time = millis() + (seconds * 1000);
}

int TimerLeftMS(Timer* t) {
    int32_t left = (int32_t)(t->end_time - millis());
    return (left > 0) ? left : 0;
}
