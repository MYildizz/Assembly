;Suppose we have number in RAM.If it is greater than 0 divide by 2, if it is zero increment it.

	AREA demo1, CODE, READONLY
	ENTRY
mystart
	
	 LDR r0,=num
	 LDR r1,[r0]

	 CMP r1,#0
	 MOVNE r1,r1,LSR #1
	 ADDEQ r1,r1,#1


stop BAL stop	

	AREA myVar,DATA,READONLY
num DCB 0
	END