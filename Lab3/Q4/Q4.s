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
		LDR R0, =N
		LDR R2, =RES
		LDR R1,[R0]
		AND R1,#0xF0
		LSR R1,#4
		CMP R1,#0xA
		BCC AD1
		ADD R1,#0x07
AD1		ADD R1,#0x30
		STRB R1,[R2],#1
		LDR R1,[R0]
		AND R1,#0x0F
		CMP R1,#0xA
		BCC AD2
		ADD R1,#0x07
AD2		ADD R1,#0x30
		STRB R1,[R2]
STOP 	B STOP
N DCD 0xA1	
		AREA mydata,DATA,READWRITE
RES DCD 0
		END