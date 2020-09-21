# 1 "usb/usb_requests.c"
# 1 "/home/marek/Dropbox/Programowanie/Michrochip_PIC/xmegatest.X//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "usb/usb_requests.c"
# 1 "usb/usb.h" 1
       

# 1 "/opt/microchip/xc8/v2.10/avr/lib/gcc/avr/5.4.0/include/stdbool.h" 1 3 4
# 4 "usb/usb.h" 2
# 1 "/opt/microchip/xc8/v2.10/avr/lib/gcc/avr/5.4.0/include/stdint.h" 1 3 4
# 9 "/opt/microchip/xc8/v2.10/avr/lib/gcc/avr/5.4.0/include/stdint.h" 3 4
# 1 "/opt/microchip/xc8/v2.10/avr/avr/include/stdint.h" 1 3 4
# 125 "/opt/microchip/xc8/v2.10/avr/avr/include/stdint.h" 3 4

# 125 "/opt/microchip/xc8/v2.10/avr/avr/include/stdint.h" 3 4
typedef signed int int8_t __attribute__((__mode__(__QI__)));
typedef unsigned int uint8_t __attribute__((__mode__(__QI__)));
typedef signed int int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int uint16_t __attribute__ ((__mode__ (__HI__)));
typedef signed int int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int uint32_t __attribute__ ((__mode__ (__SI__)));

typedef signed int int64_t __attribute__((__mode__(__DI__)));
typedef unsigned int uint64_t __attribute__((__mode__(__DI__)));
# 146 "/opt/microchip/xc8/v2.10/avr/avr/include/stdint.h" 3 4
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 163 "/opt/microchip/xc8/v2.10/avr/avr/include/stdint.h" 3 4
typedef int8_t int_least8_t;




typedef uint8_t uint_least8_t;




typedef int16_t int_least16_t;




typedef uint16_t uint_least16_t;




typedef int32_t int_least32_t;




typedef uint32_t uint_least32_t;







typedef int64_t int_least64_t;






typedef uint64_t uint_least64_t;
# 217 "/opt/microchip/xc8/v2.10/avr/avr/include/stdint.h" 3 4
typedef int8_t int_fast8_t;




typedef uint8_t uint_fast8_t;




typedef int16_t int_fast16_t;




typedef uint16_t uint_fast16_t;




typedef int32_t int_fast32_t;




typedef uint32_t uint_fast32_t;







typedef int64_t int_fast64_t;






typedef uint64_t uint_fast64_t;
# 277 "/opt/microchip/xc8/v2.10/avr/avr/include/stdint.h" 3 4
typedef int64_t intmax_t;




typedef uint64_t uintmax_t;
# 10 "/opt/microchip/xc8/v2.10/avr/lib/gcc/avr/5.4.0/include/stdint.h" 2 3 4
# 5 "usb/usb.h" 2
# 1 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h" 1 3
# 46 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h" 3
# 1 "/opt/microchip/xc8/v2.10/avr/lib/gcc/avr/5.4.0/include/stddef.h" 1 3 4
# 216 "/opt/microchip/xc8/v2.10/avr/lib/gcc/avr/5.4.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 47 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h" 2 3
# 125 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h" 3
extern int ffs(int __val) __attribute__((__const__));





extern int ffsl(long __val) __attribute__((__const__));





