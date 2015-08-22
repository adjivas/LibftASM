; @adjivas - github.com/adjivas. See the LICENSE
; file at the top-level directory of this distribution and at
; https://github.com/adjivas/libftasm/blob/master/LICENSE.
;
; This file may not be copied, modified, or distributed
; except according to those terms.

global _ft_isprint

section .text
_ft_isprint:
	cmp rdi, ' '  ; dest <- rdi, source <- ' '
	jl _not_print ; if dest < source: jump to _not_print
	cmp rdi, '~'  ; dest <- rdi, source <- '~'
	jg _not_print ; if dest > source: jump to _not_print
	mov rax, 1    ; rax <- 1
	jmp end       ; jump to end

_not_print:
	mov rax, 0    ; rax <- 0

end:
	ret				    ; leave
