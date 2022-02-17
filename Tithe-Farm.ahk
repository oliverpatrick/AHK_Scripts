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
    MsgBox, , Error, Not implemented yet
    return

Script_End:
    MsgBox, , Error, Not implemented yet
    return

;INVENTORY POSITIONS
    ;COLUMN 1 X AXIS
    ; Random, watercanOneX, 1066, 1117
    ; ;COLUMN 2 X AXIS
    ; Random, watercanFiveX, 1142, 1197
    ; ;COLUMN1
    ;     ;SEEDS
    ;     Random, seedX, 1065, 1113
    ;     Random, seedY, 377, 422
    ;     ;WATERCAN1
    ;     Random, watercanOneY, 443, 484
    ;     ;WATERCAN2
    ;     Random, watercanTwoY, 500, 545
    ;     ;WATERCAN3
    ;     Random, watercanThreeY, 557, 601
    ;     ;WATERCAN4
    ;     Random, watercanFourY, 617, 660
    
    ; ;COLUMN2
    ;     ;WATERCAN5
    ;     Random, watercanFiveY, 443, 483
    ;     ;WATERCAN6 
    ;     Random, watercanSixY, 502, 543
    ;     ;WATERCAN7
    ;     Random, watercanSevenY, 560, 604
    ;     ;WATERCAN8
    ;     Random, watercanEightY, 621, 661


;Mousemove seeds
;sleep
;Mousemove plant location one
;sleep
;Mousemove watercan
;sleep 
;Mousemove plant location one
;sleepS

^x::ExitApp