#include "libfta.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void	test_ft_bzero(void)
{
	char 	line[10];
	int		i;

	ft_memset(line, 1, 10);
	i = 0;
	while (i < 10)
		putchar(line[i++] + '0');
	ft_bzero(line, 10);
	putchar('\n');
	i = 0;
	while (i < 10)
		putchar(line[i++] + '0');
	putchar('\n');
}

void	test_ft_isalpha(void)
{
	char ch = 'A';
	
	printf("%c? ", ch);
	if (ft_isalpha(ch))
		printf("Yes");
	else
		printf("No");
	printf("\n");

	ch = '1';
	printf("%c? ", ch);
	if (ft_isalpha(ch))
		printf("Yes");
	else
		printf("No");
	printf("\n");
}	

void	test_ft_isdigit(void)
{
	char ch = 'A';
	
	printf("%c? ", ch);
	if (ft_isdigit(ch))
		printf("Yes");
	else
		printf("No");
	printf("\n");

	ch = '1';
	printf("%c? ", ch);
	if (ft_isdigit(ch))
		printf("Yes");
	else
		printf("No");
	printf("\n");
}	

void	test_ft_isalnum(void)
{
	char ch = 'A';
	
	printf("%c? ", ch);
	if (ft_isalnum(ch))
		printf("Yes");
	else
		printf("No");
	printf("\n");

	ch = '1';
	printf("%c? ", ch);
	if (ft_isalnum(ch))
		printf("Yes");
	else
		printf("No");
	printf("\n");

	ch = '!';
	printf("%c? ", ch);
	if (ft_isalnum(ch))
		printf("Yes");
	else
		printf("No");
	printf("\n");
}

void	test_ft_tolowerupper(void)
{
	char ch;

	ch = 'a';
	printf("%c - lower - %c - upper - %c\n", ch, ft_tolower(ch), ft_toupper(ch));
	ch = 'A';
	printf("%c - lower - %c - upper - %c\n", ch, ft_tolower(ch), ft_toupper(ch));
	ch = '1';
	printf("%c - lower - %c - upper - %c\n", ch, ft_tolower(ch), ft_toupper(ch));
}

int		main(void)
{
	char str[10];
	
	printf("%s\n", ft_memcpy(str, "HELLO\n", 6));
	//ft_memset(str, '1', 10);
	//test_ft_bzero();
	//test_ft_isalpha();
	//test_ft_isdigit();
	//test_ft_isalnum();
	//test_ft_tolowerupper();
	return (0);
}
