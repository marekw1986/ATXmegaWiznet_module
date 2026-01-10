#include <stdint.h>
#include "../wiznet/Ethernet/socket.h"
#include "options.h"
#include "mqtt_types.h"
#include "mqttnet.h"

#define MQTT_SOCKET 1

static int NetConnect(void *context, const char* host, word16 port, int timeout_ms) {
    
}

static int NetRead(void *context, byte* buf, int buf_len, int timeout_ms) {
    int32_t rc = recv(MQTT_SOCKET, buf, buf_len);
    if (rc < 0) {
        return MQTT_CODE_ERROR_NETWORK;
    }
    if (rc == 0) {
        return MQTT_CODE_CONTINUE; // non-blocking
    }
    return rc;
}

static int NetWrite(void *context, const byte* buf, int buf_len, int timeout_ms) {
    int32_t rc = send(MQTT_SOCKET, buf, buf_len);
    if (rc < 0) {
        return MQTT_CODE_ERROR_NETWORK;
    }
    if (rc == 0) {
        return MQTT_CODE_CONTINUE;
    }
    return rc;
}

static int NetDisconnect(void *context) {
    
}
