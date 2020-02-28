# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    ft_write.s                                         :+:    :+:             #
#                                                      +:+                     #
#    By: novan-ve <marvin@codam.nl>                   +#+                      #
#                                                    +#+                       #
#    Created: 2020/02/25 12:51:10 by novan-ve      #+#    #+#                  #
#    Updated: 2020/02/28 16:41:10 by novan-ve      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

			global	_ft_write
			section	.text
_ft_write:
			mov		rax, 0x02000004
			syscall
			jc		_failwr
			ret
_failwr:
			mov		rax, -1
			ret
