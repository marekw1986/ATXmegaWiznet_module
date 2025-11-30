#include <avr/pgmspace.h>
#include <string.h>
#include "hamqtt.h"
#include "time/my_time.h"
#include "wiznet/Ethernet/W5100/w5100.h"
#include "wiznet/Internet/MQTT/mqtt_interface.h"
#include "wiznet/Internet/MQTT/MQTTClient.h"

#define SOCKET_MQTT 0

#define MQTT_DEFAULT_TIMEOUT 1000
#define MQTT_KEEP_ALIVE 5
#define MQTT_BROKER_PORT 1883
#define MQTT_CLIENT_ID "ATxmegaClient"
#define MQTT_TOPIC     "test/topic"
#define MQTT_MESSAGE   "Hello from ATxmega!"

typedef enum {MQTT_IDLE, MQTT_CONNECT_TO_BROKER, MQTT_SUBSCRIBE, MQTT_PUBLISH_DISCOVERY, MQTT_HANDLE_CONNECTION} state_t;

static state_t state = MQTT_IDLE;

extern uint8_t g_dhcp_get_ip_flag;

static uint8_t g_mqtt_broker_ip[4] = {192, 168, 1, 61};

static Network g_mqtt_network;
static MQTTPacket_connectData g_mqtt_packet_connect_data = MQTTPacket_connectData_initializer;
static MQTTClient g_mqtt_client;
static MQTTMessage g_mqtt_message;

static uint8_t mqtt_sendbuf[1024];
static uint8_t mqtt_recvbuf[1024];

static void message_arrived(MessageData *msg_data);

void mqtt_handle(void) {
    static uint32_t mqtt_timer= 0;
    int32_t retval = 0;
    
    switch (state) {
        case MQTT_IDLE:
            if (((uint32_t)(millis() - mqtt_timer) > 200) && g_dhcp_get_ip_flag) {
                state = MQTT_CONNECT_TO_BROKER;
                mqtt_timer = millis();
            }
        break;
        
        case MQTT_CONNECT_TO_BROKER:
            NewNetwork(&g_mqtt_network, SOCKET_MQTT);
            retval = ConnectNetwork(&g_mqtt_network, g_mqtt_broker_ip, MQTT_BROKER_PORT);
            if (retval != 1) {
                printf_P(PSTR("MQTT network connect failed\r\n"));
                mqtt_timer = millis();
                state = MQTT_IDLE;
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
                printf_P(PSTR("MQTT connect failed: %d\n"), retval);
                mqtt_timer = millis();
                state = MQTT_IDLE;
            }

            printf_P(PSTR("MQTT connected\r\n"));
            
            state = MQTT_SUBSCRIBE;
        break;
        
        case MQTT_SUBSCRIBE:
            retval = MQTTSubscribe(&g_mqtt_client, "test/cmnd", QOS0, message_arrived);
            if (retval < 0) {
                printf_P(PSTR("Subscribe failed: %d\r\n"), retval);
            }
            
            printf_P(PSTR("Topic subscribed\r\n"));
            
            state = MQTT_PUBLISH_DISCOVERY;
        break;
        
        case MQTT_PUBLISH_DISCOVERY:
            g_mqtt_message.qos = QOS0;
            g_mqtt_message.retained = 0;
            g_mqtt_message.dup = 0;
            g_mqtt_message.payload = "This will be discovery message!";
            g_mqtt_message.payloadlen = strlen(g_mqtt_message.payload);
            retval = MQTTPublish(&g_mqtt_client, "stm32/test", &g_mqtt_message);
            if (retval < 0) {
                printf_P(PSTR("Publish discovery message failed: %d\r\n"), retval);
            }
            printf_P(PSTR("Discovery message sent\r\n"));
            
            state = MQTT_HANDLE_CONNECTION;
        break;
        
        case MQTT_HANDLE_CONNECTION:
//            retval = MQTTYield(&g_mqtt_client, 60);
//            if (retval  < 0) {
//                printf_P(PSTR(" Yield error : %d\r\n"), retval);
//            }
            if ((uint32_t)(millis() - mqtt_timer) > 30000) {
                printf_P(PSTR("Publishing message\r\n"));
                mqtt_timer = millis();
                g_mqtt_message.payload = "Test message!";
                g_mqtt_message.payloadlen = strlen(g_mqtt_message.payload);
                retval = MQTTPublish(&g_mqtt_client, "stm32/test", &g_mqtt_message);
                if (retval < 0) {
                    printf_P(PSTR("Publish failed: %d\r\n"), retval);
                }
            }
        break;
        
        default:
        break;
    }
}

static void message_arrived(MessageData *msg_data) {
    MQTTMessage *message = msg_data->message;
    printf_P(PSTR("MQTT callback called! Payload: %s\r\n"), message->payload);
    
//    printf_P(PSTR("%.*s"), (uint32_t)message->payloadlen, (uint8_t *)message->payload);
}
