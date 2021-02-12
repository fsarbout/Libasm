/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fsarbout <fsarbout@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/01/27 17:30:01 by fsarbout          #+#    #+#             */
/*   Updated: 2021/02/11 17:04:49 by fsarbout         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H

# include <stdio.h>
# include <string.h>
# include <unistd.h>
# include <fcntl.h>
# include <stdlib.h>
# include <errno.h>

# define RESET   "\033[0m"
# define RED     "\033[31m"
# define GREEN   "\033[32m"
# define BUFFER_SIZE 512

size_t	ft_strlen(const char *str);
char	*ft_strdup(const char *str);
ssize_t	ft_read(int fd, void *buff, size_t nbyte);
char	*ft_strcpy(char *dstt, const char *src);
ssize_t	ft_write(int fd, const void *buff, size_t nbyte);
int		ft_strcmp(const char *s1, const char *s2);

#endif
