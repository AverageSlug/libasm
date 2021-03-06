/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nlaurids <nlaurids@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/10/23 16:56:15 by nlaurids          #+#    #+#             */
/*   Updated: 2020/10/23 17:07:04 by nlaurids         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H
# include <stdlib.h>
# include <stdio.h>
# include <unistd.h>
# include <stddef.h>
# include <fcntl.h>
# include <string.h>

unsigned long	ft_strlen(const char *s);
char			*ft_strcpy(char *dst, const char *src);
int				ft_strcmp(const char *s1, const char *s2);
ssize_t			ft_write(int fd, const void *string, size_t nbyte);
ssize_t			ft_read(int fd, void *buf, size_t nbyte);
char			*ft_strdup(const char *s1);

#endif
