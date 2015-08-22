; @adjivas - github.com/adjivas. See the LICENSE
; file at the top-level directory of this distribution and at
; https://github.com/adjivas/libftasm/blob/master/LICENSE.
;
; This file may not be copied, modified, or distributed
; except according to those terms.

global _ft_bzero

section .text

_ft_bzero:
	cmp rdi, 0			    ; dest <- rdi, source <- 0
	jz end					    ; if dest <=> source: jump to end
	mov rbx, rdi		    ; rbx <- rdi
	mov rax, rsi		    ; rax <- rsi

_loop:
	cmp rax, 0		      ; dest <- rax, source <- 0
	jle end			        ; if dest <= source: jump to end
	mov byte[rbx], 0    ; byte[rbx] <- 0
	inc rbx             ; rbx <- rbx + 1
	dec rax             ; rax <- rax - 1
	jmp _loop	          ; jump to _loop

end:
	ret							    ; leave
