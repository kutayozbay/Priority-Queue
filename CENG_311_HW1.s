	.file	"CENG_311_HW1.c"
	.text
	.globl	_newNode
	.def	_newNode;	.scl	2;	.type	32;	.endef
_newNode:
LFB18:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$12, (%esp)
	call	_malloc
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
	movl	-12(%ebp), %eax
	movl	$0, 4(%eax)
	movl	-12(%ebp), %eax
	movl	$0, 8(%eax)
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE18:
	.globl	_insertLevelOrder
	.def	_insertLevelOrder;	.scl	2;	.type	32;	.endef
_insertLevelOrder:
LFB19:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	16(%ebp), %eax
	cmpl	20(%ebp), %eax
	jge	L4
	movl	16(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_newNode
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, 12(%ebp)
	movl	16(%ebp), %eax
	addl	%eax, %eax
	leal	1(%eax), %ecx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_insertLevelOrder
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	16(%ebp), %eax
	addl	$1, %eax
	leal	(%eax,%eax), %ecx
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	20(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_insertLevelOrder
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
L4:
	movl	12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE19:
	.def	_parent.3196;	.scl	3;	.type	32;	.endef
_parent.3196:
LFB21:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	8(%ebp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE21:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "r\0"
LC1:
	.ascii "2-25integers.txt\0"
	.align 4
LC2:
	.ascii "2-25integers.txt file failed to open.\0"
LC3:
	.ascii "The file is now opened.\0"
LC4:
	.ascii "%d\0"
	.align 4
LC5:
	.ascii "Data successfully read from file 2-25integers.txt\0"
LC6:
	.ascii "The file is now closed.\0"
LC8:
	.ascii "Time: %f \12\0"
LC9:
	.ascii "w\0"
LC10:
	.ascii "integers\0"
LC11:
	.ascii "File created successfully!\0"
LC12:
	.ascii "Failed to create the file.\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB20:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$112, %esp
	call	___main
	leal	8(%ebp), %eax
	movl	%eax, 56(%esp)
	movl	$33554432, 96(%esp)
	movl	96(%esp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, 92(%esp)
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_fopen
	movl	%eax, 88(%esp)
	cmpl	$0, 88(%esp)
	jne	L9
	movl	$LC2, (%esp)
	call	_printf
	jmp	L10
L9:
	movl	$LC3, (%esp)
	call	_puts
	movl	$0, 44(%esp)
	movl	$0, 108(%esp)
	jmp	L11
L12:
	leal	44(%esp), %eax
	movl	%eax, 8(%esp)
	movl	$LC4, 4(%esp)
	movl	88(%esp), %eax
	movl	%eax, (%esp)
	call	_fscanf
	movl	108(%esp), %eax
	leal	0(,%eax,4), %edx
	movl	92(%esp), %eax
	addl	%eax, %edx
	movl	44(%esp), %eax
	movl	%eax, (%edx)
	addl	$1, 108(%esp)
L11:
	movl	88(%esp), %eax
	movl	12(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	L12
	movl	108(%esp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, 52(%esp)
	movl	$-1, %eax
	movl	%eax, 48(%esp)
	movl	88(%esp), %eax
	movl	%eax, (%esp)
	call	_fclose
	movl	108(%esp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	84(%esp), %eax
	movl	%eax, 4(%esp)
	movl	92(%esp), %eax
	movl	%eax, (%esp)
	call	_insertLevelOrder
	movl	%eax, 84(%esp)
	movl	$LC5, (%esp)
	call	_puts
	movl	$LC6, (%esp)
	call	_puts
	call	_clock
	movl	%eax, 80(%esp)
	movl	$0, 104(%esp)
	jmp	L13
L14:
	movl	104(%esp), %eax
	leal	0(,%eax,4), %edx
	movl	92(%esp), %eax
	addl	%edx, %eax
	movl	(%eax), %edx
	leal	48(%esp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	_insert.3216
	addl	$1, 104(%esp)
L13:
	movl	104(%esp), %eax
	cmpl	108(%esp), %eax
	jl	L14
	call	_clock
	movl	%eax, 76(%esp)
	movl	76(%esp), %eax
	subl	80(%esp), %eax
	movl	%eax, 28(%esp)
	fildl	28(%esp)
	fldl	LC7
	fdivrp	%st, %st(1)
	fstpl	64(%esp)
	fldl	64(%esp)
	fstpl	4(%esp)
	movl	$LC8, (%esp)
	call	_printf
	movl	$LC9, 4(%esp)
	movl	$LC10, (%esp)
	call	_fopen
	movl	%eax, 60(%esp)
	cmpl	$0, 60(%esp)
	je	L15
	movl	$LC11, (%esp)
	call	_puts
	movl	$0, 100(%esp)
	jmp	L18
L15:
	movl	$LC12, (%esp)
	call	_puts
	movl	$-1, %eax
	jmp	L17
L19:
	movl	100(%esp), %eax
	leal	0(,%eax,4), %edx
	movl	52(%esp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$LC4, 4(%esp)
	movl	60(%esp), %eax
	movl	%eax, (%esp)
	call	_fprintf
	addl	$1, 100(%esp)
L18:
	movl	100(%esp), %eax
	cmpl	108(%esp), %eax
	jl	L19
	movl	60(%esp), %eax
	movl	%eax, (%esp)
	call	_fclose
L10:
	movl	$0, %eax
L17:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE20:
	.def	_swap.3206;	.scl	3;	.type	32;	.endef
_swap.3206:
LFB24:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	movl	%ecx, %eax
	movl	%ecx, -24(%ebp)
	movl	8(%ebp), %edx
	leal	0(,%edx,4), %ecx
	movl	4(%eax), %edx
	addl	%ecx, %edx
	movl	(%edx), %edx
	movl	%edx, -8(%ebp)
	movl	8(%ebp), %edx
	leal	0(,%edx,4), %ecx
	movl	4(%eax), %edx
	addl	%edx, %ecx
	movl	12(%ebp), %edx
	leal	0(,%edx,4), %ebx
	movl	4(%eax), %edx
	addl	%ebx, %edx
	movl	(%edx), %edx
	movl	%edx, (%ecx)
	movl	12(%ebp), %edx
	sall	$2, %edx
	movl	4(%eax), %eax
	addl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	nop
	addl	$20, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE24:
	.def	_shiftUp.3210;	.scl	3;	.type	32;	.endef
_shiftUp.3210:
LFB25:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 3, -12
	movl	%ecx, %ebx
	movl	%ecx, -8(%ebp)
	jmp	L22
L24:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	%ebx, %ecx
	call	_parent.3196
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	movl	%ebx, %ecx
	call	_swap.3206
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	%ebx, %ecx
	call	_parent.3196
	movl	%eax, 8(%ebp)
L22:
	cmpl	$0, 8(%ebp)
	jle	L25
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	%ebx, %ecx
	call	_parent.3196
	leal	0(,%eax,4), %edx
	movl	4(%ebx), %eax
	addl	%edx, %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	leal	0(,%eax,4), %ecx
	movl	4(%ebx), %eax
	addl	%ecx, %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jl	L24
L25:
	nop
	addl	$12, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE25:
	.def	_insert.3216;	.scl	3;	.type	32;	.endef
_insert.3216:
LFB26:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	movl	%ecx, %eax
	movl	%ecx, -4(%ebp)
	movl	(%eax), %edx
	addl	$1, %edx
	movl	%edx, (%eax)
	movl	(%eax), %edx
	leal	0(,%edx,4), %ecx
	movl	4(%eax), %edx
	addl	%edx, %ecx
	movl	8(%ebp), %edx
	movl	%edx, (%ecx)
	movl	(%eax), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	_shiftUp.3210
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE26:
	.section .rdata,"dr"
	.align 8
LC7:
	.long	0
	.long	1083129856
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_fscanf;	.scl	2;	.type	32;	.endef
	.def	_fclose;	.scl	2;	.type	32;	.endef
	.def	_clock;	.scl	2;	.type	32;	.endef
	.def	_fprintf;	.scl	2;	.type	32;	.endef
