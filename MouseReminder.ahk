#NoEnv

Gui, Show , w500 h300, Silent's Mouse Reminder 
;Script GUI Title;
;GUI OPTIONS
Gui, Add, Text, x20 y10 w160 Left,How often to check NMZ?
;;;;;;;;Countdown to the next click;;;;;;;;;;;;
Gui, Add, Edit, x120 y30 h19 w40 vNUMBER Left, 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;The Actual clickable button;;;;;;;;;;;;
Gui, Add, Button, w80 h20 x20 y30 vMYBUTTON2 gCountdown ,Countdown


Gui, Add, Text, x20 y150 w250 Left,Press the Esc button to exit the program.
Gui, Add, Text, x20 y180 w250 Left,Press the P button to Pause the script.

return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;End of the GUI;;;;;;;;;;;;;;;;;



Countdown:
    {
        Gui, Submit, NoHide
        numberofloops := NUMBER
        Counter = %numberofloops%

        Loop 50000
        {
            {
                Counter -= 1
                ToolTip, %Counter%
                If (Counter = 2){
                MsgBox , , CHECK RUNESCAPE, CHECK RUNESCAPE , 1

                }
                RandomSleep(1000,1000)
                If (Counter = 0){
                    numberofloops := NUMBER
                    Counter = %numberofloops%
                    ;Counter := %numberofloops%
                    ;break  ; this will break the loop
                    }
                }


        }   
        return

    }

return

Pause:
Suspend Permit
keywait, p 
Pause, Toggle
return



Random(min,max) {
    Random, out, %min%, %max%
    return  out
}


Ran(Num)
{
   Random, r, -1*Num, Num
   Return r
}

RandomSleep(min,max)
{
Random, random, %min%, %max%
Sleep %random%
}

esc::exitapp