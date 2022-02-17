#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
#SingleInstance, Force
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

;RuneLite window = x: 207	y: 95	w: 1243	h: 791

;GUI
Gui, Show, x800 y100 w220 h300, Tithe Farm Script
Gui, Add, Button, w200 h30 gSet_Dimensions, Set Window Dimensions
Gui, Add, Button, w200 h30 gIngame_Setup, In Game Setup
Gui, Add, Button, w200 h30 gScript_Start, Script Start
Gui, Add, Button, w200 h30 gScript_End, Script End

return

; LABELS
Set_Dimensions:
    WinMove, OpenOSRS, , 207, 95, 1243, 791
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

		Random, makingWineSleepTime, 17000, 18500

;coordinate variables
	;Withdraw jug and grapes
	Random, jugX, 206, 227
	Random, jugY, 160, 192
  Random, grapesX, 282, 304
  Random, grapesY, 160, 185

  ;Wine in inventory
  Random, wineInvX, 902, 916
  Random, wineInvY, 365, 383

  ;Ingredients in Inventory
  Random, jugInvX, 968, 986
  Random, jugInvY, 524, 547
  Random, grapesInvX, 1034, 1050
  Random, grapesInvY, 524, 547

  ;Bank
  Random, bankX, 352, 442
  Random, bankY, 102, 170

  ;Screen coords
  Random screenX, 15, 3052
  Random screenY, 33, 1035

;mouseSpeeds
	Random, mouseSpeed, 3, 5
  Random, mouseSpeed2, 5, 8

	; click mix ingredients
	MouseMove, jugInvX, jugInvY, mouseSpeed
	click
	sleep, genericSleep
  MouseMove, grapesInvX, grapesInvY, mouseSpeed
  click
  sleep, longerSleep
  sleep, longerSleep
  sleep, longerSleep
  send, {space}
  sleep, makingWineSleepTime
  sleep, genericSleep

  ; bank wines
  MouseMove, bankX, bankY, mouseSpeed2
  click
  sleep, longerSleep
  
	; deposit
  sleep, longerSleep
	MouseMove, wineInvX, wineInvY, mouseSpeed2
	click
	sleep, longerSleep,

  ; click ingredients
  MouseMove, jugX, jugY, mouseSpeed2
  click
  sleep, genericSleep
  MouseMove, grapesX, grapesY, mouseSpeed
  click
  sleep, genericSleep
  send, {escape}
  sleep, genericSleep
}


Script_End:
    exitapp
    MsgBox, , Script Ended
    return
