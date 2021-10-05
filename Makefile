# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nlaurids <nlaurids@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/10/23 16:28:59 by nlaurids          #+#    #+#              #
#    Updated: 2021/10/05 17:46:31 by nlaurids         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= libasm.a

SRCS		= ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s

OBJS		= $(SRCS:.s=.o)

ASM			= nasm

ASMFLAGS	= -f macho64

%.o: %.s
	 $(ASM) $(ASMFLAGS) $<

all: $(NAME)

$(NAME): $(OBJS)
		 ar rc $(NAME) $(OBJS)

clean:
		 rm -f $(OBJS)

fclean: clean
		 rm -f $(NAME)

re: fclean all

.PHONY = all clean fclean re