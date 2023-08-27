; ===== Program to multiply all integers from 1 to 5 and display the answer in hexadecimal value in 7 segment display =============================

Start:
	CLO		; Close unwanted windows
	MOV AL,1	; Copy 1 into the AL register
	MOV BL,5	; Copy 5 into the BL register

Rep:
	MUL AL,BL	; Multiply AL with BL and store value in AL
	DEC BL		; Decrease the value of BL by 1 and store the value in BL
	JNZ Rep		; Jump to the Rep if BL is not equal to zero

	MOV [C1],AL	; Copy AL into RAM location C1
	DIV AL,10	; Divide AL by hexadecimal 10 and store the value in AL
	MOV [C2],AL	; Copy AL into RAM location C2

	CALL 30		; Execute the code in address 30
	OUT 2		; Send the data in AL to Port 02
	
	MOV BL,[C2]	; Copy RAM location C2 into BL
	MUL BL,10	; Multiply BL by hexadecimal 10 and store the value in BL
	MOV AL,[C1]	; Copy RAM location C1 into AL
	SUB AL,BL	; Substract BL from AL and store the value in AL
	CALL 30		; Execute the code in address 30

	ADD AL,1	; Add AL to 1 and store the value in AL
	OUT 2		; Send the data in AL to Port 02
	

; ----- Procedure at address [30] -------------

	ORG 30		; Generate machine code from address [30]
	ADD AL,1	; Add AL to 1 and store the value in AL
	DEC AL		; Decrease the value of AL by 1 and store the value in AL
	JNZ Loop01	; Jump to the Loop01 if BL is not equal to zero

Loop01:
    DEC AL	; Decrease the value of AL by 1 and store the value in AL
    JNZ Loop02	; Jump to the Loop02 if BL is not equal to zero
    JMP Rem01	; Jump to Rem01
	
Loop02:
    DEC AL	; Decrease the value of AL by 1 and store the value in AL
    JNZ Loop03	; Jump to the Loop03 if BL is not equal to zero
    JMP Rem02	; Jump to Rem02

Loop03:
    DEC AL	; Decrease the value of AL by 1 and store the value in AL
    JNZ Loop04	; Jump to the Loop04 if BL is not equal to zero
    JMP Rem03	; Jump to Rem03

Loop04:
    DEC AL	; Decrease the value of AL by 1 and store the value in AL
    JNZ Loop05	; Jump to the Loop05 if BL is not equal to zero
    JMP Rem04	; Jump to Rem04

Loop05:
    DEC AL	; Decrease the value of AL by 1 and store the value in AL
    JNZ Loop06	; Jump to the Loop06 if BL is not equal to zero
    JMP Rem05	; Jump to Rem05

Loop06:
    DEC AL	; Decrease the value of AL by 1 and store the value in AL
    JNZ Loop07	; Jump to the Loop07 if BL is not equal to zero
    JMP Rem06	; Jump to Rem06

Loop07:
    DEC AL	; Decrease the value of AL by 1 and store the value in AL
    JNZ Loop08	; Jump to the Loop08 if BL is not equal to zero
    JMP Rem07	; Jump to Rem07

Loop08:
    DEC AL	; Decrease the value of AL by 1 and store the value in AL
    JNZ Loop09	; Jump to the Loop09 if BL is not equal to zero
    JMP Rem08	; Jump to Rem08

Loop09:
    DEC AL	; Decrease the value of AL by 1 and store the value in AL
    JNZ Loop10	; Jump to the Loop10 if BL is not equal to zero
    JMP Rem09	; Jump to Rem09

Loop10:
    DEC AL	; Decrease the value of AL by 1 and store the value in AL
    JNZ Loop11	; Jump to the Loop11 if BL is not equal to zero
    JMP Rem10	; Jump to Rem10

Loop11:
    DEC AL	; Decrease the value of AL by 1 and store the value in AL
    JNZ Loop12	; Jump to the Loop12 if BL is not equal to zero
    JMP Rem11	; Jump to Rem11

Loop12:
    DEC AL	; Decrease the value of AL by 1 and store the value in AL
    JNZ Loop13	; Jump to the Loop13 if BL is not equal to zero
    JMP Rem12	; Jump to Rem12

Loop13:
    DEC AL	; Decrease the value of AL by 1 and store the value in AL
    JNZ Loop14	; Jump to the Loop14 if BL is not equal to zero
    JMP Rem13	; Jump to Rem13

Loop14:
    DEC AL	; Decrease the value of AL by 1 and store the value in AL
    JNZ Loop15	; Jump to the Loop15 if BL is not equal to zero
    JMP Rem14	; Jump to Rem14

Loop15:
    DEC AL	; Decrease the value of AL by 1 and store the value in AL
    JNZ Loop16	; Jump to the Loop16 if BL is not equal to zero
    JMP Rem15	; Jump to Rem15

Loop16:
    JMP Rem16	; Jump to Rem16

Rem01:
    MOV AL,0A   ; Move the 0A value to display 1 in seven segment to AL
    RET         ; Return

Rem02:
    MOV AL,B6   ; Move the B6 value to display 2 in seven segment to AL
    RET         ; Return

Rem03:
    MOV AL,9E   ; MOV the 9E value to display 3 in seven segment to AL
    RET         ; Return

Rem04:
    MOV AL,4E   ; MOV the 4E value to display 4 in seven segment to AL
    RET         ; Return

Rem05:
    MOV AL,DC   ; MOV the DC value to display 5 in seven segment to AL
    RET         ; Return

Rem06:
    MOV AL,FC   ; MOV the FC value to display 6 in seven segment to AL
    RET         ; Return

Rem07:
    MOV AL,8A   ; MOV the 8A value to display 7 in seven segment to AL
    RET         ; Return

Rem08:
    MOV AL,FE   ; MOV the FE value to display 8 in seven segment to AL
    RET         ; Return

Rem09:
    MOV AL,DE   ; MOV the DE value to display 9 in seven segment to AL
    RET         ; Return

Rem10:
    MOV AL,CE   ; MOV the CE value to display A in seven segment to AL
    RET         ; Return

Rem11:
    MOV AL,7C   ; MOV the 7C value to display B in seven segment to AL
    RET         ; Return

Rem12:
    MOV AL,F0   ; MOV the F0 value to display C in seven segment to AL
    RET         ; Return

Rem13:
    MOV AL,3E   ; MOV the 3E value to display D in seven segment to AL
    RET         ; Return

Rem14:
    MOV AL,F6   ; MOV the F6 value to display E in seven segment to AL
    RET         ; Return

Rem15:
    MOV AL,E4   ; MOV the E4 value to display F in seven segment to AL
    RET         ; Return

Rem16:
    MOV AL,FA   ; MOV the FA value to display 0 in seven segment to AL
    RET         ; Return

; ---------------------------------------------------------------
END             ; End of the program
; ---------------------------------------------------------------