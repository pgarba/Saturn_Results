	.text
	.def	 @feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"result.c"
	.def	 main;
	.scl	2;
	.type	32;
	.endef
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
main:                                   # @main
.seh_proc main
# %bb.0:                                # %entry
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movl	$0, 84(%rsp)
	movq	%r8, 72(%rsp)
	movq	%rdx, 64(%rsp)
	movl	%ecx, 60(%rsp)
	callq	megaInit
	movl	60(%rsp), %ecx
	movl	%ecx, _global_argc(%rip)
	movq	64(%rsp), %rdx
	movq	%rdx, _global_argv(%rip)
	movq	72(%rsp), %rdx
	movq	%rdx, _global_envp(%rip)
	movl	$1, 48(%rsp)
	movl	60(%rsp), %ecx
	callq	func0
	movl	%eax, 52(%rsp)
	movl	52(%rsp), %eax
	movl	%eax, 56(%rsp)
	movl	56(%rsp), %edx
	leaq	"??_C@_03PELOGHMK@?$CFi?6?$AA@"(%rip), %rcx
	callq	printf
	movl	56(%rsp), %edx
	movl	%eax, 44(%rsp)          # 4-byte Spill
	movl	%edx, %eax
	addq	$88, %rsp
	retq
	.seh_handlerdata
	.text
	.seh_endproc
                                        # -- End function
	.def	 megaInit;
	.scl	2;
	.type	32;
	.endef
	.globl	megaInit                # -- Begin function megaInit
	.p2align	4, 0x90
megaInit:                               # @megaInit
# %bb.0:                                # %entry
	retq
                                        # -- End function
	.def	 func0;
	.scl	2;
	.type	32;
	.endef
	.globl	func0                   # -- Begin function func0
	.p2align	4, 0x90
func0:                                  # @func0
.seh_proc func0
# %bb.0:                                # %entry
	subq	$344, %rsp              # imm = 0x158
	.seh_stackalloc 344
	.seh_endprologue
	leaq	64(%rsp), %rax
	movl	%ecx, 340(%rsp)
	movq	%rax, 56(%rsp)
	leaq	_1_func0_$array(%rip), %rax
	movq	%rax, 48(%rsp)
