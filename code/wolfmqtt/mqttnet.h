#ifndef MQTT_NET_H
#define MQTT_NET_H

#include "mqtt_socket.h"

#ifdef	__cplusplus
extern "C" {
#endif

void mqtt_init(void);
int MqttNetInit(MqttNet* net);
    
#ifdef	__cplusplus
}
#endif

#endif // MQTT_NET_H
