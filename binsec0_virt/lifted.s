	.text
	.def	 @feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.intel_syntax noprefix
	.file	"lifted_code"
	.def	 F_140001000;
	.scl	2;
	.type	32;
	.endef
	.globl	F_140001000             # -- Begin function F_140001000
	.p2align	4, 0x90
F_140001000:                            # @F_140001000
# %bb.0:                                # %entry
	push	r15
	push	r14
	push	r13
	push	r12
	push	rsi
	push	rdi
	push	rbp
	push	rbx
	sub	rsp, 40
	mov	rsi, r8
	mov	rdi, rcx
	movabs	rbx, 5368721736
	mov	byte ptr [rcx + 3376], 0
	mov	rax, qword ptr [rcx + 2312]
	mov	dword ptr [rax - 4], 0
	mov	rcx, qword ptr [rcx + 2264]
	mov	qword ptr [rax - 16], rcx
	mov	ecx, dword ptr [rdi + 2248]
	mov	dword ptr [rax - 20], ecx
	lea	rcx, [rbx - 8482]
	mov	qword ptr [rax - 528], rcx
	add	rax, -528
	mov	qword ptr [rdi + 2312], rax
	lea	rdx, [rbx - 6072]
	mov	qword ptr [rdi + 2472], rdx
	mov	rcx, rdi
	call	__remill_function_call
	mov	rax, qword ptr [rdi + 2312]
	lea	rcx, [rax + 176]
	mov	qword ptr [rax + 168], rcx
	lea	rcx, [rbx + 106168]
	mov	qword ptr [rax + 160], rcx
	mov	r13d, -132
	mov	r14d, -137
	mov	r15d, -150
	mov	r12d, -175
	jmp	.LBB0_1
	.p2align	4, 0x90
.LBB0_48:                               # %BB_140001727
                                        #   in Loop: Header=BB0_1 Depth=1
	add	qword ptr [rax + 168], 8
	add	qword ptr [rax + 160], 4
.LBB0_1:                                # %BB_140001045
                                        # =>This Inner Loop Header: Depth=1
	mov	rcx, qword ptr [rax + 160]
	movzx	ecx, byte ptr [rcx]
	mov	qword ptr [rdi + 2248], rcx
	mov	edx, ecx
	add	edx, -7
	mov	qword ptr [rdi + 2264], rdx
	mov	dword ptr [rax + 156], ecx
	mov	dword ptr [rax + 152], edx
	je	.LBB0_30
# %bb.2:                                # %BB_140001069
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	ecx, dword ptr [rax + 156]
	add	ecx, -22
	mov	dword ptr [rax + 148], ecx
	je	.LBB0_53
# %bb.3:                                # %BB_140001085
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	ecx, dword ptr [rax + 156]
	add	ecx, -31
	mov	dword ptr [rax + 144], ecx
	je	.LBB0_25
# %bb.4:                                # %BB_1400010a1
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	ecx, dword ptr [rax + 156]
	add	ecx, -34
	mov	dword ptr [rax + 140], ecx
	mov	byte ptr [rdi + 3376], 0
	je	.LBB0_35
# %bb.5:                                # %BB_1400010bd
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	ecx, dword ptr [rax + 156]
	add	ecx, -55
	mov	dword ptr [rax + 136], ecx
	je	.LBB0_31
# %bb.6:                                # %BB_1400010d9
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	ecx, dword ptr [rax + 156]
	add	ecx, -58
	mov	dword ptr [rax + 132], ecx
	je	.LBB0_54
# %bb.7:                                # %BB_1400010f5
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	ecx, dword ptr [rax + 156]
	add	ecx, -60
	mov	dword ptr [rax + 128], ecx
	je	.LBB0_52
# %bb.8:                                # %BB_140001111
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	ecx, dword ptr [rax + 156]
	add	ecx, -85
	mov	dword ptr [rax + 124], ecx
	je	.LBB0_34
