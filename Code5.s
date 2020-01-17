	AREA demo1, CODE, READONLY
	ENTRY
mystart
	
	LDR r2,=num1
	LDR r0,[r2]
	LDR r2,=num2
	LDR r1,[r2]

	BL sumer
	LDR r1,=rst
	STR r0,[r2]

stp BAL stp

sumer
	STMFD SP!,{r4,LR}
	ADD r4,r0,r1
	MOV r0,r4
	LDMFD SP!,{r4,LR}
	MOV PC,LR

	AREA MyConst,DATA,READONLY
num1 DCD 2
num2 DCD 3
	AREA MyVar,DATA,READWRITE
rst SPACE 8
	END