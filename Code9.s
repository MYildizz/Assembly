; Suppose you have SHARP terminated string in ROM.Write a code that reads string from ROM and call a tunetion
; and takes the address of string as parameter the func will reverse characters and store them in RAM


AREA myCode, CODE, READONLY
		ENTRY
		LDR R0, =str1
		LDR R1, =rst		
		BL func
stop	BAL stop	 

func	STMFD SP!, {R5, R6, LR}
		LDR R5, =stk  ;stack base
		MOV R6, '#'
		STMFA R5!, {R6}
loop1	LDRB R6, [R0], #1
		CMP R6,"#"
		BEQ out1
		STMFA R5!, {R6}
		BAL loop1
out1	LDMFA R5!, {R6}
		STRB R6, [R1], #1
		CMP R6,"#"
		BNE out1
		LDMFD SP!, {R5, R6, LR}
		MOV PC, LR

	AREA data, DATA, READONLY
str1 	DCB "murat#"
	AREA myVar, DATA, READWRITE
rst 	SPACE 1000
stk		SPACE 1000
	END