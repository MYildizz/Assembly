; write a code that contains a function. This function would take a number(32-bit unsigned number) then
;the function would return a factorial of this number.



AREA myCode, CODE, READONLY
		ENTRY

		MOV R0, #4
		MOV R1, #1
		BL fact
stop	BAL stop

fact	STMFD SP!, {LR}
		CMP R0, #1
		BEQ	out
		MUL R1, R0, R1
		SUB R0, R0, #1
		BL fact
out		MOV R0, R1
		LDMFD SP!, {LR}
		bx LR

	AREA data, DATA, READONLY

	AREA myVar, DATA, READWRITE

	END