.LBB2_1:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	48(%rsp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$9, %edx
	movl	%ecx, 44(%rsp)          # 4-byte Spill
	movl	%edx, 40(%rsp)          # 4-byte Spill
	je	.LBB2_8
	jmp	.LBB2_19
.LBB2_19:                               # %while.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	44(%rsp), %eax          # 4-byte Reload
	subl	$11, %eax
	movl	%eax, 36(%rsp)          # 4-byte Spill
	je	.LBB2_9
	jmp	.LBB2_20
.LBB2_20:                               # %while.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	44(%rsp), %eax          # 4-byte Reload
	subl	$32, %eax
	movl	%eax, 32(%rsp)          # 4-byte Spill
	je	.LBB2_11
	jmp	.LBB2_21
.LBB2_21:                               # %while.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	44(%rsp), %eax          # 4-byte Reload
	subl	$42, %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	je	.LBB2_6
	jmp	.LBB2_22
.LBB2_22:                               # %while.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	44(%rsp), %eax          # 4-byte Reload
	subl	$161, %eax
	movl	%eax, 24(%rsp)          # 4-byte Spill
	je	.LBB2_7
	jmp	.LBB2_23
.LBB2_23:                               # %while.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	44(%rsp), %eax          # 4-byte Reload
	subl	$175, %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	je	.LBB2_16
	jmp	.LBB2_24
.LBB2_24:                               # %while.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	44(%rsp), %eax          # 4-byte Reload
	subl	$181, %eax
	movl	%eax, 16(%rsp)          # 4-byte Spill
	je	.LBB2_17
	jmp	.LBB2_25
.LBB2_25:                               # %while.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	44(%rsp), %eax          # 4-byte Reload
	subl	$184, %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	je	.LBB2_2
	jmp	.LBB2_26
.LBB2_26:                               # %while.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	44(%rsp), %eax          # 4-byte Reload
	subl	$194, %eax
	movl	%eax, 8(%rsp)           # 4-byte Spill
	je	.LBB2_5
	jmp	.LBB2_27
.LBB2_27:                               # %while.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	44(%rsp), %eax          # 4-byte Reload
	subl	$242, %eax
	movl	%eax, 4(%rsp)           # 4-byte Spill
	je	.LBB2_12
	jmp	.LBB2_28
.LBB2_28:                               # %while.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	44(%rsp), %eax          # 4-byte Reload
	subl	$254, %eax
	movl	%eax, (%rsp)            # 4-byte Spill
	je	.LBB2_10
	jmp	.LBB2_18
.LBB2_2:                                # %sw.bb
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	48(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	jne	.LBB2_4
	jmp	.LBB2_3
.LBB2_3:                                # %sw.bb6
                                        #   in Loop: Header=BB2_1 Depth=1
	leaq	340(%rsp), %rax
	movq	56(%rsp), %rcx
	movq	%rax, 8(%rcx)
.LBB2_4:                                # %sw.epilog
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	56(%rsp), %rax
	addq	$8, %rax
	movq	%rax, 56(%rsp)
	movq	48(%rsp), %rax
	addq	$4, %rax
	movq	%rax, 48(%rsp)
	jmp	.LBB2_18
.LBB2_5:                                # %sw.bb12
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	48(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 48(%rsp)
	movq	56(%rsp), %rax
	movl	(%rax), %ecx
	movq	56(%rsp), %rax
	imull	-8(%rax), %ecx
	movq	56(%rsp), %rax
	movl	%ecx, -8(%rax)
	movq	56(%rsp), %rax
	addq	$-8, %rax
	movq	%rax, 56(%rsp)
	jmp	.LBB2_18
.LBB2_6:                                # %sw.bb25
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	48(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	movl	(%rax), %ecx
	movq	56(%rsp), %rax
	movl	%ecx, 8(%rax)
	movq	56(%rsp), %rax
	addq	$8, %rax
	movq	%rax, 56(%rsp)
	movq	48(%rsp), %rax
	addq	$4, %rax
	movq	%rax, 48(%rsp)
	jmp	.LBB2_18
.LBB2_7:                                # %sw.bb36
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	48(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 48(%rsp)
	movq	56(%rsp), %rax
	movl	(%rax), %ecx
	movq	56(%rsp), %rax
	movq	-8(%rax), %rax
	movl	%ecx, (%rax)
	movq	56(%rsp), %rax
	addq	$-16, %rax
	movq	%rax, 56(%rsp)
	jmp	.LBB2_18
.LBB2_8:                                # %sw.bb47
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	48(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	movl	(%rax), %ecx
	movq	48(%rsp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, 48(%rsp)
	jmp	.LBB2_18
.LBB2_9:                                # %sw.bb53
	movq	48(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 48(%rsp)
	movq	56(%rsp), %rax
	movl	(%rax), %eax
	addq	$344, %rsp              # imm = 0x158
	retq
.LBB2_10:                               # %sw.bb59
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	48(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 48(%rsp)
	movq	56(%rsp), %rax
	movq	(%rax), %rax
	movl	(%rax), %ecx
	movq	56(%rsp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB2_18
.LBB2_11:                               # %sw.bb68
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	48(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 48(%rsp)
	movq	56(%rsp), %rax
	movl	-8(%rax), %ecx
	movq	56(%rsp), %rax
	cmpl	(%rax), %ecx
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movq	56(%rsp), %rax
	movl	%ecx, -8(%rax)
	movq	56(%rsp), %rax
	addq	$-8, %rax
	movq	%rax, 56(%rsp)
	jmp	.LBB2_18
.LBB2_12:                               # %sw.bb83
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	48(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 48(%rsp)
	movq	56(%rsp), %rax
	cmpl	$0, (%rax)
	je	.LBB2_14
# %bb.13:                               # %if.then
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	48(%rsp), %rax
	movl	(%rax), %ecx
	movq	48(%rsp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, 48(%rsp)
	jmp	.LBB2_15
.LBB2_14:                               # %if.else
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	48(%rsp), %rax
	addq	$4, %rax
	movq	%rax, 48(%rsp)
.LBB2_15:                               # %if.end
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	56(%rsp), %rax
	addq	$-8, %rax
	movq	%rax, 56(%rsp)
	jmp	.LBB2_18
.LBB2_16:                               # %sw.bb97
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	48(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 48(%rsp)
	movq	56(%rsp), %rax
	movl	-8(%rax), %ecx
	movq	56(%rsp), %rax
	addl	(%rax), %ecx
	movq	56(%rsp), %rax
	movl	%ecx, -8(%rax)
	movq	56(%rsp), %rax
	addq	$-8, %rax
	movq	%rax, 56(%rsp)
	jmp	.LBB2_18
.LBB2_17:                               # %sw.bb111
                                        #   in Loop: Header=BB2_1 Depth=1
	leaq	328(%rsp), %rax
	movq	48(%rsp), %rcx
	addq	$1, %rcx
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movslq	(%rcx), %rcx
	addq	%rcx, %rax
	movq	56(%rsp), %rcx
	movq	%rax, 8(%rcx)
	movq	56(%rsp), %rax
	addq	$8, %rax
	movq	%rax, 56(%rsp)
	movq	48(%rsp), %rax
	addq	$4, %rax
	movq	%rax, 48(%rsp)
.LBB2_18:                               # %sw.epilog125
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_1
	.seh_handlerdata
	.text
	.seh_endproc
                                        # -- End function
	.bss
	.globl	_global_argv            # @_global_argv
	.p2align	3
_global_argv:
	.quad	0

	.globl	_global_argc            # @_global_argc
	.p2align	2
_global_argc:
	.long	0                       # 0x0

	.globl	_global_envp            # @_global_envp
	.p2align	3
_global_envp:
	.quad	0

	.section	.rdata,"dr",discard,"??_C@_00CNPNBAHC@?$AA@"
	.globl	"??_C@_00CNPNBAHC@?$AA@" # @"??_C@_00CNPNBAHC@?$AA@"
"??_C@_00CNPNBAHC@?$AA@":
	.zero	1

	.data
	.globl	_1_func0_$strings       # @"_1_func0_$strings"
	.p2align	3
_1_func0_$strings:
	.quad	"??_C@_00CNPNBAHC@?$AA@"

	.globl	_1_func0_$array         # @"_1_func0_$array"
	.p2align	4
_1_func0_$array:
	.ascii	"\265\004\000\000\000*\027\000\000\000\241\265\b\000\000\000*\000\000\000\000\241\t\004\000\000\000\265\b\000\000\000\376\270\000\000\000\000\376 \362\016\000\000\000\t\004\000\000\000\tm\000\000\000\265\004\000\000\000\265\004\000\000\000\376\270\000\000\000\000\376*\027\000\000\000\302\257\241\265\004\000\000\000\265\004\000\000\000\376\270\000\000\000\000\376\265\b\000\000\000\376\257\257\241\265\004\000\000\000\270\000\000\000\000\376\265\b\000\000\000\376\302\265\004\000\000\000\376\302\241\265\b\000\000\000\265\b\000\000\000\376*\001\000\000\000\257\241\t\204\377\377\377\t\177\377\377\377\265\004\000\000\000\376\013"

	.section	.rdata,"dr",discard,"??_C@_03PELOGHMK@?$CFi?6?$AA@"
	.globl	"??_C@_03PELOGHMK@?$CFi?6?$AA@" # @"??_C@_03PELOGHMK@?$CFi?6?$AA@"
"??_C@_03PELOGHMK@?$CFi?6?$AA@":
	.asciz	"%i\n"


	.section	.drectve,"yn"
	.ascii	" /EXPORT:func0"
	.addrsig
	.addrsig_sym megaInit
	.addrsig_sym func0
	.addrsig_sym printf
	.addrsig_sym _global_argv
	.addrsig_sym _global_argc
	.addrsig_sym _global_envp
	.addrsig_sym _1_func0_$array
