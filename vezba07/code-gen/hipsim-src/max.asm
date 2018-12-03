
a:			WORD	1
b:			WORD	1
c:			WORD	1
main:
			PUSH	%14
			MOV 	%15,%14
			SUBU	%15,$8,%15
@main_body:
			MOV 	$8,a
			MOV 	$12,b
			MOV 	$b, %0
			MOV 	(%0), %1
@if0:
			CMPS	a,b
			JLES	@false0
@true0:
			MOV 	a,c
			JMP 	@exit0
@false0:
			MOV 	b,c
@exit0:
			MOV 	c, %13
@main_exit:
			MOV 	%14,%15
			POP 	%14
			RET