__extension__ extern int ffsll(long long __val) __attribute__((__const__));
# 150 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h" 3
extern void *memccpy(void *, const void *, int, size_t);
# 162 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h" 3
extern const void *memchr(const void *, int, size_t) __attribute__((__pure__));
# 180 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h" 3
extern int memcmp(const void *, const void *, size_t) __attribute__((__pure__));
# 191 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h" 3
extern void *memcpy(void *, const void *, size_t);
# 203 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h" 3
extern const void *memmem(const void *, size_t, const void *, size_t) __attribute__((__pure__));
# 213 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h" 3
extern void *memmove(void *, const void *, size_t);
# 225 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h" 3
extern const void *memrchr(const void *, int, size_t) __attribute__((__pure__));
# 235 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h" 3
extern void *memset(void *, int, size_t);
# 248 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h" 3
extern char *strcat(char *, const char *);
# 262 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h" 3
extern const char *strchr(const char *, int) __attribute__((__pure__));
# 274 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h" 3
extern const char *strchrnul(const char *, int) __attribute__((__pure__));
# 287 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h" 3
extern int strcmp(const char *, const char *) __attribute__((__pure__));
# 305 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h" 3
extern char *strcpy(char *, const char *);
# 320 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h" 3
extern int strcasecmp(const char *, const char *) __attribute__((__pure__));
# 333 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h" 3
extern const char *strcasestr(const char *, const char *) __attribute__((__pure__));
# 344 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h" 3
extern size_t strcspn(const char *__s, const char *__reject) __attribute__((__pure__));
# 364 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h" 3
extern char *strdup(const char *s1);
# 377 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h" 3
extern size_t strlcat(char *, const char *, size_t);
# 388 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h" 3
extern size_t strlcpy(char *, const char *, size_t);
# 399 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h" 3
extern size_t strlen(const char *) __attribute__((__pure__));
# 411 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h" 3
extern char *strlwr(char *);
# 422 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h" 3
extern char *strncat(char *, const char *, size_t);
# 434 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h" 3
extern int strncmp(const char *, const char *, size_t) __attribute__((__pure__));
# 449 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h" 3
extern char *strncpy(char *, const char *, size_t);
# 464 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h" 3
extern int strncasecmp(const char *, const char *, size_t) __attribute__((__pure__));
# 478 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h" 3
extern size_t strnlen(const char *, size_t) __attribute__((__pure__));
# 491 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h" 3
extern const char *strpbrk(const char *__s, const char *__accept) __attribute__((__pure__));
# 505 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h" 3
extern const char *strrchr(const char *, int) __attribute__((__pure__));
# 515 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h" 3
extern char *strrev(char *);
# 533 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h" 3
extern char *strsep(char **, const char *);
# 544 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h" 3
extern size_t strspn(const char *__s, const char *__accept) __attribute__((__pure__));
# 557 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h" 3
extern const char *strstr(const char *, const char *) __attribute__((__pure__));
# 576 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h" 3
extern char *strtok(char *, const char *);
# 593 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h" 3
extern char *strtok_r(char *, const char *, char **);
# 606 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h" 3
extern char *strupr(char *);



extern int strcoll(const char *s1, const char *s2);
extern char *strerror(int errnum);
extern size_t strxfrm(char *dest, const char *src, size_t n);
# 6 "usb/usb.h" 2

# 1 "usb/usb_standard.h" 1
       
# 10 "usb/usb_standard.h"

# 10 "usb/usb_standard.h"
typedef enum {
 USB_SPEED_LOW,
 USB_SPEED_FULL,
 USB_SPEED_HIGH,
} USB_Speed;
# 29 "usb/usb_standard.h"
typedef struct {
 uint8_t bmRequestType;
 uint8_t bRequest;
 uint16_t wValue;
 uint16_t wIndex;
 uint16_t wLength;
} __attribute__ ((packed)) USB_SetupPacket;


enum {
 USB_REQ_GetStatus = 0,
 USB_REQ_ClearFeature = 1,
 USB_REQ_SetFeature = 3,
 USB_REQ_SetAddress = 5,
 USB_REQ_GetDescriptor = 6,
 USB_REQ_SetDescriptor = 7,
 USB_REQ_GetConfiguration = 8,
 USB_REQ_SetConfiguration = 9,
 USB_REQ_GetInterface = 10,
 USB_REQ_SetInterface = 11,
 USB_REQ_SynchFrame = 12,
};

enum {
 USB_FEATURE_EndpointHalt = 0x00,
 USB_FEATURE_DeviceRemoteWakeup = 0x01,
 USB_FEATURE_TestMode = 0x02,
};

enum {
 USB_DTYPE_Device = 0x01,
 USB_DTYPE_Configuration = 0x02,
 USB_DTYPE_String = 0x03,
 USB_DTYPE_Interface = 0x04,
 USB_DTYPE_Endpoint = 0x05,
 USB_DTYPE_DeviceQualifier = 0x06,
 USB_DTYPE_Other = 0x07,
 USB_DTYPE_InterfacePower = 0x08,
 USB_DTYPE_InterfaceAssociation = 0x0B,
 USB_DTYPE_CSInterface = 0x24,
 USB_DTYPE_CSEndpoint = 0x25,
} USB_dtype;

