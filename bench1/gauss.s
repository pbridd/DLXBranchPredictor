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
.globl main
.text
.text
.align 2
main:
	subu r29,r29,#136
	sd 16(r29),f28
	sd 24(r29),f30
	sw 32(r29),r22
	sw 36(r29),r23
	sw 40(r29),r30
	sw 44(r29),r31
	lf f18,L.4(r0)
	sf -56+136(r29),f18
	lf f18,L.7(r0)
	sf -52+136(r29),f18
	lf f18,L.4(r0)
	sf -48+136(r29),f18
	lf f18,L.12(r0)
	sf -44+136(r29),f18
	lf f18,L.15(r0)
	sf -36+136(r29),f18
	lf f18,L.18(r0)
	sf -32+136(r29),f18
	lf f18,L.12(r0)
	sf -28+136(r29),f18
	lf f18,L.23(r0)
	sf -24+136(r29),f18
	lf f18,L.26(r0)
	sf -16+136(r29),f18
	lf f18,L.29(r0)
	sf -12+136(r29),f18
	lf f18,L.32(r0)
	sf -8+136(r29),f18
	lf f18,L.35(r0)
	sf -4+136(r29),f18
	la r22,1(r0)
L.36:
	sll r24,r22,#2
	la r15,20(r0)
	movi2fp f0,r15	; muli
	movi2fp f1,r22
	mult f0,f0,f1
	movfp2i r15,f0
	la r14,-80+136(r29)
	addu r15,r15,r14
	addu r24,r24,r15
	lf f28,0(r24)
	add r30,r0,r22	; loadi
	la r3,L.43	; jumpv
	jr r3
	nop
L.40:
	sll r24,r30,#2
	la r15,20(r0)
	movi2fp f0,r15	; muli
	movi2fp f1,r22
	mult f0,f0,f1
	movfp2i r15,f0
	la r14,-80+136(r29)
	addu r15,r15,r14
	addu r24,r24,r15
	lf f18,0(r24)
	divf f18,f18,f28
	sf 0(r24),f18
L.41:
	la r30,1(r30)
L.43:
	la r24,4(r0)
	sle r3,r30,r24	; lei
	bnez r3,L.40
	nop
	la r23,1(r0)
L.44:
	seq r3,r23,r22	; eqi
	bnez r3,L.48
	nop
	sll r24,r22,#2
	la r15,20(r0)
	movi2fp f0,r15	; muli
	movi2fp f1,r23
	mult f0,f0,f1
	movfp2i r15,f0
	la r14,-80+136(r29)
	addu r15,r15,r14
	addu r24,r24,r15
	lf f18,0(r24)
	movi2fp f0,r0	; negf
	cvti2f f0,f0
	subf f30,f0,f18
	la r30,1(r0)
L.50:
	sll r24,r30,#2
	la r15,20(r0)
	movi2fp f0,r15	; muli
	movi2fp f1,r23
	mult f0,f0,f1
	movfp2i r14,f0
	la r13,-80+136(r29)
	addu r14,r14,r13
	addu r14,r24,r14
	movi2fp f0,r15	; muli
	movi2fp f1,r22
	mult f0,f0,f1
	movfp2i r15,f0
	la r13,-80+136(r29)
	addu r15,r15,r13
	addu r24,r24,r15
	lf f18,0(r24)
	multf f18,f18,f30
	lf f16,0(r14)
	addf f18,f18,f16
	sf 0(r14),f18
L.51:
	la r30,1(r30)
	la r24,4(r0)
	sle r3,r30,r24	; lei
	bnez r3,L.50
	nop
L.48:
L.45:
	la r23,1(r23)
	la r24,3(r0)
	sle r3,r23,r24	; lei
	bnez r3,L.44
	nop
L.37:
	la r22,1(r22)
	la r24,3(r0)
	sle r3,r22,r24	; lei
	bnez r3,L.36
	nop
	lf f18,-44+136(r29)
	lf f16,-24+136(r29)
	addf f18,f18,f16
	lf f16,-4+136(r29)
	addf f18,f18,f16
	sf -84+136(r29),f18
	la r24,L.60(r0)
	sw 0(r29),r24
	lf f18,-84+136(r29)
	cvtf2d f18,f18
	sd 8(r29),f18
	jal printf
	nop
L.1:
	ld f28,16(r29)
	ld f30,24(r29)
	lw r22,32(r29)
	lw r23,36(r29)
	lw r30,40(r29)
	lw r31,44(r29)
	addu r29,r29,#136
	jal exit
	nop
	.end main
.data
.align 0
L.60:
.byte 37
.byte 102
.byte 10
.byte 0
.align 2
L.35:
	.word 0x41880000
.align 2
L.32:
	.word 0x40a00000
.align 2
L.29:
	.word 0x40e00000
.align 2
L.26:
	.word 0x41000000
.align 2
L.23:
	.word 0xbf800000
.align 2
L.18:
	.word 0x40000000
.align 2
L.15:
	.word 0x3f800000
.align 2
L.12:
	.word 0x40c00000
.align 2
L.7:
	.word 0x40400000
.align 2
L.4:
	.word 0x40800000
