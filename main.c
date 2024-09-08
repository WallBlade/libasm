#include "libasm.h"

void main_ft_strlen()
{
		char *str = "Hello, World!";
		printf("ft_strlen(\"%s\") = %ld\n", str, ft_strlen(str));
}

void	main_ft_strcpy()
{
		char *src = "Hello, World!";
		char dest[100];
		printf("ft_strcpy(\"%s\") = %s\n", src, ft_strcpy(dest, src));
}

void	main_ft_strcmp()
{
		char *s1 = "Hello, World!";
		char *s2 = "Hello, World";
		printf("ft_strcmp(\"%s\", \"%s\") = %d\n", s1, s2, ft_strcmp(s1, s2));
		printf("strcmp(\"%s\", \"%s\") = %d\n", s1, s2, strcmp(s1, s2));
}

int main()
{
		// main_ft_strlen();
		// main_ft_strcpy();
		main_ft_strcmp();
		return 0;
}