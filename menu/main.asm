menu_pre:
  add $s0, $zero, $ra
  draw_screen(color_background_faded)
  menu_draw_title(color)
  menu_draw_button_play(color_background, color)
  menu_draw_button_exit(color_background, color)

  game_draw_start_point(color_inverted_faded)
  draw_horizontal_line(0, 127, 46, color_inverted_faded)
  draw_horizontal_line(0, 127, 80, color_inverted_faded)
  draw_horizontal_line(0, 127, 114, color_inverted_faded)
  game_draw_tunels(color_faded, color_inverted_faded)

  display_snapshot()

  game_draw_player(color_player_detail_faded, color_player_body_faded, color_player_motorcycle_faded)
  jr $s0

menu:
  add $s1, $zero, $ra
  j menu_draw

menu_draw:
  lw $t8, menu_selection
  beq $t8, 1, menu_draw_selection_1
  beq $t8, 2, menu_draw_selection_2

menu_draw_selection_1:
  menu_draw_button_play_detail(color_primary)
  menu_draw_button_exit_detail(color_background)
  j menu_draw_player

menu_draw_selection_2:
  menu_draw_button_play_detail(color_background)
  menu_draw_button_exit_detail(color_danger)
  j menu_draw_player

menu_draw_player:
  lw $t8, menu_player_move_interval
  lw $t9, menu_player_move_count
  circular_increment($t9, 0, $t8, 1)
  sw $t9, menu_player_move_count
  bne $t9, $zero, menu_draw_player_end
  game_hide_player()
  j menu_draw_player_move

menu_draw_player_move:
  lw $t8, game_player_lane
  beq $t8, 1, menu_draw_player_move_increment
  beq $t8, 2, menu_draw_player_move_decrement
  beq $t8, 3, menu_draw_player_move_increment

menu_draw_player_move_increment:
  lw $t8, game_player_position
  lw $t9, menu_player_speed
  circular_increment($t8, -15, 127, $t9)
  sw $t8, game_player_position
  beq $t8, 127, menu_draw_player_move_next_lane
  j menu_draw_player_move_end

menu_draw_player_move_decrement:
  lw $t8, game_player_position
  lw $t9, menu_player_speed
  circular_decrement($t8, -15, 127, $t9)
  sw $t8, game_player_position
  beq $t8, -15, menu_draw_player_move_next_lane
  j menu_draw_player_move_end

menu_draw_player_move_next_lane:
  lw $t8, game_player_lane
  circular_increment($t8, 1, 3, 1)
  sw $t8, game_player_lane
  j menu_draw_player_move_end

menu_draw_player_move_end:
  game_draw_player(color_player_detail_faded, color_player_body_faded, color_player_motorcycle_faded)
  j menu_draw_player_end

menu_draw_player_end:
  j menu_draw_end

menu_draw_end:
  add $t8, $zero, KEYBOARD_ADDRESS
  lw $t8, 0($t8)
  beq $t8, 1, menu_keyboard
  j menu_draw

menu_keyboard_end:
  j menu_draw

menu_keyboard:
  add $t9, $zero, KEYBOARD_ADDRESS
  lw $t9, 4($t9)
  beq $t9, 97, menu_keyboard_handle_left
  beq $t9, 100, menu_keyboard_handle_right
  beq $t9, 10, menu_keyboard_handle_enter
  beq $t9, 27, menu_keyboard_handle_escape
  j menu_draw

menu_keyboard_handle_right:
  lw $t9, menu_selection
  circular_increment($t9, 1, 2, 1)
  sw $t9, menu_selection
  j menu_keyboard_end

menu_keyboard_handle_left:
  lw $t9, menu_selection
  circular_decrement($t9, 1, 2, 1)
  sw $t9, menu_selection
  j menu_keyboard_end

menu_keyboard_handle_enter:
  lw $t9, menu_selection
  beq $t9, 1, menu_play
  beq $t9, 2, menu_exit
  j menu_keyboard_end

menu_keyboard_handle_escape:
  j menu_exit

menu_play:
  jr $s1

menu_exit:
  exit()
