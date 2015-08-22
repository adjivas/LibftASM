; @adjivas - github.com/adjivas. See the LICENSE
; file at the top-level directory of this distribution and at
; https://github.com/adjivas/libftasm/blob/master/LICENSE.
;
; This file may not be copied, modified, or distributed
; except according to those terms.

global _ft_isascii

section .text
_ft_isascii:
  cmp rdi, 0    ; dest <- rdi, source <- 0
  jl _not_ascii ; if dest < source: jump to _not_ascii
  cmp rdi, 127  ; dest <- rdi, source <- 127
  jg _not_ascii ; if dest > source: jump to _not_ascii
  mov rax, 1    ; rax <- 1
  jmp end       ; jump to end

_not_ascii:
  mov rax, 0    ; rax <- 0

end:
  ret					  ; leave
