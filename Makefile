# @adjivas - github.com/adjivas. See the LICENSE
# file at the top-level directory of this distribution and at
# https://github.com/adjivas/libftasm/blob/master/LICENSE.
#
# This file may not be copied, modified, or distributed
# except according to those terms.

NAME := libftasm.a
DIRC := src/
INDS := -I./includes/
SRCS := ft_bzero.s
SRCS += ft_strcat.s
SRCS += ft_isprint.s
SRCS += ft_isdigit.s
SRCS += ft_isalpha.s
SRCS += ft_isascii.s
SRCS += ft_isalnum.s
SRCS += ft_isupper.s
SRCS += ft_islower.s
SRCS += ft_toupper.s
SRCS += ft_tolower.s
SRCS += ft_memcpy.s
SRCS += ft_memset.s
SRCS += ft_strlen.s
SRCS += ft_puts.s
SRCS += ft_cat.s
SRCS += ft_puts_red.s
SRCS += ft_puts_green.s
SRCS += ft_strdup.s
LSTC := $(patsubst %,$(DIRC)%,$(SRCS))
OBJO := $(LSTC:.s=.o)
FBIN := macho64
NASM := $(HOME)/nasm

.PHONY: default all clean fclean re

default: all

all: $(NAME)
	@/bin/echo "builded $(NAME)"

$(NAME): $(OBJO)
	@ar rc $(NAME) $(OBJO)
	@ranlib $(NAME)

%.o: %.s
	@$(NASM) -f $(FBIN) $^

clean:
	@/bin/rm -f $(OBJO)

fclean: clean
	@/bin/rm -f $(NAME)

re: fclean all
