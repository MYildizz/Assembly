	AREA demo1, CODE, READONLY
	ENTRY
mystart
	LDR r0,=arr
	LDR r1,=alan

	LDR r2,[r0],#8
;	MVN r2,r2
	STR r2,[r1]

	LDR r3,[r0],#4
;	MVN r3,r3
	STR r3,[r1],#4
		  
	LDR r4,[r0]
;	MVN r4,r4
	STR r4,[r1],#8

stop BAL stop
  AREA deneme,DATA,READONLY
arr DCD 1000,2000,3000
	AREA deneme2,DATA,READWRITE
alan SPACE 12
	END
