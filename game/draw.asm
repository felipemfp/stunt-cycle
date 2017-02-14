.macro game_draw_start_point(%foreground)
  draw_area(5, 11, 35, 38, %foreground)
  draw_vertical_line(39, 44, 8, %foreground)
.end_macro

.macro game_draw_tunels(%foreground, %background)
  draw_pixel(124, 51, %background)
  draw_pixel(124, 55, %background)
  draw_area(120, 124, 56, 84, %background)
  draw_area(120, 124, 22, 50, %background)
  draw_vertical_line(22, 84, 125, %background)
  draw_vertical_line(23, 83, 126, %background)
  draw_vertical_line(24, 82, 127, %background)

  # 1.1
  draw_vertical_line(29, 43, 112, %background)

  draw_vertical_line(25, 29, 113, %background)
  # draw_vertical_line(30, 42, 113, %foreground)
  draw_vertical_line(43, 47, 113, %background)

  draw_vertical_line(23, 25, 114, %background)
  # draw_vertical_line(26, 46, 114, %foreground)
  draw_vertical_line(47, 49, 114, %background)

  draw_vertical_line(22, 23, 115, %background)
  # draw_vertical_line(24, 48, 115, %foreground)
  draw_vertical_line(49, 50, 115, %background)

  # draw_vertical_line(23, 49, 116, %foreground)
  draw_horizontal_line(116, 119, 22, %background)
  draw_horizontal_line(116, 119, 50, %background)

  # draw_vertical_line(25, 47, 117, %foreground)
  draw_horizontal_line(117, 119, 23, %background)
  draw_horizontal_line(117, 119, 24, %background)
  draw_horizontal_line(117, 119, 48, %background)
  draw_horizontal_line(117, 119, 49, %background)

  # draw_vertical_line(27, 45, 118, %foreground)
  draw_horizontal_line(118, 119, 25, %background)
  draw_horizontal_line(118, 119, 26, %background)
  draw_horizontal_line(118, 119, 47, %background)

  draw_vertical_line(22, 30, 119, %background)
  # draw_vertical_line(31, 41, 119, %foreground)
  draw_vertical_line(42, 50, 119, %background)


  # 1.2
  draw_vertical_line(63, 77, 112, %background)

  draw_vertical_line(59, 63, 113, %background)
  # draw_vertical_line(64, 76, 113, %foreground)
  draw_vertical_line(77, 81, 113, %background)

  draw_vertical_line(57, 59, 114, %background)
  # draw_vertical_line(60, 80, 114, %foreground)
  draw_vertical_line(81, 83, 114, %background)

  draw_vertical_line(56, 57, 115, %background)
  # draw_vertical_line(58, 82, 115, %foreground)
  draw_vertical_line(83, 84, 115, %background)

  # draw_vertical_line(57, 83, 116, %foreground)
  draw_horizontal_line(116, 119, 56, %background)
  draw_horizontal_line(116, 119, 84, %background)

  # draw_vertical_line(59, 81, 117, %foreground)
  draw_horizontal_line(117, 119, 57, %background)
  draw_horizontal_line(117, 119, 58, %background)
  draw_horizontal_line(117, 119, 82, %background)
  draw_horizontal_line(117, 119, 83, %background)

  # draw_vertical_line(61, 79, 118, %foreground)
  draw_horizontal_line(118, 119, 59, %background)
  draw_horizontal_line(118, 119, 60, %background)
  draw_horizontal_line(118, 119, 81, %background)

  draw_vertical_line(56, 64, 119, %background)
  # draw_vertical_line(65, 75, 119, %foreground)
  draw_vertical_line(76, 84, 119, %background)

  # 2.1
  draw_pixel(3, 85, %background)
  draw_pixel(3, 89, %background)
  draw_area(3, 7, 56, 84, %background)
  draw_area(3, 7, 90, 118, %background)
  draw_vertical_line(56, 118, 2, %background)
  draw_vertical_line(57, 117, 1, %background)
  draw_vertical_line(58, 116, 0, %background)

  draw_vertical_line(63, 77, 15, %background)

  draw_vertical_line(59, 63, 14, %background)
  # draw_vertical_line(64, 76, 14, %foreground)
  draw_vertical_line(77, 81, 14, %background)

  draw_vertical_line(57, 59, 13, %background)
  # draw_vertical_line(60, 80, 13, %foreground)
  draw_vertical_line(81, 83, 13, %background)

  draw_vertical_line(56, 57, 12, %background)
  # draw_vertical_line(58, 82, 12, %foreground)
  draw_vertical_line(83, 84, 12, %background)

  # draw_vertical_line(57, 83, 11, %foreground)
  draw_horizontal_line(8, 11, 56, %background)
  draw_horizontal_line(8, 11, 84, %background)

  # draw_vertical_line(59, 81, 10, %foreground)
  draw_horizontal_line(8, 10, 57, %background)
  draw_horizontal_line(8, 10, 58, %background)
  draw_horizontal_line(8, 10, 82, %background)
  draw_horizontal_line(8, 10, 83, %background)

  # draw_vertical_line(61, 79, 9, %foreground)
  draw_horizontal_line(8, 9, 59, %background)
  draw_horizontal_line(8, 9, 60, %background)
  draw_horizontal_line(8, 9, 81, %background)

  draw_vertical_line(56, 64, 8, %background)
  # draw_vertical_line(65, 75, 8, %foreground)
  draw_vertical_line(76, 84, 8, %background)

  # 2.2
  draw_vertical_line(97, 111, 15, %background)

  draw_vertical_line(93, 97, 14, %background)
  # draw_vertical_line(98, 110, 14, %foreground)
  draw_vertical_line(111, 115, 14, %background)

  draw_vertical_line(91, 93, 13, %background)
  # draw_vertical_line(94, 114, 13, %foreground)
  draw_vertical_line(115, 117, 13, %background)

  draw_vertical_line(90, 91, 12, %background)
  # draw_vertical_line(92, 116, 12, %foreground)
  draw_vertical_line(117, 118, 12, %background)

  # draw_vertical_line(91, 117, 11, %foreground)
  draw_horizontal_line(8, 11, 90, %background)
  draw_horizontal_line(8, 11, 118, %background)

  # draw_vertical_line(93, 115, 10, %foreground)
  draw_horizontal_line(8, 10, 91, %background)
  draw_horizontal_line(8, 10, 92, %background)
  draw_horizontal_line(8, 10, 116, %background)
  draw_horizontal_line(8, 10, 117, %background)

  # draw_vertical_line(95, 113, 9, %foreground)
  draw_horizontal_line(8, 9, 93, %background)
  draw_horizontal_line(8, 9, 94, %background)
  draw_horizontal_line(8, 9, 115, %background)

  draw_vertical_line(90, 98, 8, %background)
  # draw_vertical_line(99, 109, 8, %foreground)
  draw_vertical_line(110, 118, 8, %background)
