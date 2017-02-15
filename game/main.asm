game_pre:
  add $s0, $zero, $ra
  draw_screen(color_background)

  draw_horizontal_line(0, 127, 46, color_inverted)
  draw_horizontal_line(0, 127, 80, color_inverted)
  draw_horizontal_line(0, 127, 114, color_inverted)

  game_draw_start_point(color_inverted)
  game_draw_tunels(color, color_inverted)
  game_draw_jump_ramp(color_inverted)
  game_draw_buses(color)
  game_draw_landing_ramp(color_inverted)

  display_snapshot()

  lw $t8, game_player_position
  lw $t9, game_player_lane
  add $t8, $zero, 10
  add $t9, $zero, 1
  sw $t8, game_player_position
  sw $t9, game_player_lane

  game_draw_player(color_player_detail, color_player_body, color_player_motorcycle)

  game_pre_waiting:
    add $t8, $zero, KEYBOARD_ADDRESS
    lw $t9, 0($t8)
    bne $t9, 1, game_pre_waiting
    lw $t9, 4($t8)
    beq $t9, 27, game_end
    bne $t9, 32, game_pre_waiting

  jr $s0

game:
  add $s1, $zero, $ra
  j game_keyboard_pre

game_end:
  sw $zero, game_player_height
  sw $zero, game_player_speed
  sw $zero, game_player_speed_count
  sw $zero, game_player_move_count
  sw $zero, game_player_brake_count
  add $t8, $zero, 1
  sw $t8, game_stage
  sw $t8, game_player_lane
  add $t8, $zero, 10
  sw $t8, game_player_position
  j main

game_keyboard_pre:
  add $t8, $zero, KEYBOARD_ADDRESS
  lw $t8, 0($t8)
  beq $t8, 1, game_keyboard
  j game_keyboard_handle_not_press

game_keyboard:
  add $t9, $zero, KEYBOARD_ADDRESS
  lw $t9, 4($t9)
  beq $t9, 32, game_keyboard_handle_space
  beq $t9, 27, game_keyboard_handle_escape
  j game_keyboard_handle_not_press

game_keyboard_end:
  j game_update

game_keyboard_handle_not_press:
  lw $t8, game_player_height
  blt $t8, $zero, game_keyboard_end
  # sw $zero, game_player_speed_count
  lw $t8, game_player_brake_interval
  lw $t9, game_player_brake_count
  circular_increment($t9, $zero, $t8, 1)
  sw $t9, game_player_brake_count
  bne $t9, $zero, game_keyboard_end
  lw $t9, game_player_speed
  decrement($t9, 1, 1)
  sw $t9, game_player_speed
  j game_keyboard_end

game_keyboard_handle_space:
  lw $t8, game_player_height
  blt $t8, $zero, game_keyboard_end
  sw $zero, game_player_brake_count
  lw $t8, game_player_speed_interval
  lw $t9, game_player_speed_count
  circular_increment($t9, $zero, $t8, 1)
  sw $t9, game_player_speed_count
  bne $t9, $zero, game_keyboard_end
  lw $t9, game_player_speed
  increment($t9, 25, 1)
  sw $t9, game_player_speed
  j game_keyboard_end

game_keyboard_handle_escape:
  j game_end

game_update:
  j game_update_move

game_update_end:
  j game_keyboard_pre

game_update_move:
  lw $t8, game_player_speed
  beq $t8, $zero, game_update_end
  lw $t8, game_player_move_interval
  lw $t9, game_player_move_count
  circular_increment($t9, $zero, $t8, 1)
  sw $t9, game_player_move_count
  bne $t9, $zero, game_update_move_end
  game_hide_player()
  lw $t8, game_player_lane
  beq $t8, 1, game_update_move_1st_lane
  beq $t8, 2, game_update_move_2nd_lane
  beq $t8, 3, game_update_move_3rd_lane

  game_update_move_1st_lane:
    lw $t8, game_player_position
    lw $t9, game_player_speed
    increment($t8, 127, $t9)
    sw $t8, game_player_position
    beq $t8, 127, game_update_move_next_lane
    j game_update_move_n_lane_end

  game_update_move_2nd_lane:
    lw $t8, game_player_position
    lw $t9, game_player_speed
    decrement($t8, -15, $t9)
    sw $t8, game_player_position
    beq $t8, -15, game_update_move_next_lane
    j game_update_move_n_lane_end

  game_update_move_3rd_lane:
    lw $t8, game_player_position
    lw $t9, game_player_speed
    increment($t8, 127, $t9)
    sw $t8, game_player_position
    beq $t8, 127, game_win
    blt $t8, 22, game_update_move_n_lane_end
    j game_update_move_jump

    game_update_move_jump:
      lw $t8, game_player_position
      lw $t9, game_player_speed
      mul $t9, $t9, 3
      add $t9, $t9, 44
      blt $t8, $t9, game_update_move_jump_up
      j game_update_move_jump_down

    game_update_move_jump_up:
      lw $t8, game_player_height
      lw $t9, game_player_speed
      add $s3, $t9, 2
      increment($t8, $s3, $t9)
      sw $t8, game_player_height
      j game_update_move_jump_end

    game_update_move_jump_down:
      lw $t8, game_player_height
      beq $t8, $zero, game_update_move_jump_end
      lw $t9, game_player_speed
      decrement($t9, 1, 2)
      decrement($t8, 0, $t9)
      sw $t8, game_player_height
      j game_update_move_jump_end

    game_update_move_jump_end:
      j game_update_move_jump_fail

    game_update_move_jump_fail:
      lw $t8, game_player_position
      blt $t8, 29, game_update_move_n_lane_end

      lw $t9, game_stage
      add $t9, $t9, 4
      mul $t9, $t9, 5
      add $t9, $t9, 44
      bgt $t8, $t9, game_update_move_n_lane_end

      lw $t8, game_player_height
      ble $t8, 6, game_end
      j game_update_move_n_lane_end

  game_update_move_next_lane:
    lw $t8, game_player_lane
    increment($t8, 3, 1)
    sw $t8, game_player_lane
    j game_update_move_n_lane_end

  game_update_move_n_lane_end:
    j game_update_draw

game_update_move_end:
  j game_update_end

game_update_draw:
  game_draw_player(color_player_detail, color_player_body, color_player_motorcycle)
  j game_update_draw_end

game_update_draw_end:
  j game_update_end

game_win:
  sw $zero, game_player_height
  sw $zero, game_player_speed
  sw $zero, game_player_speed_count
  sw $zero, game_player_move_count
  sw $zero, game_player_brake_count
  lw $t8, game_stage
  increment($t8, 10, 1)
  sw $t8, game_stage
  add $t8, $zero, 1
  sw $t8, game_player_lane
  add $t8, $zero, 10
  sw $t8, game_player_position
  j main
