# 1 "main.c"
# 1 "/home/marek/Dropbox/Programowanie/Michrochip_PIC/xmegatest.X//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"







# 1 "/opt/microchip/xc8/v2.10/avr/avr/include/stdio.h" 1 3
# 44 "/opt/microchip/xc8/v2.10/avr/avr/include/stdio.h" 3
# 1 "/opt/microchip/xc8/v2.10/avr/avr/include/inttypes.h" 1 3
# 37 "/opt/microchip/xc8/v2.10/avr/avr/include/inttypes.h" 3
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
# 38 "/opt/microchip/xc8/v2.10/avr/avr/include/inttypes.h" 2 3
# 77 "/opt/microchip/xc8/v2.10/avr/avr/include/inttypes.h" 3
typedef int32_t int_farptr_t;



typedef uint32_t uint_farptr_t;
# 45 "/opt/microchip/xc8/v2.10/avr/avr/include/stdio.h" 2 3
# 1 "/opt/microchip/xc8/v2.10/avr/lib/gcc/avr/5.4.0/include/stdarg.h" 1 3 4
# 40 "/opt/microchip/xc8/v2.10/avr/lib/gcc/avr/5.4.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 98 "/opt/microchip/xc8/v2.10/avr/lib/gcc/avr/5.4.0/include/stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 46 "/opt/microchip/xc8/v2.10/avr/avr/include/stdio.h" 2 3




# 1 "/opt/microchip/xc8/v2.10/avr/lib/gcc/avr/5.4.0/include/stddef.h" 1 3 4
# 216 "/opt/microchip/xc8/v2.10/avr/lib/gcc/avr/5.4.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 51 "/opt/microchip/xc8/v2.10/avr/avr/include/stdio.h" 2 3
# 244 "/opt/microchip/xc8/v2.10/avr/avr/include/stdio.h" 3
struct __file {
  union {
   char *buf;
    const char *robuf;
  };
 unsigned char unget;
 uint8_t flags;
# 266 "/opt/microchip/xc8/v2.10/avr/avr/include/stdio.h" 3
 int size;
 int len;
 int (*put)(char, struct __file *);
 int (*get)(struct __file *);
 void *udata;
};
# 280 "/opt/microchip/xc8/v2.10/avr/avr/include/stdio.h" 3
typedef struct __file FILE;
# 410 "/opt/microchip/xc8/v2.10/avr/avr/include/stdio.h" 3
extern struct __file *__iob[];
# 422 "/opt/microchip/xc8/v2.10/avr/avr/include/stdio.h" 3
extern FILE *fdevopen(int (*__put)(char, FILE*), int (*__get)(FILE*));
# 439 "/opt/microchip/xc8/v2.10/avr/avr/include/stdio.h" 3
extern int fclose(FILE *__stream);
# 613 "/opt/microchip/xc8/v2.10/avr/avr/include/stdio.h" 3
extern int vfprintf(FILE *__stream, const char *__fmt, va_list __ap);





extern int vfprintf_P(FILE *__stream, const char *__fmt, va_list __ap);






extern int fputc(int __c, FILE *__stream);




extern int putc(int __c, FILE *__stream);


extern int putchar(int __c);
# 654 "/opt/microchip/xc8/v2.10/avr/avr/include/stdio.h" 3
extern int printf(const char *__fmt, ...);





extern int printf_P(const char *__fmt, ...);







extern int vprintf(const char *__fmt, va_list __ap);





extern int sprintf(char *__s, const char *__fmt, ...);





extern int sprintf_P(char *__s, const char *__fmt, ...);
# 690 "/opt/microchip/xc8/v2.10/avr/avr/include/stdio.h" 3
extern int snprintf(char *__s, size_t __n, const char *__fmt, ...);





extern int snprintf_P(char *__s, size_t __n, const char *__fmt, ...);





extern int vsprintf(char *__s, const char *__fmt, va_list ap);





extern int vsprintf_P(char *__s, const char *__fmt, va_list ap);
# 718 "/opt/microchip/xc8/v2.10/avr/avr/include/stdio.h" 3
extern int vsnprintf(char *__s, size_t __n, const char *__fmt, va_list ap);





extern int vsnprintf_P(char *__s, size_t __n, const char *__fmt, va_list ap);




extern int fprintf(FILE *__stream, const char *__fmt, ...);





extern int fprintf_P(FILE *__stream, const char *__fmt, ...);






extern int fputs(const char *__str, FILE *__stream);




extern int fputs_P(const char *__str, FILE *__stream);





extern int puts(const char *__str);




extern int puts_P(const char *__str);
# 767 "/opt/microchip/xc8/v2.10/avr/avr/include/stdio.h" 3
extern size_t fwrite(const void *__ptr, size_t __size, size_t __nmemb,
         FILE *__stream);







extern int fgetc(FILE *__stream);




extern int getc(FILE *__stream);


extern int getchar(void);
# 815 "/opt/microchip/xc8/v2.10/avr/avr/include/stdio.h" 3
extern int ungetc(int __c, FILE *__stream);
# 827 "/opt/microchip/xc8/v2.10/avr/avr/include/stdio.h" 3
extern char *fgets(char *__str, int __size, FILE *__stream);






extern char *gets(char *__str);
# 845 "/opt/microchip/xc8/v2.10/avr/avr/include/stdio.h" 3
extern size_t fread(void *__ptr, size_t __size, size_t __nmemb,
        FILE *__stream);




extern void clearerr(FILE *__stream);
# 862 "/opt/microchip/xc8/v2.10/avr/avr/include/stdio.h" 3
extern int feof(FILE *__stream);
# 873 "/opt/microchip/xc8/v2.10/avr/avr/include/stdio.h" 3
extern int ferror(FILE *__stream);






extern int vfscanf(FILE *__stream, const char *__fmt, va_list __ap);




extern int vfscanf_P(FILE *__stream, const char *__fmt, va_list __ap);







extern int fscanf(FILE *__stream, const char *__fmt, ...);




extern int fscanf_P(FILE *__stream, const char *__fmt, ...);






extern int scanf(const char *__fmt, ...);




extern int scanf_P(const char *__fmt, ...);







extern int vscanf(const char *__fmt, va_list __ap);







extern int sscanf(const char *__buf, const char *__fmt, ...);




extern int sscanf_P(const char *__buf, const char *__fmt, ...);
# 943 "/opt/microchip/xc8/v2.10/avr/avr/include/stdio.h" 3
static __inline__ int fflush(FILE *stream __attribute__((unused)))
{
 return 0;
}






__extension__ typedef long long fpos_t;
extern int fgetpos(FILE *stream, fpos_t *pos);
extern FILE *fopen(const char *path, const char *mode);
extern FILE *freopen(const char *path, const char *mode, FILE *stream);
extern FILE *fdopen(int, const char *);
extern int fseek(FILE *stream, long offset, int whence);
extern int fsetpos(FILE *stream, fpos_t *pos);
extern long ftell(FILE *stream);
extern int fileno(FILE *);
extern void perror(const char *s);
extern int remove(const char *pathname);
extern int rename(const char *oldpath, const char *newpath);
extern void rewind(FILE *stream);
extern void setbuf(FILE *stream, char *buf);
extern int setvbuf(FILE *stream, char *buf, int mode, size_t size);
extern FILE *tmpfile(void);
extern char *tmpnam (char *s);
# 9 "main.c" 2
# 1 "/opt/microchip/xc8/v2.10/avr/avr/include/stdlib.h" 1 3
# 48 "/opt/microchip/xc8/v2.10/avr/avr/include/stdlib.h" 3
# 1 "/opt/microchip/xc8/v2.10/avr/lib/gcc/avr/5.4.0/include/stddef.h" 1 3 4
# 328 "/opt/microchip/xc8/v2.10/avr/lib/gcc/avr/5.4.0/include/stddef.h" 3 4
typedef int wchar_t;
# 49 "/opt/microchip/xc8/v2.10/avr/avr/include/stdlib.h" 2 3
# 70 "/opt/microchip/xc8/v2.10/avr/avr/include/stdlib.h" 3
typedef struct {
 int quot;
 int rem;
} div_t;


typedef struct {
 long quot;
 long rem;
} ldiv_t;


typedef int (*__compar_fn_t)(const void *, const void *);
# 116 "/opt/microchip/xc8/v2.10/avr/avr/include/stdlib.h" 3
extern void abort(void) __attribute__((__noreturn__));




extern int abs(int __i) __attribute__((__const__));
# 130 "/opt/microchip/xc8/v2.10/avr/avr/include/stdlib.h" 3
extern long labs(long __i) __attribute__((__const__));
# 153 "/opt/microchip/xc8/v2.10/avr/avr/include/stdlib.h" 3
extern void *bsearch(const void *__key, const void *__base, size_t __nmemb,
       size_t __size, int (*__compar)(const void *, const void *));







extern div_t div(int __num, int __denom) __asm__("__divmodhi4") __attribute__((__const__));





extern ldiv_t ldiv(long __num, long __denom) __asm__("__divmodsi4") __attribute__((__const__));
# 185 "/opt/microchip/xc8/v2.10/avr/avr/include/stdlib.h" 3
extern void qsort(void *__base, size_t __nmemb, size_t __size,
    __compar_fn_t __compar);
# 219 "/opt/microchip/xc8/v2.10/avr/avr/include/stdlib.h" 3
extern long strtol(const char *__nptr, const char **__endptr, int __base);
# 257 "/opt/microchip/xc8/v2.10/avr/avr/include/stdlib.h" 3
extern unsigned long strtoul(const char *__nptr, const char **__endptr, int __base);
# 272 "/opt/microchip/xc8/v2.10/avr/avr/include/stdlib.h" 3
extern long atol(const char *__s) __attribute__((__pure__));
# 284 "/opt/microchip/xc8/v2.10/avr/avr/include/stdlib.h" 3
extern int atoi(const char *__s) __attribute__((__pure__));
# 296 "/opt/microchip/xc8/v2.10/avr/avr/include/stdlib.h" 3
extern void exit(int __status) __attribute__((__noreturn__));
# 308 "/opt/microchip/xc8/v2.10/avr/avr/include/stdlib.h" 3
extern void *malloc(size_t __size) __attribute__((__malloc__));






extern void free(void *__ptr);




extern size_t __malloc_margin;




extern char *__malloc_heap_start;




extern char *__malloc_heap_end;






extern void *calloc(size_t __nele, size_t __size) __attribute__((__malloc__));
# 356 "/opt/microchip/xc8/v2.10/avr/avr/include/stdlib.h" 3
extern void *realloc(void *__ptr, size_t __size) __attribute__((__malloc__));


extern double strtod(const char *__nptr, const char **__endptr);
# 373 "/opt/microchip/xc8/v2.10/avr/avr/include/stdlib.h" 3
extern double atof(const char *__nptr);
# 395 "/opt/microchip/xc8/v2.10/avr/avr/include/stdlib.h" 3
extern int rand(void);



extern void srand(unsigned int __seed);






extern int rand_r(unsigned long *__ctx);
# 440 "/opt/microchip/xc8/v2.10/avr/avr/include/stdlib.h" 3
extern __inline__ __attribute__((__gnu_inline__))
char *itoa (int __val, char *__s, int __radix)
{
    if (!__builtin_constant_p (__radix)) {
 extern char *__itoa (int, char *, int);
 return __itoa (__val, __s, __radix);
    } else if (__radix < 2 || __radix > 36) {
 *__s = 0;
 return __s;
    } else {
 extern char *__itoa_ncheck (int, char *, unsigned char);
 return __itoa_ncheck (__val, __s, __radix);
    }
}
# 485 "/opt/microchip/xc8/v2.10/avr/avr/include/stdlib.h" 3
extern __inline__ __attribute__((__gnu_inline__))
char *ltoa (long __val, char *__s, int __radix)
{
    if (!__builtin_constant_p (__radix)) {
 extern char *__ltoa (long, char *, int);
 return __ltoa (__val, __s, __radix);
    } else if (__radix < 2 || __radix > 36) {
 *__s = 0;
 return __s;
    } else {
 extern char *__ltoa_ncheck (long, char *, unsigned char);
 return __ltoa_ncheck (__val, __s, __radix);
    }
}
# 528 "/opt/microchip/xc8/v2.10/avr/avr/include/stdlib.h" 3
extern __inline__ __attribute__((__gnu_inline__))
char *utoa (unsigned int __val, char *__s, int __radix)
{
    if (!__builtin_constant_p (__radix)) {
 extern char *__utoa (unsigned int, char *, int);
 return __utoa (__val, __s, __radix);
    } else if (__radix < 2 || __radix > 36) {
 *__s = 0;
 return __s;
    } else {
 extern char *__utoa_ncheck (unsigned int, char *, unsigned char);
 return __utoa_ncheck (__val, __s, __radix);
    }
}
# 570 "/opt/microchip/xc8/v2.10/avr/avr/include/stdlib.h" 3
extern __inline__ __attribute__((__gnu_inline__))
char *ultoa (unsigned long __val, char *__s, int __radix)
{
    if (!__builtin_constant_p (__radix)) {
 extern char *__ultoa (unsigned long, char *, int);
 return __ultoa (__val, __s, __radix);
    } else if (__radix < 2 || __radix > 36) {
 *__s = 0;
 return __s;
    } else {
 extern char *__ultoa_ncheck (unsigned long, char *, unsigned char);
 return __ultoa_ncheck (__val, __s, __radix);
    }
}
# 602 "/opt/microchip/xc8/v2.10/avr/avr/include/stdlib.h" 3
extern long random(void);




extern void srandom(unsigned long __seed);







extern long random_r(unsigned long *__ctx);
# 661 "/opt/microchip/xc8/v2.10/avr/avr/include/stdlib.h" 3
extern char *dtostre(double __val, char *__s, unsigned char __prec,
       unsigned char __flags);
# 678 "/opt/microchip/xc8/v2.10/avr/avr/include/stdlib.h" 3
extern char *dtostrf(double __val, signed char __width,
                     unsigned char __prec, char *__s);
# 697 "/opt/microchip/xc8/v2.10/avr/avr/include/stdlib.h" 3
extern int atexit(void (*)(void));
extern int system (const char *);
extern char *getenv (const char *);
# 10 "main.c" 2
# 1 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/io.h" 1 3
# 99 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/io.h" 3
# 1 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/sfr_defs.h" 1 3
# 100 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/io.h" 2 3
# 528 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/io.h" 3
# 1 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h" 1 3
# 84 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h" 3
typedef volatile uint8_t register8_t;
typedef volatile uint16_t register16_t;
typedef volatile uint32_t register32_t;
# 134 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h" 3
typedef struct AC_struct
{
    register8_t AC0CTRL;
    register8_t AC1CTRL;
    register8_t AC0MUXCTRL;
    register8_t AC1MUXCTRL;
    register8_t CTRLA;
    register8_t CTRLB;
    register8_t WINCTRL;
    register8_t STATUS;
    register8_t CURRCTRL;
    register8_t CURRCALIB;
} AC_t;


typedef enum AC_HYSMODE_enum
{
    AC_HYSMODE_NO_gc = (0x00<<1),
    AC_HYSMODE_SMALL_gc = (0x01<<1),
    AC_HYSMODE_LARGE_gc = (0x02<<1),
} AC_HYSMODE_t;


typedef enum AC_INTLVL_enum
{
    AC_INTLVL_OFF_gc = (0x00<<4),
    AC_INTLVL_LO_gc = (0x01<<4),
    AC_INTLVL_MED_gc = (0x02<<4),
    AC_INTLVL_HI_gc = (0x03<<4),
} AC_INTLVL_t;


typedef enum AC_INTMODE_enum
{
    AC_INTMODE_BOTHEDGES_gc = (0x00<<6),
    AC_INTMODE_FALLING_gc = (0x02<<6),
    AC_INTMODE_RISING_gc = (0x03<<6),
} AC_INTMODE_t;


typedef enum AC_MUXNEG_enum
{
    AC_MUXNEG_PIN0_gc = (0x00<<0),
    AC_MUXNEG_PIN1_gc = (0x01<<0),
    AC_MUXNEG_PIN3_gc = (0x02<<0),
    AC_MUXNEG_PIN5_gc = (0x03<<0),
    AC_MUXNEG_PIN7_gc = (0x04<<0),
    AC_MUXNEG_DAC_gc = (0x05<<0),
    AC_MUXNEG_BANDGAP_gc = (0x06<<0),
    AC_MUXNEG_SCALER_gc = (0x07<<0),
} AC_MUXNEG_t;


typedef enum AC_MUXPOS_enum
{
    AC_MUXPOS_PIN0_gc = (0x00<<3),
    AC_MUXPOS_PIN1_gc = (0x01<<3),
    AC_MUXPOS_PIN2_gc = (0x02<<3),
    AC_MUXPOS_PIN3_gc = (0x03<<3),
    AC_MUXPOS_PIN4_gc = (0x04<<3),
    AC_MUXPOS_PIN5_gc = (0x05<<3),
    AC_MUXPOS_PIN6_gc = (0x06<<3),
    AC_MUXPOS_DAC_gc = (0x07<<3),
} AC_MUXPOS_t;


typedef enum AC_WINTLVL_enum
{
    AC_WINTLVL_OFF_gc = (0x00<<0),
    AC_WINTLVL_LO_gc = (0x01<<0),
    AC_WINTLVL_MED_gc = (0x02<<0),
    AC_WINTLVL_HI_gc = (0x03<<0),
} AC_WINTLVL_t;


typedef enum AC_WINTMODE_enum
{
    AC_WINTMODE_ABOVE_gc = (0x00<<2),
    AC_WINTMODE_INSIDE_gc = (0x01<<2),
    AC_WINTMODE_BELOW_gc = (0x02<<2),
    AC_WINTMODE_OUTSIDE_gc = (0x03<<2),
} AC_WINTMODE_t;


typedef enum AC_WSTATE_enum
{
    AC_WSTATE_ABOVE_gc = (0x00<<6),
    AC_WSTATE_INSIDE_gc = (0x01<<6),
    AC_WSTATE_BELOW_gc = (0x02<<6),
} AC_WSTATE_t;
# 232 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h" 3
typedef struct ADC_CH_struct
{
    register8_t CTRL;
    register8_t MUXCTRL;
    register8_t INTCTRL;
    register8_t INTFLAGS;
    __extension__ union { register16_t RES; struct { register8_t RESL; register8_t RESH; }; };
    register8_t SCAN;
    register8_t reserved_0x07;
} ADC_CH_t;



typedef struct ADC_struct
{
    register8_t CTRLA;
    register8_t CTRLB;
    register8_t REFCTRL;
    register8_t EVCTRL;
    register8_t PRESCALER;
    register8_t reserved_0x05;
    register8_t INTFLAGS;
    register8_t TEMP;
    register8_t reserved_0x08;
    register8_t reserved_0x09;
    register8_t reserved_0x0A;
    register8_t reserved_0x0B;
    __extension__ union { register16_t CAL; struct { register8_t CALL; register8_t CALH; }; };
    register8_t reserved_0x0E;
    register8_t reserved_0x0F;
    __extension__ union { register16_t CH0RES; struct { register8_t CH0RESL; register8_t CH0RESH; }; };
    __extension__ union { register16_t CH1RES; struct { register8_t CH1RESL; register8_t CH1RESH; }; };
    __extension__ union { register16_t CH2RES; struct { register8_t CH2RESL; register8_t CH2RESH; }; };
    __extension__ union { register16_t CH3RES; struct { register8_t CH3RESL; register8_t CH3RESH; }; };
    __extension__ union { register16_t CMP; struct { register8_t CMPL; register8_t CMPH; }; };
    register8_t reserved_0x1A;
    register8_t reserved_0x1B;
    register8_t reserved_0x1C;
    register8_t reserved_0x1D;
    register8_t reserved_0x1E;
    register8_t reserved_0x1F;
    ADC_CH_t CH0;
    ADC_CH_t CH1;
    ADC_CH_t CH2;
    ADC_CH_t CH3;
} ADC_t;


typedef enum ADC_CH_GAIN_enum
{
    ADC_CH_GAIN_1X_gc = (0x00<<2),
    ADC_CH_GAIN_2X_gc = (0x01<<2),
    ADC_CH_GAIN_4X_gc = (0x02<<2),
    ADC_CH_GAIN_8X_gc = (0x03<<2),
    ADC_CH_GAIN_16X_gc = (0x04<<2),
    ADC_CH_GAIN_32X_gc = (0x05<<2),
    ADC_CH_GAIN_64X_gc = (0x06<<2),
    ADC_CH_GAIN_DIV2_gc = (0x07<<2),
} ADC_CH_GAIN_t;


