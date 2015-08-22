; @adjivas - github.com/adjivas. See the LICENSE
; file at the top-level directory of this distribution and at
; https://github.com/adjivas/libftasm/blob/master/LICENSE.
;
; This file may not be copied, modified, or distributed
; except according to those terms.

global _ft_isalnum
extern _ft_isalpha
extern _ft_isdigit

segment .text
_ft_isalnum:
  call _ft_isalpha ; rax <- ft_isalpha
  cmp	rax, 1       ; dest <- rax, source <- 1
  je _is_alnum     ; if dest <=> rax: jump to _is_alnum
  call _ft_isdigit ; rax <- ft_isdigit
  cmp	rax, 1       ; dest <- rax, source <- 1
  je _is_alnum     ; if dest <=> rax: jump to _is_alnum
  mov rax, 0       ; rax <- 0
  jmp end          ; jump to end

_is_alnum:
  mov rax, 1       ; rax <- 1

end:
  ret							 ; leave
