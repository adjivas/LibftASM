/*
 *
 * @adjivas - github.com/adjivas. See the LICENSE
 * file at the top-level directory of this distribution and at
 * https://github.com/adjivas/libftasm/blob/master/LICENSE.
 *
 * This file may not be copied, modified, or distributed
 * except according to those terms.
 *
 */

#ifndef LIBFTASM_H
# define LIBFTASM_H

# include <limits.h>

  /*
   * The libftasm's functions.
   */

  char *ft_bzero(void *, unsigned int);
  char *ft_strcat(char *, const char *);
  unsigned long ft_strlen(void *);
  int ft_isprint(int);
  int ft_isdigit(int);
  int ft_isalnum(int);
  int ft_isascii(int);
  int ft_isalpha(int);
  int ft_toupper(int);
  int ft_tolower(int);
  void *ft_memset(void *, int, unsigned int);
  void *ft_memcpy(void *, void *, unsigned int);
  int ft_puts(const char *);
  int ft_puts_green(const char *);
  int ft_puts_red(const char *);
  char *ft_strdup(const char *);
  int ft_cat(int);

#endif /* !LIBFTASM_H */