typedef enum ADC_CH_INPUTMODE_enum
{
    ADC_CH_INPUTMODE_INTERNAL_gc = (0x00<<0),
    ADC_CH_INPUTMODE_SINGLEENDED_gc = (0x01<<0),
    ADC_CH_INPUTMODE_DIFF_gc = (0x02<<0),
    ADC_CH_INPUTMODE_DIFFWGAIN_gc = (0x03<<0),
} ADC_CH_INPUTMODE_t;


typedef enum ADC_CH_INTLVL_enum
{
    ADC_CH_INTLVL_OFF_gc = (0x00<<0),
    ADC_CH_INTLVL_LO_gc = (0x01<<0),
    ADC_CH_INTLVL_MED_gc = (0x02<<0),
    ADC_CH_INTLVL_HI_gc = (0x03<<0),
} ADC_CH_INTLVL_t;


typedef enum ADC_CH_INTMODE_enum
{
    ADC_CH_INTMODE_COMPLETE_gc = (0x00<<2),
    ADC_CH_INTMODE_BELOW_gc = (0x01<<2),
    ADC_CH_INTMODE_ABOVE_gc = (0x03<<2),
} ADC_CH_INTMODE_t;


typedef enum ADC_CH_MUXINT_enum
{
    ADC_CH_MUXINT_TEMP_gc = (0x00<<3),
    ADC_CH_MUXINT_BANDGAP_gc = (0x01<<3),
    ADC_CH_MUXINT_SCALEDVCC_gc = (0x02<<3),
    ADC_CH_MUXINT_DAC_gc = (0x03<<3),
} ADC_CH_MUXINT_t;


typedef enum ADC_CH_MUXNEG_enum
{
    ADC_CH_MUXNEG_PIN0_gc = (0x00<<0),
    ADC_CH_MUXNEG_PIN4_gc = (0x00<<0),
    ADC_CH_MUXNEG_PIN1_gc = (0x01<<0),
    ADC_CH_MUXNEG_PIN5_gc = (0x01<<0),
    ADC_CH_MUXNEG_PIN2_gc = (0x02<<0),
    ADC_CH_MUXNEG_PIN6_gc = (0x02<<0),
    ADC_CH_MUXNEG_PIN3_gc = (0x03<<0),
    ADC_CH_MUXNEG_PIN7_gc = (0x03<<0),
    ADC_CH_MUXNEG_INTGND_MODE4_gc = (0x04<<0),
    ADC_CH_MUXNEG_GND_MODE3_gc = (0x05<<0),
    ADC_CH_MUXNEG_INTGND_MODE3_gc = (0x07<<0),
    ADC_CH_MUXNEG_GND_MODE4_gc = (0x07<<0),
} ADC_CH_MUXNEG_t;


typedef enum ADC_CH_MUXPOS_enum
{
    ADC_CH_MUXPOS_PIN0_gc = (0x00<<3),
    ADC_CH_MUXPOS_PIN1_gc = (0x01<<3),
    ADC_CH_MUXPOS_PIN2_gc = (0x02<<3),
    ADC_CH_MUXPOS_PIN3_gc = (0x03<<3),
    ADC_CH_MUXPOS_PIN4_gc = (0x04<<3),
    ADC_CH_MUXPOS_PIN5_gc = (0x05<<3),
    ADC_CH_MUXPOS_PIN6_gc = (0x06<<3),
    ADC_CH_MUXPOS_PIN7_gc = (0x07<<3),
    ADC_CH_MUXPOS_PIN8_gc = (0x08<<3),
    ADC_CH_MUXPOS_PIN9_gc = (0x09<<3),
    ADC_CH_MUXPOS_PIN10_gc = (0x0A<<3),
    ADC_CH_MUXPOS_PIN11_gc = (0x0B<<3),
    ADC_CH_MUXPOS_PIN12_gc = (0x0C<<3),
    ADC_CH_MUXPOS_PIN13_gc = (0x0D<<3),
    ADC_CH_MUXPOS_PIN14_gc = (0x0E<<3),
    ADC_CH_MUXPOS_PIN15_gc = (0x0F<<3),
} ADC_CH_MUXPOS_t;


typedef enum ADC_CURRLIMIT_enum
{
    ADC_CURRLIMIT_NO_gc = (0x00<<5),
    ADC_CURRLIMIT_LOW_gc = (0x01<<5),
    ADC_CURRLIMIT_MED_gc = (0x02<<5),
    ADC_CURRLIMIT_HIGH_gc = (0x03<<5),
} ADC_CURRLIMIT_t;


typedef enum ADC_DMASEL_enum
{
    ADC_DMASEL_OFF_gc = (0x00<<6),
    ADC_DMASEL_CH01_gc = (0x01<<6),
    ADC_DMASEL_CH012_gc = (0x02<<6),
    ADC_DMASEL_CH0123_gc = (0x03<<6),
} ADC_DMASEL_t;


typedef enum ADC_EVACT_enum
{
    ADC_EVACT_NONE_gc = (0x00<<0),
    ADC_EVACT_CH0_gc = (0x01<<0),
    ADC_EVACT_CH01_gc = (0x02<<0),
    ADC_EVACT_CH012_gc = (0x03<<0),
    ADC_EVACT_CH0123_gc = (0x04<<0),
    ADC_EVACT_SWEEP_gc = (0x05<<0),
    ADC_EVACT_SYNCSWEEP_gc = (0x06<<0),
} ADC_EVACT_t;


typedef enum ADC_EVSEL_enum
{
    ADC_EVSEL_0123_gc = (0x00<<3),
    ADC_EVSEL_1234_gc = (0x01<<3),
    ADC_EVSEL_2345_gc = (0x02<<3),
    ADC_EVSEL_3456_gc = (0x03<<3),
    ADC_EVSEL_4567_gc = (0x04<<3),
    ADC_EVSEL_567_gc = (0x05<<3),
    ADC_EVSEL_67_gc = (0x06<<3),
    ADC_EVSEL_7_gc = (0x07<<3),
} ADC_EVSEL_t;


typedef enum ADC_PRESCALER_enum
{
    ADC_PRESCALER_DIV4_gc = (0x00<<0),
    ADC_PRESCALER_DIV8_gc = (0x01<<0),
    ADC_PRESCALER_DIV16_gc = (0x02<<0),
    ADC_PRESCALER_DIV32_gc = (0x03<<0),
    ADC_PRESCALER_DIV64_gc = (0x04<<0),
    ADC_PRESCALER_DIV128_gc = (0x05<<0),
    ADC_PRESCALER_DIV256_gc = (0x06<<0),
    ADC_PRESCALER_DIV512_gc = (0x07<<0),
} ADC_PRESCALER_t;


typedef enum ADC_REFSEL_enum
{
    ADC_REFSEL_INT1V_gc = (0x00<<4),
    ADC_REFSEL_INTVCC_gc = (0x01<<4),
    ADC_REFSEL_AREFA_gc = (0x02<<4),
    ADC_REFSEL_AREFB_gc = (0x03<<4),
    ADC_REFSEL_INTVCC2_gc = (0x04<<4),
} ADC_REFSEL_t;


typedef enum ADC_RESOLUTION_enum
{
    ADC_RESOLUTION_12BIT_gc = (0x00<<1),
    ADC_RESOLUTION_8BIT_gc = (0x02<<1),
    ADC_RESOLUTION_LEFT12BIT_gc = (0x03<<1),
} ADC_RESOLUTION_t;


typedef enum ADC_SWEEP_enum
{
    ADC_SWEEP_0_gc = (0x00<<6),
    ADC_SWEEP_01_gc = (0x01<<6),
    ADC_SWEEP_012_gc = (0x02<<6),
    ADC_SWEEP_0123_gc = (0x03<<6),
} ADC_SWEEP_t;
# 455 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h" 3
typedef struct AES_struct
{
    register8_t CTRL;
    register8_t STATUS;
    register8_t STATE;
    register8_t KEY;
    register8_t INTCTRL;
} AES_t;


typedef enum AES_INTLVL_enum
{
    AES_INTLVL_OFF_gc = (0x00<<0),
    AES_INTLVL_LO_gc = (0x01<<0),
    AES_INTLVL_MED_gc = (0x02<<0),
    AES_INTLVL_HI_gc = (0x03<<0),
} AES_INTLVL_t;
# 480 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h" 3
typedef struct AWEX_struct
{
    register8_t CTRL;
    register8_t reserved_0x01;
    register8_t FDEMASK;
    register8_t FDCTRL;
    register8_t STATUS;
    register8_t STATUSSET;
    register8_t DTBOTH;
    register8_t DTBOTHBUF;
    register8_t DTLS;
    register8_t DTHS;
    register8_t DTLSBUF;
    register8_t DTHSBUF;
    register8_t OUTOVEN;
} AWEX_t;


typedef enum AWEX_FDACT_enum
{
    AWEX_FDACT_NONE_gc = (0x00<<0),
    AWEX_FDACT_CLEAROE_gc = (0x01<<0),
    AWEX_FDACT_CLEARDIR_gc = (0x03<<0),
} AWEX_FDACT_t;
# 512 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h" 3
typedef struct CLK_struct
{
    register8_t CTRL;
    register8_t PSCTRL;
    register8_t LOCK;
    register8_t RTCCTRL;
    register8_t USBCTRL;
} CLK_t;


typedef enum CLK_PSADIV_enum
{
    CLK_PSADIV_1_gc = (0x00<<2),
    CLK_PSADIV_2_gc = (0x01<<2),
    CLK_PSADIV_4_gc = (0x03<<2),
    CLK_PSADIV_8_gc = (0x05<<2),
    CLK_PSADIV_16_gc = (0x07<<2),
    CLK_PSADIV_32_gc = (0x09<<2),
    CLK_PSADIV_64_gc = (0x0B<<2),
    CLK_PSADIV_128_gc = (0x0D<<2),
    CLK_PSADIV_256_gc = (0x0F<<2),
    CLK_PSADIV_512_gc = (0x11<<2),
} CLK_PSADIV_t;


typedef enum CLK_PSBCDIV_enum
{
    CLK_PSBCDIV_1_1_gc = (0x00<<0),
    CLK_PSBCDIV_1_2_gc = (0x01<<0),
    CLK_PSBCDIV_4_1_gc = (0x02<<0),
    CLK_PSBCDIV_2_2_gc = (0x03<<0),
} CLK_PSBCDIV_t;


typedef enum CLK_RTCSRC_enum
{
    CLK_RTCSRC_ULP_gc = (0x00<<1),
    CLK_RTCSRC_TOSC_gc = (0x01<<1),
    CLK_RTCSRC_RCOSC_gc = (0x02<<1),
    CLK_RTCSRC_TOSC32_gc = (0x05<<1),
    CLK_RTCSRC_RCOSC32_gc = (0x06<<1),
    CLK_RTCSRC_EXTCLK_gc = (0x07<<1),
} CLK_RTCSRC_t;


typedef enum CLK_SCLKSEL_enum
{
    CLK_SCLKSEL_RC2M_gc = (0x00<<0),
    CLK_SCLKSEL_RC32M_gc = (0x01<<0),
    CLK_SCLKSEL_RC32K_gc = (0x02<<0),
    CLK_SCLKSEL_XOSC_gc = (0x03<<0),
    CLK_SCLKSEL_PLL_gc = (0x04<<0),
} CLK_SCLKSEL_t;


typedef enum CLK_USBPSDIV_enum
{
    CLK_USBPSDIV_1_gc = (0x00<<3),
    CLK_USBPSDIV_2_gc = (0x01<<3),
    CLK_USBPSDIV_4_gc = (0x02<<3),
    CLK_USBPSDIV_8_gc = (0x03<<3),
    CLK_USBPSDIV_16_gc = (0x04<<3),
    CLK_USBPSDIV_32_gc = (0x05<<3),
} CLK_USBPSDIV_t;


typedef enum CLK_USBSRC_enum
{
    CLK_USBSRC_PLL_gc = (0x00<<1),
    CLK_USBSRC_RC32M_gc = (0x01<<1),
} CLK_USBSRC_t;
# 591 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h" 3
typedef enum CCP_enum
{
    CCP_SPM_gc = (0x9D<<0),
    CCP_IOREG_gc = (0xD8<<0),
} CCP_t;
# 604 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h" 3
typedef struct CRC_struct
{
    register8_t CTRL;
    register8_t STATUS;
    register8_t reserved_0x02;
    register8_t DATAIN;
    register8_t CHECKSUM0;
    register8_t CHECKSUM1;
    register8_t CHECKSUM2;
    register8_t CHECKSUM3;
} CRC_t;


typedef enum CRC_RESET_enum
{
    CRC_RESET_NO_gc = (0x00<<6),
    CRC_RESET_RESET0_gc = (0x02<<6),
    CRC_RESET_RESET1_gc = (0x03<<6),
} CRC_RESET_t;


typedef enum CRC_SOURCE_enum
{
    CRC_SOURCE_DISABLE_gc = (0x00<<0),
    CRC_SOURCE_IO_gc = (0x01<<0),
    CRC_SOURCE_FLASH_gc = (0x02<<0),
    CRC_SOURCE_DMAC0_gc = (0x04<<0),
    CRC_SOURCE_DMAC1_gc = (0x05<<0),
    CRC_SOURCE_DMAC2_gc = (0x06<<0),
    CRC_SOURCE_DMAC3_gc = (0x07<<0),
} CRC_SOURCE_t;
# 643 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h" 3
typedef struct DAC_struct
{
    register8_t CTRLA;
    register8_t CTRLB;
    register8_t CTRLC;
    register8_t EVCTRL;
    register8_t reserved_0x04;
    register8_t STATUS;
    register8_t reserved_0x06;
    register8_t reserved_0x07;
    register8_t CH0GAINCAL;
    register8_t CH0OFFSETCAL;
    register8_t CH1GAINCAL;
    register8_t CH1OFFSETCAL;
    register8_t reserved_0x0C;
    register8_t reserved_0x0D;
    register8_t reserved_0x0E;
    register8_t reserved_0x0F;
    register8_t reserved_0x10;
    register8_t reserved_0x11;
    register8_t reserved_0x12;
    register8_t reserved_0x13;
    register8_t reserved_0x14;
    register8_t reserved_0x15;
    register8_t reserved_0x16;
    register8_t reserved_0x17;
    __extension__ union { register16_t CH0DATA; struct { register8_t CH0DATAL; register8_t CH0DATAH; }; };
    __extension__ union { register16_t CH1DATA; struct { register8_t CH1DATAL; register8_t CH1DATAH; }; };
} DAC_t;


typedef enum DAC_CHSEL_enum
{
    DAC_CHSEL_SINGLE_gc = (0x00<<5),
    DAC_CHSEL_SINGLE1_gc = (0x01<<5),
    DAC_CHSEL_DUAL_gc = (0x02<<5),
} DAC_CHSEL_t;


typedef enum DAC_EVSEL_enum
{
    DAC_EVSEL_0_gc = (0x00<<0),
    DAC_EVSEL_1_gc = (0x01<<0),
    DAC_EVSEL_2_gc = (0x02<<0),
    DAC_EVSEL_3_gc = (0x03<<0),
    DAC_EVSEL_4_gc = (0x04<<0),
    DAC_EVSEL_5_gc = (0x05<<0),
    DAC_EVSEL_6_gc = (0x06<<0),
    DAC_EVSEL_7_gc = (0x07<<0),
} DAC_EVSEL_t;


typedef enum DAC_REFSEL_enum
{
    DAC_REFSEL_INT1V_gc = (0x00<<3),
    DAC_REFSEL_AVCC_gc = (0x01<<3),
    DAC_REFSEL_AREFA_gc = (0x02<<3),
    DAC_REFSEL_AREFB_gc = (0x03<<3),
} DAC_REFSEL_t;
# 710 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h" 3
typedef struct DFLL_struct
{
    register8_t CTRL;
    register8_t reserved_0x01;
    register8_t CALA;
    register8_t CALB;
    register8_t COMP0;
    register8_t COMP1;
    register8_t COMP2;
    register8_t reserved_0x07;
} DFLL_t;
# 730 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h" 3
typedef struct DMA_CH_struct
{
    register8_t CTRLA;
    register8_t CTRLB;
    register8_t ADDRCTRL;
    register8_t TRIGSRC;
    __extension__ union { register16_t TRFCNT; struct { register8_t TRFCNTL; register8_t TRFCNTH; }; };
    register8_t REPCNT;
    register8_t reserved_0x07;
    register8_t SRCADDR0;
    register8_t SRCADDR1;
    register8_t SRCADDR2;
    register8_t reserved_0x0B;
    register8_t DESTADDR0;
    register8_t DESTADDR1;
    register8_t DESTADDR2;
    register8_t reserved_0x0F;
} DMA_CH_t;



typedef struct DMA_struct
{
    register8_t CTRL;
    register8_t reserved_0x01;
    register8_t reserved_0x02;
    register8_t INTFLAGS;
    register8_t STATUS;
    register8_t reserved_0x05;
    __extension__ union { register16_t TEMP; struct { register8_t TEMPL; register8_t TEMPH; }; };
    register8_t reserved_0x08;
    register8_t reserved_0x09;
    register8_t reserved_0x0A;
    register8_t reserved_0x0B;
    register8_t reserved_0x0C;
    register8_t reserved_0x0D;
    register8_t reserved_0x0E;
    register8_t reserved_0x0F;
    DMA_CH_t CH0;
    DMA_CH_t CH1;
    DMA_CH_t CH2;
    DMA_CH_t CH3;
} DMA_t;


typedef enum DMA_CH_BURSTLEN_enum
{
    DMA_CH_BURSTLEN_1BYTE_gc = (0x00<<0),
    DMA_CH_BURSTLEN_2BYTE_gc = (0x01<<0),
    DMA_CH_BURSTLEN_4BYTE_gc = (0x02<<0),
    DMA_CH_BURSTLEN_8BYTE_gc = (0x03<<0),
} DMA_CH_BURSTLEN_t;


typedef enum DMA_CH_DESTDIR_enum
{
    DMA_CH_DESTDIR_FIXED_gc = (0x00<<0),
    DMA_CH_DESTDIR_INC_gc = (0x01<<0),
    DMA_CH_DESTDIR_DEC_gc = (0x02<<0),
} DMA_CH_DESTDIR_t;


typedef enum DMA_CH_DESTRELOAD_enum
{
    DMA_CH_DESTRELOAD_NONE_gc = (0x00<<2),
    DMA_CH_DESTRELOAD_BLOCK_gc = (0x01<<2),
    DMA_CH_DESTRELOAD_BURST_gc = (0x02<<2),
    DMA_CH_DESTRELOAD_TRANSACTION_gc = (0x03<<2),
} DMA_CH_DESTRELOAD_t;


typedef enum DMA_CH_ERRINTLVL_enum
{
    DMA_CH_ERRINTLVL_OFF_gc = (0x00<<2),
    DMA_CH_ERRINTLVL_LO_gc = (0x01<<2),
    DMA_CH_ERRINTLVL_MED_gc = (0x02<<2),
    DMA_CH_ERRINTLVL_HI_gc = (0x03<<2),
} DMA_CH_ERRINTLVL_t;


typedef enum DMA_CH_SRCDIR_enum
{
    DMA_CH_SRCDIR_FIXED_gc = (0x00<<4),
    DMA_CH_SRCDIR_INC_gc = (0x01<<4),
    DMA_CH_SRCDIR_DEC_gc = (0x02<<4),
} DMA_CH_SRCDIR_t;


typedef enum DMA_CH_SRCRELOAD_enum
{
    DMA_CH_SRCRELOAD_NONE_gc = (0x00<<6),
    DMA_CH_SRCRELOAD_BLOCK_gc = (0x01<<6),
    DMA_CH_SRCRELOAD_BURST_gc = (0x02<<6),
    DMA_CH_SRCRELOAD_TRANSACTION_gc = (0x03<<6),
} DMA_CH_SRCRELOAD_t;


