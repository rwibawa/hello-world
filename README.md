- [hello-world](#hello-world)
  - [1. Experiment 1](#1-experiment-1)
  - [2. Experiment 2](#2-experiment-2)
    - [`file.c`](#filec)
    - [Commands](#commands)
  - [3. Disassembly](#3-disassembly)
  - [4. Investigate the *function call*](#4-investigate-the-function-call)
  - [5. Microsoft assembler `ml64.exe`](#5-microsoft-assembler-ml64exe)
  - [Handling *markdown* article](#handling-markdown-article)


# hello-world

get assembler output from c source in gcc

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

```sh
$ export PATH=$PATH:/c/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio/2017/BuildTools/VC/Tools/MSVC/14.16.27023/bin/Hostx64/x64

$ ml64.exe HelloWorld.asm /link /subsystem:console /defaultlib:kernel32.lib /entry:main
Microsoft (R) Macro Assembler (x64) Version 14.16.27045.0
Copyright (C) Microsoft Corporation.  All rights reserved.

 Assembling: HelloWorld.asm
Microsoft (R) Macro Assembler (x64) Version 14.16.27045.0
Copyright (C) Microsoft Corporation.  All rights reserved.

 Assembling: Files
MASM : fatal error A1000:cannot open file : Files
```

## Handling *markdown* article

VSCode extensions:

* ![Markdown All-in-One](img/VSCode-Ext_Markdown-All-in-One.jpg)
* ![Marksdown PDF](img/VSCode-Ext_Markdown-PDF.jpg)

> Press `Ctl-Shift-P` to show the **Command Palette**.
![VSCode Command Palette](img/VSCode_CommandPalette.jpg)
