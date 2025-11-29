#include <avr/pgmspace.h>
#include "hamqtt.h"
#include "wiznet/Internet/MQTT/mqtt_interface.h"
#include "wiznet/Internet/MQTT/MQTTClient.h"

#define SOCKET_MQTT 0

#define MQTT_DEFAULT_TIMEOUT 1000
#define MQTT_KEEP_ALIVE 60
#define MQTT_BROKER_PORT 1883
#define MQTT_CLIENT_ID "ATxmegaClient"
#define MQTT_TOPIC     "test/topic"
#define MQTT_MESSAGE   "Hello from ATxmega!"

static uint8_t g_mqtt_broker_ip[4] = {192, 168, 1, 61};

static Network g_mqtt_network;
static MQTTPacket_connectData g_mqtt_packet_connect_data = MQTTPacket_connectData_initializer;
MQTTClient g_mqtt_client;

static uint8_t mqtt_sendbuf[128];
static uint8_t mqtt_recvbuf[128];

void mqtt_handle(void) {
    int32_t retval = 0;
    
    NewNetwork(&g_mqtt_network, SOCKET_MQTT);
    retval = ConnectNetwork(&g_mqtt_network, g_mqtt_broker_ip, MQTT_BROKER_PORT);
    if (retval != 1) {
        printf_P(PSTR("MQTT network connect failed\r\n"));
        while(1);
    }    

    /* Initialize MQTT client */
    MQTTClientInit(&g_mqtt_client, &g_mqtt_network, MQTT_DEFAULT_TIMEOUT, mqtt_sendbuf, sizeof(mqtt_sendbuf), mqtt_recvbuf, sizeof(mqtt_recvbuf));
    
    /* Connect to the MQTT broker */
    g_mqtt_packet_connect_data.MQTTVersion = 3;
    g_mqtt_packet_connect_data.cleansession = 1;
    g_mqtt_packet_connect_data.willFlag = 0;
    g_mqtt_packet_connect_data.keepAliveInterval = MQTT_KEEP_ALIVE;
    g_mqtt_packet_connect_data.clientID.cstring = MQTT_CLIENT_ID;
    g_mqtt_packet_connect_data.username.cstring = "";
    g_mqtt_packet_connect_data.password.cstring = "";
    
    retval = MQTTConnect(&g_mqtt_client, &g_mqtt_packet_connect_data);
    if (retval < 0) {
        printf_P(PSTR("MQTT connect failed : %d\n"), retval);
        while (1);
    }
    
    printf_P(PSTR(" MQTT connected\n"));
}
