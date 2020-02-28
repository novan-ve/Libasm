# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    ft_strdup.s                                        :+:    :+:             #
#                                                      +:+                     #
#    By: novan-ve <marvin@codam.nl>                   +#+                      #
#                                                    +#+                       #
#    Created: 2020/02/25 12:50:58 by novan-ve      #+#    #+#                  #
#    Updated: 2020/02/25 12:50:59 by novan-ve      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

			global	_ft_strdup
			extern	_malloc
			extern	_ft_strlen
			extern	_ft_strcpy
			section	.text
_ft_strdup:
			push	rdi
			call	_ft_strlen
			mov		rdi, rax
			inc		rdi
			call	_malloc
			test	rax, rax
			jz		_fail
			pop		rdi
			mov		rsi, rdi
			mov		rdi, rax
			call	_ft_strcpy
			ret
_fail:
			pop		rdi
			mov		rax, 0
			ret
