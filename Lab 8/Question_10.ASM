; ======================================================
; ===== Seven Segment Displays Port 02 =================
; ===== Index No: 210571L =================
; ===== Last two digits to display: 71 =================

Start:
	MOV	AL,8A	; 1000 1010
	OUT	02	; Send the data in AL to Port 02
	
	MOV	AL,0B	; 0000 1011
	OUT	02	; Send the data in AL to Port 02
	
	END

; ======================================================