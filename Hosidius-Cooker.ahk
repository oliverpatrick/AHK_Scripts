#IfWinActive ahk_exe RuneLite.exe

;Random Variables Declarations
	;Click speed
	Random, clickSpeed1, 500, 700
	Random, clickSpeed2, 1000, 2000
		;Sleeps
		Random, genericSleep, 200, 300
		Random, s2, 1000, 2000


clickRange() {
	;click range
	Random, rangeClick, 0, 10
	;input 'space'
	Send {space}
}

;Banking Function
bankItems() {
	;click bank

	sleep, genericSleep 
	;click bank inventory
	sleep, genericSleep
	;search for seaweed
	
	;click seaweed
	
	;input 'esc'
	Send {escape}
}

Loop {

}

1::start
2::reload
3::exitapp