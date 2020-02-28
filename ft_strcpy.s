; **************************************************************************** ;
;                                                                              ;
;                                                         ::::::::             ;
;    ft_strcpy.s                                        :+:    :+:             ;
;                                                      +:+                     ;
;    By: novan-ve <marvin@codam.nl>                   +#+                      ;
;                                                    +#+                       ;
;    Created: 2020/02/25 12:50:49 by novan-ve       #+#    #+#                 ;
;    Updated: 2020/02/25 12:52:11 by novan-ve      ########   odam.nl          ;
;                                                                              ;
; **************************************************************************** ;

			global	_ft_strcpy
			section	.text
_ft_strcpy:
			xor	rax, rax
			xor	rcx, rcx
_loopcpy:
			mov	al, [rsi + rcx]
			mov	BYTE [rdi + rcx], al
			cmp	[rsi + rcx], BYTE 0
			je	_endcpy
			inc	rcx
			jmp	_loopcpy
_endcpy:
			mov	rax, rdi
			ret
