;; 	DLX assembly file generated by lcc 
.align 2
exit: 
	trap #0
	nop
	jr r31
	nop
	.end exit
fopen: 
	trap #1
	nop
	jr r31
	nop
	.end fopen
fclose: 
	trap #2
	nop
	jr r31
	nop
	.end fclose
fread: 
	trap #3
	nop
	jr r31
	nop
	.end fread
fwrite: 
	trap #4
	nop
	jr r31
	nop
	.end fwrite
printf: 
	trap #5
	nop
	jr r31
	nop
	.end printf
scanf: 
	trap #6
	nop
	jr r31
	nop
	.end scanf
fprintf: 
	trap #7
	nop
	jr r31
	nop
	.end fprintf
fscanf: 
	trap #8
	nop
	jr r31
	nop
	.end fscanf
feof: 
	trap #9
	nop
	jr r31
	nop
	.end feof
malloc: 
	trap #10
	nop
	jr r31
	nop
	.end malloc
sprintf: 
	trap #11
	nop
	jr r31
	nop
	.end sprintf
.globl init
.text
.text
.align 2
init:
	subu r29,r29,#8
	sw 0(r29),r23
	sw 4(r29),r30
	la r23,1(r0)
L.2:
	la r24,24(r0)
	movi2fp f0,r24	; muli
	movi2fp f1,r23
	mult f0,f0,f1
	movfp2i r24,f0
	lf f18,L.6(r0)
	sf surface(r24),f18
	la r24,24(r0)
	movi2fp f0,r24	; muli
	movi2fp f1,r23
	mult f0,f0,f1
	movfp2i r24,f0
	lf f18,L.6(r0)
	sf surface+20(r24),f18
	sll r24,r23,#2
	lf f18,L.8(r0)
	sf surface(r24),f18
	sll r24,r23,#2
	lf f18,L.6(r0)
	sf surface+120(r24),f18
L.3:
	la r23,1(r23)
	la r24,6(r0)
	slt r3,r23,r24	; lti
	bnez r3,L.2
	nop
	la r23,1(r0)
L.10:
	la r30,1(r0)
L.14:
	sll r24,r30,#2
	la r15,24(r0)
	movi2fp f0,r15	; muli
	movi2fp f1,r23
	mult f0,f0,f1
	movfp2i r15,f0
	la r15,surface(r15)
	addu r24,r24,r15
	lf f18,L.6(r0)
	sf 0(r24),f18
L.15:
	la r30,1(r30)
	la r24,5(r0)
	slt r3,r30,r24	; lti
	bnez r3,L.14
	nop
L.11:
	la r23,1(r23)
	la r24,5(r0)
	slt r3,r23,r24	; lti
	bnez r3,L.10
	nop
	lf f18,L.19(r0)
	sf surface+120(r0),f18
	sf surface(r0),f18
	lf f18,L.19(r0)
	sf surface+120+20(r0),f18
	sf surface+20(r0),f18
L.1:
	lw r23,0(r29)
	lw r30,4(r29)
	addu r29,r29,#8
	jr r31
	nop
	.end init
.globl printres
.text
.align 2
printres:
	subu r29,r29,#32
	sw 16(r29),r23
	sw 20(r29),r30
	sw 24(r29),r31
	add r23,r0,r0	; loadi
L.26:
	add r30,r0,r0	; loadi
L.30:
	sll r24,r30,#2
	la r15,24(r0)
	movi2fp f0,r15	; muli
	movi2fp f1,r23
	mult f0,f0,f1
	movfp2i r15,f0
	la r15,surface(r15)
	addu r24,r24,r15
	lf f18,0(r24)
	lf f16,L.6(r0)
	ltf f18,f16	; ltf
	bfpt L.34
	nop
	la r24,L.36(r0)
	sw 0(r29),r24
	sll r24,r30,#2
	la r15,24(r0)
	movi2fp f0,r15	; muli
	movi2fp f1,r23
	mult f0,f0,f1
	movfp2i r15,f0
	la r15,surface(r15)
	addu r24,r24,r15
	lf f18,0(r24)
	cvtf2d f18,f18
	sd 8(r29),f18
	jal printf
	nop
	la r3,L.35	; jumpv
	jr r3
	nop
L.34:
	la r24,L.37(r0)
	sw 0(r29),r24
	jal printf
	nop
L.35:
L.31:
	la r30,1(r30)
	la r24,6(r0)
	slt r3,r30,r24	; lti
	bnez r3,L.30
	nop
	la r24,L.38(r0)
	sw 0(r29),r24
	jal printf
	nop
