#include <avr/io.h>
#include <util/delay.h>
#include <stdio.h>
#include <string.h>
#include <avr/pgmspace.h>
#include "w5100_func.h"
#include "w5100.h"


unsigned char OpenSocket(unsigned char sock, unsigned char eth_protocol,
			 unsigned int tcp_port)
{
	unsigned char retval;
	unsigned int sockaddr;

	retval = W5100_FAIL;	// assume this doesn't work
	if (sock >= W5100_NUM_SOCKETS)
	{
		return retval;	// illegal socket value is bad!
	}
		
	sockaddr = W5100_SKT_BASE(sock);	// calc base addr for this socket

	if (W51_read(sockaddr + W5100_SR_OFFSET) == W5100_SKT_SR_CLOSED)	// Make sure we close the socket first
	{
		CloseSocket(sock);
	
	}

	W51_write(sockaddr + W5100_MR_OFFSET, eth_protocol);	// set protocol for this socket
	W51_write(sockaddr + W5100_PORT_OFFSET, ((tcp_port & 0xFF00) >> 8));	// set port for this socket (MSB)
	W51_write(sockaddr + W5100_PORT_OFFSET + 1, (tcp_port & 0x00FF));	// set port for this socket (LSB)
	W51_write(sockaddr + W5100_CR_OFFSET, W5100_SKT_CR_OPEN);	// open the socket

	while (W51_read(sockaddr + W5100_CR_OFFSET)) ;	// loop until device reports socket is open (blocks!!)
	_delay_ms(1);

//	unsigned int flaga_2;
//	flaga_2 = W51_read(sockaddr + W5100_SR_OFFSET);

	if (W51_read(sockaddr + W5100_SR_OFFSET) == W5100_SKT_SR_UDP)
		{
			retval = sock;	// if success, return socket number
		}
	else
		{
			CloseSocket(sock);	// if failed, close socket immediately
			puts("jendak wywala\n");
		
		}

	return retval;
}

void CloseSocket(unsigned char sock)
{
	unsigned int sockaddr;

	if (sock > W5100_NUM_SOCKETS)
		return;		// if illegal socket number, ignore request
	sockaddr = W5100_SKT_BASE(sock);	// calc base addr for this socket

	W51_write(sockaddr + W5100_CR_OFFSET, W5100_SKT_CR_CLOSE);	// tell chip to close the socket
	while (W51_read(sockaddr + W5100_CR_OFFSET)) ;	// loop until socket is closed (blocks!!)
}

void DisconnectSocket(unsigned char sock)
{
	unsigned int sockaddr;

	if (sock > W5100_NUM_SOCKETS)
		return;		// if illegal socket number, ignore request
	sockaddr = W5100_SKT_BASE(sock);	// calc base addr for this socket

	W51_write(sockaddr + W5100_CR_OFFSET, W5100_SKT_CR_DISCON);	// disconnect the socket
	while (W51_read(sockaddr + W5100_CR_OFFSET)) ;	// loop until socket is closed (blocks!!)
}

unsigned char Listen(unsigned char sock)
{
	unsigned char retval;
	unsigned int sockaddr;

	retval = W5100_FAIL;	// assume this fails
	if (sock > W5100_NUM_SOCKETS)
		return retval;	// if illegal socket number, ignore request

	sockaddr = W5100_SKT_BASE(sock);	// calc base addr for this socket
	if (W51_read(sockaddr + W5100_SR_OFFSET) == W5100_SKT_SR_INIT)	// if socket is in initialized state...
	{
		W51_write(sockaddr + W5100_CR_OFFSET, W5100_SKT_CR_LISTEN);	// put socket in listen state
		while (W51_read(sockaddr + W5100_CR_OFFSET)) ;	// block until command is accepted

		if (W51_read(sockaddr + W5100_SR_OFFSET) == W5100_SKT_SR_LISTEN)
			retval = W5100_OK;	// if socket state changed, show success
		else
			CloseSocket(sock);	// not in listen mode, close and show an error occurred
	}
	return retval;
}

