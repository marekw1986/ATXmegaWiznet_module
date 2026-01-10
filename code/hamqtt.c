#include <avr/pgmspace.h>
#include <string.h>
#include "hamqtt.h"
#include "time/my_time.h"
#include "wiznet/Ethernet/W5100/w5100.h"
#include "wolfmqtt/mqtt_client.h"

#define SOCKET_MQTT 0

#define MQTT_DEFAULT_TIMEOUT 1000
#define MQTT_KEEP_ALIVE 30
#define MQTT_BROKER_PORT 1883
#define MQTT_CLIENT_ID "ATxmegaClient"
#define MQTT_TOPIC     "test/topic"
#define MQTT_MESSAGE   "Hello from ATxmega!"

typedef enum {MQTT_IDLE, MQTT_CONNECT_TO_BROKER, MQTT_SUBSCRIBE, MQTT_PUBLISH_DISCOVERY, MQTT_HANDLE_CONNECTION} state_t;

static state_t state = MQTT_IDLE;

//extern uint8_t ip_acquired;

static uint8_t g_mqtt_broker_ip[4] = {192, 168, 1, 61};

static MqttClient client;
static MqttNet net;
static uint8_t mqtt_sendbuf[1024];
static uint8_t mqtt_recvbuf[1024];

void mqtt_init(void) {
    MqttClient_Init(
        &client,
        &net,
        NULL,
        mqtt_sendbuf, sizeof(mqtt_sendbuf),
        mqtt_recvbuf, sizeof(mqtt_recvbuf),
        1000
    );    
}

void mqtt_handle(void) {
    static uint32_t mqtt_timer= 0;
    int rc = 0;
    
    switch (state) {
        case MQTT_IDLE:
            if (((uint32_t)(millis() - mqtt_timer) > 200) /* && ip_acquired */) {
                state = MQTT_CONNECT_TO_BROKER;
                mqtt_timer = millis();
            }
        break;
        
        case MQTT_CONNECT_TO_BROKER:
        {
            MqttConnect connect;
            memset(&connect, 0, sizeof(connect));
            connect.client_id = MQTT_CLIENT_ID;
            connect.clean_session = 1;
            connect.keep_alive_sec = MQTT_KEEP_ALIVE;
            rc = MqttClient_Connect(&client, &connect);
            if (rc == MQTT_CODE_CONTINUE) {
                return; // try again next time
            }
            if (rc < 0) {
                // handle error
                return;
            }
            state = MQTT_SUBSCRIBE;
        }
        break;
        
        case MQTT_SUBSCRIBE:
            state = MQTT_PUBLISH_DISCOVERY;
        break;
        
        case MQTT_PUBLISH_DISCOVERY:
            state = MQTT_HANDLE_CONNECTION;
        break;
        
        case MQTT_HANDLE_CONNECTION:
            rc = MqttClient_WaitMessage(&client, 0);
            if (rc != MQTT_CODE_SUCCESS && rc != MQTT_CODE_CONTINUE) {
                /* handle error / reconnect */
            }
        break;
        
        default:
        break;
    }
}
