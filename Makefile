# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cboussau <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/11/23 17:41:56 by cboussau          #+#    #+#              #
#    Updated: 2017/10/23 15:57:27 by cboussau         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a

SRCS = ft_bzero.s ft_isalnum.s ft_isalpha.s ft_isascii.s ft_isdigit.s\
	   ft_isprint.s ft_memcpy.s ft_memset.s ft_strcat.s ft_strdup.s\
	   ft_strlen.s ft_tolower.s ft_toupper.s ft_puts.s ft_strcpy.s\
	   ft_cat.s ft_putstr.s ft_strcmp.s ft_isspace.s ft_strchr.s

OBJS = $(SRCS:.s=.o)
INCLUDE = ./include/
RM = rm -rf
CFLAGS = -Wall -Wextra -Werror -g

all: $(NAME)
	
$(NAME): $(OBJS)
	@ar rcs $@ $^
	@ranlib $(NAME)

%.o: %.s
	@nasm -f macho64 $< -o $@ -I $(INCLUDE)

clean:
	$(RM) $(OBJS)

fclean:clean
	$(RM) $(NAME)

re:fclean all

.PHONY: all clean fclean re
