game_pre:
  add $s0, $zero, $ra
  draw_screen(color_background)
  draw_area(27, 99, 0, 12, color_inverted)

  draw_horizontal_line(0, 127, 46, color_inverted)
  draw_horizontal_line(0, 127, 80, color_inverted)
  draw_horizontal_line(0, 127, 114, color_inverted)

  game_draw_start_point(color_inverted)
  game_draw_tunels(color, color_inverted)
  game_draw_jump_ramp(color_inverted)
  game_draw_buses(color)
  game_draw_landing_ramp(color_inverted)

  display_snapshot(display_address, display_snapshot_value)

  jr $s0

game:
  add $s1, $zero, $ra

game_draw:
  game_draw_player()
  j game_after_draw

game_after_draw:
  lw $t8, keyboard_address
  lw $t8, 0($t8)
  beq $t8, 1, game_keyboard
  j game_draw

game_keyboard:
  lw $t9, keyboard_address
  lw $t9, 4($t9)
  beq $t9, 32, game_keyboard_on_space
  beq $t9, 27, game_keyboard_on_escape
  j game_draw

game_keyboard_on_space:
  lw $t8, game_player_position
  game_draw_behind_player()
  circular_increment($t8, 10, 120, 2)
  sw $t8, game_player_position
  j game_draw

game_keyboard_on_escape:
  sw $zero, game_player_speed
  sw $zero, game_crashes
  sw $zero, game_player_inclination
  sw $zero, game_player_speed
  sw $zero, game_player_speed_count
  sw $zero, game_player_move_count
  add $t8, $zero, 1
  sw $t8, game_stage
  sw $t8, game_player_lane
  add $t8, $zero, 10
  sw $t8, game_player_position
  j main

game_after_keyboard:
  j game_draw

game_end:
  jr $s1