typedef enum DMA_CH_TRIGSRC_enum
{
    DMA_CH_TRIGSRC_OFF_gc = (0x00<<0),
    DMA_CH_TRIGSRC_EVSYS_CH0_gc = (0x01<<0),
    DMA_CH_TRIGSRC_EVSYS_CH1_gc = (0x02<<0),
    DMA_CH_TRIGSRC_EVSYS_CH2_gc = (0x03<<0),
    DMA_CH_TRIGSRC_AES_gc = (0x04<<0),
    DMA_CH_TRIGSRC_ADCA_CH0_gc = (0x10<<0),
    DMA_CH_TRIGSRC_ADCA_CH1_gc = (0x11<<0),
    DMA_CH_TRIGSRC_ADCA_CH2_gc = (0x12<<0),
    DMA_CH_TRIGSRC_ADCA_CH3_gc = (0x13<<0),
    DMA_CH_TRIGSRC_ADCA_CH4_gc = (0x14<<0),
    DMA_CH_TRIGSRC_DACA_CH0_gc = (0x15<<0),
    DMA_CH_TRIGSRC_DACA_CH1_gc = (0x16<<0),
    DMA_CH_TRIGSRC_ADCB_CH0_gc = (0x20<<0),
    DMA_CH_TRIGSRC_ADCB_CH1_gc = (0x21<<0),
    DMA_CH_TRIGSRC_ADCB_CH2_gc = (0x22<<0),
    DMA_CH_TRIGSRC_ADCB_CH3_gc = (0x23<<0),
    DMA_CH_TRIGSRC_ADCB_CH4_gc = (0x24<<0),
    DMA_CH_TRIGSRC_DACB_CH0_gc = (0x25<<0),
    DMA_CH_TRIGSRC_DACB_CH1_gc = (0x26<<0),
    DMA_CH_TRIGSRC_TCC0_OVF_gc = (0x40<<0),
    DMA_CH_TRIGSRC_TCC0_ERR_gc = (0x41<<0),
    DMA_CH_TRIGSRC_TCC0_CCA_gc = (0x42<<0),
    DMA_CH_TRIGSRC_TCC0_CCB_gc = (0x43<<0),
    DMA_CH_TRIGSRC_TCC0_CCC_gc = (0x44<<0),
    DMA_CH_TRIGSRC_TCC0_CCD_gc = (0x45<<0),
    DMA_CH_TRIGSRC_TCC1_OVF_gc = (0x46<<0),
    DMA_CH_TRIGSRC_TCC1_ERR_gc = (0x47<<0),
    DMA_CH_TRIGSRC_TCC1_CCA_gc = (0x48<<0),
    DMA_CH_TRIGSRC_TCC1_CCB_gc = (0x49<<0),
    DMA_CH_TRIGSRC_SPIC_gc = (0x4A<<0),
    DMA_CH_TRIGSRC_USARTC0_RXC_gc = (0x4B<<0),
    DMA_CH_TRIGSRC_USARTC0_DRE_gc = (0x4C<<0),
    DMA_CH_TRIGSRC_USARTC1_RXC_gc = (0x4E<<0),
    DMA_CH_TRIGSRC_USARTC1_DRE_gc = (0x4F<<0),
    DMA_CH_TRIGSRC_TCD0_OVF_gc = (0x60<<0),
    DMA_CH_TRIGSRC_TCD0_ERR_gc = (0x61<<0),
    DMA_CH_TRIGSRC_TCD0_CCA_gc = (0x62<<0),
    DMA_CH_TRIGSRC_TCD0_CCB_gc = (0x63<<0),
    DMA_CH_TRIGSRC_TCD0_CCC_gc = (0x64<<0),
    DMA_CH_TRIGSRC_TCD0_CCD_gc = (0x65<<0),
    DMA_CH_TRIGSRC_TCD1_OVF_gc = (0x66<<0),
    DMA_CH_TRIGSRC_TCD1_ERR_gc = (0x67<<0),
    DMA_CH_TRIGSRC_TCD1_CCA_gc = (0x68<<0),
    DMA_CH_TRIGSRC_TCD1_CCB_gc = (0x69<<0),
    DMA_CH_TRIGSRC_SPID_gc = (0x6A<<0),
    DMA_CH_TRIGSRC_USARTD0_RXC_gc = (0x6B<<0),
    DMA_CH_TRIGSRC_USARTD0_DRE_gc = (0x6C<<0),
    DMA_CH_TRIGSRC_USARTD1_RXC_gc = (0x6E<<0),
    DMA_CH_TRIGSRC_USARTD1_DRE_gc = (0x6F<<0),
    DMA_CH_TRIGSRC_TCE0_OVF_gc = (0x80<<0),
    DMA_CH_TRIGSRC_TCE0_ERR_gc = (0x81<<0),
    DMA_CH_TRIGSRC_TCE0_CCA_gc = (0x82<<0),
    DMA_CH_TRIGSRC_TCE0_CCB_gc = (0x83<<0),
    DMA_CH_TRIGSRC_TCE0_CCC_gc = (0x84<<0),
    DMA_CH_TRIGSRC_TCE0_CCD_gc = (0x85<<0),
    DMA_CH_TRIGSRC_TCE1_OVF_gc = (0x86<<0),
    DMA_CH_TRIGSRC_TCE1_ERR_gc = (0x87<<0),
    DMA_CH_TRIGSRC_TCE1_CCA_gc = (0x88<<0),
    DMA_CH_TRIGSRC_TCE1_CCB_gc = (0x89<<0),
    DMA_CH_TRIGSRC_SPIE_gc = (0x8A<<0),
    DMA_CH_TRIGSRC_USARTE0_RXC_gc = (0x8B<<0),
    DMA_CH_TRIGSRC_USARTE0_DRE_gc = (0x8C<<0),
    DMA_CH_TRIGSRC_USARTE1_RXC_gc = (0x8E<<0),
    DMA_CH_TRIGSRC_USARTE1_DRE_gc = (0x8F<<0),
    DMA_CH_TRIGSRC_TCF0_OVF_gc = (0xA0<<0),
    DMA_CH_TRIGSRC_TCF0_ERR_gc = (0xA1<<0),
    DMA_CH_TRIGSRC_TCF0_CCA_gc = (0xA2<<0),
    DMA_CH_TRIGSRC_TCF0_CCB_gc = (0xA3<<0),
    DMA_CH_TRIGSRC_TCF0_CCC_gc = (0xA4<<0),
    DMA_CH_TRIGSRC_TCF0_CCD_gc = (0xA5<<0),
    DMA_CH_TRIGSRC_TCF1_OVF_gc = (0xA6<<0),
    DMA_CH_TRIGSRC_TCF1_ERR_gc = (0xA7<<0),
    DMA_CH_TRIGSRC_TCF1_CCA_gc = (0xA8<<0),
    DMA_CH_TRIGSRC_TCF1_CCB_gc = (0xA9<<0),
    DMA_CH_TRIGSRC_SPIF_gc = (0xAA<<0),
    DMA_CH_TRIGSRC_USARTF0_RXC_gc = (0xAB<<0),
    DMA_CH_TRIGSRC_USARTF0_DRE_gc = (0xAC<<0),
    DMA_CH_TRIGSRC_USARTF1_RXC_gc = (0xAE<<0),
    DMA_CH_TRIGSRC_USARTF1_DRE_gc = (0xAF<<0),
} DMA_CH_TRIGSRC_t;


typedef enum DMA_CH_TRNINTLVL_enum
{
    DMA_CH_TRNINTLVL_OFF_gc = (0x00<<0),
    DMA_CH_TRNINTLVL_LO_gc = (0x01<<0),
    DMA_CH_TRNINTLVL_MED_gc = (0x02<<0),
    DMA_CH_TRNINTLVL_HI_gc = (0x03<<0),
} DMA_CH_TRNINTLVL_t;


typedef enum DMA_DBUFMODE_enum
{
    DMA_DBUFMODE_DISABLED_gc = (0x00<<2),
    DMA_DBUFMODE_CH01_gc = (0x01<<2),
    DMA_DBUFMODE_CH23_gc = (0x02<<2),
    DMA_DBUFMODE_CH01CH23_gc = (0x03<<2),
} DMA_DBUFMODE_t;


typedef enum DMA_PRIMODE_enum
{
    DMA_PRIMODE_RR0123_gc = (0x00<<0),
    DMA_PRIMODE_CH0RR123_gc = (0x01<<0),
    DMA_PRIMODE_CH01RR23_gc = (0x02<<0),
    DMA_PRIMODE_CH0123_gc = (0x03<<0),
} DMA_PRIMODE_t;
# 944 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h" 3
typedef struct EVSYS_struct
{
    register8_t CH0MUX;
    register8_t CH1MUX;
    register8_t CH2MUX;
    register8_t CH3MUX;
    register8_t CH4MUX;
    register8_t CH5MUX;
    register8_t CH6MUX;
    register8_t CH7MUX;
    register8_t CH0CTRL;
    register8_t CH1CTRL;
    register8_t CH2CTRL;
    register8_t CH3CTRL;
    register8_t CH4CTRL;
    register8_t CH5CTRL;
    register8_t CH6CTRL;
    register8_t CH7CTRL;
    register8_t STROBE;
    register8_t DATA;
} EVSYS_t;


typedef enum EVSYS_CHMUX_enum
{
    EVSYS_CHMUX_OFF_gc = (0x00<<0),
    EVSYS_CHMUX_RTC_OVF_gc = (0x08<<0),
    EVSYS_CHMUX_RTC_CMP_gc = (0x09<<0),
    EVSYS_CHMUX_USB_gc = (0x0A<<0),
    EVSYS_CHMUX_ACA_CH0_gc = (0x10<<0),
    EVSYS_CHMUX_ACA_CH1_gc = (0x11<<0),
    EVSYS_CHMUX_ACA_WIN_gc = (0x12<<0),
    EVSYS_CHMUX_ACB_CH0_gc = (0x13<<0),
    EVSYS_CHMUX_ACB_CH1_gc = (0x14<<0),
    EVSYS_CHMUX_ACB_WIN_gc = (0x15<<0),
    EVSYS_CHMUX_ADCA_CH0_gc = (0x20<<0),
    EVSYS_CHMUX_ADCA_CH1_gc = (0x21<<0),
    EVSYS_CHMUX_ADCA_CH2_gc = (0x22<<0),
    EVSYS_CHMUX_ADCA_CH3_gc = (0x23<<0),
    EVSYS_CHMUX_ADCB_CH0_gc = (0x24<<0),
    EVSYS_CHMUX_ADCB_CH1_gc = (0x25<<0),
    EVSYS_CHMUX_ADCB_CH2_gc = (0x26<<0),
    EVSYS_CHMUX_ADCB_CH3_gc = (0x27<<0),
    EVSYS_CHMUX_PORTA_PIN0_gc = (0x50<<0),
    EVSYS_CHMUX_PORTA_PIN1_gc = (0x51<<0),
    EVSYS_CHMUX_PORTA_PIN2_gc = (0x52<<0),
    EVSYS_CHMUX_PORTA_PIN3_gc = (0x53<<0),
    EVSYS_CHMUX_PORTA_PIN4_gc = (0x54<<0),
    EVSYS_CHMUX_PORTA_PIN5_gc = (0x55<<0),
    EVSYS_CHMUX_PORTA_PIN6_gc = (0x56<<0),
    EVSYS_CHMUX_PORTA_PIN7_gc = (0x57<<0),
    EVSYS_CHMUX_PORTB_PIN0_gc = (0x58<<0),
    EVSYS_CHMUX_PORTB_PIN1_gc = (0x59<<0),
    EVSYS_CHMUX_PORTB_PIN2_gc = (0x5A<<0),
    EVSYS_CHMUX_PORTB_PIN3_gc = (0x5B<<0),
    EVSYS_CHMUX_PORTB_PIN4_gc = (0x5C<<0),
    EVSYS_CHMUX_PORTB_PIN5_gc = (0x5D<<0),
    EVSYS_CHMUX_PORTB_PIN6_gc = (0x5E<<0),
    EVSYS_CHMUX_PORTB_PIN7_gc = (0x5F<<0),
    EVSYS_CHMUX_PORTC_PIN0_gc = (0x60<<0),
    EVSYS_CHMUX_PORTC_PIN1_gc = (0x61<<0),
    EVSYS_CHMUX_PORTC_PIN2_gc = (0x62<<0),
    EVSYS_CHMUX_PORTC_PIN3_gc = (0x63<<0),
    EVSYS_CHMUX_PORTC_PIN4_gc = (0x64<<0),
    EVSYS_CHMUX_PORTC_PIN5_gc = (0x65<<0),
    EVSYS_CHMUX_PORTC_PIN6_gc = (0x66<<0),
    EVSYS_CHMUX_PORTC_PIN7_gc = (0x67<<0),
    EVSYS_CHMUX_PORTD_PIN0_gc = (0x68<<0),
    EVSYS_CHMUX_PORTD_PIN1_gc = (0x69<<0),
    EVSYS_CHMUX_PORTD_PIN2_gc = (0x6A<<0),
    EVSYS_CHMUX_PORTD_PIN3_gc = (0x6B<<0),
    EVSYS_CHMUX_PORTD_PIN4_gc = (0x6C<<0),
    EVSYS_CHMUX_PORTD_PIN5_gc = (0x6D<<0),
    EVSYS_CHMUX_PORTD_PIN6_gc = (0x6E<<0),
    EVSYS_CHMUX_PORTD_PIN7_gc = (0x6F<<0),
    EVSYS_CHMUX_PORTE_PIN0_gc = (0x70<<0),
    EVSYS_CHMUX_PORTE_PIN1_gc = (0x71<<0),
    EVSYS_CHMUX_PORTE_PIN2_gc = (0x72<<0),
    EVSYS_CHMUX_PORTE_PIN3_gc = (0x73<<0),
    EVSYS_CHMUX_PORTE_PIN4_gc = (0x74<<0),
    EVSYS_CHMUX_PORTE_PIN5_gc = (0x75<<0),
    EVSYS_CHMUX_PORTE_PIN6_gc = (0x76<<0),
    EVSYS_CHMUX_PORTE_PIN7_gc = (0x77<<0),
    EVSYS_CHMUX_PORTF_PIN0_gc = (0x78<<0),
    EVSYS_CHMUX_PORTF_PIN1_gc = (0x79<<0),
    EVSYS_CHMUX_PORTF_PIN2_gc = (0x7A<<0),
    EVSYS_CHMUX_PORTF_PIN3_gc = (0x7B<<0),
    EVSYS_CHMUX_PORTF_PIN4_gc = (0x7C<<0),
    EVSYS_CHMUX_PORTF_PIN5_gc = (0x7D<<0),
    EVSYS_CHMUX_PORTF_PIN6_gc = (0x7E<<0),
    EVSYS_CHMUX_PORTF_PIN7_gc = (0x7F<<0),
    EVSYS_CHMUX_PRESCALER_1_gc = (0x80<<0),
    EVSYS_CHMUX_PRESCALER_2_gc = (0x81<<0),
    EVSYS_CHMUX_PRESCALER_4_gc = (0x82<<0),
    EVSYS_CHMUX_PRESCALER_8_gc = (0x83<<0),
    EVSYS_CHMUX_PRESCALER_16_gc = (0x84<<0),
    EVSYS_CHMUX_PRESCALER_32_gc = (0x85<<0),
    EVSYS_CHMUX_PRESCALER_64_gc = (0x86<<0),
    EVSYS_CHMUX_PRESCALER_128_gc = (0x87<<0),
    EVSYS_CHMUX_PRESCALER_256_gc = (0x88<<0),
    EVSYS_CHMUX_PRESCALER_512_gc = (0x89<<0),
    EVSYS_CHMUX_PRESCALER_1024_gc = (0x8A<<0),
    EVSYS_CHMUX_PRESCALER_2048_gc = (0x8B<<0),
    EVSYS_CHMUX_PRESCALER_4096_gc = (0x8C<<0),
    EVSYS_CHMUX_PRESCALER_8192_gc = (0x8D<<0),
    EVSYS_CHMUX_PRESCALER_16384_gc = (0x8E<<0),
    EVSYS_CHMUX_PRESCALER_32768_gc = (0x8F<<0),
    EVSYS_CHMUX_TCC0_OVF_gc = (0xC0<<0),
    EVSYS_CHMUX_TCC0_ERR_gc = (0xC1<<0),
    EVSYS_CHMUX_TCC0_CCA_gc = (0xC4<<0),
    EVSYS_CHMUX_TCC0_CCB_gc = (0xC5<<0),
    EVSYS_CHMUX_TCC0_CCC_gc = (0xC6<<0),
    EVSYS_CHMUX_TCC0_CCD_gc = (0xC7<<0),
    EVSYS_CHMUX_TCC1_OVF_gc = (0xC8<<0),
    EVSYS_CHMUX_TCC1_ERR_gc = (0xC9<<0),
    EVSYS_CHMUX_TCC1_CCA_gc = (0xCC<<0),
    EVSYS_CHMUX_TCC1_CCB_gc = (0xCD<<0),
    EVSYS_CHMUX_TCD0_OVF_gc = (0xD0<<0),
    EVSYS_CHMUX_TCD0_ERR_gc = (0xD1<<0),
    EVSYS_CHMUX_TCD0_CCA_gc = (0xD4<<0),
    EVSYS_CHMUX_TCD0_CCB_gc = (0xD5<<0),
    EVSYS_CHMUX_TCD0_CCC_gc = (0xD6<<0),
    EVSYS_CHMUX_TCD0_CCD_gc = (0xD7<<0),
    EVSYS_CHMUX_TCD1_OVF_gc = (0xD8<<0),
    EVSYS_CHMUX_TCD1_ERR_gc = (0xD9<<0),
    EVSYS_CHMUX_TCD1_CCA_gc = (0xDC<<0),
    EVSYS_CHMUX_TCD1_CCB_gc = (0xDD<<0),
    EVSYS_CHMUX_TCE0_OVF_gc = (0xE0<<0),
    EVSYS_CHMUX_TCE0_ERR_gc = (0xE1<<0),
    EVSYS_CHMUX_TCE0_CCA_gc = (0xE4<<0),
    EVSYS_CHMUX_TCE0_CCB_gc = (0xE5<<0),
    EVSYS_CHMUX_TCE0_CCC_gc = (0xE6<<0),
    EVSYS_CHMUX_TCE0_CCD_gc = (0xE7<<0),
    EVSYS_CHMUX_TCE1_OVF_gc = (0xE8<<0),
    EVSYS_CHMUX_TCE1_ERR_gc = (0xE9<<0),
    EVSYS_CHMUX_TCE1_CCA_gc = (0xEC<<0),
    EVSYS_CHMUX_TCE1_CCB_gc = (0xED<<0),
    EVSYS_CHMUX_TCF0_OVF_gc = (0xF0<<0),
    EVSYS_CHMUX_TCF0_ERR_gc = (0xF1<<0),
    EVSYS_CHMUX_TCF0_CCA_gc = (0xF4<<0),
    EVSYS_CHMUX_TCF0_CCB_gc = (0xF5<<0),
    EVSYS_CHMUX_TCF0_CCC_gc = (0xF6<<0),
    EVSYS_CHMUX_TCF0_CCD_gc = (0xF7<<0),
    EVSYS_CHMUX_TCF1_OVF_gc = (0xF8<<0),
    EVSYS_CHMUX_TCF1_ERR_gc = (0xF9<<0),
    EVSYS_CHMUX_TCF1_CCA_gc = (0xFC<<0),
    EVSYS_CHMUX_TCF1_CCB_gc = (0xFD<<0),
} EVSYS_CHMUX_t;


typedef enum EVSYS_DIGFILT_enum
{
    EVSYS_DIGFILT_1SAMPLE_gc = (0x00<<0),
    EVSYS_DIGFILT_2SAMPLES_gc = (0x01<<0),
    EVSYS_DIGFILT_3SAMPLES_gc = (0x02<<0),
    EVSYS_DIGFILT_4SAMPLES_gc = (0x03<<0),
    EVSYS_DIGFILT_5SAMPLES_gc = (0x04<<0),
    EVSYS_DIGFILT_6SAMPLES_gc = (0x05<<0),
    EVSYS_DIGFILT_7SAMPLES_gc = (0x06<<0),
    EVSYS_DIGFILT_8SAMPLES_gc = (0x07<<0),
} EVSYS_DIGFILT_t;


typedef enum EVSYS_QDIRM_enum
{
    EVSYS_QDIRM_00_gc = (0x00<<5),
    EVSYS_QDIRM_01_gc = (0x01<<5),
    EVSYS_QDIRM_10_gc = (0x02<<5),
    EVSYS_QDIRM_11_gc = (0x03<<5),
} EVSYS_QDIRM_t;
# 1122 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h" 3
typedef struct NVM_FUSES_struct
{
    register8_t FUSEBYTE0;
    register8_t FUSEBYTE1;
    register8_t FUSEBYTE2;
    register8_t reserved_0x03;
    register8_t FUSEBYTE4;
    register8_t FUSEBYTE5;
} NVM_FUSES_t;


typedef enum BODACT_enum
{
    BODACT_SAMPLED_gc = (0x01<<4),
    BODACT_CONTINUOUS_gc = (0x02<<4),
    BODACT_DISABLED_gc = (0x03<<4),
} BODACT_t;


