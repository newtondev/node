.text
.align	16

.globl	md5_block_asm_data_order
.type	md5_block_asm_data_order,@function
md5_block_asm_data_order:
	pushq	%rbp
	pushq	%rbx
	pushq	%r12
	pushq	%r14
	pushq	%r15
.Lprologue:




	movq	%rdi,%rbp
	shlq	$6,%rdx
	leaq	(%rsi,%rdx,1),%rdi
	movl	0(%rbp),%eax
	movl	4(%rbp),%ebx
	movl	8(%rbp),%ecx
	movl	12(%rbp),%edx







	cmpq	%rdi,%rsi
	je	.Lend


.Lloop:
	movl	%eax,%r8d
	movl	%ebx,%r9d
	movl	%ecx,%r14d
	movl	%edx,%r15d
	movl	0(%rsi),%r10d
	movl	%edx,%r11d
	xorl	%ecx,%r11d
	leal	-680876936(%rax,%r10,1),%eax
	andl	%ebx,%r11d
	movl	4(%rsi),%r10d
	xorl	%edx,%r11d
	addl	%r11d,%eax
	roll	$7,%eax
	movl	%ecx,%r11d
	addl	%ebx,%eax
	xorl	%ebx,%r11d
	leal	-389564586(%rdx,%r10,1),%edx
	andl	%eax,%r11d
	movl	8(%rsi),%r10d
	xorl	%ecx,%r11d
	addl	%r11d,%edx
	roll	$12,%edx
	movl	%ebx,%r11d
	addl	%eax,%edx
	xorl	%eax,%r11d
	leal	606105819(%rcx,%r10,1),%ecx
	andl	%edx,%r11d
	movl	12(%rsi),%r10d
	xorl	%ebx,%r11d
	addl	%r11d,%ecx
	roll	$17,%ecx
	movl	%eax,%r11d
	addl	%edx,%ecx
	xorl	%edx,%r11d
	leal	-1044525330(%rbx,%r10,1),%ebx
	andl	%ecx,%r11d
	movl	16(%rsi),%r10d
	xorl	%eax,%r11d
	addl	%r11d,%ebx
	roll	$22,%ebx
	movl	%edx,%r11d
	addl	%ecx,%ebx
	xorl	%ecx,%r11d
	leal	-176418897(%rax,%r10,1),%eax
	andl	%ebx,%r11d
	movl	20(%rsi),%r10d
	xorl	%edx,%r11d
	addl	%r11d,%eax
	roll	$7,%eax
	movl	%ecx,%r11d
	addl	%ebx,%eax
	xorl	%ebx,%r11d
	leal	1200080426(%rdx,%r10,1),%edx
	andl	%eax,%r11d
	movl	24(%rsi),%r10d
	xorl	%ecx,%r11d
	addl	%r11d,%edx
	roll	$12,%edx
	movl	%ebx,%r11d
	addl	%eax,%edx
	xorl	%eax,%r11d
	leal	-1473231341(%rcx,%r10,1),%ecx
	andl	%edx,%r11d
	movl	28(%rsi),%r10d
	xorl	%ebx,%r11d
	addl	%r11d,%ecx
	roll	$17,%ecx
	movl	%eax,%r11d
	addl	%edx,%ecx
	xorl	%edx,%r11d
	leal	-45705983(%rbx,%r10,1),%ebx
	andl	%ecx,%r11d
	movl	32(%rsi),%r10d
	xorl	%eax,%r11d
	addl	%r11d,%ebx
	roll	$22,%ebx
	movl	%edx,%r11d
	addl	%ecx,%ebx
	xorl	%ecx,%r11d
	leal	1770035416(%rax,%r10,1),%eax
	andl	%ebx,%r11d
	movl	36(%rsi),%r10d
	xorl	%edx,%r11d
	addl	%r11d,%eax
	roll	$7,%eax
	movl	%ecx,%r11d
	addl	%ebx,%eax
	xorl	%ebx,%r11d
	leal	-1958414417(%rdx,%r10,1),%edx
	andl	%eax,%r11d
	movl	40(%rsi),%r10d
	xorl	%ecx,%r11d
	addl	%r11d,%edx
	roll	$12,%edx
	movl	%ebx,%r11d
	addl	%eax,%edx
	xorl	%eax,%r11d
	leal	-42063(%rcx,%r10,1),%ecx
	andl	%edx,%r11d
	movl	44(%rsi),%r10d
	xorl	%ebx,%r11d
	addl	%r11d,%ecx
	roll	$17,%ecx
	movl	%eax,%r11d
	addl	%edx,%ecx
	xorl	%edx,%r11d
	leal	-1990404162(%rbx,%r10,1),%ebx
	andl	%ecx,%r11d
	movl	48(%rsi),%r10d
	xorl	%eax,%r11d
	addl	%r11d,%ebx
	roll	$22,%ebx
	movl	%edx,%r11d
	addl	%ecx,%ebx
	xorl	%ecx,%r11d
	leal	1804603682(%rax,%r10,1),%eax
	andl	%ebx,%r11d
	movl	52(%rsi),%r10d
	xorl	%edx,%r11d
	addl	%r11d,%eax
	roll	$7,%eax
	movl	%ecx,%r11d
	addl	%ebx,%eax
	xorl	%ebx,%r11d
	leal	-40341101(%rdx,%r10,1),%edx
	andl	%eax,%r11d
	movl	56(%rsi),%r10d
	xorl	%ecx,%r11d
	addl	%r11d,%edx
	roll	$12,%edx
	movl	%ebx,%r11d
	addl	%eax,%edx
	xorl	%eax,%r11d
	leal	-1502002290(%rcx,%r10,1),%ecx
	andl	%edx,%r11d
	movl	60(%rsi),%r10d
	xorl	%ebx,%r11d
	addl	%r11d,%ecx
	roll	$17,%ecx
	movl	%eax,%r11d
	addl	%edx,%ecx
	xorl	%edx,%r11d
	leal	1236535329(%rbx,%r10,1),%ebx
	andl	%ecx,%r11d
	movl	4(%rsi),%r10d
	xorl	%eax,%r11d
	addl	%r11d,%ebx
	roll	$22,%ebx
	movl	%edx,%r11d
	addl	%ecx,%ebx
	movl	%edx,%r11d
	movl	%edx,%r12d
	notl	%r11d
	andl	%ebx,%r12d
	leal	-165796510(%rax,%r10,1),%eax
	andl	%ecx,%r11d
	movl	24(%rsi),%r10d
	orl	%r11d,%r12d
	movl	%ecx,%r11d
	addl	%r12d,%eax
	movl	%ecx,%r12d
	roll	$5,%eax
	addl	%ebx,%eax
	notl	%r11d
	andl	%eax,%r12d
	leal	-1069501632(%rdx,%r10,1),%edx
	andl	%ebx,%r11d
	movl	44(%rsi),%r10d
	orl	%r11d,%r12d
	movl	%ebx,%r11d
	addl	%r12d,%edx
	movl	%ebx,%r12d
	roll	$9,%edx
	addl	%eax,%edx
	notl	%r11d
	andl	%edx,%r12d
	leal	643717713(%rcx,%r10,1),%ecx
	andl	%eax,%r11d
	movl	0(%rsi),%r10d
	orl	%r11d,%r12d
	movl	%eax,%r11d
	addl	%r12d,%ecx
	movl	%eax,%r12d
	roll	$14,%ecx
	addl	%edx,%ecx
	notl	%r11d
	andl	%ecx,%r12d
	leal	-373897302(%rbx,%r10,1),%ebx
	andl	%edx,%r11d
	movl	20(%rsi),%r10d
	orl	%r11d,%r12d
	movl	%edx,%r11d
	addl	%r12d,%ebx
	movl	%edx,%r12d
	roll	$20,%ebx
	addl	%ecx,%ebx
	notl	%r11d
	andl	%ebx,%r12d
	leal	-701558691(%rax,%r10,1),%eax
	andl	%ecx,%r11d
	movl	40(%rsi),%r10d
	orl	%r11d,%r12d
	movl	%ecx,%r11d
	addl	%r12d,%eax
	movl	%ecx,%r12d
	roll	$5,%eax
	addl	%ebx,%eax
	notl	%r11d
	andl	%eax,%r12d
	leal	38016083(%rdx,%r10,1),%edx
	andl	%ebx,%r11d
	movl	60(%rsi),%r10d
	orl	%r11d,%r12d
	movl	%ebx,%r11d
	addl	%r12d,%edx
	movl	%ebx,%r12d
	roll	$9,%edx
	addl	%eax,%edx
	notl	%r11d
	andl	%edx,%r12d
	leal	-660478335(%rcx,%r10,1),%ecx
	andl	%eax,%r11d
	movl	16(%rsi),%r10d
	orl	%r11d,%r12d
	movl	%eax,%r11d
	addl	%r12d,%ecx
	movl	%eax,%r12d
	roll	$14,%ecx
	addl	%edx,%ecx
	notl	%r11d
	andl	%ecx,%r12d
	leal	-405537848(%rbx,%r10,1),%ebx
	andl	%edx,%r11d
	movl	36(%rsi),%r10d
	orl	%r11d,%r12d
	movl	%edx,%r11d
	addl	%r12d,%ebx
	movl	%edx,%r12d
	roll	$20,%ebx
	addl	%ecx,%ebx
	notl	%r11d
	andl	%ebx,%r12d
	leal	568446438(%rax,%r10,1),%eax
	andl	%ecx,%r11d
	movl	56(%rsi),%r10d
	orl	%r11d,%r12d
	movl	%ecx,%r11d
	addl	%r12d,%eax
	movl	%ecx,%r12d
	roll	$5,%eax
	addl	%ebx,%eax
	notl	%r11d
	andl	%eax,%r12d
	leal	-1019803690(%rdx,%r10,1),%edx
	andl	%ebx,%r11d
	movl	12(%rsi),%r10d
	orl	%r11d,%r12d
	movl	%ebx,%r11d
	addl	%r12d,%edx
	movl	%ebx,%r12d
	roll	$9,%edx
	addl	%eax,%edx
	notl	%r11d
	andl	%edx,%r12d
	leal	-187363961(%rcx,%r10,1),%ecx
	andl	%eax,%r11d
	movl	32(%rsi),%r10d
	orl	%r11d,%r12d
	movl	%eax,%r11d
	addl	%r12d,%ecx
	movl	%eax,%r12d
	roll	$14,%ecx
	addl	%edx,%ecx
	notl	%r11d
	andl	%ecx,%r12d
	leal	1163531501(%rbx,%r10,1),%ebx
	andl	%edx,%r11d
	movl	52(%rsi),%r10d
	orl	%r11d,%r12d
	movl	%edx,%r11d
	addl	%r12d,%ebx
	movl	%edx,%r12d
	roll	$20,%ebx
	addl	%ecx,%ebx
	notl	%r11d
	andl	%ebx,%r12d
	leal	-1444681467(%rax,%r10,1),%eax
	andl	%ecx,%r11d
	movl	8(%rsi),%r10d
	orl	%r11d,%r12d
	movl	%ecx,%r11d
	addl	%r12d,%eax
	movl	%ecx,%r12d
	roll	$5,%eax
	addl	%ebx,%eax
	notl	%r11d
	andl	%eax,%r12d
	leal	-51403784(%rdx,%r10,1),%edx
	andl	%ebx,%r11d
	movl	28(%rsi),%r10d
	orl	%r11d,%r12d
	movl	%ebx,%r11d
	addl	%r12d,%edx
	movl	%ebx,%r12d
	roll	$9,%edx
	addl	%eax,%edx
	notl	%r11d
	andl	%edx,%r12d
	leal	1735328473(%rcx,%r10,1),%ecx
	andl	%eax,%r11d
	movl	48(%rsi),%r10d
	orl	%r11d,%r12d
	movl	%eax,%r11d
	addl	%r12d,%ecx
	movl	%eax,%r12d
	roll	$14,%ecx
	addl	%edx,%ecx
	notl	%r11d
	andl	%ecx,%r12d
	leal	-1926607734(%rbx,%r10,1),%ebx
	andl	%edx,%r11d
	movl	20(%rsi),%r10d
	orl	%r11d,%r12d
	movl	%edx,%r11d
	addl	%r12d,%ebx
	movl	%edx,%r12d
	roll	$20,%ebx
	addl	%ecx,%ebx
	movl	%ecx,%r11d
	leal	-378558(%rax,%r10,1),%eax
	xorl	%edx,%r11d
	movl	32(%rsi),%r10d
	xorl	%ebx,%r11d
	addl	%r11d,%eax
	movl	%ebx,%r11d
	roll	$4,%eax
	addl	%ebx,%eax
	leal	-2022574463(%rdx,%r10,1),%edx
	xorl	%ecx,%r11d
	movl	44(%rsi),%r10d
	xorl	%eax,%r11d
	addl	%r11d,%edx
	roll	$11,%edx
	movl	%eax,%r11d
	addl	%eax,%edx
	leal	1839030562(%rcx,%r10,1),%ecx
	xorl	%ebx,%r11d
	movl	56(%rsi),%r10d
	xorl	%edx,%r11d
	addl	%r11d,%ecx
	movl	%edx,%r11d
	roll	$16,%ecx
	addl	%edx,%ecx
	leal	-35309556(%rbx,%r10,1),%ebx
	xorl	%eax,%r11d
	movl	4(%rsi),%r10d
	xorl	%ecx,%r11d
	addl	%r11d,%ebx
	roll	$23,%ebx
	movl	%ecx,%r11d
	addl	%ecx,%ebx
	leal	-1530992060(%rax,%r10,1),%eax
	xorl	%edx,%r11d
	movl	16(%rsi),%r10d
	xorl	%ebx,%r11d
	addl	%r11d,%eax
	movl	%ebx,%r11d
	roll	$4,%eax
	addl	%ebx,%eax
	leal	1272893353(%rdx,%r10,1),%edx
	xorl	%ecx,%r11d
	movl	28(%rsi),%r10d
	xorl	%eax,%r11d
	addl	%r11d,%edx
	roll	$11,%edx
	movl	%eax,%r11d
	addl	%eax,%edx
	leal	-155497632(%rcx,%r10,1),%ecx
	xorl	%ebx,%r11d
	movl	40(%rsi),%r10d
	xorl	%edx,%r11d
	addl	%r11d,%ecx
	movl	%edx,%r11d
	roll	$16,%ecx
	addl	%edx,%ecx
	leal	-1094730640(%rbx,%r10,1),%ebx
	xorl	%eax,%r11d
	movl	52(%rsi),%r10d
	xorl	%ecx,%r11d
	addl	%r11d,%ebx
	roll	$23,%ebx
	movl	%ecx,%r11d
	addl	%ecx,%ebx
	leal	681279174(%rax,%r10,1),%eax
	xorl	%edx,%r11d
	movl	0(%rsi),%r10d
	xorl	%ebx,%r11d
	addl	%r11d,%eax
	movl	%ebx,%r11d
	roll	$4,%eax
	addl	%ebx,%eax
	leal	-358537222(%rdx,%r10,1),%edx
	xorl	%ecx,%r11d
	movl	12(%rsi),%r10d
	xorl	%eax,%r11d
	addl	%r11d,%edx
	roll	$11,%edx
	movl	%eax,%r11d
	addl	%eax,%edx
	leal	-722521979(%rcx,%r10,1),%ecx
	xorl	%ebx,%r11d
	movl	24(%rsi),%r10d
	xorl	%edx,%r11d
	addl	%r11d,%ecx
	movl	%edx,%r11d
	roll	$16,%ecx
	addl	%edx,%ecx
	leal	76029189(%rbx,%r10,1),%ebx
	xorl	%eax,%r11d
	movl	36(%rsi),%r10d
	xorl	%ecx,%r11d
	addl	%r11d,%ebx
	roll	$23,%ebx
	movl	%ecx,%r11d
	addl	%ecx,%ebx
	leal	-640364487(%rax,%r10,1),%eax
	xorl	%edx,%r11d
	movl	48(%rsi),%r10d
	xorl	%ebx,%r11d
	addl	%r11d,%eax
	movl	%ebx,%r11d
	roll	$4,%eax
	addl	%ebx,%eax
	leal	-421815835(%rdx,%r10,1),%edx
	xorl	%ecx,%r11d
	movl	60(%rsi),%r10d
	xorl	%eax,%r11d
	addl	%r11d,%edx
	roll	$11,%edx
	movl	%eax,%r11d
	addl	%eax,%edx
	leal	530742520(%rcx,%r10,1),%ecx
	xorl	%ebx,%r11d
	movl	8(%rsi),%r10d
	xorl	%edx,%r11d
	addl	%r11d,%ecx
	movl	%edx,%r11d
	roll	$16,%ecx
	addl	%edx,%ecx
	leal	-995338651(%rbx,%r10,1),%ebx
	xorl	%eax,%r11d
	movl	0(%rsi),%r10d
	xorl	%ecx,%r11d
	addl	%r11d,%ebx
	roll	$23,%ebx
	movl	%ecx,%r11d
	addl	%ecx,%ebx
	movl	$0xffffffff,%r11d
	xorl	%edx,%r11d
	leal	-198630844(%rax,%r10,1),%eax
	orl	%ebx,%r11d
	movl	28(%rsi),%r10d
	xorl	%ecx,%r11d
	addl	%r11d,%eax
	movl	$0xffffffff,%r11d
	roll	$6,%eax
	xorl	%ecx,%r11d
	addl	%ebx,%eax
	leal	1126891415(%rdx,%r10,1),%edx
	orl	%eax,%r11d
	movl	56(%rsi),%r10d
	xorl	%ebx,%r11d
	addl	%r11d,%edx
	movl	$0xffffffff,%r11d
	roll	$10,%edx
	xorl	%ebx,%r11d
	addl	%eax,%edx
	leal	-1416354905(%rcx,%r10,1),%ecx
	orl	%edx,%r11d
	movl	20(%rsi),%r10d
	xorl	%eax,%r11d
	addl	%r11d,%ecx
	movl	$0xffffffff,%r11d
	roll	$15,%ecx
	xorl	%eax,%r11d
	addl	%edx,%ecx
	leal	-57434055(%rbx,%r10,1),%ebx
	orl	%ecx,%r11d
	movl	48(%rsi),%r10d
	xorl	%edx,%r11d
	addl	%r11d,%ebx
	movl	$0xffffffff,%r11d
	roll	$21,%ebx
	xorl	%edx,%r11d
	addl	%ecx,%ebx
	leal	1700485571(%rax,%r10,1),%eax
	orl	%ebx,%r11d
	movl	12(%rsi),%r10d
	xorl	%ecx,%r11d
	addl	%r11d,%eax
	movl	$0xffffffff,%r11d
	roll	$6,%eax
	xorl	%ecx,%r11d
	addl	%ebx,%eax
	leal	-1894986606(%rdx,%r10,1),%edx
	orl	%eax,%r11d
	movl	40(%rsi),%r10d
	xorl	%ebx,%r11d
	addl	%r11d,%edx
	movl	$0xffffffff,%r11d
	roll	$10,%edx
	xorl	%ebx,%r11d
	addl	%eax,%edx
	leal	-1051523(%rcx,%r10,1),%ecx
	orl	%edx,%r11d
	movl	4(%rsi),%r10d
	xorl	%eax,%r11d
	addl	%r11d,%ecx
	movl	$0xffffffff,%r11d
	roll	$15,%ecx
	xorl	%eax,%r11d
	addl	%edx,%ecx
	leal	-2054922799(%rbx,%r10,1),%ebx
	orl	%ecx,%r11d
	movl	32(%rsi),%r10d
	xorl	%edx,%r11d
	addl	%r11d,%ebx
	movl	$0xffffffff,%r11d
	roll	$21,%ebx
	xorl	%edx,%r11d
	addl	%ecx,%ebx
	leal	1873313359(%rax,%r10,1),%eax
	orl	%ebx,%r11d
	movl	60(%rsi),%r10d
	xorl	%ecx,%r11d
	addl	%r11d,%eax
	movl	$0xffffffff,%r11d
	roll	$6,%eax
	xorl	%ecx,%r11d
	addl	%ebx,%eax
	leal	-30611744(%rdx,%r10,1),%edx
	orl	%eax,%r11d
	movl	24(%rsi),%r10d
	xorl	%ebx,%r11d
	addl	%r11d,%edx
	movl	$0xffffffff,%r11d
	roll	$10,%edx
	xorl	%ebx,%r11d
	addl	%eax,%edx
	leal	-1560198380(%rcx,%r10,1),%ecx
	orl	%edx,%r11d
	movl	52(%rsi),%r10d
	xorl	%eax,%r11d
	addl	%r11d,%ecx
	movl	$0xffffffff,%r11d
	roll	$15,%ecx
	xorl	%eax,%r11d
	addl	%edx,%ecx
	leal	1309151649(%rbx,%r10,1),%ebx
	orl	%ecx,%r11d
	movl	16(%rsi),%r10d
	xorl	%edx,%r11d
	addl	%r11d,%ebx
	movl	$0xffffffff,%r11d
	roll	$21,%ebx
	xorl	%edx,%r11d
	addl	%ecx,%ebx
	leal	-145523070(%rax,%r10,1),%eax
	orl	%ebx,%r11d
	movl	44(%rsi),%r10d
	xorl	%ecx,%r11d
	addl	%r11d,%eax
	movl	$0xffffffff,%r11d
	roll	$6,%eax
	xorl	%ecx,%r11d
	addl	%ebx,%eax
	leal	-1120210379(%rdx,%r10,1),%edx
	orl	%eax,%r11d
	movl	8(%rsi),%r10d
	xorl	%ebx,%r11d
	addl	%r11d,%edx
	movl	$0xffffffff,%r11d
	roll	$10,%edx
	xorl	%ebx,%r11d
	addl	%eax,%edx
	leal	718787259(%rcx,%r10,1),%ecx
	orl	%edx,%r11d
	movl	36(%rsi),%r10d
	xorl	%eax,%r11d
	addl	%r11d,%ecx
	movl	$0xffffffff,%r11d
	roll	$15,%ecx
	xorl	%eax,%r11d
	addl	%edx,%ecx
	leal	-343485551(%rbx,%r10,1),%ebx
	orl	%ecx,%r11d
	movl	0(%rsi),%r10d
	xorl	%edx,%r11d
	addl	%r11d,%ebx
	movl	$0xffffffff,%r11d
	roll	$21,%ebx
	xorl	%edx,%r11d
	addl	%ecx,%ebx

	addl	%r8d,%eax
	addl	%r9d,%ebx
	addl	%r14d,%ecx
	addl	%r15d,%edx


	addq	$64,%rsi
	cmpq	%rdi,%rsi
	jb	.Lloop


.Lend:
	movl	%eax,0(%rbp)
	movl	%ebx,4(%rbp)
	movl	%ecx,8(%rbp)
	movl	%edx,12(%rbp)

	movq	(%rsp),%r15
	movq	8(%rsp),%r14
	movq	16(%rsp),%r12
	movq	24(%rsp),%rbx
	movq	32(%rsp),%rbp
	addq	$40,%rsp
.Lepilogue:
	.byte	0xf3,0xc3
.size	md5_block_asm_data_order,.-md5_block_asm_data_order
