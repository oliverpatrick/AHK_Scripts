#IfWinActive ahk_exe RuneLite.exe
#SingleInstance force

;INVENTORY POSITIONS
    ;COLUMN 1 X AXIS
    Random, watercanOneX, 1066, 1117
    ;COLUMN 2 X AXIS
    Random, watercanFiveX, 1142, 1197
    ;COLUMN1
        ;SEEDS
        Random, seedX, 1065, 1113
        Random, seedY, 377, 422
        ;WATERCAN1
        Random, watercanOneY, 443, 484
        ;WATERCAN2
        Random, watercanTwoY, 500, 545
        ;WATERCAN3
        Random, watercanThreeY, 557, 601
        ;WATERCAN4
        Random, watercanFourY, 617, 660
    
    ;COLUMN2
        ;WATERCAN5
        Random, watercanFiveY, 443, 483
        ;WATERCAN6 
        Random, watercanSixY, 502, 543
        ;WATERCAN7
        Random, watercanSevenY, 560, 604
        ;WATERCAN8
        Random, watercanEightY, 621, 661


;Mousemove seeds
;sleep
;Mousemove plant location one
;sleep
;Mousemove watercan
;sleep 
;Mousemove plant location one
;sleepS