# %bb.9:                                # %BB_14000112a
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	ecx, dword ptr [rax + 156]
	add	ecx, -89
	mov	dword ptr [rax + 120], ecx
	je	.LBB0_49
# %bb.10:                               # %BB_140001143
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	ecx, dword ptr [rax + 156]
	add	ecx, -94
	mov	dword ptr [rax + 116], ecx
	je	.LBB0_50
# %bb.11:                               # %BB_14000115c
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	ecx, dword ptr [rax + 156]
	add	ecx, -108
	mov	dword ptr [rax + 112], ecx
	je	.LBB0_38
# %bb.12:                               # %BB_140001175
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	ecx, dword ptr [rax + 156]
	add	ecx, -125
	mov	dword ptr [rax + 108], ecx
	je	.LBB0_33
# %bb.13:                               # %BB_14000118e
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	ecx, dword ptr [rax + 156]
	add	ecx, r13d
	mov	dword ptr [rax + 104], ecx
	je	.LBB0_42
# %bb.14:                               # %BB_1400011a9
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	ecx, dword ptr [rax + 156]
	add	ecx, r14d
	mov	dword ptr [rax + 100], ecx
	je	.LBB0_40
# %bb.15:                               # %BB_1400011c4
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	ecx, dword ptr [rax + 156]
	add	ecx, r15d
	mov	dword ptr [rax + 96], ecx
	je	.LBB0_41
# %bb.16:                               # %BB_1400011df
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	ecx, dword ptr [rax + 156]
	add	ecx, r12d
	mov	dword ptr [rax + 92], ecx
	je	.LBB0_51
# %bb.17:                               # %BB_1400011fa
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	ecx, dword ptr [rax + 156]
	mov	edx, -191
	add	ecx, edx
	mov	dword ptr [rax + 88], ecx
	je	.LBB0_26
# %bb.18:                               # %BB_140001215
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	ecx, dword ptr [rax + 156]
	mov	edx, -214
	add	ecx, edx
	mov	dword ptr [rax + 84], ecx
	je	.LBB0_49
# %bb.19:                               # %BB_140001230
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	ecx, dword ptr [rax + 156]
	mov	edx, -233
	add	ecx, edx
	mov	dword ptr [rax + 80], ecx
	je	.LBB0_32
# %bb.20:                               # %BB_14000124b
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	ecx, dword ptr [rax + 156]
	mov	edx, -235
	add	ecx, edx
	mov	dword ptr [rax + 76], ecx
	je	.LBB0_37
# %bb.21:                               # %BB_140001266
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	ecx, dword ptr [rax + 156]
	mov	edx, -239
	add	ecx, edx
	mov	dword ptr [rax + 72], ecx
	je	.LBB0_36
# %bb.22:                               # %BB_140001281
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	ecx, dword ptr [rax + 156]
	mov	edx, -252
	add	ecx, edx
	mov	dword ptr [rax + 68], ecx
	je	.LBB0_39
# %bb.23:                               # %BB_14000129c
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	ecx, dword ptr [rax + 156]
	mov	edx, -254
	add	ecx, edx
	mov	dword ptr [rax + 64], ecx
	jne	.LBB0_1
# %bb.24:                               # %BB_1400018af
                                        #   in Loop: Header=BB0_1 Depth=1
	add	qword ptr [rax + 160], 1
	mov	rcx, qword ptr [rax + 168]
	mov	edx, dword ptr [rcx]
	add	dword ptr [rcx - 8], edx
	add	qword ptr [rax + 168], -8
	jmp	.LBB0_1
	.p2align	4, 0x90
.LBB0_30:                               # %BB_14000137a
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	rcx, qword ptr [rax + 160]
	mov	rdx, qword ptr [rax + 168]
	lea	rbp, [rcx + 1]
	mov	qword ptr [rax + 160], rbp
	mov	ecx, dword ptr [rcx + 1]
	mov	dword ptr [rdx + 8], ecx
	jmp	.LBB0_48
	.p2align	4, 0x90
