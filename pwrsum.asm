format ELF64

public pwrsum

section '.pwrsum' executable

pwrsum:
	mov rcx, rdi ;1 element
	mov rbx, rsi ;kolvo itercii
	mov rax, 0 ;hranenie summy
	.main:
		xor r10, r10
		mov r10, [rcx] ;current element

		imul r10, r10

		jmp .end		
	.end:
		add rax, r10
		add rcx, 8
		dec rbx
		jnz .main
	ret