#include "MQTTNetwork.h"
#include "../w5100/w5100_func.h" // your driver header
#include <string.h>

typedef struct {
    uint8_t sock;
} W5100_NetworkData;

static W5100_NetworkData network_data;  // static, no malloc

static int w5100_mqttread(Network* n, unsigned char* buf, int len, int timeout) {
    W5100_NetworkData* data = (W5100_NetworkData*)n->clientData;
    unsigned int available = ReceivedSize(data->sock);

    if (available == 0) {
        while (timeout-- && ReceivedSize(data->sock) == 0);
        available = ReceivedSize(data->sock);
        if (available == 0) return 0;
    }

    if (available > (unsigned int)len) available = len;
    return Receive(data->sock, buf, available);
}

static int w5100_mqttwrite(Network* n, unsigned char* buf, int len, int timeout) {
    W5100_NetworkData* data = (W5100_NetworkData*)n->clientData;
    return Send(data->sock, buf, len);
}

void NetworkInit(Network* n) {
    network_data.sock = 0xFF;               // invalid socket
    n->clientData = &network_data;
    n->mqttread = w5100_mqttread;
    n->mqttwrite = w5100_mqttwrite;
}

int NetworkConnect(Network* n, uint8_t sock, const char* ip, uint16_t port) {
    W5100_NetworkData* data = (W5100_NetworkData*)n->clientData;
    data->sock = sock;

    unsigned char ret = OpenSocket(sock, 0x01 /* TCP */, port);
    if (ret != 0) return -1;

    // TODO: wait for socket to be fully connected
    return 0;
}

void NetworkDisconnect(Network* n) {
    W5100_NetworkData* data = (W5100_NetworkData*)n->clientData;
    if (data->sock != 0xFF) {
        DisconnectSocket(data->sock);
        CloseSocket(data->sock);
        data->sock = 0xFF;
    }
}