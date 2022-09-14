	.file	"hello.cc"
 # GNU C++17 (Rev1, Built by MSYS2 project) version 12.2.0 (x86_64-w64-mingw32)
 #	compiled by GNU C version 12.2.0, GMP version 6.2.1, MPFR version 4.1.0-p13, MPC version 1.2.1, isl version isl-0.25-GMP

 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed: -mtune=generic -march=x86-64 -g -O2
	.text
.Ltext0:
	.file 0 "E:/workspace_asm/hello-world" "hello.cc"
	.section	.text$_Z6printfPKcz,"x"
	.linkonce discard
	.p2align 4
	.globl	_Z6printfPKcz
	.def	_Z6printfPKcz;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z6printfPKcz
_Z6printfPKcz:
.LVL0:
.LFB8:
	.file 1 "C:/msys64/mingw64/include/stdio.h"
	.loc 1 369 1 view -0
	.loc 1 369 1 is_stmt 0 view .LVU1
	pushq	%rsi	 #
	.seh_pushreg	%rsi
.LCFI0:
	pushq	%rbx	 #
	.seh_pushreg	%rbx
.LCFI1:
	subq	$56, %rsp	 #,
	.seh_stackalloc	56
.LCFI2:
	.seh_endprologue
	.loc 1 370 3 is_stmt 1 view .LVU2
	.loc 1 371 3 view .LVU3
	.loc 1 371 35 view .LVU4
 # C:/msys64/mingw64/include/stdio.h:371:   __builtin_va_list __local_argv; __builtin_va_start( __local_argv, __format );
	.loc 1 371 53 is_stmt 0 view .LVU5
	leaq	88(%rsp), %rsi	 #, tmp86
 # C:/msys64/mingw64/include/stdio.h:369: {
	.loc 1 369 1 view .LVU6
	movq	%rdx, 88(%rsp)	 #,
	movq	%rcx, %rbx	 # tmp89, __format
 # C:/msys64/mingw64/include/stdio.h:372:   __retval = __mingw_vfprintf( stdout, __format, __local_argv );
	.loc 1 372 30 view .LVU7
	movl	$1, %ecx	 #,
.LVL1:
 # C:/msys64/mingw64/include/stdio.h:369: {
	.loc 1 369 1 view .LVU8
	movq	%r8, 96(%rsp)	 #,
	movq	%r9, 104(%rsp)	 #,
 # C:/msys64/mingw64/include/stdio.h:371:   __builtin_va_list __local_argv; __builtin_va_start( __local_argv, __format );
	.loc 1 371 53 view .LVU9
	movq	%rsi, 40(%rsp)	 # tmp86, MEM[(char * *)&__local_argv]
	.loc 1 372 3 is_stmt 1 view .LVU10
 # C:/msys64/mingw64/include/stdio.h:372:   __retval = __mingw_vfprintf( stdout, __format, __local_argv );
	.loc 1 372 30 is_stmt 0 view .LVU11
	call	*__imp___acrt_iob_func(%rip)	 #
.LVL2:
	movq	%rsi, %r8	 # tmp86,
	movq	%rbx, %rdx	 # __format,
	movq	%rax, %rcx	 # tmp90, _5
	call	__mingw_vfprintf	 #
.LVL3:
	.loc 1 373 3 is_stmt 1 view .LVU12
	.loc 1 374 3 view .LVU13
 # C:/msys64/mingw64/include/stdio.h:375: }
	.loc 1 375 1 is_stmt 0 view .LVU14
	addq	$56, %rsp	 #,
.LCFI3:
	popq	%rbx	 #
.LCFI4:
.LVL4:
	.loc 1 375 1 view .LVU15
	popq	%rsi	 #
.LCFI5:
	ret	
.LFE8:
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "Hello, World!\0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB46:
	.file 2 "hello.cc"
	.loc 2 3 12 is_stmt 1 view -0
	subq	$40, %rsp	 #,
	.seh_stackalloc	40
