; @adjivas - github.com/adjivas. See the LICENSE
; file at the top-level directory of this distribution and at
; https://github.com/adjivas/libftasm/blob/master/LICENSE.
;
; This file may not be copied, modified, or distributed
; except according to those terms.

global _ft_isupper

section .text
_ft_isupper:
  cmp rdi, 'A'  ; dest <- rdi, source <- 'A'
  jl _not_upper ; if dest < source: jump to not_print
  cmp rdi, 'Z'  ; dest <- rdi, source <- 'Z'
  jg _not_upper ; if dest > source: jump to not_print
  mov rax, 1    ; rax <- 1
  jmp end       ; jump to end

_not_upper:
  mov rax, 0    ; rax <- 0

end:
  ret				    ; leave
