	AREA myCode, CODE, READONLY
	ENTRY

	MOV R1,#0  
	MOV R2,#1  
	MOV R3,#5  
	MOV R0,#1
	MOV R8,#0


	LDR R4, = str

	BL func

stop BAL stop 


func  ADD R3,R1,R2	
	  MOV R1,R2		 
	  MOV R2,R3		 
	  ADD R0,R0,#1
	  ADD R8,R8,#4
	  STR R3,[R4,+R8]
	  CMP R0,#33
	  BNE func

	
	AREA myRam,DATA,READWRITE
str SPACE 1000


	END