typedef enum {
 USB_CSCP_NoDeviceClass = 0x00,
 USB_CSCP_NoDeviceSubclass = 0x00,
 USB_CSCP_NoDeviceProtocol = 0x00,
 USB_CSCP_VendorSpecificClass = 0xFF,
 USB_CSCP_VendorSpecificSubclass = 0xFF,
 USB_CSCP_VendorSpecificProtocol = 0xFF,
 USB_CSCP_IADDeviceClass = 0xEF,
 USB_CSCP_IADDeviceSubclass = 0x02,
 USB_CSCP_IADDeviceProtocol = 0x01,
} USB_cscp;
# 110 "usb/usb_standard.h"
typedef struct {
 uint8_t bLength;
 uint8_t bDescriptorType;
} __attribute__ ((packed)) USB_DescriptorHeader;

typedef struct {
 uint8_t bLength;
 uint8_t bDescriptorType;
 uint16_t bcdUSB;
 uint8_t bDeviceClass;
 uint8_t bDeviceSubClass;
 uint8_t bDeviceProtocol;
 uint8_t bMaxPacketSize0;
 uint16_t idVendor;
 uint16_t idProduct;
 uint16_t bcdDevice;
 uint8_t iManufacturer;
 uint8_t iProduct;
 uint8_t iSerialNumber;
 uint8_t bNumConfigurations;
} __attribute__ ((packed)) USB_DeviceDescriptor;

typedef struct {
 uint8_t bLength;
 uint8_t bDescriptorType;
 uint16_t bcdUSB;
 uint8_t bDeviceSubClass;
 uint8_t bMaxPacketSize0;
 uint8_t bNumConfigurations;
 uint8_t bReserved;
} __attribute__ ((packed)) USB_DeviceQualifierDescriptor;

typedef struct {
 uint8_t bLength;
 uint8_t bDescriptorType;
 uint16_t wTotalLength;
 uint8_t bNumInterfaces;
 uint8_t bConfigurationValue;
 uint8_t iConfiguration;
 uint8_t bmAttributes;
 uint8_t bMaxPower;
} __attribute__ ((packed)) USB_ConfigurationDescriptor;

typedef struct {
 uint8_t bLength;
 uint8_t bDescriptorType;
 uint8_t bInterfaceNumber;
 uint8_t bAlternateSetting;
 uint8_t bNumEndpoints;
 uint8_t bInterfaceClass;
 uint8_t bInterfaceSubClass;
 uint8_t bInterfaceProtocol;
 uint8_t iInterface;
} __attribute__ ((packed)) USB_InterfaceDescriptor;

typedef struct {
 uint8_t bLength;
 uint8_t bDescriptorType;
 uint8_t bFirstInterface;
 uint8_t bInterfaceCount;
 uint8_t bFunctionClass;
 uint8_t bFunctionSubClass;
 uint8_t bFunctionProtocol;
 uint8_t iFunction;
} __attribute__ ((packed)) USB_InterfaceAssociationDescriptor;

typedef struct {
 uint8_t bLength;
 uint8_t bDescriptorType;
 uint8_t bEndpointAddress;
 uint8_t bmAttributes;
 uint16_t wMaxPacketSize;
 uint8_t bInterval;
} __attribute__ ((packed)) USB_EndpointDescriptor;

typedef struct {
 uint8_t bLength;
 uint8_t bDescriptorType;
 unsigned int bString[];
} __attribute__ ((packed)) USB_StringDescriptor;


typedef struct {
 uint8_t bFirstInterfaceNumber;
 uint8_t reserved1;
 uint8_t compatibleID[8];
 uint8_t subCompatibleID[8];
 uint8_t reserved2[6];
} __attribute__((packed)) USB_MicrosoftCompatibleDescriptor_Interface;

