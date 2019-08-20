	.text
	.def	 @feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.intel_syntax noprefix
	.file	"lifted_code"
	.def	 F_140001090_args;
	.scl	2;
	.type	32;
	.endef
	.globl	F_140001090_args        # -- Begin function F_140001090_args
	.p2align	4, 0x90
F_140001090_args:                       # @F_140001090_args
.seh_proc F_140001090_args
# %bb.0:                                # %entry
	push	rsi
	.seh_pushreg 6
	push	rdi
	.seh_pushreg 7
	push	rbx
	.seh_pushreg 3
	mov	eax, 10000
	call	__chkstk
	sub	rsp, rax
	.seh_stackalloc 10000
	.seh_endprologue
	movabs	rax, 5368827920
	lea	rdx, [rsp + 4720]
	lea	r8, [rsp + 4996]
	mov	dword ptr [rsp + 4996], ecx
	mov	qword ptr [rsp + 4712], rdx
	lea	r9, [rsp + 4984]
	lea	r10, [rip + .LJTI0_0]
	lea	r11, [rip + .LJTI0_1]
	jmp	.LBB0_1
	.p2align	4, 0x90
.LBB0_19:                               # %BB_1400010b4.i.backedge.i
                                        #   in Loop: Header=BB0_1 Depth=1
	add	qword ptr [rsp + 4712], 8
	add	rax, 5
.LBB0_1:                                # %BB_1400010b4.i.i
                                        # =>This Inner Loop Header: Depth=1
	movzx	edx, byte ptr [rax]
	lea	ecx, [rdx + 14]
	movzx	ecx, cl
	cmp	cl, 56
	ja	.LBB0_2
# %bb.21:                               # %BB_1400010b4.i.i
                                        #   in Loop: Header=BB0_1 Depth=1
	movsxd	rcx, dword ptr [r11 + 4*rcx]
	add	rcx, r11
	jmp	rcx
.LBB0_13:                               # %BB_140001367.i.i
                                        #   in Loop: Header=BB0_1 Depth=1
	add	rax, 1
	mov	rdx, qword ptr [rsp + 4712]
	cmp	dword ptr [rdx], 0
	je	.LBB0_14
# %bb.15:                               # %BB_140001383.i.i
                                        #   in Loop: Header=BB0_1 Depth=1
	movsxd	rcx, dword ptr [rax]
	jmp	.LBB0_16
	.p2align	4, 0x90
.LBB0_2:                                # %BB_1400010b4.i.i
                                        #   in Loop: Header=BB0_1 Depth=1
	add	dl, 95
	cmp	dl, 33
	ja	.LBB0_1
# %bb.3:                                # %BB_1400010b4.i.i
                                        #   in Loop: Header=BB0_1 Depth=1
	movzx	ecx, dl
	movsxd	rcx, dword ptr [r10 + 4*rcx]
	add	rcx, r10
	jmp	rcx
.LBB0_9:                                # %BB_140001288.i.i
                                        #   in Loop: Header=BB0_1 Depth=1
	add	rax, 1
	mov	rcx, qword ptr [rsp + 4712]
	mov	edx, dword ptr [rcx]
	mov	rcx, qword ptr [rcx - 8]
	mov	dword ptr [rcx], edx
	add	qword ptr [rsp + 4712], -16
	jmp	.LBB0_1
.LBB0_11:                               # %BB_140001302.i.i
                                        #   in Loop: Header=BB0_1 Depth=1
	add	rax, 1
	mov	rcx, qword ptr [rsp + 4712]
	mov	rdx, qword ptr [rcx]
	mov	edx, dword ptr [rdx]
	mov	dword ptr [rcx], edx
	jmp	.LBB0_1
.LBB0_10:                               # %BB_1400012bb.i.i
                                        #   in Loop: Header=BB0_1 Depth=1
	movsxd	rcx, dword ptr [rax + 1]
	add	rax, rcx
	add	rax, 1
	jmp	.LBB0_1
