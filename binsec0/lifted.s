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
.seh_proc F_140001000_args
# %bb.0:                                # %entry
	mov	eax, 10008
	call	__chkstk
	sub	rsp, rax
	.seh_stackalloc 10008
	.seh_endprologue
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 4960], xmm0
	mov	r9b, byte ptr [rcx]
	test	r9b, r9b
	je	.LBB0_2
# %bb.1:                                # %BB_14000105f.i.i.preheader
	mov	byte ptr [rsp + 4960], r9b
.LBB0_2:                                # %BB_140001079.i.i
	mov	al, byte ptr [rcx + 1]
	test	al, al
	je	.LBB0_4
# %bb.3:                                # %BB_140001096.lr.ph.i.i
	mov	byte ptr [rsp + 4961], al
.LBB0_4:                                # %BB_1400010b0.i.i
	mov	al, byte ptr [rcx + 2]
	test	al, al
	je	.LBB0_6
# %bb.5:                                # %BB_1400010cd.lr.ph.i.i
	mov	byte ptr [rsp + 4962], al
.LBB0_6:                                # %BB_1400010e7.i.i
	mov	al, byte ptr [rcx + 3]
	test	al, al
	je	.LBB0_8
# %bb.7:                                # %BB_140001104.lr.ph.i.i
	mov	byte ptr [rsp + 4963], al
.LBB0_8:                                # %BB_14000111e.i.i
	lea	r8, [rsp + 4960]
	mov	al, byte ptr [rcx + 4]
	test	al, al
	je	.LBB0_10
# %bb.9:                                # %BB_14000113b.lr.ph.i.i
	mov	byte ptr [rsp + 4964], al
.LBB0_10:                               # %BB_140001155.i.i
	xor	eax, eax
	mov	dl, byte ptr [rcx + 5]
	mov	byte ptr [rsp + 4965], dl
	mov	dl, byte ptr [rcx + 6]
	mov	byte ptr [rsp + 4966], dl
	mov	dl, byte ptr [rcx + 7]
	mov	byte ptr [rsp + 4967], dl
	mov	dl, byte ptr [rcx + 8]
	mov	byte ptr [rsp + 4968], dl
	mov	dl, byte ptr [rcx + 9]
	mov	byte ptr [rsp + 4969], dl
	mov	dl, byte ptr [rcx + 10]
	mov	byte ptr [rsp + 4970], dl
	mov	dl, byte ptr [rcx + 11]
	mov	byte ptr [rsp + 4971], dl
	mov	dl, byte ptr [rcx + 12]
	mov	byte ptr [rsp + 4972], dl
	mov	dl, byte ptr [rcx + 13]
	mov	byte ptr [rsp + 4973], dl
	mov	dl, byte ptr [rcx + 14]
	mov	byte ptr [rsp + 4974], dl
	mov	cl, byte ptr [rcx + 15]
	mov	byte ptr [rsp + 4975], cl
	mov	qword ptr [rsp + 4944], r8
	test	r9b, r9b
	je	.LBB0_14
# %bb.11:                               # %BB_1400011a4.i.i.preheader
	lea	rcx, [rsp + 5000]
	add	rcx, -39
	.p2align	4, 0x90
.LBB0_12:                               # %BB_1400011a4.i.i
                                        # =>This Inner Loop Header: Depth=1
	movsx	edx, r9b
	add	eax, edx
	mov	qword ptr [rsp + 4944], rcx
	movzx	r9d, byte ptr [rcx]
	add	rcx, 1
	test	r9b, r9b
	jne	.LBB0_12
# %bb.13:                               # %BB_1400011c4.loopexit.i.i
	mov	eax, eax
.LBB0_14:                               # %F_140001000.exit
	add	rsp, 10008
	ret
	.seh_handlerdata
	.text
	.seh_endproc
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
