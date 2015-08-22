; @adjivas - github.com/adjivas. See the LICENSE
; file at the top-level directory of this distribution and at
; https://github.com/adjivas/libftasm/blob/master/LICENSE.
;
; This file may not be copied, modified, or distributed
; except according to those terms.

global _ft_cat
extern _ft_strlen

section .data
	_buff times 255 db 0
	_size equ $ - _buff

section .text

_fail:
  mov rax, -1          ; rax <- -1
	jmp end              ; jump to end

_ft_cat:
	push rbp             ; stack <<- rbp
	mov rbp, rsp         ; rbp <- rsp

_read:
	push rdi             ; stack <<- rdi
	lea rsi, [rel _buff]
	mov rdx, _size       ; rdx <- _size
	mov rax, 0x2000003   ; rax <- 0x2000003              (read)
	syscall
	jc _fail             ; if False: jump to fail

	cmp rax, 0           ; dest <- rax, source <- 0
	je end               ; if dest <=> rax: jump to end
	mov rdi, 1           ; rdi <- 1
	mov rdx, rax         ; rdx <- rax
	mov rax, 0x2000004   ; rax <- 0x2000004              (write)
	syscall

	pop rdi              ; stack ->> rdi
	jmp _read            ; jump to _read

end:
	mov rsp, rbp         ; rsp <- rbp
	pop rbp              ; stack ->> rbp
	ret                  ; leave