typedef enum BODLVL_enum
{
    BODLVL_3V0_gc = (0x00<<0),
    BODLVL_2V8_gc = (0x01<<0),
    BODLVL_2V6_gc = (0x02<<0),
    BODLVL_2V4_gc = (0x03<<0),
    BODLVL_2V2_gc = (0x04<<0),
    BODLVL_2V0_gc = (0x05<<0),
    BODLVL_1V8_gc = (0x06<<0),
    BODLVL_1V6_gc = (0x07<<0),
} BODLVL_t;


typedef enum BODPD_enum
{
    BODPD_SAMPLED_gc = (0x01<<0),
    BODPD_CONTINUOUS_gc = (0x02<<0),
    BODPD_DISABLED_gc = (0x03<<0),
} BODPD_t;


typedef enum BOOTRST_enum
{
    BOOTRST_BOOTLDR_gc = (0x00<<6),
    BOOTRST_APPLICATION_gc = (0x01<<6),
} BOOTRST_t;


typedef enum STARTUPTIME_enum
{
    STARTUPTIME_64MS_gc = (0x00<<2),
    STARTUPTIME_4MS_gc = (0x01<<2),
    STARTUPTIME_0MS_gc = (0x03<<2),
} STARTUPTIME_t;


typedef enum TOSCSEL_enum
{
    TOSCSEL_ALTERNATE_gc = (0x00<<5),
    TOSCSEL_XTAL_gc = (0x01<<5),
} TOSCSEL_t;


typedef enum WDPER_enum
{
    WDPER_8CLK_gc = (0x00<<0),
    WDPER_16CLK_gc = (0x01<<0),
    WDPER_32CLK_gc = (0x02<<0),
    WDPER_64CLK_gc = (0x03<<0),
    WDPER_128CLK_gc = (0x04<<0),
    WDPER_256CLK_gc = (0x05<<0),
    WDPER_512CLK_gc = (0x06<<0),
    WDPER_1KCLK_gc = (0x07<<0),
    WDPER_2KCLK_gc = (0x08<<0),
    WDPER_4KCLK_gc = (0x09<<0),
    WDPER_8KCLK_gc = (0x0A<<0),
} WDPER_t;


typedef enum WDWPER_enum
{
    WDWPER_8CLK_gc = (0x00<<4),
    WDWPER_16CLK_gc = (0x01<<4),
    WDWPER_32CLK_gc = (0x02<<4),
    WDWPER_64CLK_gc = (0x03<<4),
    WDWPER_128CLK_gc = (0x04<<4),
    WDWPER_256CLK_gc = (0x05<<4),
    WDWPER_512CLK_gc = (0x06<<4),
    WDWPER_1KCLK_gc = (0x07<<4),
    WDWPER_2KCLK_gc = (0x08<<4),
    WDWPER_4KCLK_gc = (0x09<<4),
    WDWPER_8KCLK_gc = (0x0A<<4),
} WDWPER_t;
# 1222 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h" 3
typedef struct HIRES_struct
{
    register8_t CTRLA;
} HIRES_t;


typedef enum HIRES_HREN_enum
{
    HIRES_HREN_NONE_gc = (0x00<<0),
    HIRES_HREN_TC0_gc = (0x01<<0),
    HIRES_HREN_TC1_gc = (0x02<<0),
    HIRES_HREN_BOTH_gc = (0x03<<0),
} HIRES_HREN_t;
# 1243 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h" 3
typedef struct IRCOM_struct
{
    register8_t CTRL;
    register8_t TXPLCTRL;
    register8_t RXPLCTRL;
} IRCOM_t;


typedef enum IRCOM_EVSEL_enum
{
    IRCOM_EVSEL_OFF_gc = (0x00<<0),
    IRCOM_EVSEL_0_gc = (0x08<<0),
    IRCOM_EVSEL_1_gc = (0x09<<0),
    IRCOM_EVSEL_2_gc = (0x0A<<0),
    IRCOM_EVSEL_3_gc = (0x0B<<0),
    IRCOM_EVSEL_4_gc = (0x0C<<0),
    IRCOM_EVSEL_5_gc = (0x0D<<0),
    IRCOM_EVSEL_6_gc = (0x0E<<0),
    IRCOM_EVSEL_7_gc = (0x0F<<0),
} IRCOM_EVSEL_t;
# 1271 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h" 3
typedef struct NVM_LOCKBITS_struct
{
    register8_t LOCK_BITS;
} NVM_LOCKBITS_t;


typedef enum BLBA_enum
{
    BLBA_RWLOCK_gc = (0x00<<4),
    BLBA_RLOCK_gc = (0x01<<4),
    BLBA_WLOCK_gc = (0x02<<4),
    BLBA_NOLOCK_gc = (0x03<<4),
} BLBA_t;


typedef enum BLBAT_enum
{
    BLBAT_RWLOCK_gc = (0x00<<2),
    BLBAT_RLOCK_gc = (0x01<<2),
    BLBAT_WLOCK_gc = (0x02<<2),
    BLBAT_NOLOCK_gc = (0x03<<2),
} BLBAT_t;


typedef enum BLBB_enum
{
    BLBB_RWLOCK_gc = (0x00<<6),
    BLBB_RLOCK_gc = (0x01<<6),
    BLBB_WLOCK_gc = (0x02<<6),
    BLBB_NOLOCK_gc = (0x03<<6),
} BLBB_t;


typedef enum LB_enum
{
    LB_RWLOCK_gc = (0x00<<0),
    LB_WLOCK_gc = (0x02<<0),
    LB_NOLOCK_gc = (0x03<<0),
} LB_t;
# 1318 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h" 3
typedef struct MCU_struct
{
    register8_t DEVID0;
    register8_t DEVID1;
    register8_t DEVID2;
    register8_t REVID;
    register8_t JTAGUID;
    register8_t reserved_0x05;
    register8_t MCUCR;
    register8_t ANAINIT;
    register8_t EVSYSLOCK;
    register8_t AWEXLOCK;
    register8_t reserved_0x0A;
    register8_t reserved_0x0B;
} MCU_t;
# 1342 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h" 3
typedef struct NVM_struct
{
    register8_t ADDR0;
    register8_t ADDR1;
    register8_t ADDR2;
    register8_t reserved_0x03;
    register8_t DATA0;
    register8_t DATA1;
    register8_t DATA2;
    register8_t reserved_0x07;
    register8_t reserved_0x08;
    register8_t reserved_0x09;
    register8_t CMD;
    register8_t CTRLA;
    register8_t CTRLB;
    register8_t INTCTRL;
    register8_t reserved_0x0E;
    register8_t STATUS;
    register8_t LOCK_BITS;
} NVM_t;


typedef enum NVM_BLBA_enum
{
    NVM_BLBA_RWLOCK_gc = (0x00<<4),
    NVM_BLBA_RLOCK_gc = (0x01<<4),
    NVM_BLBA_WLOCK_gc = (0x02<<4),
    NVM_BLBA_NOLOCK_gc = (0x03<<4),
} NVM_BLBA_t;


typedef enum NVM_BLBAT_enum
{
    NVM_BLBAT_RWLOCK_gc = (0x00<<2),
    NVM_BLBAT_RLOCK_gc = (0x01<<2),
    NVM_BLBAT_WLOCK_gc = (0x02<<2),
    NVM_BLBAT_NOLOCK_gc = (0x03<<2),
} NVM_BLBAT_t;


typedef enum NVM_BLBB_enum
{
    NVM_BLBB_RWLOCK_gc = (0x00<<6),
    NVM_BLBB_RLOCK_gc = (0x01<<6),
    NVM_BLBB_WLOCK_gc = (0x02<<6),
    NVM_BLBB_NOLOCK_gc = (0x03<<6),
} NVM_BLBB_t;


typedef enum NVM_CMD_enum
{
    NVM_CMD_NO_OPERATION_gc = (0x00<<0),
    NVM_CMD_READ_USER_SIG_ROW_gc = (0x01<<0),
    NVM_CMD_READ_CALIB_ROW_gc = (0x02<<0),
    NVM_CMD_READ_EEPROM_gc = (0x06<<0),
    NVM_CMD_READ_FUSES_gc = (0x07<<0),
    NVM_CMD_WRITE_LOCK_BITS_gc = (0x08<<0),
    NVM_CMD_ERASE_USER_SIG_ROW_gc = (0x18<<0),
    NVM_CMD_WRITE_USER_SIG_ROW_gc = (0x1A<<0),
    NVM_CMD_ERASE_APP_gc = (0x20<<0),
    NVM_CMD_ERASE_APP_PAGE_gc = (0x22<<0),
    NVM_CMD_LOAD_FLASH_BUFFER_gc = (0x23<<0),
    NVM_CMD_WRITE_APP_PAGE_gc = (0x24<<0),
    NVM_CMD_ERASE_WRITE_APP_PAGE_gc = (0x25<<0),
    NVM_CMD_ERASE_FLASH_BUFFER_gc = (0x26<<0),
    NVM_CMD_ERASE_BOOT_PAGE_gc = (0x2A<<0),
    NVM_CMD_ERASE_FLASH_PAGE_gc = (0x2B<<0),
    NVM_CMD_WRITE_BOOT_PAGE_gc = (0x2C<<0),
    NVM_CMD_ERASE_WRITE_BOOT_PAGE_gc = (0x2D<<0),
    NVM_CMD_WRITE_FLASH_PAGE_gc = (0x2E<<0),
    NVM_CMD_ERASE_WRITE_FLASH_PAGE_gc = (0x2F<<0),
    NVM_CMD_ERASE_EEPROM_gc = (0x30<<0),
    NVM_CMD_ERASE_EEPROM_PAGE_gc = (0x32<<0),
    NVM_CMD_LOAD_EEPROM_BUFFER_gc = (0x33<<0),
    NVM_CMD_WRITE_EEPROM_PAGE_gc = (0x34<<0),
    NVM_CMD_ERASE_WRITE_EEPROM_PAGE_gc = (0x35<<0),
    NVM_CMD_ERASE_EEPROM_BUFFER_gc = (0x36<<0),
    NVM_CMD_APP_CRC_gc = (0x38<<0),
    NVM_CMD_BOOT_CRC_gc = (0x39<<0),
    NVM_CMD_FLASH_RANGE_CRC_gc = (0x3A<<0),
    NVM_CMD_CHIP_ERASE_gc = (0x40<<0),
    NVM_CMD_READ_NVM_gc = (0x43<<0),
    NVM_CMD_WRITE_FUSE_gc = (0x4C<<0),
    NVM_CMD_ERASE_BOOT_gc = (0x68<<0),
    NVM_CMD_FLASH_CRC_gc = (0x78<<0),
} NVM_CMD_t;


typedef enum NVM_EELVL_enum
{
    NVM_EELVL_OFF_gc = (0x00<<0),
    NVM_EELVL_LO_gc = (0x01<<0),
    NVM_EELVL_MED_gc = (0x02<<0),
    NVM_EELVL_HI_gc = (0x03<<0),
} NVM_EELVL_t;


typedef enum NVM_LB_enum
{
    NVM_LB_RWLOCK_gc = (0x00<<0),
    NVM_LB_WLOCK_gc = (0x02<<0),
    NVM_LB_NOLOCK_gc = (0x03<<0),
} NVM_LB_t;


typedef enum NVM_SPMLVL_enum
{
    NVM_SPMLVL_OFF_gc = (0x00<<2),
    NVM_SPMLVL_LO_gc = (0x01<<2),
    NVM_SPMLVL_MED_gc = (0x02<<2),
    NVM_SPMLVL_HI_gc = (0x03<<2),
} NVM_SPMLVL_t;
# 1462 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h" 3
typedef struct OSC_struct
{
    register8_t CTRL;
    register8_t STATUS;
    register8_t XOSCCTRL;
    register8_t XOSCFAIL;
    register8_t RC32KCAL;
    register8_t PLLCTRL;
    register8_t DFLLCTRL;
} OSC_t;


typedef enum OSC_FRQRANGE_enum
{
    OSC_FRQRANGE_04TO2_gc = (0x00<<6),
    OSC_FRQRANGE_2TO9_gc = (0x01<<6),
    OSC_FRQRANGE_9TO12_gc = (0x02<<6),
    OSC_FRQRANGE_12TO16_gc = (0x03<<6),
} OSC_FRQRANGE_t;


typedef enum OSC_PLLSRC_enum
{
    OSC_PLLSRC_RC2M_gc = (0x00<<6),
    OSC_PLLSRC_RC32M_gc = (0x02<<6),
    OSC_PLLSRC_XOSC_gc = (0x03<<6),
} OSC_PLLSRC_t;


typedef enum OSC_RC2MCREF_enum
{
    OSC_RC2MCREF_RC32K_gc = (0x00<<0),
    OSC_RC2MCREF_XOSC32K_gc = (0x01<<0),
} OSC_RC2MCREF_t;


typedef enum OSC_RC32MCREF_enum
{
    OSC_RC32MCREF_RC32K_gc = (0x00<<1),
    OSC_RC32MCREF_XOSC32K_gc = (0x01<<1),
    OSC_RC32MCREF_USBSOF_gc = (0x02<<1),
} OSC_RC32MCREF_t;


typedef enum OSC_XOSCSEL_enum
{
    OSC_XOSCSEL_EXTCLK_gc = (0x00<<0),
    OSC_XOSCSEL_32KHz_gc = (0x02<<0),
    OSC_XOSCSEL_XTAL_256CLK_gc = (0x03<<0),
    OSC_XOSCSEL_XTAL_1KCLK_gc = (0x07<<0),
    OSC_XOSCSEL_XTAL_16KCLK_gc = (0x0B<<0),
} OSC_XOSCSEL_t;
# 1522 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h" 3
typedef struct PMIC_struct
{
    register8_t STATUS;
    register8_t INTPRI;
    register8_t CTRL;
    register8_t reserved_0x03;
    register8_t reserved_0x04;
    register8_t reserved_0x05;
    register8_t reserved_0x06;
    register8_t reserved_0x07;
    register8_t reserved_0x08;
    register8_t reserved_0x09;
    register8_t reserved_0x0A;
    register8_t reserved_0x0B;
    register8_t reserved_0x0C;
    register8_t reserved_0x0D;
    register8_t reserved_0x0E;
    register8_t reserved_0x0F;
} PMIC_t;
# 1550 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h" 3
typedef struct PORT_struct
{
    register8_t DIR;
    register8_t DIRSET;
    register8_t DIRCLR;
    register8_t DIRTGL;
    register8_t OUT;
    register8_t OUTSET;
    register8_t OUTCLR;
    register8_t OUTTGL;
    register8_t IN;
    register8_t INTCTRL;
    register8_t INT0MASK;
    register8_t INT1MASK;
    register8_t INTFLAGS;
    register8_t reserved_0x0D;
    register8_t REMAP;
    register8_t reserved_0x0F;
    register8_t PIN0CTRL;
    register8_t PIN1CTRL;
    register8_t PIN2CTRL;
    register8_t PIN3CTRL;
    register8_t PIN4CTRL;
    register8_t PIN5CTRL;
    register8_t PIN6CTRL;
    register8_t PIN7CTRL;
} PORT_t;


typedef enum PORT_INT0LVL_enum
{
    PORT_INT0LVL_OFF_gc = (0x00<<0),
    PORT_INT0LVL_LO_gc = (0x01<<0),
    PORT_INT0LVL_MED_gc = (0x02<<0),
    PORT_INT0LVL_HI_gc = (0x03<<0),
} PORT_INT0LVL_t;


typedef enum PORT_INT1LVL_enum
{
    PORT_INT1LVL_OFF_gc = (0x00<<2),
    PORT_INT1LVL_LO_gc = (0x01<<2),
    PORT_INT1LVL_MED_gc = (0x02<<2),
    PORT_INT1LVL_HI_gc = (0x03<<2),
} PORT_INT1LVL_t;


typedef enum PORT_ISC_enum
{
    PORT_ISC_BOTHEDGES_gc = (0x00<<0),
    PORT_ISC_RISING_gc = (0x01<<0),
    PORT_ISC_FALLING_gc = (0x02<<0),
    PORT_ISC_LEVEL_gc = (0x03<<0),
    PORT_ISC_INPUT_DISABLE_gc = (0x07<<0),
} PORT_ISC_t;


typedef enum PORT_OPC_enum
{
    PORT_OPC_TOTEM_gc = (0x00<<3),
    PORT_OPC_BUSKEEPER_gc = (0x01<<3),
    PORT_OPC_PULLDOWN_gc = (0x02<<3),
    PORT_OPC_PULLUP_gc = (0x03<<3),
    PORT_OPC_WIREDOR_gc = (0x04<<3),
    PORT_OPC_WIREDAND_gc = (0x05<<3),
    PORT_OPC_WIREDORPULL_gc = (0x06<<3),
    PORT_OPC_WIREDANDPULL_gc = (0x07<<3),
} PORT_OPC_t;
# 1626 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h" 3
typedef struct PORTCFG_struct
{
    register8_t MPCMASK;
    register8_t reserved_0x01;
    register8_t VPCTRLA;
    register8_t VPCTRLB;
    register8_t CLKEVOUT;
    register8_t reserved_0x05;
    register8_t EVOUTSEL;
} PORTCFG_t;


typedef enum PORTCFG_CLKEVPIN_enum
{
    PORTCFG_CLKEVPIN_PIN7_gc = (0x00<<7),
    PORTCFG_CLKEVPIN_PIN4_gc = (0x01<<7),
} PORTCFG_CLKEVPIN_t;


typedef enum PORTCFG_CLKOUT_enum
{
    PORTCFG_CLKOUT_OFF_gc = (0x00<<0),
    PORTCFG_CLKOUT_PC7_gc = (0x01<<0),
    PORTCFG_CLKOUT_PD7_gc = (0x02<<0),
    PORTCFG_CLKOUT_PE7_gc = (0x03<<0),
} PORTCFG_CLKOUT_t;


typedef enum PORTCFG_CLKOUTSEL_enum
{
    PORTCFG_CLKOUTSEL_CLK1X_gc = (0x00<<2),
    PORTCFG_CLKOUTSEL_CLK2X_gc = (0x01<<2),
    PORTCFG_CLKOUTSEL_CLK4X_gc = (0x02<<2),
} PORTCFG_CLKOUTSEL_t;


typedef enum PORTCFG_EVOUT_enum
{
    PORTCFG_EVOUT_OFF_gc = (0x00<<4),
    PORTCFG_EVOUT_PC7_gc = (0x01<<4),
    PORTCFG_EVOUT_PD7_gc = (0x02<<4),
    PORTCFG_EVOUT_PE7_gc = (0x03<<4),
} PORTCFG_EVOUT_t;


typedef enum PORTCFG_EVOUTSEL_enum
{
    PORTCFG_EVOUTSEL_0_gc = (0x00<<0),
    PORTCFG_EVOUTSEL_1_gc = (0x01<<0),
    PORTCFG_EVOUTSEL_2_gc = (0x02<<0),
    PORTCFG_EVOUTSEL_3_gc = (0x03<<0),
    PORTCFG_EVOUTSEL_4_gc = (0x04<<0),
    PORTCFG_EVOUTSEL_5_gc = (0x05<<0),
    PORTCFG_EVOUTSEL_6_gc = (0x06<<0),
    PORTCFG_EVOUTSEL_7_gc = (0x07<<0),
} PORTCFG_EVOUTSEL_t;


