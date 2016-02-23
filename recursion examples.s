/* Recursion in ARM */


// Recursive implementation of factorial
				
				.text
				.global _start

_start:
                MOV SP, #0X110000		// Initialize SP
                LDR R3, =_tests			// load in #
                LDR R0, [R3]			// 
                BL RFACT 				// 
                MOV R0,R7				// 

RFACT:
                PUSH {LR} 				// 
                MOV R6,R0				// 
                SUB R0,R0,#1			// 
                MUL R7,R6,R0			// 
                CMP R0,#0				// 
                MOVEQ R0,#1				// 
                BEQ RFACT_DONE			// 
                BL  RFACT 				// 
RFACT_DONE:
                POP {LR}  				//
                BX LR 					//

ILOOP:
                B ILOOP 				// Finished in inf. loop

// Recursive implementation of fact.