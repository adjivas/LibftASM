; @adjivas - github.com/adjivas. See the LICENSE
; file at the top-level directory of this distribution and at
; https://github.com/adjivas/libftasm/blob/master/LICENSE.
;
; This file may not be copied, modified, or distributed
; except according to those terms.

global _ft_puts
extern _ft_strlen

segment .text

_empty: db "(null)"
_null:
  lea rsi, [rel _empty]
  mov rax, 0x2000004       ; rax <- 0x2000004               (write)
  mov rdi, 1               ; rdi <- 1
  mov rdx, 7               ; rdx <- 7
  syscall

  mov rax, -1              ; rax <- -1
  jmp end                  ; jump to end

_terminate: db 0x0a
_ft_puts:
  push rbp                 ; stack <<- rbp
  push rsp                 ; stack <<- rsp
  cmp rdi, 0               ; dest <- rdi, source <- 0
  je _null                 ; if dest <=> rax: jump to _null

  mov rsi, rdi             ; rsi <- rdi
  call _ft_strlen          ; rax <- ft_strlen
  mov rdi, 1               ; rdi <- 1
  mov rdx, rax             ; rdx <- rax
  mov rax, 0x2000004       ; rax <- 0x2000004               (write)
  syscall

  lea rsi, [rel _terminate]
  mov rdi, 1               ; rdi <- 1
  mov rdx, 1               ; rdx <- rax
  mov rax, 0x2000004       ; rax <- 0x2000004               (write)
  syscall

end:
  pop rsp                  ; stack ->> rbp
  pop rbp                  ; stack ->> rbp
  ret                      ; leave
