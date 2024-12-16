# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mdezitte <mdezitte@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/10 10:00:41 by mressier          #+#    #+#              #
#    Updated: 2017/05/29 13:05:00 by mressier         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = project_name

ifdef DEBUG
	FLAGS = -Wall -Werror -Wextra -g
else
	FLAGS = -Wall -Werror -Wextra
endif

LIB = libZ
LIB_DIR = libZ/

FLAGS = -Wall -Wextra -Werror
LIBRAIRIES =  -L $(LIB_DIR) -lZ
INCLUDES = -I ./includes -I $(LIB_DIR)/includes

C_DIR =	sources/

O_DIR =	.tmp/

### To complete ###

CORE = main.c

SRC_CORE = $(addprefix $(C_DIR)core/, $(CORE))

## centralize

C_FILES = $(SRC_CORE) $(SRC_STRUCT) $(SRC_GRAPHIC)
O_FILES = $(C_FILES:%.c=$(O_DIR)%.o)

###	   End		###

all: prepare compile_lib inform_compil $(NAME)

prepare:
	@mkdir -p $(O_DIR)sources/core

$(NAME): $(O_FILES)
	@gcc $(FLAGS) -o $(NAME) $(O_FILES) $(LIBRAIRIES)
	@printf "\r[\033[32m CREATED \033[0m]     \033[33m$(NAME)\033[0m\n"


$(O_DIR)%.o: %.c
	@tput civis
	@mkdir -p $(O_DIR)
	@printf "[\033[32m $(NAME) \033[0m]\t\033[33m$<\033[0m\\n" | sed 's@$(C_DIR)@@'
	@gcc $(INCLUDES) $(FLAGS) -o $@ -c $<
	@tput cnorm

compile_lib:
	@make -C $(LIB_DIR)

inform_compil:
	@echo "\033[36m\nCompiling $(NAME) :\033[39m\n"

clean:
	@echo "[ \033[32mCLEAN \033[0m] \033[33mRemove all objets in $(NAME)\033[0m"
	@make -C $(LIB_DIR) clean
	@rm -rf $(O_DIR)

fclean: clean
	@echo "[ \033[32mCLEAN \033[0m] \033[33mRemove all files in $(NAME)\033[0m"
	@rm -rf $(NAME)
	@rm -rf .tmp/
	@make -C $(LIB_DIR) fclean

re: fclean all
