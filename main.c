/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   main.c                                             :+:    :+:            */
/*                                                     +:+                    */
/*   By: novan-ve <novan-ve@student.codam.nl>         +#+                     */
/*                                                   +#+                      */
/*   Created: 2020/02/13 15:59:58 by novan-ve       #+#    #+#                */
/*   Updated: 2020/02/17 17:31:02 by novan-ve      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

void	ft_str_test1(void)
{
	char	s1[6];
	char	s2[5];

	strcpy(s1, "Hallo");
	strcpy(s2, "Halo");
	printf("Strlen:\t\t%zu\n", strlen("Hello, World"));
	printf("Ft_strlen:\t%zu\n\n", ft_strlen("Hello, World"));
	printf("Strlen:\t\t%zu\n", strlen("Assembly"));
	printf("Ft_strlen:\t%zu\n\n", ft_strlen("Assembly"));
	printf("Strlen:\t\t%zu\n", strlen("Hi"));
	printf("Ft_strlen:\t%zu\n\n", ft_strlen("Hi"));
	printf("Strlen:\t\t%zu\n", strlen(""));
	printf("Ft_strlen:\t%zu\n\n", ft_strlen(""));
	printf("Strcmp:\t\t%d\n", strcmp("Hallo", "Hallo"));
	printf("Ft_strcmp:\t%d\n\n", ft_strcmp("Hallo", "Hallo"));
	printf("Strcmp:\t\t%d\n", strcmp(s1, s2));
	printf("Ft_strcmp:\t%d\n\n", ft_strcmp(s1, s2));
	printf("Strcmp:\t\t%d\n", strcmp(s2, s1));
	printf("Ft_strcmp:\t%d\n\n", ft_strcmp(s2, s1));
	printf("Strcmp:\t\t%d\n", strcmp("Test", ""));
	printf("Ft_strcmp:\t%d\n\n", ft_strcmp("Test", ""));
	printf("Strcmp:\t\t%d\n", strcmp("", "Test"));
	printf("Ft_strcmp:\t%d\n\n", ft_strcmp("", "Test"));
	printf("Strcmp:\t\t%d\n", strcmp("", ""));
	printf("Ft_strcmp:\t%d\n\n", ft_strcmp("", ""));
}

void	ft_strcpy_test(void)
{
	char	s3[10];
	char	s4[10];

	strcpy(s3, "Dst");
	strcpy(s4, "Hallo");
	printf("Strcpy:\n");
	printf("Dst before:\t%s\nSrc before:\t%s\n", s3, s4);
	printf("Return:\t\t%s\n", strcpy(s3, s4));
	printf("Dst after:\t%s\nSrc after:\t%s\n\n", s3, s4);
	strcpy(s3, "Dst");
	printf("Ft_strcpy:\n");
	printf("Dst before:\t%s\nSrc before:\t%s\n", s3, s4);
	printf("Return:\t\t%s\n", ft_strcpy(s3, s4));
	printf("Dst after:\t%s\nSrc after:\t%s\n\n", s3, s4);
	strcpy(s3, "Test");
	printf("Strcpy:\n");
	printf("Dst before:\t%s\nSrc before:\t%s\n", s3, "Wereld");
	printf("Return:\t\t%s\n", strcpy(s3, "Wereld"));
	printf("Dst after:\t%s\nSrc after:\t%s\n\n", s3, "Wereld");
	strcpy(s3, "Test");
	printf("Ft_strcpy:\n");
	printf("Dst before:\t%s\nSrc before:\t%s\n", s3, "Wereld");
	printf("Return:\t\t%s\n", ft_strcpy(s3, "Wereld"));
	printf("Dst after:\t%s\nSrc after:\t%s\n\n", s3, "Wereld");
}

void	ft_write_test(void)
{
	int		tmp;

	printf("Write:\t\t\n");
	tmp = write(1, "Hallo", 5);
	printf("\t\t%d\n", tmp);
	printf("Ft_write:\t\t\n");
	tmp = ft_write(1, "Hallo", 5);
	printf("\t\t%d\n\n", tmp);
	printf("Write:\t\t\n");
	tmp = write(1, "Test\tTest", 9);
	printf("\t%d\n", tmp);
	printf("Ft_write:\t\t\n");
	tmp = ft_write(1, "Test\tTest", 9);
	printf("\t%d\n\n", tmp);
	printf("Write:\t\t\n");
	tmp = write(1, "", 1);
	printf("\t\t%d\n", tmp);
	printf("Ft_write:\t\t\n");
	tmp = ft_write(1, "", 1);
	printf("\t\t%d\n\n", tmp);
}

void	ft_read_test(void)
{
	int		tmp;
	int		tmp2;
	int		ret;
	char	buf[80];

	tmp = open("main.c", O_RDONLY);
	tmp2 = open("main.c", O_RDONLY);
	ret = read(tmp, buf, 79);
	buf[ret] = '\0';
	printf("Read:\n%s\t%d\n", buf, ret);
	ret = read(tmp, buf, 79);
	buf[ret] = '\0';
	printf("%s\t%d\n", buf, ret);
	ret = read(tmp, buf, 79);
	buf[ret] = '\0';
	printf("%s\t%d\n\n", buf, ret);
	ret = read(tmp2, buf, 79);
	buf[ret] = '\0';
	printf("Ft_read:\n%s\t%d\n", buf, ret);
	ret = read(tmp2, buf, 79);
	buf[ret] = '\0';
	printf("%s\t%d\n", buf, ret);
	ret = read(tmp2, buf, 79);
	buf[ret] = '\0';
	printf("%s\t%d\n\n", buf, ret);
}

int		main(void)
{
	char	*str;
	char	*ft_str;

	ft_str_test1();
	ft_strcpy_test();
	ft_write_test();
	ft_read_test();
	str = strdup("Hallo Wereld");
	ft_str = ft_strdup("Hallo Wereld");
	printf("Strdup:\t\t%s\n", str);
	printf("Ft_strdup:\t%s\n\n", ft_str);
	free(str);
	free(ft_str);
	str = strdup("");
	ft_str = ft_strdup("");
	printf("Strdup:\t\t%s\n", str);
	printf("Ft_strdup:\t%s\n\n", ft_str);
	free(str);
	free(ft_str);
	return (0);
}
