	.text
	.def	 @feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.intel_syntax noprefix
	.file	"lifted_code"
	.def	 F_140001000_args;
	.scl	2;
	.type	32;
	.endef
	.globl	F_140001000_args        # -- Begin function F_140001000_args
	.p2align	4, 0x90
F_140001000_args:                       # @F_140001000_args
# %bb.0:                                # %entry
	test	ecx, ecx
	je	.LBB0_1
# %bb.2:                                # %BB_14000102e.i.i.preheader
	lea	eax, [rcx - 1]
	mov	r8d, ecx
	and	r8d, 7
	cmp	eax, 7
	jae	.LBB0_4
# %bb.3:
	mov	ecx, 1
	mov	edx, 1
	mov	eax, edx
	test	r8d, r8d
	jne	.LBB0_7
	jmp	.LBB0_9
.LBB0_1:
	xor	eax, eax
	ret
.LBB0_4:                                # %BB_14000102e.i.i.preheader.new
	mov	eax, r8d
	sub	eax, ecx
	mov	ecx, 1
	mov	edx, 1
	.p2align	4, 0x90
.LBB0_5:                                # %BB_14000102e.i.i
                                        # =>This Inner Loop Header: Depth=1
	add	ecx, edx
	add	edx, ecx
	add	ecx, edx
	add	edx, ecx
	add	ecx, edx
	add	edx, ecx
	add	ecx, edx
	add	edx, ecx
	add	eax, 8
	jne	.LBB0_5
# %bb.6:                                # %F_140001000.exit.loopexit.i.unr-lcssa
	mov	eax, edx
	test	r8d, r8d
	je	.LBB0_9
.LBB0_7:                                # %BB_14000102e.i.i.epil.preheader
	neg	r8d
	.p2align	4, 0x90
.LBB0_8:                                # %BB_14000102e.i.i.epil
                                        # =>This Inner Loop Header: Depth=1
	mov	eax, ecx
	add	eax, edx
	mov	ecx, edx
	mov	edx, eax
	inc	r8d
	jne	.LBB0_8
.LBB0_9:                                # %F_140001000.exit.loopexit.i
	mov	eax, eax
	ret
                                        # -- End function
	.section	.rdata,"dr"
	.globl	GadgetFunctions         # @GadgetFunctions
	.p2align	3
GadgetFunctions:
	.quad	F_140001000_args

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
	.ascii	" /EXPORT:F_140001000_args"
	.ascii	" /EXPORT:GadgetFunctions,DATA"
	.ascii	" /EXPORT:GadgetVAs,DATA"
	.ascii	" /EXPORT:GadgetCount,DATA"
	.ascii	" /EXPORT:ImageBase,DATA"
	.addrsig