typedef enum PORTCFG_VP0MAP_enum
{
    PORTCFG_VP0MAP_PORTA_gc = (0x00<<0),
    PORTCFG_VP0MAP_PORTB_gc = (0x01<<0),
    PORTCFG_VP0MAP_PORTC_gc = (0x02<<0),
    PORTCFG_VP0MAP_PORTD_gc = (0x03<<0),
    PORTCFG_VP0MAP_PORTE_gc = (0x04<<0),
    PORTCFG_VP0MAP_PORTF_gc = (0x05<<0),
    PORTCFG_VP0MAP_PORTG_gc = (0x06<<0),
    PORTCFG_VP0MAP_PORTH_gc = (0x07<<0),
    PORTCFG_VP0MAP_PORTJ_gc = (0x08<<0),
    PORTCFG_VP0MAP_PORTK_gc = (0x09<<0),
    PORTCFG_VP0MAP_PORTL_gc = (0x0A<<0),
    PORTCFG_VP0MAP_PORTM_gc = (0x0B<<0),
    PORTCFG_VP0MAP_PORTN_gc = (0x0C<<0),
    PORTCFG_VP0MAP_PORTP_gc = (0x0D<<0),
    PORTCFG_VP0MAP_PORTQ_gc = (0x0E<<0),
    PORTCFG_VP0MAP_PORTR_gc = (0x0F<<0),


    PORTCFG_VP02MAP_PORTA_gc = (0x00<<0),
    PORTCFG_VP02MAP_PORTB_gc = (0x01<<0),
    PORTCFG_VP02MAP_PORTC_gc = (0x02<<0),
    PORTCFG_VP02MAP_PORTD_gc = (0x03<<0),
    PORTCFG_VP02MAP_PORTE_gc = (0x04<<0),
    PORTCFG_VP02MAP_PORTF_gc = (0x05<<0),
    PORTCFG_VP02MAP_PORTG_gc = (0x06<<0),
    PORTCFG_VP02MAP_PORTH_gc = (0x07<<0),
    PORTCFG_VP02MAP_PORTJ_gc = (0x08<<0),
    PORTCFG_VP02MAP_PORTK_gc = (0x09<<0),
    PORTCFG_VP02MAP_PORTL_gc = (0x0A<<0),
    PORTCFG_VP02MAP_PORTM_gc = (0x0B<<0),
    PORTCFG_VP02MAP_PORTN_gc = (0x0C<<0),
    PORTCFG_VP02MAP_PORTP_gc = (0x0D<<0),
    PORTCFG_VP02MAP_PORTQ_gc = (0x0E<<0),
    PORTCFG_VP02MAP_PORTR_gc = (0x0F<<0),
} PORTCFG_VP0MAP_t;


typedef enum PORTCFG_VP0MAP_enum PORTCFG_VP02MAP_t;


typedef enum PORTCFG_VP1MAP_enum
{
    PORTCFG_VP1MAP_PORTA_gc = (0x00<<4),
    PORTCFG_VP1MAP_PORTB_gc = (0x01<<4),
    PORTCFG_VP1MAP_PORTC_gc = (0x02<<4),
    PORTCFG_VP1MAP_PORTD_gc = (0x03<<4),
    PORTCFG_VP1MAP_PORTE_gc = (0x04<<4),
    PORTCFG_VP1MAP_PORTF_gc = (0x05<<4),
    PORTCFG_VP1MAP_PORTG_gc = (0x06<<4),
    PORTCFG_VP1MAP_PORTH_gc = (0x07<<4),
    PORTCFG_VP1MAP_PORTJ_gc = (0x08<<4),
    PORTCFG_VP1MAP_PORTK_gc = (0x09<<4),
    PORTCFG_VP1MAP_PORTL_gc = (0x0A<<4),
    PORTCFG_VP1MAP_PORTM_gc = (0x0B<<4),
    PORTCFG_VP1MAP_PORTN_gc = (0x0C<<4),
    PORTCFG_VP1MAP_PORTP_gc = (0x0D<<4),
    PORTCFG_VP1MAP_PORTQ_gc = (0x0E<<4),
    PORTCFG_VP1MAP_PORTR_gc = (0x0F<<4),


    PORTCFG_VP13MAP_PORTA_gc = (0x00<<4),
    PORTCFG_VP13MAP_PORTB_gc = (0x01<<4),
    PORTCFG_VP13MAP_PORTC_gc = (0x02<<4),
    PORTCFG_VP13MAP_PORTD_gc = (0x03<<4),
    PORTCFG_VP13MAP_PORTE_gc = (0x04<<4),
    PORTCFG_VP13MAP_PORTF_gc = (0x05<<4),
    PORTCFG_VP13MAP_PORTG_gc = (0x06<<4),
    PORTCFG_VP13MAP_PORTH_gc = (0x07<<4),
    PORTCFG_VP13MAP_PORTJ_gc = (0x08<<4),
    PORTCFG_VP13MAP_PORTK_gc = (0x09<<4),
    PORTCFG_VP13MAP_PORTL_gc = (0x0A<<4),
    PORTCFG_VP13MAP_PORTM_gc = (0x0B<<4),
    PORTCFG_VP13MAP_PORTN_gc = (0x0C<<4),
    PORTCFG_VP13MAP_PORTP_gc = (0x0D<<4),
    PORTCFG_VP13MAP_PORTQ_gc = (0x0E<<4),
    PORTCFG_VP13MAP_PORTR_gc = (0x0F<<4),
} PORTCFG_VP1MAP_t;


typedef enum PORTCFG_VP1MAP_enum PORTCFG_VP13MAP_t;


typedef enum PORTCFG_VP2MAP_enum
{
    PORTCFG_VP2MAP_PORTA_gc = (0x00<<0),
    PORTCFG_VP2MAP_PORTB_gc = (0x01<<0),
    PORTCFG_VP2MAP_PORTC_gc = (0x02<<0),
    PORTCFG_VP2MAP_PORTD_gc = (0x03<<0),
    PORTCFG_VP2MAP_PORTE_gc = (0x04<<0),
    PORTCFG_VP2MAP_PORTF_gc = (0x05<<0),
    PORTCFG_VP2MAP_PORTG_gc = (0x06<<0),
    PORTCFG_VP2MAP_PORTH_gc = (0x07<<0),
    PORTCFG_VP2MAP_PORTJ_gc = (0x08<<0),
    PORTCFG_VP2MAP_PORTK_gc = (0x09<<0),
    PORTCFG_VP2MAP_PORTL_gc = (0x0A<<0),
    PORTCFG_VP2MAP_PORTM_gc = (0x0B<<0),
    PORTCFG_VP2MAP_PORTN_gc = (0x0C<<0),
    PORTCFG_VP2MAP_PORTP_gc = (0x0D<<0),
    PORTCFG_VP2MAP_PORTQ_gc = (0x0E<<0),
    PORTCFG_VP2MAP_PORTR_gc = (0x0F<<0),
} PORTCFG_VP2MAP_t;


typedef enum PORTCFG_VP3MAP_enum
{
    PORTCFG_VP3MAP_PORTA_gc = (0x00<<4),
    PORTCFG_VP3MAP_PORTB_gc = (0x01<<4),
    PORTCFG_VP3MAP_PORTC_gc = (0x02<<4),
    PORTCFG_VP3MAP_PORTD_gc = (0x03<<4),
    PORTCFG_VP3MAP_PORTE_gc = (0x04<<4),
    PORTCFG_VP3MAP_PORTF_gc = (0x05<<4),
    PORTCFG_VP3MAP_PORTG_gc = (0x06<<4),
    PORTCFG_VP3MAP_PORTH_gc = (0x07<<4),
    PORTCFG_VP3MAP_PORTJ_gc = (0x08<<4),
    PORTCFG_VP3MAP_PORTK_gc = (0x09<<4),
    PORTCFG_VP3MAP_PORTL_gc = (0x0A<<4),
    PORTCFG_VP3MAP_PORTM_gc = (0x0B<<4),
    PORTCFG_VP3MAP_PORTN_gc = (0x0C<<4),
    PORTCFG_VP3MAP_PORTP_gc = (0x0D<<4),
    PORTCFG_VP3MAP_PORTQ_gc = (0x0E<<4),
    PORTCFG_VP3MAP_PORTR_gc = (0x0F<<4),
} PORTCFG_VP3MAP_t;
# 1816 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h" 3
typedef struct PR_struct
{
    register8_t PRGEN;
    register8_t PRPA;
    register8_t PRPB;
    register8_t PRPC;
    register8_t PRPD;
    register8_t PRPE;
    register8_t PRPF;
} PR_t;
# 1835 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h" 3
typedef struct RST_struct
{
    register8_t STATUS;
    register8_t CTRL;
} RST_t;
# 1849 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h" 3
typedef struct RTC_struct
{
    register8_t CTRL;
    register8_t STATUS;
    register8_t INTCTRL;
    register8_t INTFLAGS;
    register8_t TEMP;
    register8_t reserved_0x05;
    register8_t reserved_0x06;
    register8_t reserved_0x07;
    __extension__ union { register16_t CNT; struct { register8_t CNTL; register8_t CNTH; }; };
    __extension__ union { register16_t PER; struct { register8_t PERL; register8_t PERH; }; };
    __extension__ union { register16_t COMP; struct { register8_t COMPL; register8_t COMPH; }; };
} RTC_t;


typedef enum RTC_COMPINTLVL_enum
{
    RTC_COMPINTLVL_OFF_gc = (0x00<<2),
    RTC_COMPINTLVL_LO_gc = (0x01<<2),
    RTC_COMPINTLVL_MED_gc = (0x02<<2),
    RTC_COMPINTLVL_HI_gc = (0x03<<2),
} RTC_COMPINTLVL_t;


typedef enum RTC_OVFINTLVL_enum
{
    RTC_OVFINTLVL_OFF_gc = (0x00<<0),
    RTC_OVFINTLVL_LO_gc = (0x01<<0),
    RTC_OVFINTLVL_MED_gc = (0x02<<0),
    RTC_OVFINTLVL_HI_gc = (0x03<<0),
} RTC_OVFINTLVL_t;


typedef enum RTC_PRESCALER_enum
{
    RTC_PRESCALER_OFF_gc = (0x00<<0),
    RTC_PRESCALER_DIV1_gc = (0x01<<0),
    RTC_PRESCALER_DIV2_gc = (0x02<<0),
    RTC_PRESCALER_DIV8_gc = (0x03<<0),
    RTC_PRESCALER_DIV16_gc = (0x04<<0),
    RTC_PRESCALER_DIV64_gc = (0x05<<0),
    RTC_PRESCALER_DIV256_gc = (0x06<<0),
    RTC_PRESCALER_DIV1024_gc = (0x07<<0),
} RTC_PRESCALER_t;
# 1902 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h" 3
typedef struct NVM_PROD_SIGNATURES_struct
{
    register8_t RCOSC2M;
    register8_t RCOSC2MA;
    register8_t RCOSC32K;
    register8_t RCOSC32M;
    register8_t RCOSC32MA;
    register8_t reserved_0x05;
    register8_t reserved_0x06;
    register8_t reserved_0x07;
    register8_t LOTNUM0;
    register8_t LOTNUM1;
    register8_t LOTNUM2;
    register8_t LOTNUM3;
    register8_t LOTNUM4;
    register8_t LOTNUM5;
    register8_t reserved_0x0E;
    register8_t reserved_0x0F;
    register8_t WAFNUM;
    register8_t reserved_0x11;
    register8_t COORDX0;
    register8_t COORDX1;
    register8_t COORDY0;
    register8_t COORDY1;
    register8_t reserved_0x16;
    register8_t reserved_0x17;
    register8_t reserved_0x18;
    register8_t reserved_0x19;
    register8_t USBCAL0;
    register8_t USBCAL1;
    register8_t USBRCOSC;
    register8_t USBRCOSCA;
    register8_t reserved_0x1E;
    register8_t reserved_0x1F;
    register8_t ADCACAL0;
    register8_t ADCACAL1;
    register8_t reserved_0x22;
    register8_t reserved_0x23;
    register8_t ADCBCAL0;
    register8_t ADCBCAL1;
    register8_t reserved_0x26;
    register8_t reserved_0x27;
    register8_t reserved_0x28;
    register8_t reserved_0x29;
    register8_t reserved_0x2A;
    register8_t reserved_0x2B;
    register8_t reserved_0x2C;
    register8_t reserved_0x2D;
    register8_t TEMPSENSE0;
    register8_t TEMPSENSE1;
    register8_t DACA0OFFCAL;
    register8_t DACA0GAINCAL;
    register8_t DACB0OFFCAL;
    register8_t DACB0GAINCAL;
    register8_t DACA1OFFCAL;
    register8_t DACA1GAINCAL;
    register8_t DACB1OFFCAL;
    register8_t DACB1GAINCAL;
    register8_t reserved_0x38;
    register8_t reserved_0x39;
    register8_t reserved_0x3A;
    register8_t reserved_0x3B;
    register8_t reserved_0x3C;
    register8_t reserved_0x3D;
    register8_t reserved_0x3E;
    register8_t reserved_0x3F;
    register8_t reserved_0x40;
    register8_t reserved_0x41;
    register8_t reserved_0x42;
    register8_t reserved_0x43;
    register8_t reserved_0x44;
    register8_t reserved_0x45;
    register8_t reserved_0x46;
    register8_t reserved_0x47;
} NVM_PROD_SIGNATURES_t;
# 1986 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h" 3
typedef struct SLEEP_struct
{
    register8_t CTRL;
} SLEEP_t;


typedef enum SLEEP_SMODE_enum
{
    SLEEP_SMODE_IDLE_gc = (0x00<<1),
    SLEEP_SMODE_PDOWN_gc = (0x02<<1),
    SLEEP_SMODE_PSAVE_gc = (0x03<<1),
    SLEEP_SMODE_STDBY_gc = (0x06<<1),
    SLEEP_SMODE_ESTDBY_gc = (0x07<<1),
} SLEEP_SMODE_t;
# 2013 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h" 3
typedef struct SPI_struct
{
    register8_t CTRL;
    register8_t INTCTRL;
    register8_t STATUS;
    register8_t DATA;
} SPI_t;


typedef enum SPI_INTLVL_enum
{
    SPI_INTLVL_OFF_gc = (0x00<<0),
    SPI_INTLVL_LO_gc = (0x01<<0),
    SPI_INTLVL_MED_gc = (0x02<<0),
    SPI_INTLVL_HI_gc = (0x03<<0),
} SPI_INTLVL_t;


typedef enum SPI_MODE_enum
{
    SPI_MODE_0_gc = (0x00<<2),
    SPI_MODE_1_gc = (0x01<<2),
    SPI_MODE_2_gc = (0x02<<2),
    SPI_MODE_3_gc = (0x03<<2),
} SPI_MODE_t;


typedef enum SPI_PRESCALER_enum
{
    SPI_PRESCALER_DIV4_gc = (0x00<<0),
    SPI_PRESCALER_DIV16_gc = (0x01<<0),
    SPI_PRESCALER_DIV64_gc = (0x02<<0),
    SPI_PRESCALER_DIV128_gc = (0x03<<0),
} SPI_PRESCALER_t;
# 2055 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h" 3
typedef struct TC0_struct
{
    register8_t CTRLA;
    register8_t CTRLB;
    register8_t CTRLC;
    register8_t CTRLD;
    register8_t CTRLE;
    register8_t reserved_0x05;
    register8_t INTCTRLA;
    register8_t INTCTRLB;
    register8_t CTRLFCLR;
    register8_t CTRLFSET;
    register8_t CTRLGCLR;
    register8_t CTRLGSET;
    register8_t INTFLAGS;
    register8_t reserved_0x0D;
    register8_t reserved_0x0E;
    register8_t TEMP;
    register8_t reserved_0x10;
    register8_t reserved_0x11;
    register8_t reserved_0x12;
    register8_t reserved_0x13;
    register8_t reserved_0x14;
    register8_t reserved_0x15;
    register8_t reserved_0x16;
    register8_t reserved_0x17;
    register8_t reserved_0x18;
    register8_t reserved_0x19;
    register8_t reserved_0x1A;
    register8_t reserved_0x1B;
    register8_t reserved_0x1C;
    register8_t reserved_0x1D;
    register8_t reserved_0x1E;
    register8_t reserved_0x1F;
    __extension__ union { register16_t CNT; struct { register8_t CNTL; register8_t CNTH; }; };
    register8_t reserved_0x22;
    register8_t reserved_0x23;
    register8_t reserved_0x24;
    register8_t reserved_0x25;
    __extension__ union { register16_t PER; struct { register8_t PERL; register8_t PERH; }; };
    __extension__ union { register16_t CCA; struct { register8_t CCAL; register8_t CCAH; }; };
    __extension__ union { register16_t CCB; struct { register8_t CCBL; register8_t CCBH; }; };
    __extension__ union { register16_t CCC; struct { register8_t CCCL; register8_t CCCH; }; };
    __extension__ union { register16_t CCD; struct { register8_t CCDL; register8_t CCDH; }; };
    register8_t reserved_0x30;
    register8_t reserved_0x31;
    register8_t reserved_0x32;
    register8_t reserved_0x33;
    register8_t reserved_0x34;
    register8_t reserved_0x35;
    __extension__ union { register16_t PERBUF; struct { register8_t PERBUFL; register8_t PERBUFH; }; };
    __extension__ union { register16_t CCABUF; struct { register8_t CCABUFL; register8_t CCABUFH; }; };
    __extension__ union { register16_t CCBBUF; struct { register8_t CCBBUFL; register8_t CCBBUFH; }; };
    __extension__ union { register16_t CCCBUF; struct { register8_t CCCBUFL; register8_t CCCBUFH; }; };
    __extension__ union { register16_t CCDBUF; struct { register8_t CCDBUFL; register8_t CCDBUFH; }; };
} TC0_t;



typedef struct TC1_struct
{
    register8_t CTRLA;
    register8_t CTRLB;
    register8_t CTRLC;
    register8_t CTRLD;
    register8_t CTRLE;
    register8_t reserved_0x05;
    register8_t INTCTRLA;
    register8_t INTCTRLB;
    register8_t CTRLFCLR;
    register8_t CTRLFSET;
    register8_t CTRLGCLR;
    register8_t CTRLGSET;
    register8_t INTFLAGS;
    register8_t reserved_0x0D;
    register8_t reserved_0x0E;
    register8_t TEMP;
    register8_t reserved_0x10;
    register8_t reserved_0x11;
    register8_t reserved_0x12;
    register8_t reserved_0x13;
    register8_t reserved_0x14;
    register8_t reserved_0x15;
    register8_t reserved_0x16;
    register8_t reserved_0x17;
    register8_t reserved_0x18;
    register8_t reserved_0x19;
    register8_t reserved_0x1A;
    register8_t reserved_0x1B;
    register8_t reserved_0x1C;
    register8_t reserved_0x1D;
    register8_t reserved_0x1E;
    register8_t reserved_0x1F;
    __extension__ union { register16_t CNT; struct { register8_t CNTL; register8_t CNTH; }; };
    register8_t reserved_0x22;
    register8_t reserved_0x23;
    register8_t reserved_0x24;
    register8_t reserved_0x25;
    __extension__ union { register16_t PER; struct { register8_t PERL; register8_t PERH; }; };
    __extension__ union { register16_t CCA; struct { register8_t CCAL; register8_t CCAH; }; };
    __extension__ union { register16_t CCB; struct { register8_t CCBL; register8_t CCBH; }; };
    register8_t reserved_0x2C;
    register8_t reserved_0x2D;
    register8_t reserved_0x2E;
    register8_t reserved_0x2F;
    register8_t reserved_0x30;
    register8_t reserved_0x31;
    register8_t reserved_0x32;
    register8_t reserved_0x33;
    register8_t reserved_0x34;
    register8_t reserved_0x35;
    __extension__ union { register16_t PERBUF; struct { register8_t PERBUFL; register8_t PERBUFH; }; };
    __extension__ union { register16_t CCABUF; struct { register8_t CCABUFL; register8_t CCABUFH; }; };
    __extension__ union { register16_t CCBBUF; struct { register8_t CCBBUFL; register8_t CCBBUFH; }; };
} TC1_t;


typedef enum TC_BYTEM_enum
{
    TC_BYTEM_NORMAL_gc = (0x00<<0),
    TC_BYTEM_BYTEMODE_gc = (0x01<<0),
    TC_BYTEM_SPLITMODE_gc = (0x02<<0),
} TC_BYTEM_t;


typedef enum TC_CCAINTLVL_enum
{
    TC_CCAINTLVL_OFF_gc = (0x00<<0),
    TC_CCAINTLVL_LO_gc = (0x01<<0),
    TC_CCAINTLVL_MED_gc = (0x02<<0),
    TC_CCAINTLVL_HI_gc = (0x03<<0),
} TC_CCAINTLVL_t;


typedef enum TC_CCBINTLVL_enum
{
    TC_CCBINTLVL_OFF_gc = (0x00<<2),
    TC_CCBINTLVL_LO_gc = (0x01<<2),
    TC_CCBINTLVL_MED_gc = (0x02<<2),
    TC_CCBINTLVL_HI_gc = (0x03<<2),
} TC_CCBINTLVL_t;


typedef enum TC_CCCINTLVL_enum
{
    TC_CCCINTLVL_OFF_gc = (0x00<<4),
    TC_CCCINTLVL_LO_gc = (0x01<<4),
    TC_CCCINTLVL_MED_gc = (0x02<<4),
    TC_CCCINTLVL_HI_gc = (0x03<<4),
} TC_CCCINTLVL_t;


typedef enum TC_CCDINTLVL_enum
{
    TC_CCDINTLVL_OFF_gc = (0x00<<6),
    TC_CCDINTLVL_LO_gc = (0x01<<6),
    TC_CCDINTLVL_MED_gc = (0x02<<6),
    TC_CCDINTLVL_HI_gc = (0x03<<6),
} TC_CCDINTLVL_t;


