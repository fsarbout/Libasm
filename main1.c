/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main1.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fsarbout <fsarbout@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/02/11 17:11:05 by fsarbout          #+#    #+#             */
/*   Updated: 2021/02/11 17:12:30 by fsarbout         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "includes/libasm.h"

int	main(void)
{
	char *buff;
	char *write_buffer;
	char *dest;
	char *read_buffer = malloc(200);
	buff = malloc(200);
	write_buffer = "fatima zahra sarbout";
	printf("ft_strlen: %zu\n", ft_strlen("hello world"));
	printf("ft_strcpy: %s\n", ft_strcpy(buff, "heeyyyy"));
	printf("ft_strcmp: %d\n", ft_strcmp("abbbcc", "abbcdd"));
	printf("  write %zd >> \n", ft_write(1, write_buffer, 5));
	printf("\n");
    size_t ll = ft_read(0, read_buffer, 10);
	printf("%zu\n", ll);
    read_buffer[ll] = 0;
	printf("buffer readding: %s\n", read_buffer);
	dest = ft_strdup("42");
	printf("ft_strdup: %s\n", dest);
    free(dest);
    free(read_buffer);
    free(buff);
	return (0);
}