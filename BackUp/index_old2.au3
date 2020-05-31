#include <Array.au3>
MouseMoveRandom(104, 236, 704, 664, 5)

Func MouseMoveRandom($start_x, $start_y, $end_x, $end_y,$time_step)
	MouseMove($start_x,$start_y)

	$dest_coord_x = $end_x
	$dest_coord_y = $end_y

	$is_stop_move_x = False
	$is_stop_move_y = False

	$x = $start_x
	$y = $start_y
	While True
		$delta_x = Random(0, 1, 1) * 1
		$delta_y = Random(0, 1, 1) * 1

		If Not $is_stop_move_x Then
			$x = $x + $delta_x
		EndIf
		If $x = $dest_coord_x Then $is_stop_move_x = True

		If Not $is_stop_move_y Then
			$y = $y + $delta_y
		EndIf
		If $y = $dest_coord_y Then $is_stop_move_y = True

		if $is_stop_move_x and $is_stop_move_y then ExitLoop


		ConsoleWrite('coord: ' & $x & ' - ' & $y & @CRLF)
		MouseMove($x,$y)
		Sleep($time_step)

	WEnd
EndFunc   ;==>MouseMoveRandom
