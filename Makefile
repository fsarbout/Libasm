# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fsarbout <fsarbout@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/26 13:22:11 by fsarbout          #+#    #+#              #
#    Updated: 2021/02/09 10:41:00 by fsarbout         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

SRCS = ./srcs/ft_strcmp.s\
	./srcs/ft_strlen.s\
	./srcs/ft_write.s\
	./srcs/ft_read.s\
	./srcs/ft_strcpy.s\
	./srcs/ft_strdup.s

OBJ = $(SRCS:.s=.o)

NASM = nasm -f macho64

all :$(NAME)

$(NAME): $(OBJ)
		@ar rc $(NAME) $(OBJ)
		@ranlib $(NAME)
			 
%.o: %.s
	@$(NASM) $^

clean :
	@rm -rf $(OBJ)

fclean : clean
	@rm -rf $(NAME)

re : fclean all

run:
	@gcc main.c -L. -lasm $(NAME) -Wl,-no_pie -o libasm