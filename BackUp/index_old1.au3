#include<Array.au3>
Func MouseMoveRandom()
$coord=MouseGetPos()
$init_coord_x=0;$coord[0]
$init_coord_y=0;$coord[1]

$dest_coord_x=100
$dest_coord_y=100

$is_stop_move_x=False
$is_stop_move_y=False

$x=$init_coord_x
$y=$init_coord_y
While True
	$delta_x=Random(0,1,1)*1
	$delta_y=Random(0,1,1)*1

	if not $is_stop_move_x Then
		$x=$x+$delta_x
	EndIf
	if $x=$dest_coord_x Then $is_stop_move_x=True

	if not $is_stop_move_y Then
		$y=$y+$delta_y
	EndIf
	if $y=$dest_coord_y Then $is_stop_move_y=True


	ConsoleWrite('coord: '&$x &' - '&$y&@CRLF)
	;MouseMove($current_coord_x+$delta_x,)
	sleep(500)

WEnd
EndFunc