.LBB0_53:                               # %BB_140001882
                                        #   in Loop: Header=BB0_1 Depth=1
	add	qword ptr [rax + 160], 1
	jmp	.LBB0_1
.LBB0_25:                               # %BB_1400012bc
                                        #   in Loop: Header=BB0_1 Depth=1
	add	qword ptr [rax + 160], 1
	mov	rcx, qword ptr [rax + 168]
	mov	rdx, qword ptr [rcx - 8]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rcx], rdx
	add	qword ptr [rax + 168], -16
	jmp	.LBB0_1
.LBB0_31:                               # %BB_1400013d0
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	rcx, qword ptr [rax + 160]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rax + 160], rdx
	movsxd	rdx, dword ptr [rcx + 1]
	add	rcx, rdx
	add	rcx, 1
	mov	qword ptr [rax + 160], rcx
	jmp	.LBB0_1
.LBB0_54:                               # %BB_1400018fc
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	rcx, qword ptr [rax + 160]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rax + 160], rdx
	mov	qword ptr [rdi + 2216], rdx
	mov	ecx, dword ptr [rcx + 1]
	mov	edx, ecx
	add	edx, -1
	mov	qword ptr [rdi + 2264], rdx
	mov	dword ptr [rax + 52], ecx
	mov	dword ptr [rax + 48], edx
	mov	byte ptr [rdi + 3376], 0
	je	.LBB0_59
# %bb.55:                               # %BB_14000192d
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	ecx, dword ptr [rax + 52]
	add	ecx, -2
	mov	qword ptr [rdi + 2216], rcx
	mov	dword ptr [rax + 44], ecx
	mov	byte ptr [rdi + 3376], 0
	jne	.LBB0_58
# %bb.56:                               # %BB_140001965
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	rcx, qword ptr [rax + 488]
	mov	qword ptr [rdi + 2248], rcx
	lea	rcx, [rbx - 6102]
	mov	qword ptr [rax - 8], rcx
	add	rax, -8
	mov	qword ptr [rdi + 2312], rax
	mov	qword ptr [rdi + 2472], rbx
	mov	rcx, rdi
	mov	rdx, rbx
	mov	r8, rsi
	call	__remill_function_call
	mov	rax, qword ptr [rdi + 2312]
	lea	rcx, [rax + 36]
	jmp	.LBB0_57
.LBB0_52:                               # %BB_140001854
                                        #   in Loop: Header=BB0_1 Depth=1
	add	qword ptr [rax + 160], 1
	mov	rcx, qword ptr [rax + 168]
	movsx	edx, byte ptr [rcx]
	mov	dword ptr [rcx], edx
	jmp	.LBB0_1
.LBB0_34:                               # %BB_140001480
                                        #   in Loop: Header=BB0_1 Depth=1
	add	qword ptr [rax + 160], 1
	jmp	.LBB0_1
.LBB0_59:                               # %BB_140001948
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	ecx, dword ptr [rax + 480]
	mov	qword ptr [rdi + 2264], rcx
	mov	rcx, qword ptr [rax + 472]
	mov	qword ptr [rdi + 2248], rcx
	lea	rcx, [rbx - 6124]
	mov	qword ptr [rax - 8], rcx
	add	rax, -8
	mov	qword ptr [rdi + 2312], rax
	mov	qword ptr [rdi + 2472], rbx
	mov	rcx, rdi
	mov	rdx, rbx
	mov	r8, rsi
	call	__remill_function_call
	mov	rax, qword ptr [rdi + 2312]
	lea	rcx, [rax + 40]
.LBB0_57:                               # %BB_140001976.sink.split
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	edx, dword ptr [rdi + 2216]
	mov	dword ptr [rcx], edx
.LBB0_58:                               # %BB_140001976
                                        #   in Loop: Header=BB0_1 Depth=1
	add	qword ptr [rax + 160], 4
	jmp	.LBB0_1
