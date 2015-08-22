; @adjivas - github.com/adjivas. See the LICENSE
; file at the top-level directory of this distribution and at
; https://github.com/adjivas/libftasm/blob/master/LICENSE.
;
; This file may not be copied, modified, or distributed
; except according to those terms.

global _ft_strlen

section .text

_ft_strlen:
  mov rcx, -1  ; rcx <- -1
  mov al, 0    ; al <- 0
  cld
  repnz scasb
  not rcx      ; rcx <- ~rcx
  dec rcx      ; rcx <- rcx - 1
  mov rax, rcx ; rax <- rcx

end:
  ret					 ; leave
