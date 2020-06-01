#include <Array.au3>
;~ MouseMoveRandom(704, 664,104, 236)

MouseClickRand('main',571, 671)

Func MouseClickRand($mouseType,$coord_x,$coord_y)
    $current_x=MouseGetPos()[0]
    $current_y=MouseGetPos()[1]

    MouseMoveRandom($current_x, $current_y, $coord_x, $coord_y)
    MouseClick('main',$coord_x,$coord_y)
EndFunc

Func MouseMoveRandom($start_x, $start_y, $end_x, $end_y)
	MouseMove($start_x, $start_y)

	$dest_coord_x = $end_x
	$dest_coord_y = $end_y

	$is_stop_move_x = False
	$is_stop_move_y = False

	$x = $start_x
	$y = $start_y
	While True
		if $end_x>$start_x Then
			$delta_x = Random(0, 1, 1) * Random(15,35,1)
		Else
			$delta_x = -1 * Random(0, 1, 1) * Random(15,35,1)
		EndIf

		if $end_y>$start_y Then
			$delta_y = Random(0, 1, 1) * Random(15,35,1)
		Else
			$delta_y = -1* Random(0, 1, 1) * Random(15,35,1)
		EndIf




		If Not $is_stop_move_x Then
			$x = $x + $delta_x
		EndIf
		If Abs($x-$dest_coord_x) < 50 Then $is_stop_move_x = True

		If Not $is_stop_move_y Then
			$y = $y + $delta_y
		EndIf
		If Abs($y-$dest_coord_y) < 50 Then $is_stop_move_y = True

		If $is_stop_move_x And $is_stop_move_y Then ExitLoop


		ConsoleWrite('coord: ' & $x & ' - ' & $y & @CRLF)
		MouseMove($x, $y)
		;Sleep($time_step)

	WEnd

	MouseMove($end_x, $end_y)
EndFunc   ;==>MouseMoveRandom
