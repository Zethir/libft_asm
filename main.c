/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cboussau <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/10/21 16:01:31 by cboussau          #+#    #+#             */
/*   Updated: 2017/10/23 16:11:22 by cboussau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <stdlib.h>
#include <libfts.h>
#include <fcntl.h>

int		main()
{
	char	*buf;
	
	printf("ISALPHA:\n");
	printf("	-NOT ALPHA REAL: %i\n", isalpha('/'));
	printf("	-NOT ALPHA FT: %i\n\n", ft_isalpha('/'));
	printf("	-ALPHA MIN REAL: %i\n", isalpha('a'));
	printf("	-ALPHA MIN FT: %i\n\n", ft_isalpha('a'));
	printf("	-ALPHA MAJ REAL: %i\n", isalpha('A'));
	printf("	-ALPHA MAJ FT: %i\n\n", ft_isalpha('A'));
	
	printf("ISDIGIT:\n");
	printf("	-NOT DIGIT REAL: %i\n", isdigit('/'));
	printf("	-NOT DIGIT FT: %i\n\n", ft_isdigit('/'));
	printf("	-DIGIT REAL: %i\n", isdigit('1'));
	printf("	-DIGIT FT: %i\n\n", ft_isdigit('1'));
	
	printf("ISALNUM:\n");
	printf("	-NOT ISALNUM BEFORE NUM REAL: %i\n", isalnum('!'));
	printf("	-NOT ISALNUM BEFORE NUM FT: %i\n\n", ft_isalnum('!'));
	printf("	-NOT ISALNUM BETWEEN NUM AND MAJ REAL: %i\n", isalnum(';'));
	printf("	-NOT ISALNUM BETWEEN NUM AND MAJ FT: %i\n\n", ft_isalnum(';'));
	printf("	-NOT ISALNUM BETWEEN MAJ AND MIN REAL: %i\n", isalnum('_'));
	printf("	-NOT ISALNUM BETWEEN MAJ AND MIN FT: %i\n\n", ft_isalnum('_'));
	printf("	-ISALNUM NUM REAL: %i\n", isalnum('1'));
	printf("	-ISALNUM NUM FT: %i\n\n", ft_isalnum('1'));
	printf("	-ISALNUM MAJ REAL: %i\n", isalnum('A'));
	printf("	-ISALNUM MAJ FT: %i\n\n", ft_isalnum('A'));
	printf("	-ISALNUM MIN REAL: %i\n", isalnum('z'));
	printf("	-ISALNUM MIN FT: %i\n\n", ft_isalnum('z'));

	printf("ISASCII:\n");
	printf("	-NOT ISASCII BEFORE REAL: %i\n", isascii(-1));
	printf("	-NOT ISASCII BEFORE FT: %i\n\n", ft_isascii(-1));
	printf("	-NOT ISASCII AFTER REAL: %i\n", isascii(128));
	printf("	-NOT ISASCII AFTER FT: %i\n\n", ft_isascii(128));
	printf("	-ISASCII REAL: %i\n", isascii(100));
	printf("	-ISASCII FT: %i\n\n", ft_isascii(100));
	
	printf("ISPRINT:\n");
	printf("	-NOT ISPRINT BEFORE REAL: %i\n", isprint(3));
	printf("	-NOT ISPRINT BEFORE FT: %i\n\n", ft_isprint(3));
	printf("	-NOT ISPRINT AFTER REAL: %i\n", isprint(127));
	printf("	-NOT ISPRINT AFTER FT: %i\n\n", ft_isprint(127));
	printf("	-ISPRINT REAL: %i\n", isprint(100));
	printf("	-ISPRINT FT: %i\n\n", ft_isprint(100));
	
	printf("ISSPACE:\n");
	printf("	-NOT ISSPACE REAL: %i\n", isspace(90));
	printf("	-NOT ISSPACE FT: %i\n\n", ft_isspace(90));
	printf("	-ISSPACE TAB  REAL: %i\n", isspace(9));
	printf("	-ISSPACE TAB FT: %i\n\n", ft_isspace(9));
	printf("	-ISSPACE NEW LINE REAL: %i\n", isspace(10));
	printf("	-ISSPACE NEW LINE FT: %i\n\n", ft_isspace(10));
	printf("	-ISSPACE VERT TAB REAL: %i\n", isspace(11));
	printf("	-ISSPACE VERT TAB FT: %i\n\n", ft_isspace(11));
	printf("	-ISSPACE FORM FEED REAL: %i\n", isspace(12));
	printf("	-ISSPACE FORM FEED FT: %i\n\n", ft_isspace(12));
	printf("	-ISSPACE CARRIAGE RET REAL: %i\n", isspace(13));
	printf("	-ISSPACE CARRIAGE RET FT: %i\n\n", ft_isspace(13));
	printf("	-ISSPACE SPACE REAL: %i\n", isspace(32));
	printf("	-ISSPACE SPACE FT: %i\n\n", ft_isspace(32));
	
	printf("TOUPPER:\n");
	printf("	-NOT LOWER TOUPPER REAL: %i\n", toupper(3));
	printf("	-NOT LOWER TOUPPER FT: %i\n\n", ft_toupper(3));
	printf("	-LOWER TOUPPER REAL: %i\n", toupper(99));
	printf("	-LOWER TOUPPER FT: %i\n\n", ft_toupper(99));
	
	printf("TOLOWER:\n");
	printf("	-NOT UPPER TOLOWER REAL: %i\n", tolower(3));
	printf("	-NOT UPPER TOLOWER FT: %i\n\n", ft_tolower(3));
	printf("	-UPPER TOLOWER REAL: %i\n", tolower(67));
	printf("	-UPPER TOLOWER FT: %i\n\n", ft_tolower(67));

	printf("STRLEN:\n");
	printf("	-STRLEN REAL: %lu\n", strlen("hello world"));
	printf("	-STRLEN FT: %zu\n\n", ft_strlen("hello world"));
	
	printf("PUTS:\n");
	printf("	-PUTS NULL REAL: %d\n", puts(NULL));
	printf("	-PUTS EMPTY REAL: %d\n", puts(""));
	printf("	-PUTS REAL: %d\n", puts("hello world and welcome"));
	printf("	-PUTS NULL FT: %d\n", ft_puts(NULL));
	printf("	-PUTS EMPTY FTL: %d\n", ft_puts(""));
	printf("	-PUTS FT: %d\n\n", ft_puts("hello world and welcome"));

	printf("STRDUP AND MEMCPY AND BZERO AND STRCPY AND MEMSET:\n");
	buf = ft_strdup("           ");
	memcpy(buf, "0123456789", 10);
	printf("	-MEMCPY REAL: %s\n", buf);
	bzero(buf, 10);
	printf("	-BZERO REAL: %s\n\n", buf);
	ft_memcpy(buf, "0123456789", 10);
	printf("	-MEMCPY FT: %s\n", buf);
	ft_bzero(buf, 10);
	printf("	-BZERO FT: %s\n\n", buf);
	strcpy(buf, "0123456789");
	printf("	-STRCPY REAL: %s\n", buf);
	bzero(buf, 10);
	ft_strcpy(buf, "0123456789");
	printf("	-STRCPY FT: %s\n\n", buf);
	bzero(buf, 10);
	memset(buf, 'a', 10);
	printf("	-MEMSET REAL: %s\n", buf);
	ft_memset(buf, 'a', 10);
	printf("	-MEMSET FT: %s\n\n", buf);

	free(buf);
	printf("STRCAT\n");
	buf = strdup("012345");
	printf("	-STRCAT REAL = %s\n", strcat(buf, "6789"));
	free(buf);
	buf = strdup("012345");
	printf("	-STRCAT FT = %s\n", ft_strcat(buf, "6789"));
	
	printf("CAT\n");
	int	fd = open("test_cat.txt", O_RDONLY);
	ft_cat(fd);

	printf("PUTSTR\n");
	ft_putstr("I'm a string\n\n");

	printf("STRCMP\n");
	printf("	-STRCMP NOT SAME REAL = %d\n", strcmp("test", "test1"));
	printf("	-STRCMP NOT SAME FT = %d\n\n", ft_strcmp("test", "test1"));
	printf("	-STRCMP SAME REAL = %d\n", strcmp("test", "test"));
	printf("	-STRCMP SAME FT = %d\n\n", ft_strcmp("test", "test"));

	printf("STRCHR\n");
	printf("	-NULL STRCHR REAL = %s\n", strchr("Bonjour", 0));
	printf("	-NULL STRCHR FT = %s\n", ft_strchr("Bonjour", 0));
	printf("	-NO CHAR FOUND STRCHR REAL = %s\n", strchr("Bonjour", 't'));
	printf("	-NO CHAR FOUND STRCHR FT = %s\n", ft_strchr("Bonjour", 't'));
	printf("	-STRCHR REAL = %s\n", strchr("Bonjour", 'j'));
	printf("	-STRCHR FT = %s\n", ft_strchr("Bonjour", 'j'));
	return (0); 
}
