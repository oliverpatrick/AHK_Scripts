run() {
  MouseGetPos, xpos, ypos 
  MsgBox, The cursor is at X%xpos% Y%ypos%
}

1::run()
2::reload
3::exitapp
