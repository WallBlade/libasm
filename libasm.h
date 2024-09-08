# ifndef __LIBASM_H__
# define __LIBASM_H__

# include <stddef.h>
# include <unistd.h>
# include <errno.h>
# include <string.h>
# include <stdlib.h>
# include <stdio.h>

extern size_t	ft_strlen(const char *str);
extern char *ft_strcpy(char *dest, const char *src);
extern int	ft_strcmp(const char *s1, const char *s2);

# endif