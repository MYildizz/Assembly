; Suppose you have an array of numbers in ROM.Wrtite a code that contains a function the function takes the address of array as parameter
; the returns the length of the array and second function that takes the address of the array as a first parameter and the length as second
; parameter this function returns the sum of the element of the array then main will store int RAM


	AREA myCode, CODE, READONLY
		ENTRY
		
		LDR R0, =ary ;address
		MOV R4, R0

		BL func1

		MOV R0, R4 
		BL func2
		LDR R4, =rst
		STR R0, [R4]

out		BAL out


func1	
		STMFD SP!, {R4, R5, R6, LR}
		MOV R1, #0 ; loop counter
		LDR R4, [R0], #4
loop1	CMP R4, #'#'
		BEQ eof
		ADD R1, R1, #1
		LDR R4, [R0], #4 
		BAL loop1
eof		MOV R0, R1
		LDMFD SP!, {R4, R5, R6, LR}
		bx lr



func2
		STMFD SP!, {R4, R5, R6, R8, LR}
		MOV R5, R1
		MOV R4, #0 ;sum
		MOV R6, #0 ;counter of loop
loop	CMP R6, R5
		BEQ eof2
		LDR R8, [R0], #4
		ADD R4, R4, R8
		ADD R6, R6, #1
		BAL loop
eof2	MOV R0, R4
		LDMFD SP!, {R4, R5, R6, R8, LR}
		bx lr
				 

	AREA data, DATA, READONLY
ary 	DCD 3, 4, 2, '#'
	AREA myVar, DATA, READWRITE
rst 	SPACE 4
	END