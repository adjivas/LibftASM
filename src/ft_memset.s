; @adjivas - github.com/adjivas. See the LICENSE
; file at the top-level directory of this distribution and at
; https://github.com/adjivas/libftasm/blob/master/LICENSE.
;
; This file may not be copied, modified, or distributed
; except according to those terms.

global _ft_memset

section .text

_ft_memset:
  push rdi     ; stack <<- rdi
  mov rax, rsi ; rax <- rsi
  mov rcx, rdx ; rcx <- rdx
  cld          ; df <- 0
  rep stosb

end:
  pop rax      ; stack ->> rax
  ret          ; leave