unsigned char Send(unsigned char sock, uint8_t *buf,
		   unsigned int buflen)
{
	unsigned int ptr;
	unsigned int offaddr;
	unsigned int realaddr;
	unsigned int txsize;
	unsigned int timeout;
	unsigned int sockaddr;


	
	//destination port
	
sockaddr = W5100_SKT_BASE(sock);	// calc base addr for this socket

	
	
	
	if (buflen == 0 || sock >= W5100_NUM_SOCKETS)
		{
			printf("buf len = %d\n", buflen);
			return W5100_FAIL;	// ignore illegal requests
		}
	// Make sure the TX Free Size Register is available
	txsize = W51_read(sockaddr + W5100_TX_FSR_OFFSET);	// make sure the TX free-size reg is available
	txsize =
	    (((txsize & 0x00FF) << 8) +
	     W51_read(sockaddr + W5100_TX_FSR_OFFSET + 1));

	timeout = 0;
	while (txsize < buflen) {
		_delay_ms(1);

		txsize = W51_read(sockaddr + W5100_TX_FSR_OFFSET);	// make sure the TX free-size reg is available
		txsize =
		    (((txsize & 0x00FF) << 8) +
		     W51_read(sockaddr + W5100_TX_FSR_OFFSET + 1));

		if (timeout++ > 1000)	// if max delay has passed...
		{
			DisconnectSocket(sock);	// can't connect, close it down
			return W5100_FAIL;	// show failure
		}
	}

	// Read the Tx Write Pointer
	ptr = W51_read(sockaddr + W5100_TX_WR_OFFSET);
	offaddr =
	    (((ptr & 0x00FF) << 8) +
	     W51_read(sockaddr + W5100_TX_WR_OFFSET + 1));

	while (buflen) {
		buflen--;
		realaddr = (W5100_TXBUFADDR + (0x0800 * sock)) + (offaddr & W5100_TX_BUF_MASK);	// calc W5100 physical buffer addr for this socket

		W51_write(realaddr, *buf);	// send a byte of application data to TX buffer
		offaddr++;	// next TX buffer addr
		buf++;		// next input buffer addr
	}

	W51_write(sockaddr + W5100_TX_WR_OFFSET, (offaddr & 0xFF00) >> 8);	// send MSB of new write-pointer addr
	W51_write(sockaddr + W5100_TX_WR_OFFSET + 1, (offaddr & 0x00FF));	// send LSB

	W51_write(sockaddr + W5100_CR_OFFSET, W5100_SKT_CR_SEND);	// start the send on its way

	while (W51_read(sockaddr + W5100_CR_OFFSET)); 	// loop until socket starts the send (blocks!!)
	
	return W5100_OK;
}



unsigned int Receive(unsigned char sock, unsigned char *buf,
unsigned int buflen)
{
	unsigned int ptr;
	unsigned int offaddr;
	unsigned int realaddr;
	unsigned int sockaddr;
	

	if (buflen == 0 || sock >= W5100_NUM_SOCKETS)
	return W5100_FAIL;	// ignore illegal conditions

	if (buflen > (MAX_BUF - 2))
	buflen = MAX_BUF - 2;	// requests that exceed the max are truncated

	sockaddr = W5100_SKT_BASE(sock);	// calc base addr for this socket
	ptr = W51_read(sockaddr + W5100_RX_RD_OFFSET);	// get the RX read pointer (MSB)
	offaddr = (((ptr & 0x00FF) << 8) + W51_read(sockaddr + W5100_RX_RD_OFFSET + 1));	// get LSB and calc offset addr

	while (buflen) {
		buflen--;
		realaddr =
		(W5100_RXBUFADDR + (0x0800 * sock)) +
		(offaddr & W5100_RX_BUF_MASK);
		*buf = W51_read(realaddr);
		offaddr++;
		buf++;
	}
	*buf = '\0';		// buffer read is complete, terminate the str

	// Increase the S0_RX_RD value, so it point to the next receive
	W51_write(sockaddr + W5100_RX_RD_OFFSET, (offaddr & 0xFF00) >> 8);	// update RX read offset (MSB)
	W51_write(sockaddr + W5100_RX_RD_OFFSET + 1, (offaddr & 0x00FF));	// update LSB

	// Now Send the RECV command
	W51_write(sockaddr + W5100_CR_OFFSET, W5100_SKT_CR_RECV);	// issue the receive command
	_delay_us(5);		// wait for receive to start

	return W5100_OK;
}

unsigned int ReceivedSize(unsigned char sock)
{
	unsigned int val;
	unsigned int sockaddr;

	if (sock >= W5100_NUM_SOCKETS)
	return 0;
	sockaddr = W5100_SKT_BASE(sock);	// calc base addr for this socket
	val = W51_read(sockaddr + W5100_RX_RSR_OFFSET) & 0xff;
	val = (val << 8) + W51_read(sockaddr + W5100_RX_RSR_OFFSET + 1);
	return val;
}