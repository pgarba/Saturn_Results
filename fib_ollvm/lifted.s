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
	jle	.LBB0_1
# %bb.2:                                # %BB_1400019b6.i.i
	add	ecx, 1
	mov	eax, 1
	mov	edx, 1
	.p2align	4, 0x90
.LBB0_3:                                # %BB_1400019d0.i.i
                                        # =>This Inner Loop Header: Depth=1
	mov	r8d, eax
	mov	eax, edx
	add	eax, r8d
	add	ecx, -1
	mov	edx, r8d
	cmp	ecx, 1
	ja	.LBB0_3
# %bb.4:                                # %BB_140001a00.i.i
	mov	ecx, eax
	and	ecx, -256
	movzx	eax, al
	or	eax, ecx
	ret
.LBB0_1:
	mov	ecx, 38098944
	xor	eax, eax
	or	eax, ecx
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
