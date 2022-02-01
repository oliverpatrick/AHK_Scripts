#SingleInstance force


;Prerequistes - 
;RuneLite window = x: 207	y: 95	w: 1476	h: 791
; Client


1::
loop {

;Random Variables Declarations
	;Click speed
	Random, clickSpeed1, 500, 700
	Random, clickSpeed2, 1000, 2000
		;Sleeps
		Random, genericSleep, 200, 300
		Random, longerSleep, 300, 500
		Random, s2, 1000, 2000

		Random, walkToRange, 3000, 3500
		Random cookingSleepTime, 64000, 68000

;coordinate variables
	;Click Range
	Random, rangeX, 460, 481
	Random, rangeY, 62, 91
		;Bank
		Random, bankChestX, 340, 355
		Random, bankChestY, 478, 501
			;Desposit Button Bank
			Random, depositX, 670, 714
			Random, depositY, 477, 522
				;Banked Karam
				Random, karamX, 420, 465
				Random, karamY, 211, 245	
					;Screen coords
					Random screenX, 15, 3052
					Random screenY, 33, 1035

;mouseSpeeds
	Random, mouseSpeed, 3, 5

; click range
	MouseMove, rangeX, rangeY, mouseSpeed
	click
	sleep, walkToRange
	sleep, genericSleep
	Send {space}
	Mousemove, screenX, screenY, mouseSpeed
	sleep, cookingSleepTime

	; click bank
	MouseMove, bankChestX, bankChestY, mouseSpeed
	click
	sleep, walkToRange
	sleep, genericSleep

	; deposit
	MouseMove, depositX, depositY, mouseSpeed
	click
	sleep, longerSleep,
	sleep, longerSleep

	; withdraw
	MouseMove, karamX, karamY, mouseSpeed
	click
	sleep, longerSleep 
	Send {escape}
	sleep, genericSleep

}

2::reload
3::exitapp