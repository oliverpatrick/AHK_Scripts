
;Random Variables Declarations
	;Click speed
	Random, clickSpeed1, 500, 700
	Random, clickSpeed2, 1000, 2000
		;Sleeps
		Random, genericSleep, 200, 300
		Random, s2, 1000, 2000

		Random, walkToRange, 3000, 3500
		Random cookingSleepTime, 48000, 50000

;coordinate variables
	;Desposit Button Bank
	Random, depositX, 869, 745
	Random, depositY, 904, 782
		;Bank
		Random, bankX, 583, 742
		Random, bankY, 618, 781

			;Banked Karam
			Random, karamX, 613, 464
			Random, karamY, 647, 493
			;Cook Karam
			Random, cookKaramX, 454, 156
			Random, cookKaramY, 604, 219
			;Click Range
			Random, rangeX, 785, 156
			Random, rangeY, 809, 178
			

clickRange() {
	MouseMove, rangeX, rangeY, clickSpeed1
	sleep, walkToRange
	Send {2}
	sleep, cookingSleepTime
	clickCookKaram()
}

clickCookKaram() {
	MouseMove, cookKaramX, cookKaramY, clickSpeed1
	sleep, cookingSleepTime
	bankItems()
}

bankItems() {
	MouseMove, bankX, bankY, walkToRange
	sleep, genericSleep
	MouseMove, depositX, depositY, clickSpeed1
	sleep, genericSleep,
	MouseMove, karamX, karamY, genericSleep
	sleep, genericSleep 
	Send {escape}
	sleep, genericSleep
	clickRange()
}

;loop
;clickRange - wait to run to range, wait to click cook, 
;clickCookKaram - wait to fill inv, wait to click bank
;clickBank - click deposit, clickkaram, click range



1::Loop {
	clickRange()
}

2::reload
3::exitapp