L.27:
	la r23,1(r23)
	la r24,6(r0)
	slt r3,r23,r24	; lti
	bnez r3,L.26
	nop
	la r24,L.38(r0)
	sw 0(r29),r24
	jal printf
	nop
L.25:
	lw r23,16(r29)
	lw r30,20(r29)
	lw r31,24(r29)
	addu r29,r29,#32
	jr r31
	nop
	.end printres
.globl main
.text
.align 2
main:
	subu r29,r29,#48
	sd 16(r29),f30
	sw 24(r29),r21
	sw 28(r29),r22
	sw 32(r29),r23
	sw 36(r29),r30
	sw 40(r29),r31
	jal init
	nop
	add r21,r0,r0	; loadi
L.40:
	la r22,1(r0)
	add r23,r0,r22	; loadi
L.43:
	la r30,1(r0)
L.47:
	sll r24,r30,#2
	la r15,24(r0)
	movi2fp f0,r15	; muli
	movi2fp f1,r23
	mult f0,f0,f1
	movfp2i r15,f0
	la r14,surface(r15)
	la r13,surface-24(r15)
	addu r13,r24,r13
	lf f18,0(r13)
	la r15,surface+24(r15)
	addu r15,r24,r15
	lf f16,0(r15)
	addf f18,f18,f16
	la r15,4(r24)
	addu r15,r15,r14
	lf f16,0(r15)
	addf f18,f18,f16
	sub r24,r24,#4
	addu r24,r24,r14
	lf f16,0(r24)
	addf f18,f18,f16
	cvtf2d f18,f18
	ld f16,L.53(r0)
	divd f18,f18,f16
	cvtd2f f30,f18
	sll r24,r30,#2
	la r15,24(r0)
	movi2fp f0,r15	; muli
	movi2fp f1,r23
	mult f0,f0,f1
	movfp2i r15,f0
	la r15,surface(r15)
	addu r24,r24,r15
	lf f18,0(r24)
	subf f18,f30,f18
	cvtf2d f18,f18
	ld f16,L.57(r0)
	gtd f18,f16	; gtd
	bfpt L.56
	nop
	ld f16,L.58(r0)
	ged f18,f16	; ged
	bfpt L.54
	nop
L.56:
	add r22,r0,r0	; loadi
L.54:
	sll r24,r30,#2
	la r15,24(r0)
	movi2fp f0,r15	; muli
	movi2fp f1,r23
	mult f0,f0,f1
	movfp2i r15,f0
	la r15,surface(r15)
	addu r24,r24,r15
	sf 0(r24),f30
L.48:
	la r30,1(r30)
	la r24,5(r0)
	slt r3,r30,r24	; lti
	bnez r3,L.47
	nop
L.44:
	la r23,1(r23)
	la r24,5(r0)
	slt r3,r23,r24	; lti
	bnez r3,L.43
	nop
	la r21,1(r21)
L.41:
	seq r3,r22,r0	; eqi
	bnez r3,L.40
	nop
	jal printres
	nop
	la r24,L.59(r0)
	sw 0(r29),r24
	sw 4(r29),r21
	jal printf
	nop
L.39:
	ld f30,16(r29)
	lw r21,24(r29)
	lw r22,28(r29)
	lw r23,32(r29)
	lw r30,36(r29)
	lw r31,40(r29)
	addu r29,r29,#48
	jal exit
	nop
	.end main
.globl surface
.align 2
.comm surface,144
.data
.align 0
L.59:
.byte 84
.byte 111
.byte 111
.byte 107
.byte 32
.byte 37
.byte 100
.byte 32
.byte 105
.byte 116
.byte 101
.byte 114
.byte 97
.byte 116
.byte 105
.byte 111
.byte 110
.byte 115
.byte 10
.byte 0
.align 3
L.58:
	.word 0xbf847ae1
	.word 0x47ae147b
.align 3
L.57:
	.word 0x3f847ae1
	.word 0x47ae147b
.align 3
L.53:
	.word 0x40100000
	.word 0x0
.align 0
L.38:
.byte 10
.byte 0
.align 0
L.37:
.byte 32
.byte 32
.byte 32
.byte 32
.byte 32
.byte 32
.byte 32
.byte 0
.align 0
L.36:
.byte 37
.byte 54
.byte 46
.byte 50
.byte 102
.byte 32
.byte 0
.align 2
L.19:
	.word 0xbf800000
.align 2
L.8:
	.word 0x42c80000
.align 2
L.6:
	.word 0x0