typedef struct {
 uint32_t dwLength;
 uint16_t bcdVersion;
 uint16_t wIndex;
 uint8_t bCount;
 uint8_t reserved[7];
 USB_MicrosoftCompatibleDescriptor_Interface interfaces[];
} __attribute__((packed)) USB_MicrosoftCompatibleDescriptor;
# 8 "usb/usb.h" 2



extern USB_SetupPacket usb_setup;
extern uint8_t ep0_buf_in[64];
extern uint8_t ep0_buf_out[64];
extern volatile uint8_t USB_DeviceState;
extern volatile uint8_t USB_Device_ConfigurationNumber;

typedef size_t usb_size;
typedef uint8_t usb_ep;
typedef uint8_t usb_bank;


void usb_cb_reset(void);


void usb_cb_control_setup(void);


void usb_cb_completion(void);
void usb_cb_control_in_completion(void);
void usb_cb_control_out_completion(void);



# 33 "usb/usb.h" 3 4
_Bool 
# 33 "usb/usb.h"
    usb_cb_set_configuration(uint8_t config);



# 36 "usb/usb.h" 3 4
_Bool 
# 36 "usb/usb.h"
    usb_cb_set_interface(uint16_t interface, uint16_t altsetting);


uint16_t usb_cb_get_descriptor(uint8_t type, uint8_t index, const uint8_t** descriptor_ptr);


void usb_init(void);


void usb_attach(void);


void usb_detach(void);


void usb_reset(void);


void usb_set_address(uint8_t addr);


void usb_enable_ep(usb_ep ep, uint8_t type, usb_size pkt_size);


void usb_disable_ep(usb_ep ep);


void usb_reset_ep(usb_ep ep);


void usb_set_stall_ep(usb_ep ep);
void usb_clr_stall_ep(usb_ep ep);



# 70 "usb/usb.h" 3 4
_Bool 
# 70 "usb/usb.h"
    usb_ep_ready(usb_ep ep);

inline void usb_ep_wait_for_ready(uint8_t ep){
 while (!usb_ep_ready(ep)) {};
}



# 77 "usb/usb.h" 3 4
_Bool 
# 77 "usb/usb.h"
    usb_ep_pending(usb_ep ep);

inline void usb_ep_wait_for_pending(uint8_t ep){
 while (!usb_ep_pending(ep)) {};
}




usb_bank usb_ep_start_out(usb_ep ep, uint8_t* data, usb_size len);


usb_size usb_ep_out_length(usb_ep ep);





usb_bank usb_ep_start_in(uint8_t ep, const uint8_t* data, usb_size size, 
# 95 "usb/usb.h" 3 4
                                                                        _Bool 
# 95 "usb/usb.h"
                                                                             zlp);


void usb_ep_handled(usb_ep ep);


void usb_ep0_in(uint8_t size);


void usb_ep0_out(void);


void usb_ep0_stall(void);


void usb_set_speed(USB_Speed speed);


USB_Speed usb_get_speed(void);




void usb_handle_msft_compatible(const USB_MicrosoftCompatibleDescriptor* msft_compatible);


void* usb_string_to_descriptor(char* str);


void usb_handle_setup(void);
void usb_handle_control_out_complete(void);
void usb_handle_control_in_complete(void);
# 2 "usb/usb_requests.c" 2

USB_SetupPacket usb_setup;
__attribute__((__aligned__(4))) uint8_t ep0_buf_in[64];
__attribute__((__aligned__(4))) uint8_t ep0_buf_out[64];
volatile uint8_t usb_configuration;

uint16_t usb_ep0_in_size;
const uint8_t* usb_ep0_in_ptr;

void usb_ep0_in_multi(void) {
 uint16_t tsize = usb_ep0_in_size;

 if (tsize > 64) {
  tsize = 64;
 }

 memcpy(ep0_buf_in, usb_ep0_in_ptr, tsize);
 usb_ep_start_in(0x80, ep0_buf_in, tsize, 
# 19 "usb/usb_requests.c" 3 4
                                         0
# 19 "usb/usb_requests.c"
                                              );

 if (tsize == 0) {
  usb_ep0_out();
 }

 usb_ep0_in_size -= tsize;
 usb_ep0_in_ptr += tsize;
}