.LBB0_49:                               # %BB_140001499
                                        #   in Loop: Header=BB0_1 Depth=1
	add	qword ptr [rax + 160], 1
	mov	rcx, qword ptr [rax + 168]
	mov	edx, dword ptr [rcx]
	add	qword ptr [rcx - 8], rdx
	add	qword ptr [rax + 168], -8
	jmp	.LBB0_1
.LBB0_50:                               # %BB_1400017a8
                                        #   in Loop: Header=BB0_1 Depth=1
	add	qword ptr [rax + 160], 1
	mov	rcx, qword ptr [rax + 168]
	mov	edx, dword ptr [rcx]
	xor	ebp, ebp
	cmp	edx, dword ptr [rcx - 8]
	sete	bpl
	mov	dword ptr [rcx - 8], ebp
	add	qword ptr [rax + 168], -8
	jmp	.LBB0_1
.LBB0_38:                               # %BB_1400015a4
                                        #   in Loop: Header=BB0_1 Depth=1
	add	qword ptr [rax + 160], 1
	mov	rcx, qword ptr [rax + 168]
	mov	rdx, qword ptr [rcx]
	movzx	edx, byte ptr [rdx]
	mov	byte ptr [rcx], dl
	jmp	.LBB0_1
.LBB0_33:                               # %BB_14000143b
                                        #   in Loop: Header=BB0_1 Depth=1
	add	qword ptr [rax + 160], 1
	mov	rcx, qword ptr [rax + 168]
	mov	edx, dword ptr [rcx - 8]
	mov	rcx, qword ptr [rcx]
	mov	dword ptr [rcx], edx
	add	qword ptr [rax + 168], -16
	jmp	.LBB0_1
.LBB0_42:                               # %BB_1400016b5
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	rcx, qword ptr [rax + 160]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rax + 160], rdx
	mov	ecx, dword ptr [rcx + 1]
	mov	dword ptr [rax + 60], ecx
	test	ecx, ecx
	je	.LBB0_45
# %bb.43:                               # %BB_1400016df
                                        #   in Loop: Header=BB0_1 Depth=1
	add	ecx, -1
	mov	dword ptr [rax + 56], ecx
	jne	.LBB0_48
# %bb.44:                               # %BB_1400016f5
                                        #   in Loop: Header=BB0_1 Depth=1
	lea	rcx, [rax + 504]
	jmp	.LBB0_46
.LBB0_40:                               # %BB_140001637
                                        #   in Loop: Header=BB0_1 Depth=1
	add	qword ptr [rax + 160], 1
	mov	rcx, qword ptr [rax + 168]
	mov	edx, dword ptr [rcx]
	imul	edx, dword ptr [rcx - 8]
	mov	dword ptr [rcx - 8], edx
	add	qword ptr [rax + 168], -8
	jmp	.LBB0_1
.LBB0_41:                               # %BB_140001685
                                        #   in Loop: Header=BB0_1 Depth=1
	add	qword ptr [rax + 160], 1
	mov	rcx, qword ptr [rax + 168]
	mov	rdx, qword ptr [rcx]
	mov	edx, dword ptr [rdx]
	mov	dword ptr [rcx], edx
	jmp	.LBB0_1
.LBB0_45:                               # %BB_140001713
                                        #   in Loop: Header=BB0_1 Depth=1
	lea	rcx, [rax + 500]
.LBB0_46:                               # %BB_140001727
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	rdx, qword ptr [rax + 168]
.LBB0_47:                               # %BB_140001727
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	qword ptr [rdx + 8], rcx
	jmp	.LBB0_48
.LBB0_51:                               # %BB_1400017fe
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	rcx, qword ptr [rax + 160]
	mov	rdx, qword ptr [rax + 168]
	lea	rbp, [rcx + 1]
	mov	qword ptr [rax + 160], rbp
	mov	ecx, dword ptr [rcx + 1]
	mov	dword ptr [rdx + 8], ecx
	add	qword ptr [rax + 168], 8
	add	qword ptr [rax + 160], 8
	jmp	.LBB0_1
