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
	test	r8d, r8d
	je	.LBB0_1
# %bb.2:                                # %F_140001000.exit
	imul	eax, edx, 777
	add	eax, 950691098
	ret
	.p2align	4, 0x90
.LBB0_1:                                # %BB_140001074.i.us.i
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_1
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
