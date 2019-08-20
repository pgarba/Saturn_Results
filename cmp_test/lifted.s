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
	mov	eax, 1
	cmp	ecx, 3
	jb	.LBB0_2
# %bb.1:                                # %BB_14000102a.lr.ph.i.i
	imul	edx, ecx
	add	edx, edx
	lea	eax, [rdx + 4*rdx]
	lea	edx, [rdx + 4*rdx]
	add	edx, 230
	or	eax, 1
	add	ecx, -3
	imul	ecx, edx
	lea	eax, [rax + rcx]
	add	eax, 230
.LBB0_2:                                # %F_140001000.exit
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