.end_macro

.macro game_draw_jump_ramp(%foreground)
  draw_horizontal_line(32, 42, 113, %foreground)
  draw_horizontal_line(35, 42, 112, %foreground)
  draw_horizontal_line(38, 42, 111, %foreground)
  draw_horizontal_line(40, 42, 110, %foreground)
  draw_horizontal_line(41, 42, 109, %foreground)
  draw_horizontal_line(42, 42, 108, %foreground)
.end_macro

.macro game_draw_buses(%foreground)
  lw $a0, game_stage
  add $a0, $a0, 4
  add $a1, $zero, 1
  add $a2, $zero, 44
  game_draw_buses_loop:
    draw_vertical_line(108, 113, $a2, %foreground)
    add $a2, $a2, 1
    draw_pixel($a2, 107, %foreground)
    draw_vertical_line(109, 112, $a2, %foreground)
    add $a2, $a2, 1
    draw_pixel($a2, 107, %foreground)
    draw_vertical_line(109, 112, $a2, %foreground)
    add $a2, $a2, 1
    draw_vertical_line(108, 113, $a2, %foreground)
    add $a2, $a2, 2
    add $a1, $a1, 1
    ble $a1, $a0, game_draw_buses_loop
.end_macro

.macro game_draw_landing_ramp(%foreground)
  lw $a0, game_stage
  add $a0, $a0, 4
  add $a1, $a0, 44
  mul $a0, $a0, 4
  add $a1, $a1, $a0
  add $a2, $zero, $a1
  draw_horizontal_line($a1, $a2, 108, %foreground)
  add $a2, $a2, 1
  draw_horizontal_line($a1, $a2, 109, %foreground)
  add $a2, $a2, 1
  draw_horizontal_line($a1, $a2, 110, %foreground)
  add $a2, $a2, 2
  draw_horizontal_line($a1, $a2, 111, %foreground)
  add $a2, $a2, 3
  draw_horizontal_line($a1, $a2, 112, %foreground)
  add $a2, $a2, 3
  draw_horizontal_line($a1, $a2, 113, %foreground)
