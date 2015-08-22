; @adjivas - github.com/adjivas. See the LICENSE
; file at the top-level directory of this distribution and at
; https://github.com/adjivas/libftasm/blob/master/LICENSE.
;
; This file may not be copied, modified, or distributed
; except according to those terms.

global _ft_memcpy

section .text

_ft_memcpy:
   mov rax, rdi ; rax <- rdi
   mov rcx, rbx ; rcx <- rbx
   repnz movsb

end:
  ret					  ; leave
