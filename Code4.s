;convert upper to lower

	AREA demo1, CODE, READONLY
	ENTRY
mystart
	
	LDR  r0,=str1
	LDR  r1,=str2
	LDRB r1,[r0]

loop cmp R1,'#'
	BEQ stop
	SUB r1,r1,#32
	STRB r1,[r2],#1
	LDRB r1,[r0,#1]!

	BAL loop


stop BAL stop	

	AREA myConst, DATA, READONLY
str1 DCB "murat#"