.end_macro

.macro game_draw_player_left_to_right(%color_detail, %color_body, %color_motorcycle, %x_reference_min, %x_reference_max, %y_reference, %callback)
  lw $a0, game_player_position

  bge $a0, %x_reference_max, %callback
  add $a1, $zero, %y_reference
  sub $a1, $a1, 5
  draw_pixel($a0, $a1, %color_detail)
  add $a1, $a1, 1
  add $a2, $a1, 2
  draw_vertical_line($a1, $a2, $a0, %color_motorcycle)

  add $a0, $a0, 1
  bge $a0, %x_reference_max, %callback
  add $a1, $zero, %y_reference
  sub $a1, $a1, 6
  draw_pixel($a0, $a1, %color_detail)
  add $a1, $a1, 1
  draw_pixel($a0, $a1, %color_motorcycle)
  add $a1, $a1, 4
  draw_pixel($a0, $a1, %color_motorcycle)

  add $a0, $a0, 1
  bge $a0, %x_reference_max, %callback
  add $a1, $zero, %y_reference
  sub $a1, $a1, 6
  draw_pixel($a0, $a1, %color_detail)
  add $a1, $a1, 1
  draw_pixel($a0, $a1, %color_motorcycle)
  add $a1, $a1, 4
  draw_pixel($a0, $a1, %color_motorcycle)

  add $a0, $a0, 1
  bge $a0, %x_reference_max, %callback
  add $a1, $zero, %y_reference
  sub $a1, $a1, 6
  draw_pixel($a0, $a1, %color_detail)
  add $a1, $a1, 1
  draw_pixel($a0, $a1, %color_motorcycle)
  add $a1, $a1, 2
  draw_pixel($a0, $a1, %color_body)
  add $a1, $a1, 2
  draw_pixel($a0, $a1, %color_motorcycle)

  add $a0, $a0, 1
  bge $a0, %x_reference_max, %callback
  add $a1, $zero, %y_reference
  sub $a1, $a1, 11
  add $a2, $a1, 4
  draw_vertical_line($a1, $a2, $a0, %color_body)
  add $a1, $a2, 1
  add $a2, $a1, 2
  draw_vertical_line($a1, $a2, $a0, %color_detail)
  add $a1, $a2, 1
  draw_pixel($a0, $a1, %color_body)
  add $a1, $a1, 1
  draw_pixel($a0, $a1, %color_motorcycle)

  add $a0, $a0, 1
  bge $a0, %x_reference_max, %callback
  add $a1, $zero, %y_reference
  sub $a1, $a1, 14
  add $a2, $a1, 2
  draw_vertical_line($a1, $a2, $a0, %color_body)
  add $a1, $a2, 1
  add $a2, $a1, 3
  draw_vertical_line($a1, $a2, $a0, %color_motorcycle)
  add $a1, $a2, 1
  add $a2, $a1, 1
  draw_vertical_line($a1, $a2, $a0, %color_body)
  add $a1, $a2, 1
  draw_pixel($a0, $a1, %color_detail)
  add $a1, $a1, 2
  draw_pixel($a0, $a1, %color_body)

  add $a0, $a0, 1
  bge $a0, %x_reference_max, %callback
  add $a1, $zero, %y_reference
  sub $a1, $a1, 14
  add $a2, $a1, 2
  draw_vertical_line($a1, $a2, $a0, %color_body)
  add $a1, $a2, 1
  draw_pixel($a0, $a1, %color_motorcycle)
  add $a1, $a1, 1
  draw_pixel($a0, $a1, %color_body)
  add $a1, $a1, 3
  draw_pixel($a0, $a1, %color_motorcycle)
  add $a1, $a1, 1
  add $a2, $a1, 1
  draw_vertical_line($a1, $a2, $a0, %color_body)

  add $a0, $a0, 1
  bge $a0, %x_reference_max, %callback
  add $a1, $zero, %y_reference
  sub $a1, $a1, 14
  draw_pixel($a0, $a1, %color_body)
  add $a1, $a1, 1
  draw_pixel($a0, $a1, %color_motorcycle)
  add $a1, $a1, 1
  draw_pixel($a0, $a1, %color_body)
  add $a1, $a1, 2
  draw_pixel($a0, $a1, %color_body)
  add $a1, $a1, 3
  draw_pixel($a0, $a1, %color_detail)
  add $a1, $a1, 1
  draw_pixel($a0, $a1, %color_motorcycle)
  add $a1, $a1, 1
  add $a2, $a1, 1
  draw_vertical_line($a1, $a2, $a0, %color_body)
  add $a1, $a2, 1
  draw_pixel($a0, $a1, %color_motorcycle)

  add $a0, $a0, 1
  bge $a0, %x_reference_max, %callback
  add $a1, $zero, %y_reference
  sub $a1, $a1, 10
  draw_pixel($a0, $a1, %color_body)
  add $a1, $a1, 3
  add $a2, $a1, 1
  draw_vertical_line($a1, $a2, $a0, %color_detail)
  add $a1, $a2, 2
  draw_pixel($a0, $a1, %color_body)
  add $a1, $a1, 1
  draw_pixel($a0, $a1, %color_motorcycle)

  add $a0, $a0, 1
  bge $a0, %x_reference_max, %callback
  add $a1, $zero, %y_reference
  sub $a1, $a1, 10
  add $a2, $a1, 1
  draw_vertical_line($a1, $a2, $a0, %color_motorcycle)
  add $a1, $a2, 2
  add $a2, $a1, 2
  draw_vertical_line($a1, $a2, $a0, %color_detail)

  add $a0, $a0, 1
  bge $a0, %x_reference_max, %callback
  add $a1, $zero, %y_reference
  sub $a1, $a1, 10
  draw_pixel($a0, $a1, %color_motorcycle)
  add $a1, $a1, 1
  add $a2, $a1, 1
  draw_vertical_line($a1, $a2, $a0, %color_body)
  add $a1, $a2, 1
  add $a2, $a1, 3
  draw_vertical_line($a1, $a2, $a0, %color_detail)

  add $a0, $a0, 1
  bge $a0, %x_reference_max, %callback
  add $a1, $zero, %y_reference
  sub $a1, $a1, 8
  add $a2, $a1, 2
  draw_vertical_line($a1, $a2, $a0, %color_body)
  add $a1, $a2, 2
  add $a2, $a1, 2
  draw_vertical_line($a1, $a2, $a0, %color_motorcycle)

  add $a0, $a0, 1
  bge $a0, %x_reference_max, %callback
  add $a1, $zero, %y_reference
  sub $a1, $a1, 5
  draw_pixel($a0, $a1, %color_body)
  add $a1, $a1, 4
  draw_pixel($a0, $a1, %color_motorcycle)

  add $a0, $a0, 1
  bge $a0, %x_reference_max, %callback
  add $a1, $zero, %y_reference
  sub $a1, $a1, 5
  draw_pixel($a0, $a1, %color_motorcycle)
  add $a1, $a1, 1
  add $a2, $a1, 1
  draw_vertical_line($a1, $a2, $a0, %color_body)
  add $a1, $a2, 2
  draw_pixel($a0, $a1, %color_motorcycle)

  add $a0, $a0, 1
  bge $a0, %x_reference_max, %callback
  add $a1, $zero, %y_reference
  sub $a1, $a1, 5
  draw_pixel($a0, $a1, %color_motorcycle)
  add $a1, $a1, 4
  draw_pixel($a0, $a1, %color_motorcycle)

  add $a0, $a0, 1
  bge $a0, %x_reference_max, %callback
  add $a1, $zero, %y_reference
  sub $a1, $a1, 4
  add $a2, $a1, 2
  draw_vertical_line($a1, $a2, $a0, %color_motorcycle)

  j %callback
