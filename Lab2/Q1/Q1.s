		AREA RESET,DATA,READONLY
		EXPORT __Vectors

__Vectors
		DCD 0x10001000
		DCD Reset_Handler
		ALIGN
		AREA mycode,CODE,READONLY
		ENTRY
		EXPORT Reset_Handler

Reset_Handler
		LDR R0, =VALUES
		LDR R1, =RES
		MOV R2,#10
		MOV R3,#0
UP 		LDR R4,[R0],#4
		ADDS R3,R3,R4
		SUBS R2,#1
		BNE UP
		STR R3,[R1]
STOP	
		B STOP
VALUES DCD 1,2,3,4,5,6,7,8,9,10
		AREA mydata,DATA,READWRITE
RES DCD 0
		END