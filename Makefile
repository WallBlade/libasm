NAME = libasm.a
CC = nasm
CFLAGS = -f elf64
AR = ar rcs
RM = rm -f

ASM_SRCS = ft_strlen.s ft_strcpy.s ft_strcmp.s
# ft_write.s ft_read.s ft_strdup.s
ASM_OBJS = $(ASM_SRCS:.s=.o)

BONUS_SRCS = ft_atoi_base_bonus.s ft_list_push_front_bonus.s ft_list_size_bonus.s ft_list_sort_bonus.s ft_list_remove_if_bonus.s
BONUS_OBJS = $(BONUS_SRCS:.s=.o)

# C part for the main file
MAIN_SRC = main.c
MAIN_OBJ = $(MAIN_SRC:.c=.o)
GCC = gcc
GCCFLAGS = -Wall -Wextra -Werror

%.o: %.s
	$(CC) $(CFLAGS) $< -o $@

all: $(NAME)

$(NAME): $(ASM_OBJS)
	$(AR) $(NAME) $(ASM_OBJS)

bonus: $(ASM_OBJS) $(BONUS_OBJS)
	$(AR) $(NAME) $(ASM_OBJS) $(BONUS_OBJS)

main: $(NAME) $(MAIN_OBJ)
	$(GCC) $(GCCFLAGS) $(MAIN_OBJ) $(NAME) -o main

%.o: %.c
	$(GCC) $(GCCFLAGS) -c $< -o $@

clean:
	$(RM) $(ASM_OBJS) $(BONUS_OBJS) $(MAIN_OBJ)

fclean: clean
	$(RM) $(NAME) main

re: fclean all