.LBB0_12:                               # %BB_140001326.i.i
                                        #   in Loop: Header=BB0_1 Depth=1
	add	rax, 1
	mov	rcx, qword ptr [rsp + 4712]
	mov	edx, dword ptr [rcx - 8]
	mov	esi, dword ptr [rcx]
	mov	edi, edx
	sub	edi, esi
	shr	edi, 31
	shr	edx, 31
	shr	esi, 31
	xor	esi, edx
	xor	edx, edi
	add	edx, esi
	cmp	edx, 2
	sete	dl
	test	edi, edi
	setne	bl
	xor	bl, dl
	movzx	edx, bl
	jmp	.LBB0_7
.LBB0_8:                                # %BB_14000124a.i.i
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	ecx, dword ptr [rax + 1]
	mov	rdx, qword ptr [rsp + 4712]
	mov	dword ptr [rdx + 8], ecx
	jmp	.LBB0_19
.LBB0_17:                               # %BB_1400013c0.i.i
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	rcx, qword ptr [rsp + 4712]
	mov	edx, dword ptr [rcx]
	add	dword ptr [rcx - 8], edx
	add	rax, 1
	add	qword ptr [rsp + 4712], -8
	jmp	.LBB0_1
.LBB0_18:                               # %BB_1400013f8.i.i
                                        #   in Loop: Header=BB0_1 Depth=1
	movsxd	rcx, dword ptr [rax + 1]
	add	rcx, r9
	mov	rdx, qword ptr [rsp + 4712]
	mov	qword ptr [rdx + 8], rcx
	jmp	.LBB0_19
.LBB0_4:                                # %BB_1400011bd.i.i
                                        #   in Loop: Header=BB0_1 Depth=1
	cmp	dword ptr [rax + 1], 0
	jne	.LBB0_19
# %bb.5:                                # %BB_1400011da.i.i
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	rcx, qword ptr [rsp + 4712]
	mov	qword ptr [rcx + 8], r8
	jmp	.LBB0_19
.LBB0_6:                                # %BB_140001211.i.i
                                        #   in Loop: Header=BB0_1 Depth=1
	add	rax, 1
	mov	rcx, qword ptr [rsp + 4712]
	mov	edx, dword ptr [rcx - 8]
	imul	edx, dword ptr [rcx]
.LBB0_7:                                # %BB_1400010b4.i.backedge.i
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	dword ptr [rcx - 8], edx
	add	qword ptr [rsp + 4712], -8
	jmp	.LBB0_1
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	mov	ecx, 4
.LBB0_16:                               # %BB_1400013ad.i.i
                                        #   in Loop: Header=BB0_1 Depth=1
	add	rax, rcx
	add	rdx, -8
	mov	qword ptr [rsp + 4712], rdx
	jmp	.LBB0_1
.LBB0_20:                               # %F_140001090.exit
	mov	rax, qword ptr [rsp + 4712]
	mov	eax, dword ptr [rax]
	add	rsp, 10000
	pop	rbx
	pop	rdi
	pop	rsi
	ret
	.p2align	2, 0x90
.LJTI0_0:
	.long	.LBB0_9-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_17-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_18-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_4-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_6-.LJTI0_0
.LJTI0_1:
	.long	.LBB0_13-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_11-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_10-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_20-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_12-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_1-.LJTI0_1
	.long	.LBB0_8-.LJTI0_1
	.seh_handlerdata
	.text
	.seh_endproc
                                        # -- End function
	.section	.rdata,"dr"
	.globl	GadgetFunctions         # @GadgetFunctions
	.p2align	3
GadgetFunctions:
	.quad	F_140001090_args

	.globl	GadgetVAs               # @GadgetVAs
	.p2align	3
GadgetVAs:
	.quad	5368713360              # 0x140001090

	.globl	GadgetCount             # @GadgetCount
	.p2align	2
GadgetCount:
	.long	1                       # 0x1

	.globl	ImageBase               # @ImageBase
	.p2align	3
ImageBase:
	.quad	5368709120              # 0x140000000


	.section	.drectve,"yn"
	.ascii	" /EXPORT:F_140001090_args"
	.ascii	" /EXPORT:GadgetFunctions,DATA"
	.ascii	" /EXPORT:GadgetVAs,DATA"
	.ascii	" /EXPORT:GadgetCount,DATA"
	.ascii	" /EXPORT:ImageBase,DATA"
	.addrsig
