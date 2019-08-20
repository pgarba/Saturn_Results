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
	push	rsi
	push	rdi
	push	rbx
	sub	rsp, 32
	mov	r14, r8
	mov	rdi, rcx
	movabs	r15, 5368713792
	mov	byte ptr [rcx + 3376], 0
	mov	rax, qword ptr [rcx + 2312]
	mov	qword ptr [rcx + 2216], 0
	mov	dword ptr [rax - 4], 0
	mov	rcx, qword ptr [rcx + 2264]
	mov	qword ptr [rax - 16], rcx
	mov	ecx, dword ptr [rdi + 2248]
	mov	dword ptr [rax - 20], ecx
	mov	dword ptr [rax - 32], 0
	lea	rcx, [rax - 56]
	mov	qword ptr [rdi + 2248], rcx
	mov	qword ptr [rdi + 2264], 0
	mov	qword ptr [rdi + 2344], 17
	lea	rcx, [r15 - 524]
	mov	qword ptr [rax - 128], rcx
	add	rax, -128
	mov	qword ptr [rdi + 2312], rax
	lea	rdx, [r15 + 2832]
	mov	qword ptr [rdi + 2472], rdx
	mov	rcx, rdi
	call	__remill_function_call
	mov	rax, qword ptr [rdi + 2312]
	mov	byte ptr [rax + 80], 0
	mov	dword ptr [rax + 96], 0
	mov	rcx, qword ptr [rax + 104]
	mov	rcx, qword ptr [rcx + 8]
	cmp	byte ptr [rcx], 0
	je	.LBB0_2
	.p2align	4, 0x90
.LBB0_1:                                # %BB_140001059
                                        # =>This Inner Loop Header: Depth=1
	add	byte ptr [rax + 64], 1
	mov	ecx, dword ptr [rax + 96]
	add	ecx, 1
	mov	dword ptr [rax + 96], ecx
	mov	rdx, qword ptr [rax + 104]
	mov	rdx, qword ptr [rdx + 8]
	movsx	edx, byte ptr [rdx]
	cmp	ecx, edx
	jb	.LBB0_1
.LBB0_2:                                # %BB_140001073
	mov	dword ptr [rax + 96], 0
	mov	rcx, qword ptr [rax + 104]
	mov	rcx, qword ptr [rcx + 8]
	cmp	byte ptr [rcx + 1], 0
	je	.LBB0_4
	.p2align	4, 0x90
.LBB0_3:                                # %BB_140001094
                                        # =>This Inner Loop Header: Depth=1
	add	byte ptr [rax + 65], 1
	mov	ecx, dword ptr [rax + 96]
	add	ecx, 1
	mov	dword ptr [rax + 96], ecx
	mov	rdx, qword ptr [rax + 104]
	mov	rdx, qword ptr [rdx + 8]
	movsx	edx, byte ptr [rdx + 1]
	cmp	ecx, edx
	jb	.LBB0_3
.LBB0_4:                                # %BB_1400010ae
	mov	dword ptr [rax + 96], 0
	mov	rcx, qword ptr [rax + 104]
	mov	rcx, qword ptr [rcx + 8]
	cmp	byte ptr [rcx + 2], 0
	je	.LBB0_6
	.p2align	4, 0x90
.LBB0_5:                                # %BB_1400010cf
                                        # =>This Inner Loop Header: Depth=1
	add	byte ptr [rax + 66], 1
	mov	ecx, dword ptr [rax + 96]
	add	ecx, 1
	mov	dword ptr [rax + 96], ecx
	mov	rdx, qword ptr [rax + 104]
	mov	rdx, qword ptr [rdx + 8]
	movsx	edx, byte ptr [rdx + 2]
	cmp	ecx, edx
	jb	.LBB0_5
.LBB0_6:                                # %BB_1400010e9
	mov	dword ptr [rax + 96], 0
	mov	rcx, qword ptr [rax + 104]
	mov	rcx, qword ptr [rcx + 8]
	cmp	byte ptr [rcx + 3], 0
	je	.LBB0_8
	.p2align	4, 0x90
.LBB0_7:                                # %BB_14000110a
                                        # =>This Inner Loop Header: Depth=1
	add	byte ptr [rax + 67], 1
	mov	ecx, dword ptr [rax + 96]
	add	ecx, 1
	mov	dword ptr [rax + 96], ecx
	mov	rdx, qword ptr [rax + 104]
	mov	rdx, qword ptr [rdx + 8]
	movsx	edx, byte ptr [rdx + 3]
	cmp	ecx, edx
	jb	.LBB0_7
