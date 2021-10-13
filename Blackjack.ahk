;Use: 1 knocks out the guard. 2 is an auto double pickpocket and will pickpocket twice while the guard is
;knocked out. Press 3 if the guard catches you and attempts to attack.

Esc:: suspend

RandSleep() {
	Random, rand, 200, 300
	Sleep %rand%
}

Knockout() {
	Click right
	Mousemove,0,110,0,R
	Random, randClick, 700, 900
	Click
	Sleep %randClick%
	Mousemove,0,110,0,R
}

Pickpocket() {
	Loop, 2 {
		Click right
		Mousemove,0,56,0,R
		Random, randClick, 1000, 1300
		Click
		Sleep %randClick%
		Mousemove,0,-56,0,R
	}
}

SafetyPickpocket() {
	Click right
	Mousemove,0,56,0,R
	Random, randClick, 1000, 1300
	Click
	Sleep %randClick%
	Mousemove,0,-56,0,R
}

Main() {
	Knockout()
	RandSleep()
	Loop, 2
	{
		Pickpocket()
		RandSleep()
	}
}

1::Knockout()
2::Pickpocket()
3::SafetyPickpocket()