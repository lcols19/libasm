NAME=libasm.a

SRCS= $(wildcard *.asm)
NASM= nasm

ASMFLAGS= -f elf32 -o $(NAME)

$(NAME): $(OBJS)

%.o: %.asm
	$(NASM) $(SRCS) $()

all:

clean:
	rm -rf $(OBJS)
fclean:	clean
	rm -rf $(NAME)
re:	fclean all clean