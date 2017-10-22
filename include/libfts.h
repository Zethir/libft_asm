#ifndef LIBFTS_H
# define LIBFTS_H

# include <stdlib.h>

int		ft_isalpha(int c);
int		ft_isdigit(int c);
int		ft_isalnum(int c);
int		ft_isascii(int c);
int		ft_isprint(int c);
int		ft_toupper(int c);
int		ft_tolower(int c);
int		ft_puts(const char *s);
void	ft_bzero(void *s, size_t n);
void	*ft_memset(void *n, int c, size_t len);
void	*ft_memcpy(void *dst, const void *src, size_t n);
char	*ft_strdup(const char *s1);
char	*ft_strcat(char *s1, char *s2);
char	*ft_strcpy(char *dst, char *src);
size_t	ft_strlen(const char *s);
void	ft_cat(int fd);

#endif
