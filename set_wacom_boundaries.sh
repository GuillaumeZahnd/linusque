#!/bin/bash

xsetwacom --set "19" MapToOutput HEAD-1
xsetwacom --set "20" MapToOutput HEAD-1
xsetwacom --set "21" MapToOutput HEAD-1
xsetwacom --set "22" MapToOutput HEAD-1

# Command:
# $ xsetwacom --list devices
#
# Answer:
# $ Wacom Intuos Pro L Pen stylus   	id: 19	type: STYLUS    
# $ Wacom Intuos Pro L Pen eraser   	id: 20	type: ERASER    
# $ Wacom Intuos Pro L Pad pad      	id: 21	type: PAD       
# $ Wacom Intuos Pro L Finger touch 	id: 22	type: TOUCH     
#
# Here, "HEAD-1" is the monitor that shall define the Wacom boundaries
