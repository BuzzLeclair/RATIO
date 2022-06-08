##
## EPITECH PROJECT, 2022
## solostumper
## File description:
## makefile
##

SRC	=	main.c	\

TEMP	=	$(shell find . -name "*~" -name "#*#")

OBJ	=	$(SRC:.c=.o)

FLAG	=	-Wall -Wextra -pedantic -g3

NAME	=	a.out

all:		$(NAME)

$(NAME):
	gcc -o $(NAME) $(FLAG) $(SRC)

lib:
	make -C lib
	make clean -C lib

clean:
	rm -f $(OBJ)
	rm -f $(TEMP)

fclean:		clean
		rm -f $(NAME)

re:		fclean all


.PHONY: all fclean re clean lib
