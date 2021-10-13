;#IfWinActive ahk_exe RuneLite.exe
#IfWinActive ahk_exe openOSRS.exe
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
;sleeps1
	Random, spaceSleep, 650, 800
	Random idleSleep, 1000, 2500
	Random, bankClick, 700, 900
	Random, miscClick, 600, 800
	Random, fletchSleep, 45000, 48000 

;mouseSpeeds
	Random, mouseSpeed, 3, 5

;coordinate variables
	;Bank
	Random, bankX, 372, 566
	Random, bankY, 36, 175
		;Bank Logs
		Random, bankLogsX, 327, 372
		Random, bankLogsY, 346, 385
			;Inventory knife
			Random, knifeX, 1067, 1110
			Random, knifeY, 384, 421
				;Inventory logs
				Random, invLogsX, 1145, 1197
				Random, invLogsY, 387, 425
					;Screen coords
					Random screenX, 15, 1000
					Random screenY, 1752, 954
	
	; client bank x 372, 36 y 566, 175
	;bankLogs x 327, 346, y 372, 385
	;knife x 1067, 384, y 1110, 421
	;maple logs x 1145, 387, 1197, 425
	;screen x 15, 35, y 1752, 954
	;35 seconds for a full inventory

; collects logs from bank 
	Mousemove, bankLogsX, bankLogsY, mouseSpeed
	sleep bankClick
	click
	sleep bankClick
	Send {esc}

; clicks knife
	sleep spaceSleep
	Mousemove, knifeX, knifeY, mouseSpeed
	click
	sleep miscClick

; clicks logs to fletch
	Mousemove, invLogsX, invLogsY, mouseSpeed
	sleep bankClick
	click
	sleep bankClick
	Send {space}
	sleep idleSleep
	Mousemove, screenX, screenY, mouseSpeed
	sleep fletchSleep

;stores bows
	Mousemove, bankX, bankY, mouseSpeed
	sleep bankClick
	click
	sleep spaceSleep
	Mousemove, invLogsX, invLogsY, mouseSpeed
	sleep spaceSleep
	click
	sleep bankClick
	; Send {esc}
	; sleep miscClick
}
	
2:: reload
3:: exitapp