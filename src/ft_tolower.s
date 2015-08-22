; @adjivas - github.com/adjivas. See the LICENSE
; file at the top-level directory of this distribution and at
; https://github.com/adjivas/libftasm/blob/master/LICENSE.
;
; This file may not be copied, modified, or distributed
; except according to those terms.

global _ft_tolower
extern _ft_isupper

section .text
_ft_tolower:
  call _ft_isupper ; rax <- ft_isupper
  cmp	rax, 1       ; dest <- rax, source <- 1
  jl _not_lower    ; if dest < source: jump to _not_lower
  mov rax, rdi     ; rax <- rdi
  add rax, 32      ; rax <- rax + 32
  jmp end          ; jump to end

_not_lower:
  mov rax, rdi     ; rax <- rdi

end:
  ret					     ; leave
