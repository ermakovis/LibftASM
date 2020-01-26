#ifndef LIBFTS_H
# define LIBFTS_H

# include <stddef.h>

void	ft_bzero(void *ptr, size_t size);
int		ft_isalpha(int c);
int		ft_isdigit(int c);
int		ft_isalnum(int c);
int		ft_isascii(int c);
int		ft_isprint(int c);
int		ft_tolower(int c);
int		ft_toupper(int c);
char	*ft_strcat(char *dest, const char *src);
size_t	ft_strlen(char *str);
void	ft_puts(const char *str);
void	ft_putstr(char *str);

#endif