typedef enum TC_CLKSEL_enum
{
    TC_CLKSEL_OFF_gc = (0x00<<0),
    TC_CLKSEL_DIV1_gc = (0x01<<0),
    TC_CLKSEL_DIV2_gc = (0x02<<0),
    TC_CLKSEL_DIV4_gc = (0x03<<0),
    TC_CLKSEL_DIV8_gc = (0x04<<0),
    TC_CLKSEL_DIV64_gc = (0x05<<0),
    TC_CLKSEL_DIV256_gc = (0x06<<0),
    TC_CLKSEL_DIV1024_gc = (0x07<<0),
    TC_CLKSEL_EVCH0_gc = (0x08<<0),
    TC_CLKSEL_EVCH1_gc = (0x09<<0),
    TC_CLKSEL_EVCH2_gc = (0x0A<<0),
    TC_CLKSEL_EVCH3_gc = (0x0B<<0),
    TC_CLKSEL_EVCH4_gc = (0x0C<<0),
    TC_CLKSEL_EVCH5_gc = (0x0D<<0),
    TC_CLKSEL_EVCH6_gc = (0x0E<<0),
    TC_CLKSEL_EVCH7_gc = (0x0F<<0),
} TC_CLKSEL_t;


typedef enum TC_CMD_enum
{
    TC_CMD_NONE_gc = (0x00<<2),
    TC_CMD_UPDATE_gc = (0x01<<2),
    TC_CMD_RESTART_gc = (0x02<<2),
    TC_CMD_RESET_gc = (0x03<<2),
} TC_CMD_t;


typedef enum TC_ERRINTLVL_enum
{
    TC_ERRINTLVL_OFF_gc = (0x00<<2),
    TC_ERRINTLVL_LO_gc = (0x01<<2),
    TC_ERRINTLVL_MED_gc = (0x02<<2),
    TC_ERRINTLVL_HI_gc = (0x03<<2),
} TC_ERRINTLVL_t;


typedef enum TC_EVACT_enum
{
    TC_EVACT_OFF_gc = (0x00<<5),
    TC_EVACT_CAPT_gc = (0x01<<5),
    TC_EVACT_UPDOWN_gc = (0x02<<5),
    TC_EVACT_QDEC_gc = (0x03<<5),
    TC_EVACT_RESTART_gc = (0x04<<5),
    TC_EVACT_FRQ_gc = (0x05<<5),
    TC_EVACT_PW_gc = (0x06<<5),
} TC_EVACT_t;


typedef enum TC_EVSEL_enum
{
    TC_EVSEL_OFF_gc = (0x00<<0),
    TC_EVSEL_CH0_gc = (0x08<<0),
    TC_EVSEL_CH1_gc = (0x09<<0),
    TC_EVSEL_CH2_gc = (0x0A<<0),
    TC_EVSEL_CH3_gc = (0x0B<<0),
    TC_EVSEL_CH4_gc = (0x0C<<0),
    TC_EVSEL_CH5_gc = (0x0D<<0),
    TC_EVSEL_CH6_gc = (0x0E<<0),
    TC_EVSEL_CH7_gc = (0x0F<<0),
} TC_EVSEL_t;


typedef enum TC_OVFINTLVL_enum
{
    TC_OVFINTLVL_OFF_gc = (0x00<<0),
    TC_OVFINTLVL_LO_gc = (0x01<<0),
    TC_OVFINTLVL_MED_gc = (0x02<<0),
    TC_OVFINTLVL_HI_gc = (0x03<<0),
} TC_OVFINTLVL_t;


typedef enum TC_WGMODE_enum
{
    TC_WGMODE_NORMAL_gc = (0x00<<0),
    TC_WGMODE_FRQ_gc = (0x01<<0),
    TC_WGMODE_SINGLESLOPE_gc = (0x03<<0),
    TC_WGMODE_SS_gc = (0x03<<0),
    TC_WGMODE_DSTOP_gc = (0x05<<0),
    TC_WGMODE_DS_T_gc = (0x05<<0),
    TC_WGMODE_DSBOTH_gc = (0x06<<0),
    TC_WGMODE_DS_TB_gc = (0x06<<0),
    TC_WGMODE_DSBOTTOM_gc = (0x07<<0),
    TC_WGMODE_DS_B_gc = (0x07<<0),
} TC_WGMODE_t;
# 2311 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h" 3
typedef struct TC2_struct
{
    register8_t CTRLA;
    register8_t CTRLB;
    register8_t CTRLC;
    register8_t reserved_0x03;
    register8_t CTRLE;
    register8_t reserved_0x05;
    register8_t INTCTRLA;
    register8_t INTCTRLB;
    register8_t reserved_0x08;
    register8_t CTRLF;
    register8_t reserved_0x0A;
    register8_t reserved_0x0B;
    register8_t INTFLAGS;
    register8_t reserved_0x0D;
    register8_t reserved_0x0E;
    register8_t reserved_0x0F;
    register8_t reserved_0x10;
    register8_t reserved_0x11;
    register8_t reserved_0x12;
    register8_t reserved_0x13;
    register8_t reserved_0x14;
    register8_t reserved_0x15;
    register8_t reserved_0x16;
    register8_t reserved_0x17;
    register8_t reserved_0x18;
    register8_t reserved_0x19;
    register8_t reserved_0x1A;
    register8_t reserved_0x1B;
    register8_t reserved_0x1C;
    register8_t reserved_0x1D;
    register8_t reserved_0x1E;
    register8_t reserved_0x1F;
    register8_t LCNT;
    register8_t HCNT;
    register8_t reserved_0x22;
    register8_t reserved_0x23;
    register8_t reserved_0x24;
    register8_t reserved_0x25;
    register8_t LPER;
    register8_t HPER;
    register8_t LCMPA;
    register8_t HCMPA;
    register8_t LCMPB;
    register8_t HCMPB;
    register8_t LCMPC;
    register8_t HCMPC;
    register8_t LCMPD;
    register8_t HCMPD;
} TC2_t;


typedef enum TC2_BYTEM_enum
{
    TC2_BYTEM_NORMAL_gc = (0x00<<0),
    TC2_BYTEM_BYTEMODE_gc = (0x01<<0),
    TC2_BYTEM_SPLITMODE_gc = (0x02<<0),
} TC2_BYTEM_t;


typedef enum TC2_CLKSEL_enum
{
    TC2_CLKSEL_OFF_gc = (0x00<<0),
    TC2_CLKSEL_DIV1_gc = (0x01<<0),
    TC2_CLKSEL_DIV2_gc = (0x02<<0),
    TC2_CLKSEL_DIV4_gc = (0x03<<0),
    TC2_CLKSEL_DIV8_gc = (0x04<<0),
    TC2_CLKSEL_DIV64_gc = (0x05<<0),
    TC2_CLKSEL_DIV256_gc = (0x06<<0),
    TC2_CLKSEL_DIV1024_gc = (0x07<<0),
    TC2_CLKSEL_EVCH0_gc = (0x08<<0),
    TC2_CLKSEL_EVCH1_gc = (0x09<<0),
    TC2_CLKSEL_EVCH2_gc = (0x0A<<0),
    TC2_CLKSEL_EVCH3_gc = (0x0B<<0),
    TC2_CLKSEL_EVCH4_gc = (0x0C<<0),
    TC2_CLKSEL_EVCH5_gc = (0x0D<<0),
    TC2_CLKSEL_EVCH6_gc = (0x0E<<0),
    TC2_CLKSEL_EVCH7_gc = (0x0F<<0),
} TC2_CLKSEL_t;


typedef enum TC2_CMD_enum
{
    TC2_CMD_NONE_gc = (0x00<<2),
    TC2_CMD_RESTART_gc = (0x02<<2),
    TC2_CMD_RESET_gc = (0x03<<2),
} TC2_CMD_t;


typedef enum TC2_CMDEN_enum
{
    TC2_CMDEN_LOW_gc = (0x01<<0),
    TC2_CMDEN_HIGH_gc = (0x02<<0),
    TC2_CMDEN_BOTH_gc = (0x03<<0),
} TC2_CMDEN_t;


typedef enum TC2_HUNFINTLVL_enum
{
    TC2_HUNFINTLVL_OFF_gc = (0x00<<2),
    TC2_HUNFINTLVL_LO_gc = (0x01<<2),
    TC2_HUNFINTLVL_MED_gc = (0x02<<2),
    TC2_HUNFINTLVL_HI_gc = (0x03<<2),
} TC2_HUNFINTLVL_t;


typedef enum TC2_LCMPAINTLVL_enum
{
    TC2_LCMPAINTLVL_OFF_gc = (0x00<<0),
    TC2_LCMPAINTLVL_LO_gc = (0x01<<0),
    TC2_LCMPAINTLVL_MED_gc = (0x02<<0),
    TC2_LCMPAINTLVL_HI_gc = (0x03<<0),
} TC2_LCMPAINTLVL_t;


typedef enum TC2_LCMPBINTLVL_enum
{
    TC2_LCMPBINTLVL_OFF_gc = (0x00<<2),
    TC2_LCMPBINTLVL_LO_gc = (0x01<<2),
    TC2_LCMPBINTLVL_MED_gc = (0x02<<2),
    TC2_LCMPBINTLVL_HI_gc = (0x03<<2),
} TC2_LCMPBINTLVL_t;


typedef enum TC2_LCMPCINTLVL_enum
{
    TC2_LCMPCINTLVL_OFF_gc = (0x00<<4),
    TC2_LCMPCINTLVL_LO_gc = (0x01<<4),
    TC2_LCMPCINTLVL_MED_gc = (0x02<<4),
    TC2_LCMPCINTLVL_HI_gc = (0x03<<4),
} TC2_LCMPCINTLVL_t;


typedef enum TC2_LCMPDINTLVL_enum
{
    TC2_LCMPDINTLVL_OFF_gc = (0x00<<6),
    TC2_LCMPDINTLVL_LO_gc = (0x01<<6),
    TC2_LCMPDINTLVL_MED_gc = (0x02<<6),
    TC2_LCMPDINTLVL_HI_gc = (0x03<<6),
} TC2_LCMPDINTLVL_t;


typedef enum TC2_LUNFINTLVL_enum
{
    TC2_LUNFINTLVL_OFF_gc = (0x00<<0),
    TC2_LUNFINTLVL_LO_gc = (0x01<<0),
    TC2_LUNFINTLVL_MED_gc = (0x02<<0),
    TC2_LUNFINTLVL_HI_gc = (0x03<<0),
} TC2_LUNFINTLVL_t;
# 2469 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h" 3
typedef struct TWI_MASTER_struct
{
    register8_t CTRLA;
    register8_t CTRLB;
    register8_t CTRLC;
    register8_t STATUS;
    register8_t BAUD;
    register8_t ADDR;
    register8_t DATA;
} TWI_MASTER_t;



typedef struct TWI_SLAVE_struct
{
    register8_t CTRLA;
    register8_t CTRLB;
    register8_t STATUS;
    register8_t ADDR;
    register8_t DATA;
    register8_t ADDRMASK;
} TWI_SLAVE_t;



typedef struct TWI_struct
{
    register8_t CTRL;
    TWI_MASTER_t MASTER;
    TWI_SLAVE_t SLAVE;
} TWI_t;


typedef enum TWI_MASTER_BUSSTATE_enum
{
    TWI_MASTER_BUSSTATE_UNKNOWN_gc = (0x00<<0),
    TWI_MASTER_BUSSTATE_IDLE_gc = (0x01<<0),
    TWI_MASTER_BUSSTATE_OWNER_gc = (0x02<<0),
    TWI_MASTER_BUSSTATE_BUSY_gc = (0x03<<0),
} TWI_MASTER_BUSSTATE_t;


typedef enum TWI_MASTER_CMD_enum
{
    TWI_MASTER_CMD_NOACT_gc = (0x00<<0),
    TWI_MASTER_CMD_REPSTART_gc = (0x01<<0),
    TWI_MASTER_CMD_RECVTRANS_gc = (0x02<<0),
    TWI_MASTER_CMD_STOP_gc = (0x03<<0),
} TWI_MASTER_CMD_t;


typedef enum TWI_MASTER_INTLVL_enum
{
    TWI_MASTER_INTLVL_OFF_gc = (0x00<<6),
    TWI_MASTER_INTLVL_LO_gc = (0x01<<6),
    TWI_MASTER_INTLVL_MED_gc = (0x02<<6),
    TWI_MASTER_INTLVL_HI_gc = (0x03<<6),
} TWI_MASTER_INTLVL_t;


typedef enum TWI_MASTER_TIMEOUT_enum
{
    TWI_MASTER_TIMEOUT_DISABLED_gc = (0x00<<2),
    TWI_MASTER_TIMEOUT_50US_gc = (0x01<<2),
    TWI_MASTER_TIMEOUT_100US_gc = (0x02<<2),
    TWI_MASTER_TIMEOUT_200US_gc = (0x03<<2),
} TWI_MASTER_TIMEOUT_t;


typedef enum TWI_SLAVE_CMD_enum
{
    TWI_SLAVE_CMD_NOACT_gc = (0x00<<0),
    TWI_SLAVE_CMD_COMPTRANS_gc = (0x02<<0),
    TWI_SLAVE_CMD_RESPONSE_gc = (0x03<<0),
} TWI_SLAVE_CMD_t;


typedef enum TWI_SLAVE_INTLVL_enum
{
    TWI_SLAVE_INTLVL_OFF_gc = (0x00<<6),
    TWI_SLAVE_INTLVL_LO_gc = (0x01<<6),
    TWI_SLAVE_INTLVL_MED_gc = (0x02<<6),
    TWI_SLAVE_INTLVL_HI_gc = (0x03<<6),
} TWI_SLAVE_INTLVL_t;


typedef enum TWI_SDAHOLD_enum
{
    TWI_SDAHOLD_OFF_gc = (0x00<<1),
    TWI_SDAHOLD_50NS_gc = (0x01<<1),
    TWI_SDAHOLD_300NS_gc = (0x02<<1),
    TWI_SDAHOLD_400NS_gc = (0x03<<1),
} TWI_SDAHOLD_t;
# 2570 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h" 3
typedef struct USART_struct
{
    register8_t DATA;
    register8_t STATUS;
    register8_t reserved_0x02;
    register8_t CTRLA;
    register8_t CTRLB;
    register8_t CTRLC;
    register8_t BAUDCTRLA;
    register8_t BAUDCTRLB;
} USART_t;


typedef enum USART_CHSIZE_enum
{
    USART_CHSIZE_5BIT_gc = (0x00<<0),
    USART_CHSIZE_6BIT_gc = (0x01<<0),
    USART_CHSIZE_7BIT_gc = (0x02<<0),
    USART_CHSIZE_8BIT_gc = (0x03<<0),
    USART_CHSIZE_9BIT_gc = (0x07<<0),
} USART_CHSIZE_t;


typedef enum USART_CMODE_enum
{
    USART_CMODE_ASYNCHRONOUS_gc = (0x00<<6),
    USART_CMODE_SYNCHRONOUS_gc = (0x01<<6),
    USART_CMODE_IRDA_gc = (0x02<<6),
    USART_CMODE_MSPI_gc = (0x03<<6),
} USART_CMODE_t;


typedef enum USART_DREINTLVL_enum
{
    USART_DREINTLVL_OFF_gc = (0x00<<0),
    USART_DREINTLVL_LO_gc = (0x01<<0),
    USART_DREINTLVL_MED_gc = (0x02<<0),
    USART_DREINTLVL_HI_gc = (0x03<<0),
} USART_DREINTLVL_t;


typedef enum USART_PMODE_enum
{
    USART_PMODE_DISABLED_gc = (0x00<<4),
    USART_PMODE_EVEN_gc = (0x02<<4),
    USART_PMODE_ODD_gc = (0x03<<4),
} USART_PMODE_t;


typedef enum USART_RXCINTLVL_enum
{
    USART_RXCINTLVL_OFF_gc = (0x00<<4),
    USART_RXCINTLVL_LO_gc = (0x01<<4),
    USART_RXCINTLVL_MED_gc = (0x02<<4),
    USART_RXCINTLVL_HI_gc = (0x03<<4),
} USART_RXCINTLVL_t;


typedef enum USART_TXCINTLVL_enum
{
    USART_TXCINTLVL_OFF_gc = (0x00<<2),
    USART_TXCINTLVL_LO_gc = (0x01<<2),
    USART_TXCINTLVL_MED_gc = (0x02<<2),
    USART_TXCINTLVL_HI_gc = (0x03<<2),
} USART_TXCINTLVL_t;
# 2643 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h" 3
typedef struct USB_EP_struct
{
    register8_t STATUS;
    register8_t CTRL;
    __extension__ union { register16_t CNT; struct { register8_t CNTL; register8_t CNTH; }; };
    __extension__ union { register16_t DATAPTR; struct { register8_t DATAPTRL; register8_t DATAPTRH; }; };
    __extension__ union { register16_t AUXDATA; struct { register8_t AUXDATAL; register8_t AUXDATAH; }; };
} USB_EP_t;



typedef struct USB_struct
{
    register8_t CTRLA;
    register8_t CTRLB;
    register8_t STATUS;
    register8_t ADDR;
    register8_t FIFOWP;
    register8_t FIFORP;
    __extension__ union { register16_t EPPTR; struct { register8_t EPPTRL; register8_t EPPTRH; }; };
    register8_t INTCTRLA;
    register8_t INTCTRLB;
    register8_t INTFLAGSACLR;
    register8_t INTFLAGSASET;
    register8_t INTFLAGSBCLR;
    register8_t INTFLAGSBSET;
    register8_t reserved_0x0E;
    register8_t reserved_0x0F;
    register8_t reserved_0x10;
    register8_t reserved_0x11;
    register8_t reserved_0x12;
    register8_t reserved_0x13;
    register8_t reserved_0x14;
    register8_t reserved_0x15;
    register8_t reserved_0x16;
    register8_t reserved_0x17;
    register8_t reserved_0x18;
    register8_t reserved_0x19;
    register8_t reserved_0x1A;
    register8_t reserved_0x1B;
    register8_t reserved_0x1C;
    register8_t reserved_0x1D;
    register8_t reserved_0x1E;
    register8_t reserved_0x1F;
    register8_t reserved_0x20;
    register8_t reserved_0x21;
    register8_t reserved_0x22;
    register8_t reserved_0x23;
    register8_t reserved_0x24;
    register8_t reserved_0x25;
    register8_t reserved_0x26;
    register8_t reserved_0x27;
    register8_t reserved_0x28;
    register8_t reserved_0x29;
    register8_t reserved_0x2A;
    register8_t reserved_0x2B;
    register8_t reserved_0x2C;
    register8_t reserved_0x2D;
    register8_t reserved_0x2E;
    register8_t reserved_0x2F;
    register8_t reserved_0x30;
    register8_t reserved_0x31;
    register8_t reserved_0x32;
    register8_t reserved_0x33;
    register8_t reserved_0x34;
    register8_t reserved_0x35;
    register8_t reserved_0x36;
    register8_t reserved_0x37;
    register8_t reserved_0x38;
    register8_t reserved_0x39;
    register8_t CAL0;
    register8_t CAL1;
} USB_t;



typedef struct USB_EP_TABLE_struct
{
    USB_EP_t EP0OUT;
    USB_EP_t EP0IN;
    USB_EP_t EP1OUT;
    USB_EP_t EP1IN;
    USB_EP_t EP2OUT;
    USB_EP_t EP2IN;
    USB_EP_t EP3OUT;
    USB_EP_t EP3IN;
    USB_EP_t EP4OUT;
    USB_EP_t EP4IN;
    USB_EP_t EP5OUT;
    USB_EP_t EP5IN;
    USB_EP_t EP6OUT;
    USB_EP_t EP6IN;
    USB_EP_t EP7OUT;
    USB_EP_t EP7IN;
    USB_EP_t EP8OUT;
    USB_EP_t EP8IN;
    USB_EP_t EP9OUT;
    USB_EP_t EP9IN;
    USB_EP_t EP10OUT;
    USB_EP_t EP10IN;
    USB_EP_t EP11OUT;
    USB_EP_t EP11IN;
    USB_EP_t EP12OUT;
    USB_EP_t EP12IN;
    USB_EP_t EP13OUT;
    USB_EP_t EP13IN;
    USB_EP_t EP14OUT;
    USB_EP_t EP14IN;
    USB_EP_t EP15OUT;
    USB_EP_t EP15IN;
    register8_t reserved_0x100;
    register8_t reserved_0x101;
    register8_t reserved_0x102;
    register8_t reserved_0x103;
    register8_t reserved_0x104;
    register8_t reserved_0x105;
    register8_t reserved_0x106;
    register8_t reserved_0x107;
    register8_t reserved_0x108;
    register8_t reserved_0x109;
    register8_t reserved_0x10A;
    register8_t reserved_0x10B;
    register8_t reserved_0x10C;
    register8_t reserved_0x10D;
    register8_t reserved_0x10E;
    register8_t reserved_0x10F;
    register8_t FRAMENUML;
    register8_t FRAMENUMH;
} USB_EP_TABLE_t;


