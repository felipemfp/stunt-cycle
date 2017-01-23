menu_pre:
  add $s0, $zero, $ra
  draw_screen(color_background)
  menu_draw_title(color)
  menu_draw_button_play(color_background, color)
  menu_draw_button_exit(color_background, color)
  jr $s0

menu:
  add $s1, $zero, $ra
  lw $t8, menu_selection
  beq $t8, 1, menu_draw_selection_1
  beq $t8, 2, menu_draw_selection_2

menu_draw_selection_1:
  menu_draw_button_play_detail(color_primary)
  menu_draw_button_exit_detail(color_background)
  j menu_after_draw

menu_draw_selection_2:
  menu_draw_button_play_detail(color_background)
  menu_draw_button_exit_detail(color_danger)
  j menu_after_draw

menu_after_draw:
  lw $t8, keyboard_address
  lw $t8, 0($t8)
  beq $t8, 1, menu_keyboard
  j menu_after_draw

menu_after_keyboard:
  j menu

menu_keyboard:
  lw $t9, keyboard_address
  lw $t9, 4($t9)
  beq $t9, 97, menu_on_left
  beq $t9, 100, menu_on_right
  beq $t9, 10, menu_on_enter
  beq $t9, 27, menu_exit
  j menu_after_draw

menu_on_right:
  lw $t9, menu_selection
  circular_increment($t9, 1, 2, 1)
  sw $t9, menu_selection
  j menu_after_keyboard

menu_on_left:
  lw $t9, menu_selection
  circular_decrement($t9, 1, 2, 1)
  sw $t9, menu_selection
  j menu_after_keyboard

menu_on_enter:
  lw $t9, menu_selection
  beq $t9, 1, menu_play
  beq $t9, 2, menu_exit
  j menu_after_keyboard

menu_play:
  jr $s1

menu_exit:
  exit()
