![adiOS logo](./img/mexlogo.png)
# adiOS

<b>A</b>ttractive <b>D</b>igital <b>I</b>nterface <b>O</b>perating <b>S</b>ystem<br><br>
<b>adiOS</b> is a simple Operating System kernel, written on C and Assembly x86-64.

[//]: # (## Contents)

Translate it via nasm to bin file:
```shell
nasm boot_sect.asm -f bin -o boot_sect.bin
```

Launch kernel on qemu emulator (tested on macOS, for other OS' command should differ):
```shell
qemu-system-x86_64 boot_sect.bin --nographic
```