typedef enum USB_EP_BUFSIZE_enum
{
    USB_EP_BUFSIZE_8_gc = (0x00<<0),
    USB_EP_BUFSIZE_16_gc = (0x01<<0),
    USB_EP_BUFSIZE_32_gc = (0x02<<0),
    USB_EP_BUFSIZE_64_gc = (0x03<<0),
    USB_EP_BUFSIZE_128_gc = (0x04<<0),
    USB_EP_BUFSIZE_256_gc = (0x05<<0),
    USB_EP_BUFSIZE_512_gc = (0x06<<0),
    USB_EP_BUFSIZE_1023_gc = (0x07<<0),
} USB_EP_BUFSIZE_t;


typedef enum USB_EP_TYPE_enum
{
    USB_EP_TYPE_DISABLE_gc = (0x00<<6),
    USB_EP_TYPE_CONTROL_gc = (0x01<<6),
    USB_EP_TYPE_BULK_gc = (0x02<<6),
    USB_EP_TYPE_ISOCHRONOUS_gc = (0x03<<6),
} USB_EP_TYPE_t;


typedef enum USB_INTLVL_enum
{
    USB_INTLVL_OFF_gc = (0x00<<0),
    USB_INTLVL_LO_gc = (0x01<<0),
    USB_INTLVL_MED_gc = (0x02<<0),
    USB_INTLVL_HI_gc = (0x03<<0),
} USB_INTLVL_t;
# 2811 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h" 3
typedef struct VPORT_struct
{
    register8_t DIR;
    register8_t OUT;
    register8_t IN;
    register8_t INTFLAGS;
} VPORT_t;
# 2827 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h" 3
typedef struct WDT_struct
{
    register8_t CTRL;
    register8_t WINCTRL;
    register8_t STATUS;
} WDT_t;


typedef enum WDT_PER_enum
{
    WDT_PER_8CLK_gc = (0x00<<2),
    WDT_PER_16CLK_gc = (0x01<<2),
    WDT_PER_32CLK_gc = (0x02<<2),
    WDT_PER_64CLK_gc = (0x03<<2),
    WDT_PER_128CLK_gc = (0x04<<2),
    WDT_PER_256CLK_gc = (0x05<<2),
    WDT_PER_512CLK_gc = (0x06<<2),
    WDT_PER_1KCLK_gc = (0x07<<2),
    WDT_PER_2KCLK_gc = (0x08<<2),
    WDT_PER_4KCLK_gc = (0x09<<2),
    WDT_PER_8KCLK_gc = (0x0A<<2),
} WDT_PER_t;


typedef enum WDT_WPER_enum
{
    WDT_WPER_8CLK_gc = (0x00<<2),
    WDT_WPER_16CLK_gc = (0x01<<2),
    WDT_WPER_32CLK_gc = (0x02<<2),
    WDT_WPER_64CLK_gc = (0x03<<2),
    WDT_WPER_128CLK_gc = (0x04<<2),
    WDT_WPER_256CLK_gc = (0x05<<2),
    WDT_WPER_512CLK_gc = (0x06<<2),
    WDT_WPER_1KCLK_gc = (0x07<<2),
    WDT_WPER_2KCLK_gc = (0x08<<2),
    WDT_WPER_4KCLK_gc = (0x09<<2),
    WDT_WPER_8KCLK_gc = (0x0A<<2),
} WDT_WPER_t;
# 2873 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h" 3
typedef struct OCD_struct
{
    register8_t OCDR0;
    register8_t OCDR1;
} OCD_t;
# 529 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/io.h" 2 3
# 627 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/io.h" 3
# 1 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/portpins.h" 1 3
# 628 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/io.h" 2 3

# 1 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/common.h" 1 3
# 630 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/io.h" 2 3

# 1 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/version.h" 1 3
# 632 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/io.h" 2 3


# 1 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/xmega.h" 1 3
# 635 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/io.h" 2 3



# 1 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/fuse.h" 1 3
# 231 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/fuse.h" 3
typedef struct
{
    unsigned char byte[6];
} __fuse_t;
# 639 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/io.h" 2 3


# 1 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/lock.h" 1 3
# 642 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/io.h" 2 3
# 11 "main.c" 2
# 1 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/interrupt.h" 1 3
# 12 "main.c" 2
# 1 "/opt/microchip/xc8/v2.10/avr/avr/include/util/delay.h" 1 3
# 45 "/opt/microchip/xc8/v2.10/avr/avr/include/util/delay.h" 3
# 1 "/opt/microchip/xc8/v2.10/avr/avr/include/util/delay_basic.h" 1 3
# 40 "/opt/microchip/xc8/v2.10/avr/avr/include/util/delay_basic.h" 3
static __inline__ void _delay_loop_1(uint8_t __count) __attribute__((__always_inline__));
static __inline__ void _delay_loop_2(uint16_t __count) __attribute__((__always_inline__));
# 80 "/opt/microchip/xc8/v2.10/avr/avr/include/util/delay_basic.h" 3
void
_delay_loop_1(uint8_t __count)
{
 __asm__ volatile (
  "1: dec %0" "\n\t"
  "brne 1b"
  : "=r" (__count)
  : "0" (__count)
 );
}
# 102 "/opt/microchip/xc8/v2.10/avr/avr/include/util/delay_basic.h" 3
void
_delay_loop_2(uint16_t __count)
{
 __asm__ volatile (
  "1: sbiw %0,1" "\n\t"
  "brne 1b"
  : "=w" (__count)
  : "0" (__count)
 );
}
# 46 "/opt/microchip/xc8/v2.10/avr/avr/include/util/delay.h" 2 3
# 1 "/opt/microchip/xc8/v2.10/avr/avr/include/math.h" 1 3
# 127 "/opt/microchip/xc8/v2.10/avr/avr/include/math.h" 3
extern double cos(double __x) __attribute__((__const__));





extern double sin(double __x) __attribute__((__const__));





extern double tan(double __x) __attribute__((__const__));






extern double fabs(double __x) __attribute__((__const__));






extern double fmod(double __x, double __y) __attribute__((__const__));
# 168 "/opt/microchip/xc8/v2.10/avr/avr/include/math.h" 3
extern double modf(double __x, double *__iptr);


extern float modff (float __x, float *__iptr);




extern double sqrt(double __x) __attribute__((__const__));


extern float sqrtf (float) __attribute__((__const__));




extern double cbrt(double __x) __attribute__((__const__));
# 195 "/opt/microchip/xc8/v2.10/avr/avr/include/math.h" 3
extern double hypot (double __x, double __y) __attribute__((__const__));







extern double square(double __x) __attribute__((__const__));






extern double floor(double __x) __attribute__((__const__));






extern double ceil(double __x) __attribute__((__const__));
# 235 "/opt/microchip/xc8/v2.10/avr/avr/include/math.h" 3
extern double frexp(double __x, int *__pexp);







extern double ldexp(double __x, int __exp) __attribute__((__const__));





extern double exp(double __x) __attribute__((__const__));





extern double cosh(double __x) __attribute__((__const__));





extern double sinh(double __x) __attribute__((__const__));





extern double tanh(double __x) __attribute__((__const__));







extern double acos(double __x) __attribute__((__const__));







extern double asin(double __x) __attribute__((__const__));






extern double atan(double __x) __attribute__((__const__));
# 299 "/opt/microchip/xc8/v2.10/avr/avr/include/math.h" 3
extern double atan2(double __y, double __x) __attribute__((__const__));





extern double log(double __x) __attribute__((__const__));





extern double log10(double __x) __attribute__((__const__));





extern double pow(double __x, double __y) __attribute__((__const__));






extern int isnan(double __x) __attribute__((__const__));
# 334 "/opt/microchip/xc8/v2.10/avr/avr/include/math.h" 3
extern int isinf(double __x) __attribute__((__const__));






__attribute__((__const__)) static inline int isfinite (double __x)
{
    unsigned char __exp;
    __asm__ (
 "mov	%0, %C1		\n\t"
 "lsl	%0		\n\t"
 "mov	%0, %D1		\n\t"
 "rol	%0		"
 : "=r" (__exp)
 : "r" (__x) );
    return __exp != 0xff;
}






__attribute__((__const__)) static inline double copysign (double __x, double __y)
{
    __asm__ (
 "bst	%D2, 7	\n\t"
 "bld	%D0, 7	"
 : "=r" (__x)
 : "0" (__x), "r" (__y) );
    return __x;
}
# 377 "/opt/microchip/xc8/v2.10/avr/avr/include/math.h" 3
extern int signbit (double __x) __attribute__((__const__));






extern double fdim (double __x, double __y) __attribute__((__const__));
# 393 "/opt/microchip/xc8/v2.10/avr/avr/include/math.h" 3
extern double fma (double __x, double __y, double __z) __attribute__((__const__));







extern double fmax (double __x, double __y) __attribute__((__const__));







extern double fmin (double __x, double __y) __attribute__((__const__));






extern double trunc (double __x) __attribute__((__const__));
# 427 "/opt/microchip/xc8/v2.10/avr/avr/include/math.h" 3
extern double round (double __x) __attribute__((__const__));
# 440 "/opt/microchip/xc8/v2.10/avr/avr/include/math.h" 3
extern long lround (double __x) __attribute__((__const__));
# 454 "/opt/microchip/xc8/v2.10/avr/avr/include/math.h" 3
extern long lrint (double __x) __attribute__((__const__));
# 47 "/opt/microchip/xc8/v2.10/avr/avr/include/util/delay.h" 2 3
# 86 "/opt/microchip/xc8/v2.10/avr/avr/include/util/delay.h" 3
static __inline__ void _delay_us(double __us) __attribute__((__always_inline__));
static __inline__ void _delay_ms(double __ms) __attribute__((__always_inline__));
# 165 "/opt/microchip/xc8/v2.10/avr/avr/include/util/delay.h" 3
void
_delay_ms(double __ms)
{
 double __tmp ;



 uint32_t __ticks_dc;
 extern void __builtin_avr_delay_cycles(unsigned long);
 __tmp = ((
# 174 "/opt/microchip/xc8/v2.10/avr/avr/include/util/delay.h"
          32000000
# 174 "/opt/microchip/xc8/v2.10/avr/avr/include/util/delay.h" 3
               ) / 1e3) * __ms;
# 184 "/opt/microchip/xc8/v2.10/avr/avr/include/util/delay.h" 3
  __ticks_dc = (uint32_t)(ceil(fabs(__tmp)));


 __builtin_avr_delay_cycles(__ticks_dc);
# 210 "/opt/microchip/xc8/v2.10/avr/avr/include/util/delay.h" 3
}
# 254 "/opt/microchip/xc8/v2.10/avr/avr/include/util/delay.h" 3
void
_delay_us(double __us)
{
 double __tmp ;



 uint32_t __ticks_dc;
 extern void __builtin_avr_delay_cycles(unsigned long);
 __tmp = ((
# 263 "/opt/microchip/xc8/v2.10/avr/avr/include/util/delay.h"
          32000000
# 263 "/opt/microchip/xc8/v2.10/avr/avr/include/util/delay.h" 3
               ) / 1e6) * __us;
# 273 "/opt/microchip/xc8/v2.10/avr/avr/include/util/delay.h" 3
  __ticks_dc = (uint32_t)(ceil(fabs(__tmp)));


 __builtin_avr_delay_cycles(__ticks_dc);
# 299 "/opt/microchip/xc8/v2.10/avr/avr/include/util/delay.h" 3
}
# 13 "main.c" 2
# 1 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 1 3
# 89 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
# 1 "/opt/microchip/xc8/v2.10/avr/lib/gcc/avr/5.4.0/include/stddef.h" 1 3 4
# 90 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 2 3
# 1158 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern const void * memchr_P(const void *, int __val, size_t __len) __attribute__((__const__));
# 1172 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern int memcmp_P(const void *, const void *, size_t) __attribute__((__pure__));






extern void *memccpy_P(void *, const void *, int __val, size_t);
# 1188 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern void *memcpy_P(void *, const void *, size_t);






extern void *memmem_P(const void *, size_t, const void *, size_t) __attribute__((__pure__));
# 1207 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern const void * memrchr_P(const void *, int __val, size_t __len) __attribute__((__const__));
# 1217 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern char *strcat_P(char *, const char *);
# 1233 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern const char * strchr_P(const char *, int __val) __attribute__((__const__));
# 1245 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern const char * strchrnul_P(const char *, int __val) __attribute__((__const__));
# 1258 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern int strcmp_P(const char *, const char *) __attribute__((__pure__));
# 1268 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern char *strcpy_P(char *, const char *);
# 1285 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern int strcasecmp_P(const char *, const char *) __attribute__((__pure__));






extern char *strcasestr_P(const char *, const char *) __attribute__((__pure__));
# 1305 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern size_t strcspn_P(const char *__s, const char * __reject) __attribute__((__pure__));
# 1321 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern size_t strlcat_P (char *, const char *, size_t );
# 1334 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern size_t strlcpy_P (char *, const char *, size_t );
# 1346 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern size_t strnlen_P(const char *, size_t) __attribute__((__const__));
# 1357 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern int strncmp_P(const char *, const char *, size_t) __attribute__((__pure__));
# 1376 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern int strncasecmp_P(const char *, const char *, size_t) __attribute__((__pure__));
# 1387 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern char *strncat_P(char *, const char *, size_t);
# 1401 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern char *strncpy_P(char *, const char *, size_t);
# 1416 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern char *strpbrk_P(const char *__s, const char * __accept) __attribute__((__pure__));
# 1427 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern const char * strrchr_P(const char *, int __val) __attribute__((__const__));
# 1447 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern char *strsep_P(char **__sp, const char * __delim);
# 1460 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern size_t strspn_P(const char *__s, const char * __accept) __attribute__((__pure__));
# 1474 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern char *strstr_P(const char *, const char *) __attribute__((__pure__));
# 1496 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern char *strtok_P(char *__s, const char * __delim);
# 1516 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern char *strtok_rP(char *__s, const char * __delim, char **__last);
# 1529 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern size_t strlen_PF(uint_farptr_t src) __attribute__((__const__));
# 1545 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern size_t strnlen_PF(uint_farptr_t src, size_t len) __attribute__((__const__));
# 1560 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern void *memcpy_PF(void *dest, uint_farptr_t src, size_t len);
# 1575 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern char *strcpy_PF(char *dest, uint_farptr_t src);
# 1595 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern char *strncpy_PF(char *dest, uint_farptr_t src, size_t len);
# 1611 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern char *strcat_PF(char *dest, uint_farptr_t src);
# 1632 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern size_t strlcat_PF(char *dst, uint_farptr_t src, size_t siz);
# 1649 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern char *strncat_PF(char *dest, uint_farptr_t src, size_t len);
# 1665 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern int strcmp_PF(const char *s1, uint_farptr_t s2) __attribute__((__pure__));
# 1682 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern int strncmp_PF(const char *s1, uint_farptr_t s2, size_t n) __attribute__((__pure__));
# 1698 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern int strcasecmp_PF(const char *s1, uint_farptr_t s2) __attribute__((__pure__));
# 1716 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern int strncasecmp_PF(const char *s1, uint_farptr_t s2, size_t n) __attribute__((__pure__));
# 1732 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern char *strstr_PF(const char *s1, uint_farptr_t s2);
# 1744 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern size_t strlcpy_PF(char *dst, uint_farptr_t src, size_t siz);
# 1760 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern int memcmp_PF(const void *, uint_farptr_t, size_t) __attribute__((__pure__));
# 1779 "/opt/microchip/xc8/v2.10/avr/avr/include/avr/pgmspace.h" 3
extern size_t __strlen_P(const char *) __attribute__((__const__));
__attribute__((__always_inline__)) static __inline__ size_t strlen_P(const char * s);
static __inline__ size_t strlen_P(const char *s) {
  return __builtin_constant_p(__builtin_strlen(s))
     ? __builtin_strlen(s) : __strlen_P(s);
}
# 14 "main.c" 2

# 1 "wdt_driver.h" 1
# 74 "wdt_driver.h"

# 74 "wdt_driver.h"
void WDT_Enable( void );
void WDT_EnableAndSetTimeout( WDT_PER_t period );
void WDT_Disable( void );
uint8_t WDT_IsWindowModeEnabled( void );
uint8_t WDT_EnableWindowMode( void );
uint8_t WDT_EnableWindowModeAndSetTimeout( WDT_WPER_t period );
void WDT_DisableWindowMode( void );
# 16 "main.c" 2
# 1 "time/time.h" 1
# 21 "time/time.h"
void time_init (void);
uint32_t millis (void);
# 17 "main.c" 2
# 1 "w5100/w5100.h" 1
# 213 "w5100/w5100.h"
typedef struct W5100_cfg_t
{
        unsigned char mac_addr[6];
        unsigned char ip_addr[4];
        unsigned char sub_mask[4];
        unsigned char gtw_addr[4];
} W5100_CFG;
# 231 "w5100/w5100.h"
typedef struct W5100_callbacks_t
{
        void (* _select)(void);
        unsigned char (* _xchg)(unsigned char val);
        void (* _deselect)(void);
        void (* _reset)(void);
} W5100_CALLBACKS;

extern W5100_CFG w5100_actual_conf_addr;
extern W5100_CFG w5100_default_conf;
# 259 "w5100/w5100.h"
void W51_register(W5100_CALLBACKS *pcallbacks);
# 271 "w5100/w5100.h"
void W51_write(unsigned int addr, unsigned char data);
# 281 "w5100/w5100.h"
unsigned char W51_read(unsigned int addr);
# 296 "w5100/w5100.h"
void W51_init(void);
# 307 "w5100/w5100.h"
unsigned char W51_config(W5100_CFG *pcfg);


void delay_w51_1(void);
void select_w5100(void);
void deselect_w5100(void);
# 18 "main.c" 2
# 1 "w5100/w5100_func.h" 1
# 24 "w5100/w5100_func.h"
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
# 19 "main.c" 2
# 1 "fatfs/ff.h" 1
# 29 "fatfs/ff.h"
# 1 "fatfs/ffconf.h" 1
# 30 "fatfs/ff.h" 2
# 45 "fatfs/ff.h"
typedef unsigned int UINT;
typedef unsigned char BYTE;
typedef uint16_t WORD;
typedef uint16_t WCHAR;
typedef uint32_t DWORD;
typedef uint64_t QWORD;
# 96 "fatfs/ff.h"
typedef char TCHAR;
# 113 "fatfs/ff.h"
typedef DWORD FSIZE_t;






typedef struct {
 BYTE fs_type;
 BYTE pdrv;
 BYTE n_fats;
 BYTE wflag;
 BYTE fsi_flag;
 WORD id;
 WORD n_rootdir;
 WORD csize;
# 142 "fatfs/ff.h"
 DWORD last_clst;
 DWORD free_clst;
# 153 "fatfs/ff.h"
 DWORD n_fatent;
 DWORD fsize;
 DWORD volbase;
 DWORD fatbase;
 DWORD dirbase;
 DWORD database;



 DWORD winsect;
 BYTE win[512];
} FATFS;





typedef struct {
 FATFS* fs;
 WORD id;
 BYTE attr;
 BYTE stat;
 DWORD sclust;
 FSIZE_t objsize;
# 187 "fatfs/ff.h"
} FFOBJID;





typedef struct {
 FFOBJID obj;
 BYTE flag;
 BYTE err;
 FSIZE_t fptr;
 DWORD clust;
 DWORD sect;

 DWORD dir_sect;
 BYTE* dir_ptr;





 BYTE buf[512];

} FIL;





typedef struct {
 FFOBJID obj;
 DWORD dptr;
 DWORD clust;
 DWORD sect;
 BYTE* dir;
 BYTE fn[12];




 const TCHAR* pat;

} DIR;





typedef struct {
 FSIZE_t fsize;
 WORD fdate;
 WORD ftime;
 BYTE fattrib;




 TCHAR fname[12 + 1];

} FILINFO;