.LBB0_26:                               # %BB_140001303
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	rcx, qword ptr [rax + 160]
	mov	rdx, qword ptr [rax + 168]
	add	rcx, 1
	mov	qword ptr [rax + 160], rcx
	cmp	dword ptr [rdx], 0
	je	.LBB0_27
# %bb.28:                               # %BB_140001328
                                        #   in Loop: Header=BB0_1 Depth=1
	movsxd	rdx, dword ptr [rcx]
	jmp	.LBB0_29
.LBB0_32:                               # %BB_140001409
                                        #   in Loop: Header=BB0_1 Depth=1
	add	qword ptr [rax + 160], 1
	mov	rcx, qword ptr [rax + 168]
	mov	rdx, qword ptr [rcx]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rcx], rdx
	jmp	.LBB0_1
.LBB0_27:                               #   in Loop: Header=BB0_1 Depth=1
	mov	edx, 4
.LBB0_29:                               # %BB_140001361
                                        #   in Loop: Header=BB0_1 Depth=1
	add	rdx, rcx
	mov	qword ptr [rax + 160], rdx
	add	qword ptr [rax + 168], -8
	jmp	.LBB0_1
.LBB0_37:                               # %BB_140001542
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	rcx, qword ptr [rax + 160]
	mov	rdx, qword ptr [rax + 168]
	lea	rbp, [rcx + 1]
	mov	qword ptr [rax + 160], rbp
	movsxd	rcx, dword ptr [rcx + 1]
	add	rcx, qword ptr [rbx + 106400]
	jmp	.LBB0_47
.LBB0_36:                               # %BB_140001513
                                        #   in Loop: Header=BB0_1 Depth=1
	add	qword ptr [rax + 160], 1
	jmp	.LBB0_1
.LBB0_39:                               # %BB_1400015d4
                                        #   in Loop: Header=BB0_1 Depth=1
	mov	rcx, qword ptr [rax + 160]
	mov	rdx, qword ptr [rax + 168]
	lea	rbp, [rcx + 1]
	mov	qword ptr [rax + 160], rbp
	movsxd	rcx, dword ptr [rcx + 1]
	add	rcx, rax
	add	rcx, 432
	jmp	.LBB0_47
.LBB0_35:                               # %BB_1400014ed
	add	qword ptr [rax + 160], 1
	mov	rcx, qword ptr [rax + 168]
	mov	ecx, dword ptr [rcx]
	mov	qword ptr [rdi + 2216], rcx
	mov	rcx, qword ptr [rax + 520]
	mov	qword ptr [rdi + 2472], rcx
	add	rax, 528
	mov	qword ptr [rdi + 2312], rax
	mov	rax, rsi
	add	rsp, 40
	pop	rbx
	pop	rbp
	pop	rdi
	pop	rsi
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
                                        # -- End function
	.section	.rdata,"dr"
	.globl	GadgetFunctions         # @GadgetFunctions
	.p2align	3
GadgetFunctions:
	.quad	F_140001000

	.globl	GadgetVAs               # @GadgetVAs
	.p2align	3
GadgetVAs:
	.quad	5368713216              # 0x140001000

	.globl	GadgetCount             # @GadgetCount
	.p2align	2
GadgetCount:
	.long	1                       # 0x1

	.globl	ImageBase               # @ImageBase
	.p2align	3
ImageBase:
	.quad	5368709120              # 0x140000000


	.section	.drectve,"yn"
	.ascii	" /EXPORT:GadgetFunctions,DATA"
	.ascii	" /EXPORT:GadgetVAs,DATA"
	.ascii	" /EXPORT:GadgetCount,DATA"
	.ascii	" /EXPORT:ImageBase,DATA"
	.addrsig
