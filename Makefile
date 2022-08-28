# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: roferrei <roferrei@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/28 05:15:55 by roferrei          #+#    #+#              #
#    Updated: 2022/08/28 05:25:58 by roferrei         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS	=	

CC	=	gcc

RM	=	rm -f

OBJS	= ${SRCS:.c=.o}

CFLAGS	=	-Wall -Wextra -Werror

NAME	=	libftprintf.a

all:			$(NAME)

$(NAME):		$(OBJS)
				ar rcs $(NAME) $(OBJS)

clean:
				$(RM) $(OBJS)

fclean:			clean
				$(RM) $(NAME)

re:				fclean $(NAME)

.PHONY:			all clean fclean re