.LCFI6:
	.seh_endprologue
 # hello.cc:3: int main() {
	.loc 2 3 12 is_stmt 0 view .LVU17
	call	__main	 #
.LVL5:
	.loc 2 4 2 is_stmt 1 view .LVU18
 # hello.cc:4: 	printf("Hello, World!");
	.loc 2 4 8 is_stmt 0 view .LVU19
	leaq	.LC0(%rip), %rcx	 #, tmp83
	call	_Z6printfPKcz	 #
.LVL6:
	.loc 2 6 2 is_stmt 1 view .LVU20
 # hello.cc:7: }
	.loc 2 7 1 is_stmt 0 view .LVU21
	xorl	%eax, %eax	 #
	addq	$40, %rsp	 #,
.LCFI7:
	ret	
.LFE46:
	.seh_endproc
	.section	.debug_frame,"dr"
.Lframe0:
	.long	.LECIE0-.LSCIE0
.LSCIE0:
	.long	0xffffffff
	.byte	0x3
	.ascii "\0"
	.uleb128 0x1
	.sleb128 -8
	.uleb128 0x10
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x1
	.align 8
.LECIE0:
.LSFDE0:
	.long	.LEFDE0-.LASFDE0
.LASFDE0:
	.secrel32	.Lframe0
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.byte	0x4
	.long	.LCFI0-.LFB8
	.byte	0xe
	.uleb128 0x10
	.byte	0x84
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x50
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xc3
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xc4
	.byte	0xe
	.uleb128 0x8
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.secrel32	.Lframe0
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.byte	0x4
	.long	.LCFI6-.LFB46
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x8
	.align 8
.LEFDE2:
	.text
