- [hello-world](#hello-world)
  - [1. Experiment 1](#1-experiment-1)
  - [2. Experiment 2](#2-experiment-2)
    - [`file.c`](#filec)
    - [Commands](#commands)
  - [3. Disassembly](#3-disassembly)
  - [4. Investigate the *function call*](#4-investigate-the-function-call)
  - [5. Microsoft assembler `ml64.exe`](#5-microsoft-assembler-ml64exe)
    - [Console App](#console-app)
    - [Windows App](#windows-app)
      - [A *MessageBox*](#a-messagebox)
      - [A *Window*](#a-window)
  - [Handling *markdown* article](#handling-markdown-article)
  - [x64 Assembly](#x64-assembly)

# hello-world

Learn assembly language by getting assembler output of c source codes. Then crafting the assembly programming by hand.

* [stackoverflow](https://stackoverflow.com/questions/137038/how-do-you-get-assembler-output-from-c-c-source-in-gcc)
* [hello asm](https://stackoverflow.com/questions/7190050/how-do-i-compile-the-asm-generated-by-gcc)
* [gcc and objdump](https://tuttlem.github.io/2015/01/12/a-simple-example-with-gcc-and-objdump.html)

## 1. Experiment 1

```sh
# create assembler code:
$ g++ -S -fverbose-asm -g -O2 hello.cc -o hello.s
# create asm interlaced with source lines:
$ as -alhnd hello.s > hello.lst

$ gcc hello.s -o hello
$ ./hello
Hello, World!
```

## 2. Experiment 2

### `file.c`

```c
#include <stdio.h>

int main(int argc, char** argv){
  printf("Hello World\n");
  return 0;
}
```

### Commands

```sh
$ gcc file.c -S -o file.S
$ gcc file.S -o hello2
$ ./hello2
Hello World

```

## 3. Disassembly

```sh
$ objdump --disassemble-all --section=.rdata -M intel hello2.exe > hello-disasm_01.s

$ objdump -d -M intel -S hello2.exe > hello-disasm_02.s
```

## 4. Investigate the *function call*

```sh
$ gcc -S -o func-call.s func-call.c 
$ gcc func-call.s -o func-call
$ objdump -d -M intel -S func-call.exe > func-call_disasm.s

$ gcc -S -o simple.s simple.c 
$ gcc -o simple simple.s
$ ./simple.exe 

$ gcc -o simple simple2.s
```

## 5. Microsoft assembler `ml64.exe`

### Console App

x64 Native Tools Command Prompt for VS 2017:

```sh
E:\workspace_asm\hello-world>ml64.exe HelloWorld.asm /link /subsystem:console /defaultlib:kernel32.lib /entry:main
Microsoft (R) Macro Assembler (x64) Version 14.16.27045.0
Copyright (C) Microsoft Corporation.  All rights reserved.

 Assembling: HelloWorld.asm
Microsoft (R) Incremental Linker Version 14.16.27045.0
Copyright (C) Microsoft Corporation.  All rights reserved.

/OUT:HelloWorld.exe
HelloWorld.obj
/subsystem:console
/defaultlib:kernel32.lib
/entry:main

E:\workspace_asm\hello-world>HelloWorld.exe
Hello x64 World!

$ objdump -d -M intel -S HelloWorld.exe > HelloWorld.lst
```

![ml64.exe](img/ml64.exe.jpg)

### Windows App

- [x64 Assembly](https://www.codeproject.com/Articles/17263/Moving-to-Windows-Vista-x64#x64_Assembly)

#### A *MessageBox*

x64 Native Tools Command Prompt for VS 2017:

```sh
E:\workspace_asm\hello-world>ml64.exe HelloWorld2.asm /link /subsystem:windows /defaultlib:kernel32.lib /defaultlib:user32.lib /entry:Main
Microsoft (R) Macro Assembler (x64) Version 14.16.27045.0
Copyright (C) Microsoft Corporation.  All rights reserved.

 Assembling: HelloWorld2.asm
Microsoft (R) Incremental Linker Version 14.16.27045.0
Copyright (C) Microsoft Corporation.  All rights reserved.

/OUT:HelloWorld2.exe
HelloWorld2.obj
/subsystem:windows
/defaultlib:kernel32.lib
/defaultlib:user32.lib
/entry:Main

E:\workspace_asm\hello-world>HelloWorld2.exe
```

Output:
![Win App](img/Win-HelloWorld.jpg)

#### A *Window*

x64 Native Tools Command Prompt for VS 2017:

```sh
E:\workspace_asm\hello-world>ml64.exe Test.asm /link /subsystem:windows /defaultlib:kernel32.lib /defaultlib:user32.lib /entry:Main samples\test\test.res
Microsoft (R) Macro Assembler (x64) Version 14.16.27045.0
Copyright (C) Microsoft Corporation.  All rights reserved.

 Assembling: Test.asm
Microsoft (R) Incremental Linker Version 14.16.27045.0
Copyright (C) Microsoft Corporation.  All rights reserved.

/OUT:Test.exe
Test.obj
/subsystem:windows
/defaultlib:kernel32.lib
/defaultlib:user32.lib
/entry:Main
samples\test\test.res

E:\workspace_asm\hello-world>Test.exe
```

Output:
![A Window](img/Win-TestRes.jpg)

## Handling *markdown* article

VSCode extensions:

* ![Markdown All-in-One](img/VSCode-Ext_Markdown-All-in-One.jpg)
* ![Marksdown PDF](img/VSCode-Ext_Markdown-PDF.jpg)

> Press `Ctl-Shift-P` to show the **Command Palette**.
![VSCode Command Palette](img/VSCode_CommandPalette.jpg)

## x64 Assembly

- [AMD64 documentation](http://www.amd.com/us-en/Processors/DevelopWithAMD/0,,30_2252_739_7044,00.html)

Registers in the x64 syntax:

- 8 new general-purpose registers (GPRs).
- 8 new 128-bit XMM registers.

Of course, all general-purpose registers are 64 bits wide. The old ones we already knew are easy to recognize in their 64-bit form: rax, rbx, rcx, rdx, rsi, rdi, rbp, rsp (and rip if we want to count the instruction pointer). These old registers can still be accessed in their smaller bit ranges, for instance: rax, eax, ax, ah, al. The new registers go from r8 to r15, and can be accessed in their various bit ranges like this: r8 (qword), r8d (dword), r8w (word), r8b (low byte).

![x64 registers](img/x64_registers.jpg)

Applications can still use segments registers as base for addressing, but the 64-bit mode only recognizes three of the old ones (and only two can be used for base address calculations). Here's another figure:

![x64 Segments](img/x64_segments.jpg)

And now, the most important things. Calling convention and stack. x64 assembly uses FASTCALLs as calling convention, meaning it uses registers to pass the first 4 parameters (and then the stack). Thus, the stack frame is made of: the stack parameters, the registers parameters, the return address (which I remind you is a qword) and the local variables. The first parameter is the rcx register, the second one rdx, the third r8 and the fourth r9. Saying that the parameters registers are part of the stack frame, makes it also clear that any function that calls another child function has to initialize the stack providing space for these four registers, even if the parameters passed to the child function are less than four. The initialization of the stack pointer is done only in the prologue of a function, it has to be large enough to hold all the arguments passed to child functions and it's always a duty of the caller to clean the stack. Now, the most important thing to understand how the space is provided in the stack frame is that the stack has to be 16-byte aligned. In fact, the return address has to be aligned to 16 bytes. So, the stack space will always be something like 16n + 8, where n depends on the number of parameters. Here's a small figure of a stack frame:

![Stack Frame](img/stackframe.jpg)