void usb_handle_setup(void){
 if ((usb_setup.bmRequestType & 0x60) == (0 << 5)){
  switch (usb_setup.bRequest){
   case USB_REQ_GetStatus:
    ep0_buf_in[0] = 0;
    ep0_buf_in[1] = 0;
    usb_ep0_in(2);
    return usb_ep0_out();

   case USB_REQ_ClearFeature:
   case USB_REQ_SetFeature:
    usb_ep0_in(0);
    return usb_ep0_out();

   case USB_REQ_SetAddress:
    usb_ep0_in(0);
    return usb_ep0_out();

   case USB_REQ_GetDescriptor: {
    uint8_t type = (usb_setup.wValue >> 8);
    uint8_t index = (usb_setup.wValue & 0xFF);
    const uint8_t* descriptor = 0;
    uint16_t size = usb_cb_get_descriptor(type, index, &descriptor);

    if (size && descriptor){
     if (size > usb_setup.wLength) {
      size = usb_setup.wLength;
     }

     if (descriptor == ep0_buf_in) {
      usb_ep0_in_size = 0;
      usb_ep_start_in(0x80, ep0_buf_in, size, 
# 60 "usb/usb_requests.c" 3 4
                                             1
# 60 "usb/usb_requests.c"
                                                 );
     } else {
      usb_ep0_in_size = size;
      usb_ep0_in_ptr = descriptor;
      usb_ep0_in_multi();
     }

     return;
    } else {
     return usb_ep0_stall();
    }
   }
   case USB_REQ_GetConfiguration:
    ep0_buf_in[0] = usb_configuration;
    usb_ep0_in(1);
    return usb_ep0_out();

   case USB_REQ_SetConfiguration:
    if (usb_cb_set_configuration((uint8_t)usb_setup.wValue)) {
     usb_ep0_in(0);
     usb_configuration = (uint8_t)(usb_setup.wValue);
     return usb_ep0_out();
    } else {
     return usb_ep0_stall();
    }

   case USB_REQ_SetInterface:
    if (usb_cb_set_interface(usb_setup.wIndex, usb_setup.wValue)) {
     usb_ep0_in(0);
     return usb_ep0_out();
    } else {
     return usb_ep0_stall();
    }

   default:
    return usb_ep0_stall();
  }
 }

 usb_cb_control_setup();
}

void usb_handle_control_out_complete(void) {
 if ((usb_setup.bmRequestType & 0x60) == (0 << 5)) {

 } else {
  usb_cb_control_out_completion();
 }
}

void usb_handle_control_in_complete(void) {
 if ((usb_setup.bmRequestType & 0x60) == (0 << 5)) {
  switch (usb_setup.bRequest){
   case USB_REQ_SetAddress:
    usb_set_address(usb_setup.wValue & 0x7F);
    return;
   case USB_REQ_GetDescriptor:
    usb_ep0_in_multi();
    return;
  }
 } else {
  usb_cb_control_in_completion();
 }
}

void usb_handle_msft_compatible(const USB_MicrosoftCompatibleDescriptor* msft_compatible) {
 if (usb_setup.wIndex == 0x0004) {
  uint16_t len = usb_setup.wLength;
  if (len > msft_compatible->dwLength) {
   len = msft_compatible->dwLength;
  }
  if (len > 64) {
   len = 64;
  }
  memcpy(ep0_buf_in, msft_compatible, len);
  usb_ep_start_in(0x80, ep0_buf_in, len, 
# 135 "usb/usb_requests.c" 3 4
                                        0
# 135 "usb/usb_requests.c"
                                             );
  return usb_ep0_out();
 } else {
  return usb_ep0_stall();
 }
}

void* usb_string_to_descriptor(char* str) {
 USB_StringDescriptor* desc = (((USB_StringDescriptor*)ep0_buf_in));
 uint16_t len = strlen(str);
 const uint16_t maxlen = (64 - 2)/2;
 if (len > maxlen) len = maxlen;
 desc->bLength = (sizeof(USB_DescriptorHeader) + ((len) * 2));
 desc->bDescriptorType = USB_DTYPE_String;
 for (int i=0; i<len; i++) {
  desc->bString[i] = str[i];
 }
 return desc;
}
