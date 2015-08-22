; @adjivas - github.com/adjivas. See the LICENSE
; file at the top-level directory of this distribution and at
; https://github.com/adjivas/libftasm/blob/master/LICENSE.
;
; This file may not be copied, modified, or distributed
; except according to those terms.

global _ft_islower

section .text
_ft_islower:
  cmp rdi, 'a'  ; dest <- rdi, source <- 'a'
  jl _not_lower ; if dest < source: jump to _not_lower
  cmp rdi, 'z'  ; dest <- rdi, source <- 'z'
  jg _not_lower ; if dest > source: jump to _not_lower
  mov rax, 1    ; rax <- 1
  jmp end       ; jump to end

_not_lower:
  mov rax, 0    ; rax <- 0

end:
  ret					  ; leave
