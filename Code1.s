	AREA demo1, CODE, READONLY
	ENTRY

mystart LDR r0, = sayi
		LDR r1, = alan
		LDR r2, [r0]
		LDR r3, [r0, #4]
		ADD r4, r3,r2
		STR r4, [r1]
		LDR r7, [r1]  

stop BAL stop
	AREA cons, DATA, READONLY;
sayi DCD 3,2
	AREA varl, DATA, READWRITE
alan SPACE 8
	ALIGN
	END
