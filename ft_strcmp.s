; **************************************************************************** ;
;                                                                              ;
;                                                         ::::::::             ;
;    ft_strcmp.s                                        :+:    :+:             ;
;                                                      +:+                     ;
;    By: novan-ve <marvin@codam.nl>                   +#+                      ;
;                                                    +#+                       ;
;    Created: 2020/02/25 12:50:29 by novan-ve       #+#    #+#                 ;
;    Updated: 2020/02/25 12:53:21 by novan-ve      ########   odam.nl          ;
;                                                                              ;
; **************************************************************************** ;

			global	_ft_strcmp
			section	.text
_ft_strcmp:
			mov rax, 0
			mov rcx, 0
			cmp	[rdi], BYTE 0
			je	_null
			cmp	[rsi], BYTE 0
			je	_null2
_loopcmp:
			mov al, [rdi]
			mov cl, [rsi]
			cmp al, cl
			jnz _endcmp
			cmp al, 0
			jz _endcmp
			cmp cl, 0
			jz _endcmp
			inc rdi
			inc rsi
			jmp _loopcmp
_endcmp:
			sub rax, rcx
			ret
_null:
			cmp	[rsi], BYTE 0
			je	_loopcmp
			mov	rax, -1
			ret
_null2:
			mov	rax, 1
			ret