.end_macro

.macro game_draw_player_right_to_left(%color_detail, %color_body, %color_motorcycle, %x_reference_min, %x_reference_max, %y_reference, %callback)
.end_macro

.macro game_hide_player_left_to_right(%x_reference_min, %x_reference_max, %y_reference, %callback)
  lw $a0, game_player_position

  bge $a0, %x_reference_max, %callback
  add $a1, $zero, %y_reference
  sub $a1, $a1, 5
  display_snapshot_restore_pixel($a0, $a1)
  add $a1, $a1, 1
  add $a2, $a1, 2
  display_snapshot_restore_vertical_line($a1, $a2, $a0)

  add $a0, $a0, 1
  bge $a0, %x_reference_max, %callback
  add $a1, $zero, %y_reference
  sub $a1, $a1, 6
  display_snapshot_restore_pixel($a0, $a1)
  add $a1, $a1, 1
  display_snapshot_restore_pixel($a0, $a1)
  add $a1, $a1, 4
  display_snapshot_restore_pixel($a0, $a1)

  add $a0, $a0, 1
  bge $a0, %x_reference_max, %callback
  add $a1, $zero, %y_reference
  sub $a1, $a1, 6
  display_snapshot_restore_pixel($a0, $a1)
  add $a1, $a1, 1
  display_snapshot_restore_pixel($a0, $a1)
  add $a1, $a1, 4
  display_snapshot_restore_pixel($a0, $a1)

  add $a0, $a0, 1
  bge $a0, %x_reference_max, %callback
  add $a1, $zero, %y_reference
  sub $a1, $a1, 6
  display_snapshot_restore_pixel($a0, $a1)
  add $a1, $a1, 1
  display_snapshot_restore_pixel($a0, $a1)
  add $a1, $a1, 2
  display_snapshot_restore_pixel($a0, $a1)
  add $a1, $a1, 2
  display_snapshot_restore_pixel($a0, $a1)

  add $a0, $a0, 1
  bge $a0, %x_reference_max, %callback
  add $a1, $zero, %y_reference
  sub $a1, $a1, 11
  add $a2, $a1, 4
  display_snapshot_restore_vertical_line($a1, $a2, $a0)
  add $a1, $a2, 1
  add $a2, $a1, 2
  display_snapshot_restore_vertical_line($a1, $a2, $a0)
  add $a1, $a2, 1
  display_snapshot_restore_pixel($a0, $a1)
  add $a1, $a1, 1
  display_snapshot_restore_pixel($a0, $a1)

  add $a0, $a0, 1
  bge $a0, %x_reference_max, %callback
  add $a1, $zero, %y_reference
  sub $a1, $a1, 14
  add $a2, $a1, 2
  display_snapshot_restore_vertical_line($a1, $a2, $a0)
  add $a1, $a2, 1
  add $a2, $a1, 3
  display_snapshot_restore_vertical_line($a1, $a2, $a0)
  add $a1, $a2, 1
  add $a2, $a1, 1
  display_snapshot_restore_vertical_line($a1, $a2, $a0)
  add $a1, $a2, 1
  display_snapshot_restore_pixel($a0, $a1)
  add $a1, $a1, 2
  display_snapshot_restore_pixel($a0, $a1)

  add $a0, $a0, 1
  bge $a0, %x_reference_max, %callback
  add $a1, $zero, %y_reference
  sub $a1, $a1, 14
  add $a2, $a1, 2
  display_snapshot_restore_vertical_line($a1, $a2, $a0)
  add $a1, $a2, 1
  display_snapshot_restore_pixel($a0, $a1)
  add $a1, $a1, 1
  display_snapshot_restore_pixel($a0, $a1)
  add $a1, $a1, 3
  display_snapshot_restore_pixel($a0, $a1)
  add $a1, $a1, 1
  add $a2, $a1, 1
  display_snapshot_restore_vertical_line($a1, $a2, $a0)

  add $a0, $a0, 1
  bge $a0, %x_reference_max, %callback
  add $a1, $zero, %y_reference
  sub $a1, $a1, 14
  display_snapshot_restore_pixel($a0, $a1)
  add $a1, $a1, 1
  display_snapshot_restore_pixel($a0, $a1)
  add $a1, $a1, 1
  display_snapshot_restore_pixel($a0, $a1)
  add $a1, $a1, 2
  display_snapshot_restore_pixel($a0, $a1)
  add $a1, $a1, 3
  display_snapshot_restore_pixel($a0, $a1)
  add $a1, $a1, 1
  display_snapshot_restore_pixel($a0, $a1)
  add $a1, $a1, 1
  add $a2, $a1, 1
  display_snapshot_restore_vertical_line($a1, $a2, $a0)
  add $a1, $a2, 1
  display_snapshot_restore_pixel($a0, $a1)

  add $a0, $a0, 1
  bge $a0, %x_reference_max, %callback
  add $a1, $zero, %y_reference
  sub $a1, $a1, 10
  display_snapshot_restore_pixel($a0, $a1)
  add $a1, $a1, 3
  add $a2, $a1, 1
  display_snapshot_restore_vertical_line($a1, $a2, $a0)
  add $a1, $a2, 2
  display_snapshot_restore_pixel($a0, $a1)
  add $a1, $a1, 1
  display_snapshot_restore_pixel($a0, $a1)

  add $a0, $a0, 1
  bge $a0, %x_reference_max, %callback
  add $a1, $zero, %y_reference
  sub $a1, $a1, 10
  add $a2, $a1, 1
  display_snapshot_restore_vertical_line($a1, $a2, $a0)
  add $a1, $a2, 2
  add $a2, $a1, 2
  display_snapshot_restore_vertical_line($a1, $a2, $a0)

  add $a0, $a0, 1
  bge $a0, %x_reference_max, %callback
  add $a1, $zero, %y_reference
  sub $a1, $a1, 10
  display_snapshot_restore_pixel($a0, $a1)
  add $a1, $a1, 1
  add $a2, $a1, 1
  display_snapshot_restore_vertical_line($a1, $a2, $a0)
  add $a1, $a2, 1
  add $a2, $a1, 3
  display_snapshot_restore_vertical_line($a1, $a2, $a0)

  add $a0, $a0, 1
  bge $a0, %x_reference_max, %callback
  add $a1, $zero, %y_reference
  sub $a1, $a1, 8
  add $a2, $a1, 2
  display_snapshot_restore_vertical_line($a1, $a2, $a0)
  add $a1, $a2, 2
  add $a2, $a1, 2
  display_snapshot_restore_vertical_line($a1, $a2, $a0)

  add $a0, $a0, 1
  bge $a0, %x_reference_max, %callback
  add $a1, $zero, %y_reference
  sub $a1, $a1, 5
  display_snapshot_restore_pixel($a0, $a1)
  add $a1, $a1, 4
  display_snapshot_restore_pixel($a0, $a1)

  add $a0, $a0, 1
  bge $a0, %x_reference_max, %callback
  add $a1, $zero, %y_reference
  sub $a1, $a1, 5
  display_snapshot_restore_pixel($a0, $a1)
  add $a1, $a1, 1
  add $a2, $a1, 1
  display_snapshot_restore_vertical_line($a1, $a2, $a0)
  add $a1, $a2, 2
  display_snapshot_restore_pixel($a0, $a1)

  add $a0, $a0, 1
  bge $a0, %x_reference_max, %callback
  add $a1, $zero, %y_reference
  sub $a1, $a1, 5
  display_snapshot_restore_pixel($a0, $a1)
  add $a1, $a1, 4
  display_snapshot_restore_pixel($a0, $a1)

  add $a0, $a0, 1
  bge $a0, %x_reference_max, %callback
  add $a1, $zero, %y_reference
  sub $a1, $a1, 4
  add $a2, $a1, 2
  display_snapshot_restore_vertical_line($a1, $a2, $a0)

  j %callback
