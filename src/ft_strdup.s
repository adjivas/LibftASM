; @adjivas - github.com/adjivas. See the LICENSE
; file at the top-level directory of this distribution and at
; https://github.com/adjivas/libftasm/blob/master/LICENSE.
;
; This file may not be copied, modified, or distributed
; except according to those terms.

global _ft_strdup

extern _malloc, _ft_strlen, _ft_memcpy, _ft_bzero, _ft_strcat

section .text

_ft_strdup:
  push rdi        ; stack <<- rdi
  call _ft_strlen ; rax <- ft_strlen
  mov rdi, rax    ; rdi <- rax
  inc rdi         ; rdi <- rdi + 1
  call _malloc    ; rax <- _malloc

  pop rsi         ; stack ->> rsi
  mov rdi, rax    ; rdi <- rax
  push rdi        ; stack <<- rdi
  call _ft_strcat ; rax <- _ft_strcat
  pop rax         ; stack ->> rax

end:
  ret             ; leave
