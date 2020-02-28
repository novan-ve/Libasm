; **************************************************************************** ;
;                                                                              ;
;                                                         ::::::::             ;
;    ft_strlen.s                                        :+:    :+:             ;
;                                                      +:+                     ;
;    By: novan-ve <marvin@codam.nl>                   +#+                      ;
;                                                    +#+                       ;
;    Created: 2020/02/25 12:51:04 by novan-ve       #+#    #+#                 ;
;    Updated: 2020/02/25 12:51:55 by novan-ve      ########   odam.nl          ;
;                                                                              ;
; **************************************************************************** ;

			global	_ft_strlen
			section	.text
_ft_strlen:
			xor		rax, rax
_looplen:
			inc		rax
			cmp		[rdi + rax - 1], BYTE 0
			jne		_looplen
			dec		rax
			ret
