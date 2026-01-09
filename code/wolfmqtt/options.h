/* options.h.in
 *
 * Copyright (C) 2006-2025 wolfSSL Inc.
 *
 * This file is part of wolfMQTT.
 *
 * wolfMQTT is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * wolfMQTT is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1335, USA
 */


/* default blank options for autoconf */

#ifndef WOLFMQTT_OPTIONS_H
#define WOLFMQTT_OPTIONS_H

/* =============================
 * Platform / OS
 * ============================= */
#define WOLFMQTT_NO_STDIO
#define WOLFMQTT_NO_FILESYSTEM
#define WOLFMQTT_NO_POSIX

/* =============================
 * Networking
 * ============================= */
#define WOLFMQTT_CUSTOM_SOCKETS
#define WOLFMQTT_NONBLOCK

/* =============================
 * Features (keep minimal)
 * ============================= */
#define WOLFMQTT_ENABLE_CLIENT

/* Disable things you don't need */
#undef  WOLFMQTT_ENABLE_SN
#undef  WOLFMQTT_ENABLE_V5
#undef  WOLFMQTT_ENABLE_DEBUG
#undef  WOLFMQTT_ENABLE_PUBLISH_CB

/* =============================
 * Memory
 * ============================= */
/* Use static buffers (no malloc) */
#define WOLFMQTT_NO_MALLOC

/* =============================
 * Timing
 * ============================= */
/* We pass timeout manually */
#define WOLFMQTT_NO_TIME

/* =============================
 * Data types (important for AVR)
 * ============================= */
#include <stdint.h>
typedef uint8_t  byte;
typedef uint16_t word16;
typedef uint32_t word32;


#ifdef __cplusplus
extern "C" {
#endif


#ifdef __cplusplus
}
#endif


#endif /* WOLFMQTT_OPTIONS_H */
