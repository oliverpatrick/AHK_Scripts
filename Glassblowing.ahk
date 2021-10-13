#IfWinActive ahk_exe RuneLite.exe
#SingleInstance force

;Prerequistes - 
;RuneLite window = x: 87, y: 14 width: 1723, height: 860
; Client

1:: 

; clicks bank
	Mousemove, bankX, bankY, mouseSpeed
	sleep bankClick
	click
	sleep spaceSleep

loop {
;sleeps
	Random, spaceSleep, 650, 900
	Random idleSleep, 1000, 2500
	Random, bankClick, 600, 800
	Random, miscClick, 700, 1000
	Random, blowpipeSleep, 45000, 48000 

;mouseSpeeds
	Random, mouseSpeed, 3, 5

;coordinate variables
	;Bank
	Random, bankX, 410, 600
	Random, bankY, 49, 158
		;Bank Logs
		Random, bankMoltenGlassX, 504, 560
		Random, bankMoltenGlassY, 164, 208
			;Inventory knife
			Random, blowpipeX, 1067, 1110
			Random, blowpipeY, 384, 421
				;Inventory logs
				Random, invGlassX, 1145, 1145
				Random, invGlassY, 381, 422
					;Screen coords
					Random screenX, 15, 3052
					Random screenY, 33, 1035
	
	; client bank x 372, 36 y 566, 175
	;bankLogs x 327, 346, y 372, 385
	;knife x 1067, 384, y 1110, 421
	;maple logs x 1145, 387, 1197, 425
	;screen x 15, 35, y 1752, 954
	;35 seconds for a full inventory

; collects molten glass from bank 
	Mousemove, bankMoltenGlassX, bankMoltenGlassY, mouseSpeed
	sleep bankClick
	click
	sleep bankClick
	Send {esc}

; clicks knife
	sleep spaceSleep
	Mousemove, blowpipeX, blowpipeY, mouseSpeed
	click
	sleep miscClick

; clicks molten glass to blow glass
	Mousemove, invGlassX, invGlassY, mouseSpeed
	sleep bankClick
	click
	sleep bankClick
	Send {space}
	sleep idleSleep
	Mousemove, screenX, screenY, mouseSpeed
	sleep blowpipeSleep

;stores bows
	Mousemove, bankX, bankY, mouseSpeed
	sleep bankClick
	click
	sleep spaceSleep
	Mousemove, invGlassX, invGlassY, mouseSpeed
	sleep spaceSleep
	click
	sleep bankClick
}
	
2:: reload
3:: exitapp