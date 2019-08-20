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
	mov	rax, r8
	mov	rdx, qword ptr [rcx + 2280]
	mov	r8, qword ptr [rcx + 2312]
	mov	qword ptr [r8 - 8], rdx
	lea	r11, [r8 + 48]
	mov	r9, qword ptr [r8 + 48]
	mov	r10d, dword ptr [r8 + 40]
	mov	qword ptr [rcx + 2376], r10
	mov	edx, dword ptr [rcx + 2360]
	mov	dword ptr [r8 - 12], edx
	mov	edx, dword ptr [rcx + 2344]
	mov	dword ptr [r8 - 16], edx
	mov	edx, dword ptr [rcx + 2264]
	mov	dword ptr [r8 - 20], edx
	mov	edx, dword ptr [rcx + 2248]
	mov	dword ptr [r8 - 24], edx
	mov	edx, dword ptr [r8 + 48]
	mov	dword ptr [r8 - 28], edx
	mov	qword ptr [rcx + 2392], r11
	mov	qword ptr [r8 - 40], r11
	mov	qword ptr [r8 - 48], r11
	mov	qword ptr [r8 - 56], r11
	mov	qword ptr [r8 - 64], r11
	mov	dword ptr [r8 - 68], 0
	mov	qword ptr [r8 - 88], r9
	mov	dword ptr [r8 - 92], r10d
	xor	edx, edx
	test	dl, dl
	jne	.LBB0_2
	.p2align	4, 0x90
.LBB0_1:                                # %BB_140001078
                                        # =>This Inner Loop Header: Depth=1
	mov	r9, qword ptr [r8 - 40]
	movsxd	rdx, edx
	movzx	edx, byte ptr [r9 + rdx]
	add	dword ptr [r8 - 28], edx
	mov	edx, dword ptr [r8 - 68]
	add	edx, 1
	mov	dword ptr [r8 - 68], edx
	cmp	edx, 8
	jb	.LBB0_1
.LBB0_2:                                # %BB_14000109e
	mov	dword ptr [r8 - 72], 0
	xor	edx, edx
	.p2align	4, 0x90
.LBB0_3:                                # %BB_1400010b1
                                        # =>This Inner Loop Header: Depth=1
	mov	r9, qword ptr [r8 - 48]
	movsxd	rdx, edx
	movzx	edx, word ptr [r9 + 2*rdx]
	add	dword ptr [r8 - 28], edx
	mov	edx, dword ptr [r8 - 72]
	add	edx, 1
	mov	dword ptr [r8 - 72], edx
	cmp	edx, 4
	jb	.LBB0_3
# %bb.4:                                # %BB_1400010d7
	mov	dword ptr [r8 - 76], 0
	xor	edx, edx
	.p2align	4, 0x90
.LBB0_5:                                # %BB_1400010ea
                                        # =>This Inner Loop Header: Depth=1
	mov	r9, qword ptr [r8 - 56]
	movsxd	rdx, edx
	mov	edx, dword ptr [r9 + 4*rdx]
	add	dword ptr [r8 - 28], edx
	mov	edx, dword ptr [r8 - 76]
	add	edx, 1
	mov	dword ptr [r8 - 76], edx
	cmp	edx, 2
	jb	.LBB0_5
# %bb.6:                                # %BB_14000110f
	mov	dword ptr [r8 - 80], 0
	.p2align	4, 0x90
.LBB0_7:                                # %BB_140001122
                                        # =>This Inner Loop Header: Depth=1
	mov	r9, qword ptr [r8 - 64]
	movsxd	rdx, dword ptr [r8 - 28]
	add	rdx, qword ptr [r9]
	mov	dword ptr [r8 - 28], edx
	add	dword ptr [r8 - 80], 1
	je	.LBB0_7
# %bb.8:                                # %BB_14000114e
	mov	r9d, edx
	mov	qword ptr [rcx + 2248], rdx
	mov	qword ptr [rcx + 2264], r9
	mov	byte ptr [rcx + 3376], 0
	movsxd	rdx, dword ptr [r8 - 28]
	imul	rdx, qword ptr [r8 + 48]
	imul	rdx, rdx, 235235
	mov	qword ptr [rcx + 2216], rdx
	mov	rdx, qword ptr [r8 - 8]
	mov	qword ptr [rcx + 2280], rdx
	mov	rdx, qword ptr [r8]
	mov	qword ptr [rcx + 2472], rdx
	add	r8, 8
	mov	qword ptr [rcx + 2312], r8
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
