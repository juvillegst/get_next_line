SRC = ft_printf.c ft_printhexa.c ft_printnums.c ft_printuns.c ft_printhexap.c

NAME = libftprintf.a
OBJ = $(SRC:.c=.o)
CFLAGS = -Wall -Werror -Wextra

all:$(NAME)

$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)

clean:
	rm -f $(OBJ)

fclean:
	rm -f $(NAME) $(OBJ)

re: fclean all

.PHONY: clean fclean re all
