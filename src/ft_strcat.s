; @adjivas - github.com/adjivas. See the LICENSE
; file at the top-level directory of this distribution and at
; https://github.com/adjivas/libftasm/blob/master/LICENSE.
;
; This file may not be copied, modified, or distributed
; except according to those terms.

global _ft_strcat

segment .text
_ft_strcat:
  push rdi             ; stack <<- rdi

when_not_null:
  cmp byte [rdi], 0
  je _when_assignment
  inc rdi              ; rdi <- rdi + 1
  jmp when_not_null    ; jump to when_not_null

_when_assignment:
  cmp byte [rsi], 0
  je end
  mov rax, [rsi]
  mov [rdi], al
  inc rsi              ; rsi <- rsi + 1
  inc rdi              ; rdi <- rdi + 1
  jmp _when_assignment ; jump to _when_assignment

end:
  mov byte [rdi], 0
  pop rax             ; stack ->> rax
  ret                 ; leave
