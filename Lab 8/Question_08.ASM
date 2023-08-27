; ===== CONTROL THE TRAFFIC LIGHTS =============================

	CLO		; Close unwanted windows.
	MOV AL,0	; Copy 00000000 into the AL register.
	OUT 01		; Send AL to Port One (The traffic lights).

Start:
			; Turn off all the traffic lights.
	MOV AL,84	; Copy 10000100 into the AL register.
	OUT 01		; Send AL to Port One (The traffic lights).
			; Turn on the Red traffic light on left and Green traffic light on right.
	MOV BL,10	; A long delay.(10 cyles)
	CALL 30		; Call the procedure at address [30]

	MOV AL,48	; Copy 01001000 into the AL register.
	OUT 01		; Send AL to Port One (The traffic lights).
			; Turn on the Yellow traffic light on both left and right.
	MOV BL,1	; A short delay.(1 cyle)
	CALL 30		; Call the procedure at address [30]

	MOV AL,30	; Copy 00110000 into the AL register.
	OUT 01		; Send AL to Port One (The traffic lights).
			; Turn on the Green traffic light on left and Red traffic light on right.
	MOV BL,5	; A middle sized delay. (5 cyles)
	CALL 30		; Call the procedure at address [30]

	JMP Start	; Jump back to Start


; ----- Time Delay Procedure Stored At Address [30] -------------
	ORG	30	; Generate machine code from address [30]

	PUSH	BL	; Save BL on the stack.
	PUSHF		; Save the CPU flags on the stack.
Rep:
	DEC	BL	; Subtract one from BL.
	JNZ	REP	; Jump back to Rep if BL was not Zero.

	POPF		; Restore the CPU flags from the stack.
	POP	BL	; Restore BL from the stack.

	RET		; Return from the procedure.
; ---------------------------------------------------------------
	END
; ---------------------------------------------------------------