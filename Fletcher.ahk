;#IfWinActive ahk_exe RuneLite.exe
#IfWinActive ahk_exe openOSRS.exe
#SingleInstance force

;Prerequistes - 
;RuneLite window = x: 207	y: 95	w: 1476	h: 791
;Client zoom: 896/896
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
	Random, bankX, 383, 470
	Random, bankY, 100, 176
		;Bank Logs
		Random, bankLogsX, 272, 310
		Random, bankLogsY, 327, 352
			;Inventory knife
			Random, knifeX, 893, 930
			Random, knifeY, 358, 385
				;Inventory logs
				Random, invLogsX, 960, 991
				Random, invLogsY, 350, 386
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