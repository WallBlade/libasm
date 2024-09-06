#include "libasm.h"

void main_strlen()
{
		char *str = "Hello, World!";
		printf("ft_strlen(\"%s\") = %ld\n", str, ft_strlen(str));
}

void	main_strcpy()
{
		char *src = "Hello, World!";
		char dest[100];
		printf("ft_strcpy(\"%s\") = %s\n", src, ft_strcpy(dest, src));
}

int main()
{
		main_strcpy();
		return 0;
}