# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tcase <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/04/06 11:31:10 by tcase             #+#    #+#              #
#    Updated: 2019/11/12 20:41:21 by tcase            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME		=libfts.a

CC=			gcc
CC_ASM=		nasm
FLAGS=		-Wall -Werror -Wextra

SRC_DIR=	./src
OBJ_DIR=	./obj

SRC_NAME= 	ft_bzero.s\
			ft_putstr.s\
			ft_strlen.s

SRC= 		$(addprefix $(OBJ_DIR)/, $(SRC_NAME:.s=.o))
OBJ=		$(SRC) 
INC =		-I ./inc

all: $(NAME)

$(NAME) : $(OBJ)
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)
	@printf "\033[0m\033[35m%-40s\033[1m\033[34m%s\033[0m\n" "Compilation" "Done"

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.s
	@mkdir -p $(OBJ_DIR)
	@$(CC_ASM) -f elf64 -o $@ $<
	@printf "\033[0m\033[36m%-40s\033[1m\033[34m%s\033[0m\n" "$(notdir $<)" "Done"

test: $(NAME) main.c
	$(CC) main.c $(INC) ./libfts.a -o test

clean:
	@rm -f $(OBJ)
	@printf "\033[0m\033[33m%-40s\033[1m\033[34m%s\033[0m\n" "Clean" "Done"

fclean: clean
	@rm -rf $(NAME) 
	@printf "\033[0m\033[33m%-40s\033[1m\033[34m%s\033[0m\n" "Full Clean" "Done"

re:	fclean all

.PHONY: all, clean, fclean, re
