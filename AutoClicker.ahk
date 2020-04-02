CoordMode, Mouse, Screen
BlueWheelX := 0
BlueWheelY := 0
RedWheelX := 0
RedWheelY := 0
1LeverX := 0
1LeverY := 0
2LeverX := 0
2LeverY := 0
3LeverX := 0
3LeverY := 0
4ButtonsX := 0
4ButtonsY := 0
TimerX := 0
TimerY := 0
BreakLoop := 0

!RControl:: 
If (%BlueWheelX% = 0)
{
    MsgBox, 0, Setup Needed, Blue Wheel Location Unknown. Dismiss this message, then place Cursor to click location then press Spacebar
    KeyWait, Space, D
    MouseGetPos, BlueWheelX,BlueWheelY
    MsgBox, Mouse Position saved! Activate Script to try again.
    return
}
If (%3LeverX% = 0)
{
    MsgBox, 0, Setup Needed, 3 (Side Lever) Location Unknown. Dismiss this message, then place Cursor to click location then press Spacebar
    KeyWait, Space, D
    MouseGetPos, 3LeverX,3LeverY
    MsgBox, Mouse Position saved!, Activate Script to try again.
    return
}
If (%4ButtonsX% = 0)
{
    MsgBox, 0, Setup Needed, 4 (Buttons) Location Unknown. Dismiss this message, then place Cursor to click location then press Spacebar  
    KeyWait, Space, D
    MouseGetPos, 4ButtonsX,4ButtonsY
    MsgBox, Mouse Positi on saved!, Activate Script to try again.
    return
}
Loop, 
{
if (BreakLoop = 1)
  break 
Click, %BlueWheelX%,%BlueWheelY%
Sleep, 600
Click, %4ButtonsX%,%4ButtonsY%
Sleep, 600
Click, %BlueWheelX%,%BlueWheelY%
Sleep, 600
Click, %4ButtonsX%,%4ButtonsY%
Sleep, 600
Click, %BlueWheelX%,%BlueWheelY%
Sleep, 6   00
Click, %3LeverX%,%3LeverY%
Sleep, 61000
}
BreakLoop := 0
return

Esc::
BreakLoop = 1
return