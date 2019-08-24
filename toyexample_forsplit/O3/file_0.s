	.text
	.def	 @feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.intel_syntax noprefix
	.file	"file_0.c"
	.def	 func;
	.scl	2;
	.type	32;
	.endef
	.globl	func                    # -- Begin function func
	.p2align	4, 0x90
func:                                   # @func
# %bb.0:
                                        # kill: def $cl killed $cl def $ecx
	movsx	r9d, cl
	test	r9b, r9b
	jns	.LBB0_2
# %bb.1:
	xor	ecx, ecx
.LBB0_2:
	movsx	edx, r8b
	lea	r8d, [rdx + r9]
	mov	eax, edx
	xor	al, r9b
	movsx	eax, al
	and	dl, r9b
	movsx	edx, dl
	lea	edx, [rax + 2*rdx]
	mov	al, 97
	cmp	r8d, edx
	je	.LBB0_4
# %bb.3:
	mov	al, 23
.LBB0_4:
	xor	cl, al
	xor	eax, eax
	cmp	cl, 31
	sete	al
	ret
                                        # -- End function
	.def	 main;
	.scl	2;
	.type	32;
	.endef
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
main:                                   # @main
.seh_proc main
# %bb.0:
	push	rsi
	.seh_pushreg 6
	push	rdi
	.seh_pushreg 7
	sub	rsp, 40
	.seh_stackalloc 40
	.seh_endprologue
	mov	rcx, qword ptr [rdx + 8]
	movsx	edi, byte ptr [rcx]
	call	atoi
	movsx	ecx, al
	test	cl, cl
	jns	.LBB1_2
# %bb.1:
	xor	eax, eax
.LBB1_2:
	mov	esi, edi
	add	esi, ecx
	mov	edx, edi
	xor	dl, cl
	movsx	edx, dl
	and	cl, dil
	movsx	ecx, cl
	lea	edx, [rdx + 2*rcx]
	mov	cl, 97
	cmp	esi, edx
	je	.LBB1_4
# %bb.3:
	mov	cl, 23
.LBB1_4:
	xor	cl, al
	xor	edx, edx
	cmp	cl, 31
	sete	dl
	lea	rcx, [rip + "??_C@_0M@IJGBCEOB@Crc?5is?3?5?$CFd?6?$AA@"]
	call	printf
	xor	eax, eax
	add	rsp, 40
	pop	rdi
	pop	rsi
	ret
	.seh_handlerdata
	.text
	.seh_endproc
                                        # -- End function
	.def	 printf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,printf
	.globl	printf                  # -- Begin function printf
	.p2align	4, 0x90
printf:                                 # @printf
.seh_proc printf
# %bb.0:
	push	rsi
	.seh_pushreg 6
	push	rdi
	.seh_pushreg 7
	push	rbx
	.seh_pushreg 3
	sub	rsp, 48
	.seh_stackalloc 48
	.seh_endprologue
	mov	rsi, rcx
	mov	qword ptr [rsp + 104], r9
	mov	qword ptr [rsp + 96], r8
	mov	qword ptr [rsp + 88], rdx
	lea	rbx, [rsp + 88]
	mov	qword ptr [rsp + 40], rbx
	mov	ecx, 1
	call	__acrt_iob_func
	mov	rdi, rax
	call	__local_stdio_printf_options
	mov	rcx, qword ptr [rax]
	mov	qword ptr [rsp + 32], rbx
	mov	rdx, rdi
	mov	r8, rsi
	xor	r9d, r9d
	call	__stdio_common_vfprintf
	nop
	add	rsp, 48
	pop	rbx
	pop	rdi
	pop	rsi
	ret
	.seh_handlerdata
	.section	.text,"xr",discard,printf
	.seh_endproc
                                        # -- End function
	.def	 __local_stdio_printf_options;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,__local_stdio_printf_options
	.globl	__local_stdio_printf_options # -- Begin function __local_stdio_printf_options
	.p2align	4, 0x90
__local_stdio_printf_options:           # @__local_stdio_printf_options
# %bb.0:
	lea	rax, [rip + __local_stdio_printf_options._OptionsStorage]
	ret
                                        # -- End function
	.section	.rdata,"dr",discard,"??_C@_0M@IJGBCEOB@Crc?5is?3?5?$CFd?6?$AA@"
	.globl	"??_C@_0M@IJGBCEOB@Crc?5is?3?5?$CFd?6?$AA@" # @"??_C@_0M@IJGBCEOB@Crc?5is?3?5?$CFd?6?$AA@"
"??_C@_0M@IJGBCEOB@Crc?5is?3?5?$CFd?6?$AA@":
	.asciz	"Crc is: %d\n"

	.lcomm	__local_stdio_printf_options._OptionsStorage,8,8 # @__local_stdio_printf_options._OptionsStorage

	.addrsig
	.addrsig_sym __local_stdio_printf_options._OptionsStorage
