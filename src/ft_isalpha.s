; @adjivas - github.com/adjivas. See the LICENSE
; file at the top-level directory of this distribution and at
; https://github.com/adjivas/libftasm/blob/master/LICENSE.
;
; This file may not be copied, modified, or distributed
; except according to those terms.

global _ft_isalpha

segment .text
_ft_isalpha:
  cmp rdi, 'A'  ; dest <- rdi, source <- 'A'
  jl _not_alpha ; if dest < source: jump to _not_alpha
	cmp rdi, 'z'  ; dest <- rdi, source <- 'z'
	jg _not_alpha ; if dest > source: jump to _not_alpha
	cmp rdi, 'Z'  ; dest <- rdi, source <- 'Z'
	jle _is_alpha ; if dest <= source: jump to _is_alpha
	cmp rdi, 'a'  ; dest <- rdi, source <- 'a'
	jge _is_alpha ; if dest >= source: jump to _is_alpha

_not_alpha:
  mov rax, 0    ; rax <- 0
  jmp end       ; jump to end

_is_alpha:
  mov rax, 1    ; rax <- 1

end:
  ret				    ; leave