.LBB0_8:                                # %BB_140001124
	mov	dword ptr [rax + 96], 0
	mov	rcx, qword ptr [rax + 104]
	mov	rcx, qword ptr [rcx + 8]
	cmp	byte ptr [rcx + 4], 0
	je	.LBB0_10
	.p2align	4, 0x90
.LBB0_9:                                # %BB_140001145
                                        # =>This Inner Loop Header: Depth=1
	add	byte ptr [rax + 68], 1
	mov	ecx, dword ptr [rax + 96]
	add	ecx, 1
	mov	dword ptr [rax + 96], ecx
	mov	rdx, qword ptr [rax + 104]
	mov	rdx, qword ptr [rdx + 8]
	movsx	edx, byte ptr [rdx + 4]
	cmp	ecx, edx
	jb	.LBB0_9
.LBB0_10:                               # %BB_14000115f
	lea	rcx, [rax + 64]
	mov	dword ptr [rax + 92], 5
	mov	edx, 5
	.p2align	4, 0x90
.LBB0_11:                               # %BB_140001172
                                        # =>This Inner Loop Header: Depth=1
	mov	rsi, qword ptr [rax + 104]
	mov	rsi, qword ptr [rsi + 8]
	movsxd	rdx, edx
	movzx	ebx, byte ptr [rsi + rdx]
	mov	byte ptr [rdx + rax + 64], bl
	mov	edx, dword ptr [rax + 92]
	add	edx, 1
	mov	dword ptr [rax + 92], edx
	cmp	edx, 16
	jb	.LBB0_11
# %bb.12:                               # %BB_14000119c
	mov	dword ptr [rax + 96], 0
	xor	edx, edx
	.p2align	4, 0x90
.LBB0_13:                               # %BB_1400011af
                                        # =>This Inner Loop Header: Depth=1
	add	dword ptr [rax + 88], edx
	mov	edx, dword ptr [rax + 96]
	add	edx, 1
	mov	dword ptr [rax + 96], edx
	cmp	edx, 16
	jb	.LBB0_13
# %bb.14:                               # %BB_1400011cb
	mov	qword ptr [rax + 48], rcx
	mov	dl, byte ptr [rax + 64]
	test	dl, dl
	je	.LBB0_17
	.p2align	4, 0x90
.LBB0_15:                               # %BB_1400011e3
                                        # =>This Inner Loop Header: Depth=1
	movsx	ecx, dl
	add	dword ptr [rax + 88], ecx
	mov	rdx, qword ptr [rax + 48]
	lea	rcx, [rdx + 1]
	mov	qword ptr [rax + 48], rcx
	movzx	edx, byte ptr [rdx + 1]
	test	dl, dl
	jne	.LBB0_15
.LBB0_17:                               # %BB_140001206
	mov	qword ptr [rdi + 2216], rcx
	mov	byte ptr [rdi + 3376], 0
	mov	ecx, dword ptr [rax + 88]
	mov	qword ptr [rdi + 2264], rcx
	lea	rcx, [r15 + 73856]
	mov	qword ptr [rdi + 2248], rcx
	lea	rcx, [r15 - 42]
	mov	qword ptr [rax - 8], rcx
	add	rax, -8
	mov	qword ptr [rdi + 2312], rax
	mov	qword ptr [rdi + 2472], r15
	mov	rcx, rdi
	mov	rdx, r15
	mov	r8, r14
	call	__remill_function_call
	mov	rax, qword ptr [rdi + 2312]
	cmp	dword ptr [rax + 88], 1600
	mov	ecx, dword ptr [rdi + 2216]
	mov	dword ptr [rax + 44], ecx
	jne	.LBB0_19
# %bb.18:                               # %BB_140001228
	mov	byte ptr [rdi + 3376], 0
	lea	rcx, [r15 + 73868]
	mov	qword ptr [rdi + 2248], rcx
	lea	rcx, [r15 - 12]
	mov	qword ptr [rax - 8], rcx
	add	rax, -8
	mov	qword ptr [rdi + 2312], rax
	mov	qword ptr [rdi + 2472], r15
	mov	rcx, rdi
	mov	rdx, r15
	mov	r8, r14
	call	__remill_function_call
	mov	rax, qword ptr [rdi + 2312]
	mov	ecx, dword ptr [rdi + 2216]
	mov	dword ptr [rax + 40], ecx
.LBB0_19:                               # %BB_140001238
	mov	byte ptr [rdi + 3376], 0
	mov	qword ptr [rdi + 2216], 0
	mov	rcx, qword ptr [rax + 120]
	mov	qword ptr [rdi + 2472], rcx
	sub	rax, -128
	mov	qword ptr [rdi + 2312], rax
	mov	rax, r14
	add	rsp, 32
	pop	rbx
	pop	rdi
	pop	rsi
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
