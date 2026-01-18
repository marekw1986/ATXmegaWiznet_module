#include <stdint.h>
#include "../wiznet/Ethernet/socket.h"
#include "options.h"
#include "mqtt_types.h"
#include "mqttnet.h"

#define MQTT_SOCKET 0

static int NetConnect(void *context, const char* host, word16 port, int timeout_ms);
static int NetRead(void *context, byte* buf, int buf_len, int timeout_ms);
static int NetWrite(void *context, const byte* buf, int buf_len, int timeout_ms);
static int NetDisconnect(void *context);
static uint8_t ip_str_to_bytes(const char *str, uint8_t* ip[4]);

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
    
    if (!ip_str_to_bytes(host, &ip)) {
        return MQTT_CODE_ERROR_NETWORK;
    }
    
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

#include <stdint.h>
#include <stdbool.h>

static uint8_t ip_str_to_bytes(const char *str, uint8_t* ip[4])
{
    uint8_t i = 0;
    uint16_t val = 0;

    while (*str) {
        if (*str >= '0' && *str <= '9') {
            val = val * 10 + (*str - '0');
            if (val > 255) {
                return 0;   // overflow
            }
        } else if (*str == '.') {
            if (i >= 3) {
                return 0;   // too many dots
            }
            ip[i++] = (uint8_t)val;
            val = 0;
        } else {
            return 0;       // invalid character
        }
        str++;
    }

    if (i != 3) {
        return false;           // not enough octets
    }

    ip[i] = (uint8_t)val;
    return 1;
}
