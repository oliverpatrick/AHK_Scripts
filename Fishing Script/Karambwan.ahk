#SingleInstance, force


; Gui Window
Gui, Color, f5f5f5
Gui, Add, Text, x10 y10, Welcome to GolfBollik's Fishing Script.

Gui, Show, w300 h500, Fishing
Gui, Add, Button, x10 y30 w200 h50 gColorPickerBtn, Color Picker 
return


;Labels
ColorPickerBtn:
  colorPicker()
  return

;Functions
colorPicker() {
	;Get Mouse Position
	MouseGetPos, MouseX, MouseY
	  ;Get Color code
    PixelGetColor, colour, %MouseX%, %MouseY%

  MsgBox, The colour is: %colour%
}


; Color Detection
PixelSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, ColorID, Variation, Fast

if (ErrorLevel = 0) {

} else {
  MsgBox, ERROR: Can't find colour
}

2::reload
3::exitapp