#IfWinActive ahk_exe RuneLite.exe
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
#SingleInstance, Force
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

;RuneLite window = x: 207	y: 95	w: 1243	h: 791

;GUI
Gui, Show, x800 y100 w220 h300, Bow Stringer Script
Gui, Add, Button, w200 h30 gSet_Dimensions, Set Window Dimensions
Gui, Add, Button, w200 h30 gIngame_Setup, In Game Setup
Gui, Add, Button, w200 h30 gScript_Start, Script Start
Gui, Add, Button, w200 h30 gScript_End, Script End

return

; LABELS
Set_Dimensions:
    WinMove, RuneLite, , 0, 0, 809, 534
    return

Ingame_Setup:
    MsgBox, , Error, Not implemented yet
    return

Script_Start:
    loop {

;Random Variables Declarations
	;Click speed
	Random, clickSpeed1, 500, 700
	Random, clickSpeed2, 1000, 2000
		;Sleeps
		Random, genericSleep, 200, 300
		Random, longerSleep, 300, 500

		Random, makingBowsSleepTime, 17000, 18500

;coordinate variables
	;Withdraw bows and bowstrings
	Random, bowX, 79, 98
	Random, bowY, 111, 134
  Random, bowstringX, 128, 144
  Random, bowstringY, 111, 129

  ;Bow in inventory
  Random, bowInvX, 572, 597
  Random, bowInvY, 243, 268

  ;Parts in Inventory
  Random, unstrungBowInvX, 615, 636
  Random, unstrungBowInvY, 352, 376
  Random, bowstringInvX, 612, 631
  Random, bowstringInvY, 387, 407

  ;Bank
  Random, bankX, 335, 432
  Random, bankY, 103, 182 

  ;Screen coords
  Random screenX, 15, 3052
  Random screenY, 33, 1035

;mouseSpeeds
	Random, mouseSpeed, 3, 5
  Random, mouseSpeed2, 5, 8

	; click mix ingredients
	MouseMove, unstrungBowInvX, unstrungBowInvY, mouseSpeed
	click
	sleep, genericSleep
  MouseMove, bowstringInvX, bowstringInvY, mouseSpeed
  click
  sleep, longerSleep
  sleep, longerSleep
  sleep, longerSleep
  send, {space}
  sleep, makingBowsSleepTime
  sleep, genericSleep

  ; bank wines
  MouseMove, bankX, bankY, mouseSpeed2
  click
  sleep, longerSleep
  
	; deposit
  sleep, longerSleep
	MouseMove, bowInvX, bowInvY, mouseSpeed2
	click
	sleep, longerSleep,

  ; click ingredients
  MouseMove, bowX, bowY, mouseSpeed2
  click
  sleep, genericSleep
  MouseMove, bowstringX, bowstringY, mouseSpeed
  click
  sleep, genericSleep
  send, {escape}
  sleep, genericSleep
}


Script_End:
    exitapp
    MsgBox, , Script Ended
    return
