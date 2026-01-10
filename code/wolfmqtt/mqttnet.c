#include <stdint.h>
#include "../wiznet/Ethernet/socket.h"
#include "options.h"
#include "mqtt_types.h"
#include "mqtt_socket.h"
#include "mqttnet.h"

#define MQTT_SOCKET 1

static int NetConnect(void *context, const char* host, word16 port, int timeout_ms);
static int NetRead(void *context, byte* buf, int buf_len, int timeout_ms);
static int NetWrite(void *context, const byte* buf, int buf_len, int timeout_ms);
static int NetDisconnect(void *context);

int MqttNetInit(MqttNet* net) {
    if (net) {
        memset(net, 0x00, sizeof(MqttNet));
        net->connect = NetConnect;
        net->read = NetRead;
        net->write = NetWrite;
        net->disconnect = NetDisconnect;
    }
    return MQTT_CODE_SUCCESS;
}

static int NetConnect(void *context, const char* host, word16 port, int timeout_ms) {
    uint8_t ip[4] = {192, 168, 1, 61};
    
    if (socket(MQTT_SOCKET, Sn_MR_TCP, 1883, 0) != MQTT_SOCKET) {
        return MQTT_CODE_ERROR_NETWORK;
    }
    if (connect(MQTT_SOCKET, ip, 1883) != SOCK_OK) {
        return MQTT_CODE_ERROR_NETWORK;
    }
    while(getSn_SR(MQTT_SOCKET) != SOCK_ESTABLISHED) {
        if (getSn_SR(MQTT_SOCKET) == SOCK_CLOSED) {
            return MQTT_CODE_ERROR_NETWORK;
        }
    }
    return MQTT_CODE_SUCCESS;
}

static int NetRead(void *context, byte* buf, int buf_len, int timeout_ms) {
    int32_t rc = recv(MQTT_SOCKET, buf, buf_len);
    if (rc > 0) {
        return rc;
    }
    if (rc == 0) {
        // no data available - continue/non-blocking
        return MQTT_CODE_CONTINUE;
    }
    // rc < 0, check socket state
    if ((getSn_SR(MQTT_SOCKET) == SOCK_ESTABLISHED) || (getSn_SR(MQTT_SOCKET) == SOCK_CLOSE_WAIT)) {
        return MQTT_CODE_CONTINUE;
    }
    return MQTT_CODE_ERROR_NETWORK;
}

static int NetWrite(void *context, const byte* buf, int buf_len, int timeout_ms) {
    int32_t rc = send(MQTT_SOCKET, (byte*)buf, buf_len);
    if (rc > 0) {
        return rc;
    }
    if (rc == 0) {
        return MQTT_CODE_CONTINUE;
    }
    return MQTT_CODE_ERROR_NETWORK;
}

static int NetDisconnect(void *context) {
    disconnect(MQTT_SOCKET);
    close(MQTT_SOCKET);
    return MQTT_CODE_SUCCESS;
}