.Letext0:
	.file 3 "C:/msys64/mingw64/include/vadefs.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x339
	.word	0x5
	.byte	0x1
	.byte	0x8
	.secrel32	.Ldebug_abbrev0
	.uleb128 0x9
	.ascii "GNU C++17 12.2.0 -mtune=generic -march=x86-64 -g -O2\0"
	.byte	0x21
	.secrel32	.LASF0
	.secrel32	.LASF1
	.secrel32	.LLRL2
	.quad	0
	.secrel32	.Ldebug_line0
	.uleb128 0x5
	.ascii "__gnuc_va_list\0"
	.byte	0x3
	.byte	0x18
	.byte	0x1d
	.long	0x72
	.uleb128 0xa
	.byte	0x8
	.ascii "__builtin_va_list\0"
	.long	0x8a
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0xb
	.long	0x8a
	.uleb128 0x5
	.ascii "va_list\0"
	.byte	0x3
	.byte	0x1f
	.byte	0x1a
	.long	0x5b
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x6
	.long	0x8a
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.ascii "wchar_t\0"
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0xc
	.ascii "_iobuf\0"
	.byte	0x30
	.byte	0x1
	.byte	0x21
	.byte	0xa
	.long	0x1c9
	.uleb128 0x2
	.ascii "_ptr\0"
	.byte	0x25
	.byte	0xb
	.long	0xfb
	.byte	0
	.uleb128 0x2
	.ascii "_cnt\0"
	.byte	0x26
	.byte	0x9
	.long	0xe8
	.byte	0x8
	.uleb128 0x2
	.ascii "_base\0"
	.byte	0x27
	.byte	0xb
	.long	0xfb
	.byte	0x10
	.uleb128 0x2
	.ascii "_flag\0"
	.byte	0x28
	.byte	0x9
	.long	0xe8
	.byte	0x18
	.uleb128 0x2
	.ascii "_file\0"
	.byte	0x29
	.byte	0x9
	.long	0xe8
	.byte	0x1c
	.uleb128 0x2
	.ascii "_charbuf\0"
	.byte	0x2a
	.byte	0x9
	.long	0xe8
	.byte	0x20
	.uleb128 0x2
	.ascii "_bufsiz\0"
	.byte	0x2b
	.byte	0x9
	.long	0xe8
	.byte	0x24
	.uleb128 0x2
	.ascii "_tmpfname\0"
	.byte	0x2c
	.byte	0xb
	.long	0xfb
	.byte	0x28
	.byte	0
	.uleb128 0x5
	.ascii "FILE\0"
	.byte	0x1
	.byte	0x2f
	.byte	0x19
	.long	0x141
	.uleb128 0x7
	.ascii "__mingw_vfprintf\0"
	.byte	0xc1
	.byte	0xf
	.long	0xe8
	.long	0x202
	.uleb128 0x3
	.long	0x202
	.uleb128 0x3
	.long	0x207
	.uleb128 0x3
	.long	0x97
	.byte	0
	.uleb128 0x6
	.long	0x1c9
	.uleb128 0x6
	.long	0x92
	.uleb128 0x7
	.ascii "__acrt_iob_func\0"
	.byte	0x5d
	.byte	0x17
	.long	0x202
	.long	0x22d
	.uleb128 0x3
	.long	0x10b
	.byte	0
	.uleb128 0xd
	.ascii "main\0"
	.byte	0x2
	.byte	0x3
	.byte	0x5
	.long	0xe8
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x279
	.uleb128 0xe
	.quad	.LVL5
	.long	0x32d
	.uleb128 0x8
	.quad	.LVL6
	.long	0x279
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.byte	0
	.uleb128 0xf
	.ascii "printf\0"
	.byte	0x1
	.word	0x170
	.byte	0x5
	.ascii "_Z6printfPKcz\0"
	.long	0xe8
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x32d
	.uleb128 0x10
	.ascii "__format\0"
	.byte	0x1
	.word	0x170
	.byte	0x19
	.long	0x207
	.secrel32	.LLST0
	.secrel32	.LVUS0
	.uleb128 0x11
	.uleb128 0x12
	.ascii "__retval\0"
	.byte	0x1
	.word	0x172
	.byte	0x7
	.long	0xe8
	.secrel32	.LLST1
	.secrel32	.LVUS1
	.uleb128 0x13
	.ascii "__local_argv\0"
	.byte	0x1
	.word	0x173
	.byte	0x15
	.long	0x72
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.quad	.LVL2
	.long	0x20c
	.long	0x312
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x8
	.quad	.LVL3
	.long	0x1d6
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.ascii "__main\0"
	.ascii "__main\0"
	.byte	0
	.section	.debug_abbrev,"dr"
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"dr"
	.long	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.word	0x5
	.byte	0x8
	.byte	0
	.long	0
.Ldebug_loc0:
.LVUS0:
	.uleb128 0
	.uleb128 .LVU8
	.uleb128 .LVU8
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 0
.LLST0:
	.byte	0x6
	.quad	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL1-.LVL0
	.uleb128 .LVL4-.LVL0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL4-.LVL0
	.uleb128 .LFE8-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 .LVU12
	.uleb128 0
.LLST1:
	.byte	0x8
	.quad	.LVL3
	.uleb128 .LFE8-.LVL3
	.uleb128 0x1
	.byte	0x50
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"dr"
	.long	0x3c
	.word	0x2
	.secrel32	.Ldebug_info0
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.quad	0
	.quad	0
	.section	.debug_rnglists,"dr"
.Ldebug_ranges0:
	.long	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.word	0x5
	.byte	0x8
	.byte	0
	.long	0
.LLRL2:
	.byte	0x7
	.quad	.LFB8
	.uleb128 .LFE8-.LFB8
	.byte	0x7
	.quad	.LFB46
	.uleb128 .LFE46-.LFB46
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"dr"
.Ldebug_line0:
	.section	.debug_str,"dr"
	.section	.debug_line_str,"dr"
.LASF1:
	.ascii "E:\\workspace_asm\\hello-world\0"
.LASF0:
	.ascii "hello.cc\0"
	.ident	"GCC: (Rev1, Built by MSYS2 project) 12.2.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
