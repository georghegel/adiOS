SRC = ./bootloader/loader.asm

NAME = adiOS

NASM = nasm $(SRC) -f bin -o $(NAME)

QEMU = qemu-system-x86_64 $(NAME) --nographic

all: adiOS_compile

adiOS_virt: adiOS_compile
	$(QEMU)

adiOS_compile:
	$(NASM)

clean:
	@rm -rf adiOS