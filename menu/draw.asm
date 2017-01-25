.macro menu_draw_title(%foreground)
  # S
  draw_pixel(39, 18, %foreground)
  draw_pixel(40, 17, %foreground)
  draw_pixel(41, 17, %foreground)
  draw_pixel(42, 18, %foreground)
  draw_pixel(39, 19, %foreground)
  draw_pixel(40, 20, %foreground)
  draw_pixel(41, 21, %foreground)
  draw_pixel(42, 22, %foreground)
  draw_pixel(42, 23, %foreground)
  draw_pixel(41, 24, %foreground)
  draw_pixel(40, 24, %foreground)
  draw_pixel(39, 23, %foreground)

  # t
  draw_vertical_line(17, 24, 45, %foreground)
  draw_horizontal_line(44, 46, 19, %foreground)

  # u
  draw_vertical_line(20, 23, 48, %foreground)
  draw_vertical_line(20, 23, 51, %foreground)
  draw_horizontal_line(49, 50, 24, %foreground)

  # n
  draw_vertical_line(21, 24, 53, %foreground)
  draw_vertical_line(21, 24, 56, %foreground)
  draw_horizontal_line(54, 55, 20, %foreground)

  # t
  draw_vertical_line(17, 24, 59, %foreground)
  draw_horizontal_line(58, 60, 19, %foreground)

  # C
  draw_vertical_line(18, 23, 65, %foreground)
  draw_horizontal_line(66, 67, 17, %foreground)
  draw_horizontal_line(66, 67, 24, %foreground)
  draw_pixel(68, 18, %foreground)
  draw_pixel(68, 23, %foreground)

  # y
  draw_vertical_line(20, 23, 70, %foreground)
  draw_vertical_line(20, 23, 73, %foreground)
  draw_horizontal_line(71, 72, 24, %foreground)
  draw_horizontal_line(70, 71, 25, %foreground)

  # c
  draw_vertical_line(21, 23, 75, %foreground)
  draw_horizontal_line(76, 77, 20, %foreground)
  draw_horizontal_line(76, 77, 24, %foreground)
  draw_pixel(78, 21, %foreground)
  draw_pixel(78, 23, %foreground)

  # l
  draw_vertical_line(17, 24, 80, %foreground)

  # e
  draw_vertical_line(21, 23, 82, %foreground)
  draw_horizontal_line(83, 84, 20, %foreground)
  draw_horizontal_line(83, 84, 24, %foreground)
  draw_pixel(85, 21, %foreground)
  draw_horizontal_line(83, 84, 22, %foreground)
.end_macro

.macro menu_draw_button_play_detail(%foreground)
  draw_horizontal_line(40, 41, 51, %foreground)
  draw_horizontal_line(40, 43, 52, %foreground)
  draw_horizontal_line(40, 45, 53, %foreground)
  draw_horizontal_line(40, 47, 54, %foreground)
  draw_horizontal_line(40, 45, 55, %foreground)
  draw_horizontal_line(40, 43, 56, %foreground)
  draw_horizontal_line(40, 41, 57, %foreground)
.end_macro

.macro menu_draw_button_play(%foreground, %background)
  draw_area(27, 59, 48, 60, %background)
  menu_draw_button_play_detail(%foreground)
.end_macro

.macro menu_draw_button_exit_detail(%foreground)
  draw_pixel(80, 51, %foreground)
  draw_pixel(81, 51, %foreground)
  draw_pixel(81, 52, %foreground)
  draw_pixel(82, 52, %foreground)
  draw_pixel(82, 53, %foreground)
  draw_pixel(83, 53, %foreground)
  draw_pixel(84, 55, %foreground)
  draw_pixel(85, 55, %foreground)
  draw_pixel(85, 56, %foreground)
  draw_pixel(86, 56, %foreground)
  draw_pixel(86, 57, %foreground)
  draw_pixel(87, 57, %foreground)

  draw_pixel(80, 57, %foreground)
  draw_pixel(81, 57, %foreground)
  draw_pixel(81, 56, %foreground)
  draw_pixel(82, 56, %foreground)
  draw_pixel(82, 55, %foreground)
  draw_pixel(83, 55, %foreground)
  draw_pixel(83, 54, %foreground)
  draw_pixel(84, 54, %foreground)
  draw_pixel(84, 53, %foreground)
  draw_pixel(85, 53, %foreground)
  draw_pixel(85, 52, %foreground)
  draw_pixel(86, 52, %foreground)
  draw_pixel(86, 51, %foreground)
  draw_pixel(87, 51, %foreground)
.end_macro

.macro menu_draw_button_exit(%foreground, %background)
  draw_area(67, 99, 48, 60, %background)
  menu_draw_button_exit_detail(%foreground)
.end_macro
