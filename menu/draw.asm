.macro menu_draw_title(%foreground)
  # S
  draw_pixel(27, 27, %foreground)
  draw_pixel(28, 26, %foreground)
  draw_pixel(29, 26, %foreground)
  draw_pixel(30, 27, %foreground)
  draw_pixel(27, 28, %foreground)
  draw_pixel(28, 29, %foreground)
  draw_pixel(29, 30, %foreground)
  draw_pixel(30, 31, %foreground)
  draw_pixel(30, 32, %foreground)
  draw_pixel(29, 33, %foreground)
  draw_pixel(28, 33, %foreground)
  draw_pixel(27, 32, %foreground)

  # t
  draw_vertical_line(26, 33, 33, %foreground)
  draw_horizontal_line(32, 34, 28, %foreground)

  # u
  draw_vertical_line(29, 32, 36, %foreground)
  draw_vertical_line(29, 32, 39, %foreground)
  draw_horizontal_line(37, 38, 33, %foreground)

  # n
  draw_vertical_line(30, 33, 41, %foreground)
  draw_vertical_line(30, 33, 44, %foreground)
  draw_horizontal_line(42, 43, 29, %foreground)

  # t
  draw_vertical_line(26, 33, 47, %foreground)
  draw_horizontal_line(46, 48, 28, %foreground)

  # C
  draw_vertical_line(27, 32, 53, %foreground)
  draw_horizontal_line(54, 55, 26, %foreground)
  draw_horizontal_line(54, 55, 33, %foreground)
  draw_pixel(56, 27, %foreground)
  draw_pixel(56, 32, %foreground)

  # y
  draw_vertical_line(29, 32, 58, %foreground)
  draw_vertical_line(29, 32, 61, %foreground)
  draw_horizontal_line(59, 60, 33, %foreground)
  draw_horizontal_line(58, 59, 34, %foreground)

  # c
  draw_vertical_line(30, 32, 63, %foreground)
  draw_horizontal_line(64, 65, 29, %foreground)
  draw_horizontal_line(64, 65, 33, %foreground)
  draw_pixel(66, 30, %foreground)
  draw_pixel(66, 32, %foreground)

  # l
  draw_vertical_line(26, 33, 68, %foreground)

  # e
  draw_vertical_line(30, 32, 70, %foreground)
  draw_horizontal_line(71, 72, 29, %foreground)
  draw_horizontal_line(71, 72, 33, %foreground)
  draw_pixel(73, 30, %foreground)
  draw_horizontal_line(71, 72, 31, %foreground)
.end_macro

.macro menu_draw_button_play_detail(%foreground)
  draw_horizontal_line(40, 41, 60, %foreground)
  draw_horizontal_line(40, 43, 61, %foreground)
  draw_horizontal_line(40, 45, 62, %foreground)
  draw_horizontal_line(40, 47, 63, %foreground)
  draw_horizontal_line(40, 45, 64, %foreground)
  draw_horizontal_line(40, 43, 65, %foreground)
  draw_horizontal_line(40, 41, 66, %foreground)
.end_macro

.macro menu_draw_button_play(%foreground, %background)
  draw_area(27, 59, 57, 69, %background)
  menu_draw_button_play_detail(%foreground)
.end_macro

.macro menu_draw_button_exit_detail(%foreground)
  draw_pixel(80, 60, %foreground)
  draw_pixel(81, 60, %foreground)
  draw_pixel(81, 61, %foreground)
  draw_pixel(82, 61, %foreground)
  draw_pixel(82, 62, %foreground)
  draw_pixel(83, 62, %foreground)
  draw_pixel(84, 64, %foreground)
  draw_pixel(85, 64, %foreground)
  draw_pixel(85, 65, %foreground)
  draw_pixel(86, 65, %foreground)
  draw_pixel(86, 66, %foreground)
  draw_pixel(87, 66, %foreground)

  draw_pixel(80, 66, %foreground)
  draw_pixel(81, 66, %foreground)
  draw_pixel(81, 65, %foreground)
  draw_pixel(82, 65, %foreground)
  draw_pixel(82, 64, %foreground)
  draw_pixel(83, 64, %foreground)
  draw_pixel(83, 63, %foreground)
  draw_pixel(84, 63, %foreground)
  draw_pixel(84, 62, %foreground)
  draw_pixel(85, 62, %foreground)
  draw_pixel(85, 61, %foreground)
  draw_pixel(86, 61, %foreground)
  draw_pixel(86, 60, %foreground)
  draw_pixel(87, 60, %foreground)
.end_macro

.macro menu_draw_button_exit(%foreground, %background)
  draw_area(67, 99, 57, 69, %background)
  menu_draw_button_exit_detail(%foreground)
.end_macro
