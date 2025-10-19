#ifndef MQTT_NETWORK_H
#define MQTT_NETWORK_H

#include <stdint.h>

typedef struct Network Network;

struct Network {
    int (*mqttread)(Network*, unsigned char*, int, int);
    int (*mqttwrite)(Network*, unsigned char*, int, int);
    void* clientData; // pointer to W5100 socket info
};

// Initialize network object with W5100
void NetworkInit(Network* n);

// Connect to TCP server using W5100
int NetworkConnect(Network* n, uint8_t sock, const char* ip, uint16_t port);

// Disconnect and close socket
void NetworkDisconnect(Network* n);

#endif