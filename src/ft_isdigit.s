; @adjivas - github.com/adjivas. See the LICENSE
; file at the top-level directory of this distribution and at
; https://github.com/adjivas/libftasm/blob/master/LICENSE.
;
; This file may not be copied, modified, or distributed
; except according to those terms.

global _ft_isdigit

section .text
_ft_isdigit:
	cmp rdi, '0'  ; dest <- rdi, source <- '0'
	jl _not_digit ; if dest < source: jump to _not_digit
	cmp rdi, '9'  ; dest <- rdi, source <- '9'
	jg _not_digit ; if dest > source: jump to _not_digit
	mov rax, 1    ; rax <- 1
	jmp end       ; jump to end

_not_digit:
	mov rax, 0    ; rax <- 0

end:
	ret					  ; leave
