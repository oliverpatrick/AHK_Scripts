;;VARIABLE DECLARATION & USER INPUT;;

InputBox, invLimit, Number of Loops, Enter the number of loops you'd like to complete

;;GLOBAL VARIABLES;;

global invCount:= 0

;;Functions;;

;;logout Function;;

Logout() {
Random, LogDoorX, ####, ####
Random, LogDoorY, ####, ####
Random, LogButtonX, ####, ####
Random, LogButtonY, ####, ####
Random, a150, 140, 299
Mousemove, LogDoorX, LogDoorY, 3
sleep a150
click
sleep a150
Mousemove, LogButtonX, LogButtonY, 3
sleep a150
click }

Loop {

; script goes here

invCount++
if(invCount = invLimit) {
send {esc}
logout()
sleep 1000
Msgbox, Scrip complete. Loops Complete Completed: %invCount%
exitapp
} else {
continue
}

}