typedef enum {
 FR_OK = 0,
 FR_DISK_ERR,
 FR_INT_ERR,
 FR_NOT_READY,
 FR_NO_FILE,
 FR_NO_PATH,
 FR_INVALID_NAME,
 FR_DENIED,
 FR_EXIST,
 FR_INVALID_OBJECT,
 FR_WRITE_PROTECTED,
 FR_INVALID_DRIVE,
 FR_NOT_ENABLED,
 FR_NO_FILESYSTEM,
 FR_MKFS_ABORTED,
 FR_TIMEOUT,
 FR_LOCKED,
 FR_NOT_ENOUGH_CORE,
 FR_TOO_MANY_OPEN_FILES,
 FR_INVALID_PARAMETER
} FRESULT;






FRESULT f_open (FIL* fp, const TCHAR* path, BYTE mode);
FRESULT f_close (FIL* fp);
FRESULT f_read (FIL* fp, void* buff, UINT btr, UINT* br);
FRESULT f_write (FIL* fp, const void* buff, UINT btw, UINT* bw);
FRESULT f_lseek (FIL* fp, FSIZE_t ofs);
FRESULT f_truncate (FIL* fp);
FRESULT f_sync (FIL* fp);
FRESULT f_opendir (DIR* dp, const TCHAR* path);
FRESULT f_closedir (DIR* dp);
FRESULT f_readdir (DIR* dp, FILINFO* fno);
FRESULT f_findfirst (DIR* dp, FILINFO* fno, const TCHAR* path, const TCHAR* pattern);
FRESULT f_findnext (DIR* dp, FILINFO* fno);
FRESULT f_mkdir (const TCHAR* path);
FRESULT f_unlink (const TCHAR* path);
FRESULT f_rename (const TCHAR* path_old, const TCHAR* path_new);
FRESULT f_stat (const TCHAR* path, FILINFO* fno);
FRESULT f_chmod (const TCHAR* path, BYTE attr, BYTE mask);
FRESULT f_utime (const TCHAR* path, const FILINFO* fno);
FRESULT f_chdir (const TCHAR* path);
FRESULT f_chdrive (const TCHAR* path);
FRESULT f_getcwd (TCHAR* buff, UINT len);
FRESULT f_getfree (const TCHAR* path, DWORD* nclst, FATFS** fatfs);
FRESULT f_getlabel (const TCHAR* path, TCHAR* label, DWORD* vsn);
FRESULT f_setlabel (const TCHAR* label);
FRESULT f_forward (FIL* fp, UINT(*func)(const BYTE*,UINT), UINT btf, UINT* bf);
FRESULT f_expand (FIL* fp, FSIZE_t szf, BYTE opt);
FRESULT f_mount (FATFS* fs, const TCHAR* path, BYTE opt);
FRESULT f_mkfs (const TCHAR* path, BYTE opt, DWORD au, void* work, UINT len);
FRESULT f_fdisk (BYTE pdrv, const DWORD* szt, void* work);
FRESULT f_setcp (WORD cp);
int f_putc (TCHAR c, FIL* fp);
int f_puts (const TCHAR* str, FIL* cp);
int f_printf (FIL* fp, const TCHAR* str, ...);
TCHAR* f_gets (TCHAR* buff, int len, FIL* fp);
# 336 "fatfs/ff.h"
DWORD get_fattime (void);
# 20 "main.c" 2
# 1 "fatfs/ffconf.h" 1
# 21 "main.c" 2
# 1 "fatfs/diskio.h" 1
# 15 "fatfs/diskio.h"
# 1 "fatfs/ff.h" 1
# 16 "fatfs/diskio.h" 2
# 1 "fatfs/diskio.h" 1
# 17 "fatfs/diskio.h" 2



typedef BYTE DSTATUS;


typedef enum {
 RES_OK = 0,
 RES_ERROR,
 RES_WRPRT,
 RES_NOTRDY,
 RES_PARERR
} DRESULT;






DSTATUS disk_initialize (BYTE pdrv);
DSTATUS disk_status (BYTE pdrv);
DRESULT disk_read (BYTE pdrv, BYTE* buff, DWORD sector, UINT count);

DRESULT disk_write (BYTE pdrv, const BYTE* buff, DWORD sector, UINT count);


DRESULT disk_ioctl (BYTE pdrv, BYTE cmd, void* buff);

void disk_timerproc (void);
# 22 "main.c" 2




W5100_CFG w5100_default_conf = {
 {0x00, 0x08, 0xDC, 0x55, 0x00, 0x01},
 {192, 168, 1, 35},
 {255, 255, 255, 0},
 {192, 168, 1, 1},
};

FATFS SDFatFS;


static void uart_init (void);
static int uart_putchar(char c, FILE *stream);
static void inline initialize_clock (void);
static void inline initialize_peripherals (void);
static void handle_blink (void);
static inline void handle_write(void);
static FILE mystdout = 
# 42 "main.c" 3
                      { .put = 
# 42 "main.c"
                      uart_putchar
# 42 "main.c" 3
                      , .get = ((void *)0), .flags = 0x0002, .udata = 0, }
# 42 "main.c"
                                                                               ;




int main(int argc, char** argv) {
    FRESULT res;
    static uint32_t watchdog_timer = 0;
    static uint32_t test_timer = 0;



    initialize_clock();
    initialize_peripherals();
    uart_init();

    
# 58 "main.c" 3
   (__iob[1]) 
# 58 "main.c"
          = &mystdout;
# 68 "main.c"
    printf(
# 68 "main.c" 3
          (__extension__({static const char __c[] __attribute__((__progmem__)) = (
# 68 "main.c"
          "Start...\r\n"
# 68 "main.c" 3
          ); &__c[0];}))
# 68 "main.c"
                              );

    time_init();



    W51_init();
    _delay_ms(1000);
 W51_config(&w5100_default_conf);
    _delay_ms(100);

    res = f_mount(&SDFatFS, "", 0);
    if (res != FR_OK) {printf_P(
# 80 "main.c" 3
                               (__extension__({static const char __c[] __attribute__((__progmem__)) = (
# 80 "main.c"
                               "SD f_mount error code: %i\r\n"
# 80 "main.c" 3
                               ); &__c[0];}))
# 80 "main.c"
                                                                    , res);}
    else {printf_P(
# 81 "main.c" 3
                  (__extension__({static const char __c[] __attribute__((__progmem__)) = (
# 81 "main.c"
                  "SD f_mount OK\r\n"
# 81 "main.c" 3
                  ); &__c[0];}))
# 81 "main.c"
                                           );}

    
# 83 "main.c" 3
   (*(PMIC_t *) 0x00A0)
# 83 "main.c"
       .CTRL = 
# 83 "main.c" 3
               0x01
# 83 "main.c"
                              ;

    
# 85 "main.c" 3
   __asm__ __volatile__ ("sei" ::: "memory")
# 85 "main.c"
        ;



    WDT_Disable();
    WDT_EnableAndSetTimeout(WDT_PER_2KCLK_gc);


    while (1) {
        handle_blink();
        handle_write();
        disk_timerproc();

        if ((uint32_t)(millis() - watchdog_timer) > 200) {
            watchdog_timer = millis();
            asm("wdr");
        }

        if ((uint32_t)(millis() - test_timer) > 5000) {
            test_timer = millis();


        }
    }

    return (
# 110 "main.c" 3
           0
# 110 "main.c"
                       );
}

static void uart_init (void) {
    
# 114 "main.c" 3
   (*(volatile uint8_t *)(0x09A4)) 
# 114 "main.c"
                 |= 
# 114 "main.c" 3
                    0x10
# 114 "main.c"
                                 |
# 114 "main.c" 3
                                  0x08
# 114 "main.c"
                                               ;
    
# 115 "main.c" 3
   (*(volatile uint8_t *)(0x09A5)) 
# 115 "main.c"
                 |= 
# 115 "main.c" 3
                    (1<<1)
# 115 "main.c"
                                    |
# 115 "main.c" 3
                                     (1<<0)
# 115 "main.c"
                                                     ;
    
# 116 "main.c" 3
   (*(volatile uint8_t *)(0x09A6)) 
# 116 "main.c"
                     = 0x2E;
    
# 117 "main.c" 3
   (*(volatile uint8_t *)(0x09A7)) 
# 117 "main.c"
                     = 0x98;
}

static int uart_putchar(char c, FILE *stream) {

    while ( !( 
# 122 "main.c" 3
              (*(USART_t *) 0x09A0)
# 122 "main.c"
                     .STATUS & 
# 122 "main.c" 3
                               0x20
# 122 "main.c"
                                             ) );

    
# 124 "main.c" 3
   (*(USART_t *) 0x09A0)
# 124 "main.c"
          .DATA = c;
    return 0;
}

static inline void initialize_clock (void) {



    
# 132 "main.c" 3
   (*(OSC_t *) 0x0050)
# 132 "main.c"
      .XOSCCTRL = OSC_FRQRANGE_2TO9_gc | OSC_XOSCSEL_XTAL_16KCLK_gc ;
    
# 133 "main.c" 3
   (*(OSC_t *) 0x0050)
# 133 "main.c"
      .CTRL |= 
# 133 "main.c" 3
               0x08 
# 133 "main.c"
                             ;
    while( (
# 134 "main.c" 3
           (*(OSC_t *) 0x0050)
# 134 "main.c"
              .STATUS & 
# 134 "main.c" 3
                        0x08
# 134 "main.c"
                                      ) == 0 ){}




    
# 139 "main.c" 3
   (*(OSC_t *) 0x0050)
# 139 "main.c"
      .PLLCTRL = OSC_PLLSRC_XOSC_gc | 4;


    
# 142 "main.c" 3
   (*(OSC_t *) 0x0050)
# 142 "main.c"
      .CTRL |= 
# 142 "main.c" 3
               0x10 
# 142 "main.c"
                            ;
    while( (
# 143 "main.c" 3
           (*(OSC_t *) 0x0050)
# 143 "main.c"
              .STATUS & 
# 143 "main.c" 3
                        0x10
# 143 "main.c"
                                     ) == 0 ){}


    
# 146 "main.c" 3
   (*(volatile uint8_t *)(0x0034)) 
# 146 "main.c"
       = CCP_IOREG_gc;
    
# 147 "main.c" 3
   (*(CLK_t *) 0x0040)
# 147 "main.c"
      .CTRL = CLK_SCLKSEL_PLL_gc;
}

static inline void initialize_peripherals (void) {
    
# 151 "main.c" 3
   (*(volatile uint8_t *)(0x06A1)) 
# 151 "main.c"
                = 
# 151 "main.c" 3
                  0x04
# 151 "main.c"
                         ;
    
# 152 "main.c" 3
   (*(volatile uint8_t *)(0x06A1)) 
# 152 "main.c"
                = 
# 152 "main.c" 3
                  0x08
# 152 "main.c"
                         ;
    
# 153 "main.c" 3
   (*(volatile uint8_t *)(0x0662)) 
# 153 "main.c"
                = 
# 153 "main.c" 3
                  0x04
# 153 "main.c"
                         ;
    
# 154 "main.c" 3
   (*(volatile uint8_t *)(0x0661)) 
# 154 "main.c"
                = 
# 154 "main.c" 3
                  0x08
# 154 "main.c"
                         ;
    
# 155 "main.c" 3
   (*(volatile uint8_t *)(0x0682)) 
# 155 "main.c"
                = 
# 155 "main.c" 3
                  0x01
# 155 "main.c"
                         ;
    
# 156 "main.c" 3
   (*(volatile uint8_t *)(0x0685)) 
# 156 "main.c"
                = 
# 156 "main.c" 3
                  0x01
# 156 "main.c"
                         ;
    
# 157 "main.c" 3
   (*(volatile uint8_t *)(0x0682)) 
# 157 "main.c"
                = 
# 157 "main.c" 3
                  0x02
# 157 "main.c"
                         ;
    
# 158 "main.c" 3
   (*(volatile uint8_t *)(0x0685)) 
# 158 "main.c"
                = 
# 158 "main.c" 3
                  0x02
# 158 "main.c"
                         ;
    
# 159 "main.c" 3
   (*(volatile uint8_t *)(0x0682)) 
# 159 "main.c"
                = 
# 159 "main.c" 3
                  0x04
# 159 "main.c"
                         ;
    
# 160 "main.c" 3
   (*(volatile uint8_t *)(0x0685)) 
# 160 "main.c"
                = 
# 160 "main.c" 3
                  0x04
# 160 "main.c"
                         ;
    
# 161 "main.c" 3
   (*(volatile uint8_t *)(0x0682)) 
# 161 "main.c"
                = 
# 161 "main.c" 3
                  0x08
# 161 "main.c"
                         ;
    
# 162 "main.c" 3
   (*(volatile uint8_t *)(0x0681)) 
# 162 "main.c"
                = 
# 162 "main.c" 3
                  0x10
# 162 "main.c"
                         ;
    
# 163 "main.c" 3
   (*(volatile uint8_t *)(0x0681)) 
# 163 "main.c"
                = 
# 163 "main.c" 3
                  0x20
# 163 "main.c"
                         ;
    
# 164 "main.c" 3
   (*(volatile uint8_t *)(0x0682)) 
# 164 "main.c"
                = 
# 164 "main.c" 3
                  0x40
# 164 "main.c"
                         ;
    
# 165 "main.c" 3
   (*(volatile uint8_t *)(0x0681)) 
# 165 "main.c"
                = 
# 165 "main.c" 3
                  0x80
# 165 "main.c"
                         ;
    
# 166 "main.c" 3
   (*(volatile uint8_t *)(0x06A1)) 
# 166 "main.c"
                = 
# 166 "main.c" 3
                  0x01
# 166 "main.c"
                         ;
    
# 167 "main.c" 3
   (*(volatile uint8_t *)(0x06A5)) 
# 167 "main.c"
                = 
# 167 "main.c" 3
                  0x01
# 167 "main.c"
                         ;
    
# 168 "main.c" 3
   (*(volatile uint8_t *)(0x06A1)) 
# 168 "main.c"
                = 
# 168 "main.c" 3
                  0x02
# 168 "main.c"
                         ;
    
# 169 "main.c" 3
   (*(volatile uint8_t *)(0x0642)) 
# 169 "main.c"
                = 
# 169 "main.c" 3
                  0x04
# 169 "main.c"
                         ;
    
# 170 "main.c" 3
   (*(volatile uint8_t *)(0x0641)) 
# 170 "main.c"
                = 
# 170 "main.c" 3
                  0x08
# 170 "main.c"
                         ;
    
# 171 "main.c" 3
   (*(volatile uint8_t *)(0x0645)) 
# 171 "main.c"
                = 
# 171 "main.c" 3
                  0x08
# 171 "main.c"
                         ;
    
# 172 "main.c" 3
   (*(volatile uint8_t *)(0x0641)) 
# 172 "main.c"
                = 
# 172 "main.c" 3
                  0x10
# 172 "main.c"
                         ;
    
# 173 "main.c" 3
   (*(volatile uint8_t *)(0x0645)) 
# 173 "main.c"
                = 
# 173 "main.c" 3
                  0x10
# 173 "main.c"
                         ;
    
# 174 "main.c" 3
   (*(volatile uint8_t *)(0x0641)) 
# 174 "main.c"
                = 
# 174 "main.c" 3
                  0x20
# 174 "main.c"
                         ;
    
# 175 "main.c" 3
   (*(volatile uint8_t *)(0x0642)) 
# 175 "main.c"
                = 
# 175 "main.c" 3
                  0x40
# 175 "main.c"
                         ;
    
# 176 "main.c" 3
   (*(volatile uint8_t *)(0x0641)) 
# 176 "main.c"
                = 
# 176 "main.c" 3
                  0x80
# 176 "main.c"
                         ;




    
# 181 "main.c" 3
   (*(PORT_t *) 0x0640)
# 181 "main.c"
        .REMAP = 
# 181 "main.c" 3
                 0x20
# 181 "main.c"
                            ;
    
# 182 "main.c" 3
   (*(PORT_t *) 0x0680)
# 182 "main.c"
        .REMAP = 
# 182 "main.c" 3
                 0x20
# 182 "main.c"
                            ;

 
# 184 "main.c" 3
(*(SPI_t *) 0x08C0)
# 184 "main.c"
    .CTRL = 
# 184 "main.c" 3
            0x40 
# 184 "main.c"
                          | 
# 184 "main.c" 3
                            0x10
# 184 "main.c"
                                         ;

 
# 186 "main.c" 3
(*(SPI_t *) 0x08C0)
# 186 "main.c"
    .CTRL |= SPI_PRESCALER_DIV4_gc;

 
# 188 "main.c" 3
(*(SPI_t *) 0x0AC0)
# 188 "main.c"
    .CTRL = 
# 188 "main.c" 3
            0x40 
# 188 "main.c"
                          | 
# 188 "main.c" 3
                            0x10
# 188 "main.c"
                                         ;

 
# 190 "main.c" 3
(*(SPI_t *) 0x0AC0)
# 190 "main.c"
    .CTRL |= SPI_PRESCALER_DIV4_gc;
}

static void handle_blink (void) {
    static uint32_t blink_timer1 = 0;
    static uint32_t blink_timer2 = 0;
    static uint32_t blink_timer3 = 0;

    if ((uint32_t)(millis()-blink_timer1) > 1000) {
        blink_timer1 = millis();
        
# 200 "main.c" 3
       (*(volatile uint8_t *)(0x06A7)) 
# 200 "main.c"
                    = 
# 200 "main.c" 3
                      0x04
# 200 "main.c"
                             ;
        printf_P(
# 201 "main.c" 3
                (__extension__({static const char __c[] __attribute__((__progmem__)) = (
# 201 "main.c"
                "Test! Millis: %lu\r\n"
# 201 "main.c" 3
                ); &__c[0];}))
# 201 "main.c"
                                             , millis());
    }

    if ((uint32_t)(millis()-blink_timer2) > 2000) {
        blink_timer2 = millis();
        
# 206 "main.c" 3
       (*(volatile uint8_t *)(0x06A7)) 
# 206 "main.c"
                    = 
# 206 "main.c" 3
                      0x02
# 206 "main.c"
                             ;
    }

    if ((uint32_t)(millis()-blink_timer3) > 4000) {
        blink_timer3 = millis();
        
# 211 "main.c" 3
       (*(volatile uint8_t *)(0x06A7)) 
# 211 "main.c"
                    = 
# 211 "main.c" 3
                      0x08
# 211 "main.c"
                             ;
    }
}

static inline void handle_write(void) {
    static uint32_t wrt_timer = 0;
    FRESULT res;
    FIL file;
    if ( (uint32_t)(millis()-wrt_timer) > 10000) {
        wrt_timer = millis();
        printf_P(
# 221 "main.c" 3
                (__extension__({static const char __c[] __attribute__((__progmem__)) = (
# 221 "main.c"
                "Zapis do pliku\r\n"
# 221 "main.c" 3
                ); &__c[0];}))
# 221 "main.c"
                                          );

        printf_P(
# 223 "main.c" 3
                (__extension__({static const char __c[] __attribute__((__progmem__)) = (
# 223 "main.c"
                "f_open\r\n"
# 223 "main.c" 3
                ); &__c[0];}))
# 223 "main.c"
                                  );
        res = f_open(&file, "test.txt", (0x10 | 0x02));
        if (res != FR_OK) {
            printf_P(
# 226 "main.c" 3
                    (__extension__({static const char __c[] __attribute__((__progmem__)) = (
# 226 "main.c"
                    "f_open error code: %i\r\n"
# 226 "main.c" 3
                    ); &__c[0];}))
# 226 "main.c"
                                                     , res);
            return;
        }

        res = f_lseek(&file, ((&file)->obj.objsize));
        if (res != FR_OK) {
            printf_P(
# 232 "main.c" 3
                    (__extension__({static const char __c[] __attribute__((__progmem__)) = (
# 232 "main.c"
                    "f_lseek error code: %i\r\n"
# 232 "main.c" 3
                    ); &__c[0];}))
# 232 "main.c"
                                                      , res);
            f_close(&file);
            return;
        }
        printf(
# 236 "main.c" 3
              (__extension__({static const char __c[] __attribute__((__progmem__)) = (
# 236 "main.c"
              "f_puts\r\n"
# 236 "main.c" 3
              ); &__c[0];}))
# 236 "main.c"
                                );
        f_puts("Testowy zapis\r\n", &file);

        printf_P(
# 239 "main.c" 3
                (__extension__({static const char __c[] __attribute__((__progmem__)) = (
# 239 "main.c"
                "f_close\r\n"
# 239 "main.c" 3
                ); &__c[0];}))
# 239 "main.c"
                                   );
        f_close(&file);
    }
}