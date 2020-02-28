# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: novan-ve <novan-ve@student.codam.nl>         +#+                      #
#                                                    +#+                       #
#    Created: 2020/02/16 22:56:50 by novan-ve       #+#    #+#                 #
#    Updated: 2020/02/17 17:05:54 by novan-ve      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

SRCS = ft_strlen.s \
		ft_strcmp.s \
		ft_strcpy.s \
		ft_strdup.s \
		ft_read.s \
		ft_write.s

OBJS = $(SRCS:%.s=%.o)

ASM = nasm

FLAGS = -f macho64

all: $(NAME)

$(NAME):
	$(ASM) $(FLAGS) ft_strlen.s
	$(ASM) $(FLAGS) ft_strcmp.s
	$(ASM) $(FLAGS) ft_strcpy.s
	$(ASM) $(FLAGS) ft_strdup.s
	$(ASM) $(FLAGS) ft_write.s
	$(ASM) $(FLAGS) ft_read.s
	ar rc $(NAME) $(OBJS)

test: $(NAME)
	gcc -L. -lasm main.c

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all
