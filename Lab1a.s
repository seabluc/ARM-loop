;max		EQU		10 			; Store 10 into symbolic constant named 'max', initialized w/ the value 10
sum		DCD		0			; Allocate memory for data item 'sum', initialized w/ the value 0
;Define	Constant Doubleword (DCD) - typically 32 bits/4 bytes of data (integers, floating-point numbers)
		
		
		MOV		R0, #0		; Initialize R0 to the immediate value (#) of 0. Treat as an immediate constant, and not as a memory address
		;MOV		R1, #max		; Initialize R1 to the immediate value of max (10, the number of integers)
		MOV		R1, #10
loop
		CMP		R1, #0		; Compare if Register1 equals the immediate value of 0.
		BEQ		break		; branch to the label 'break' if R1 = 0
		ADD		R0, R0, R1	; Add R1 to R0
;EXPLAIN	ADD		Rd, Rn, Op2    ; Rd is the destination register where the result is stored
							; Rn is one of the source registers containing one of the values to be added
							; Op2 is the other source operand, which can be iether another register or an immediate value (#)
							; Add R0, R0, R1... it's adding the value of register R1 to the value in Register R0, and then storing the result back in R0.
							; Alternatively, you can view 'Add R0, R0, R1' as R0 = R0 + R1
		
		SUB		R1, R1, #1	; Decrement R1 by the immediate value of 1.
;ADDS and SUBS could be used here, but we can reduce overhead since updating condition flags isn't needed for this program
		B		loop
done
break
		LDR		R2, =sum    ; Load register. Load the address of the 'sum' variable into R2 w/ =
		STR		R0, [R2]    ; Store register. Store the final sum (R0) into R2
		END
		