.end_macro

.macro game_hide_player_right_to_left(%x_reference_min, %x_reference_max, %y_reference, %callback)
.end_macro

.macro game_draw_player(%color_detail, %color_body, %color_motorcycle)
  lw $a0, game_player_lane
  beq $a0, 1, game_draw_player_first_lane
  beq $a0, 2, game_draw_player_second_lane
  beq $a0, 3, game_draw_player_third_lane
  j game_draw_player_end
  game_draw_player_first_lane:
    game_draw_player_left_to_right(%color_detail, %color_body, %color_motorcycle, 10, 119, 46, game_draw_player_end)
  game_draw_player_second_lane:
    game_draw_player_right_to_left(%color_detail, %color_body, %color_motorcycle, 10, 119, 80, game_draw_player_end)
  game_draw_player_third_lane:
    game_draw_player_left_to_right(%color_detail, %color_body, %color_motorcycle, 10, 128, 114, game_draw_player_end)
  game_draw_player_end:
    nop
.end_macro

.macro game_hide_player()
  lw $a0, game_player_lane
  beq $a0, 1, game_hide_player_first_lane
  beq $a0, 2, game_hide_player_second_lane
  beq $a0, 3, game_hide_player_third_lane
  j game_hide_player_end
  game_hide_player_first_lane:
    game_hide_player_left_to_right(10, 119, 46, game_hide_player_end)
  game_hide_player_second_lane:
    game_hide_player_right_to_left(10, 119, 80, game_hide_player_end)
  game_hide_player_third_lane:
    game_hide_player_left_to_right(10, 128, 114, game_hide_player_end)
  game_hide_player_end:
    nop
.end_macro
