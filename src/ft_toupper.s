; @adjivas - github.com/adjivas. See the LICENSE
; file at the top-level directory of this distribution and at
; https://github.com/adjivas/libftasm/blob/master/LICENSE.
;
; This file may not be copied, modified, or distributed
; except according to those terms.

global _ft_toupper
extern _ft_islower

section .text
_ft_toupper:
  call _ft_islower ; rax <- ft_islower
  cmp	rax, 1       ; dest <- rax, source <- 1
  jl _not_upper    ; if dest < source: jump to not_lower
  mov rax, rdi     ; rax <- rdi
  sub rax, 32      ; rax <- rax - 32
  jmp end          ; jump to end

_not_upper:
  mov rax, rdi     ; rax <- rdi

end:
  ret					     ; leave
