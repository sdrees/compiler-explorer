	.section	.rodata.str1.4,"aMS",@progbits,1

	.align 4
.LC0:
	.string	"%s , %s , %lld , %d , %lld\n"
	.text
	; This is a comment
	.align 8
	.globl toto
	.type	toto, @function
toto:
	add $r12 = $r12, -16
	get $r8 = $ra
	;;
	;; This is also a comment
	sw 28[$r12] = $r10
	add $r10 = $r12, 16
	;;
	ld $r0r1 = 40[$r10]
	;;
	ld $r4r5 = 24[$r10]
	;;
	sw 24[$r12] = $r8
	;;
	sd 16[$r12] = $r0r1
	make $r0 = .LC0
	;;
	lw $r1 = 16[$r10]
	;;
	lw $r2 = 20[$r10]
	;;
	lw $r6 = 32[$r10]
	call printf
	;;
	add $r12 = $r10, -16
	;;
	lw $r1 = 24[$r12]
	make $r0 = 0
	;;
	lw $r10 = 28[$r12]
	add $r12 = $r12, 16
	;;
	set $ra = $r1
	;;
	ret
	;;
	.size	toto, .-toto
	.section	.rodata.str1.4

	.align 4
.LC1:
	.string	"chaine1"

	.align 4
.LC2:
	.string	"chaine2"
	.section	.text.startup,"ax",@progbits

	.align 8
	.globl main
	.type	main, @function
main:
	add $r12 = $r12, -16
	get $r8 = $ra
	make $r2 = .LC2
	;;
	sw 28[$r12] = $r10
	maked $r0r1 = 123456
	add $r10 = $r12, 16
	make $r6 = 256
	;;
	sw 24[$r12] = $r8
	maked $r4r5 = 12345
	;;
	sd 16[$r12] = $r0r1
	make $r1 = .LC1
	make $r0 = .LC0
	;;
	call printf
	;;
	add $r12 = $r10, -16
	;;
.DUMMY:
	lw $r1 = 24[$r12]
	make $r0 = 0
	;;
	lw $r10 = 28[$r12]
	add $r12 = $r12, 16
	;;
.OTHERDUMMY:
	set $ra = $r1
	;;
	ret
	;;
	.size	main, .-main
	.ident	"GCC: (GNU) 4.9.4"
