#ifndef  W5100_FUNC
#define  W5100_FUNC


#define MAX_BUF 256


/*
 *  Define the SPI port, used to exchange data with a W5100 chip.
 */
#define SPI_PORT        PORTB	/* target-specific port containing the SPI lines */
#define SPI_DDR         DDRB	/* target-specific DDR for the SPI port lines */

#define CS_DDR          DDRB	/* target-specific DDR for chip-select */
#define CS_PORT         PORTB	/* target-specific port used as chip-select */
#define CS_BIT          2	/* target-specific port line used as chip-select */

#define RESET_DDR       DDRD	/* target-specific DDR for reset */
#define RESET_PORT      PORTD	/* target-specific port used for reset */
#define RESET_BIT       3	/* target-specific port line used as reset */



unsigned char OpenSocket(unsigned char sock, unsigned char eth_protocol,unsigned int tcp_port);
void CloseSocket(unsigned char sock);
void DisconnectSocket(unsigned char sock);
unsigned char Listen(unsigned char sock);
unsigned char Send(unsigned char sock, uint8_t *buf,unsigned int buflen);
unsigned int Receive(unsigned char sock, unsigned char *buf,unsigned int buflen);
unsigned int ReceivedSize(unsigned char sock);
void my_select(void);
void my_deselect(void);
unsigned char my_xchg(unsigned char val);


#endif