
;suppose you have a word in ROM. Write a function that counts the 1's


	AREA myCode, CODE, READONLY
		ENTRY

		LDR R1, =num
		LDR R0, [R1]
		
		BL func
stop 		BAL stop

func	STMFD SP!, {R4, R5, LR}
		MOV R4, #0 ;counter
		MOV R5, #0

loop	CMP R4, #32
		BEQ out
		MOVS R0, R0, ROR #1
		ADDCS R5, R5, #1
		ADD R4, R4, #1
		BAL loop
out		MOV R0, R5
		LDMFD SP!, {R4, LR}
		BX LR