# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    ft_read.s                                          :+:    :+:             #
#                                                      +:+                     #
#    By: novan-ve <marvin@codam.nl>                   +#+                      #
#                                                    +#+                       #
#    Created: 2020/02/25 12:50:21 by novan-ve      #+#    #+#                  #
#    Updated: 2020/02/28 16:41:48 by novan-ve      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

			global	_ft_read
			section	.text
_ft_read:
			mov		rax, 0x02000003
			syscall
			jc		_failre
			ret
_failre:
			mov		rax, -1
			ret
