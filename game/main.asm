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

  game_draw_player()
  jr $s0

game:
  add $s1, $zero, $ra
  jr $s1
