.macro draw_pixel(%x, %y, %color)
  lw $t0, max_width
  lw $t1, display_address
  mul $t2, $t0, %y
  add $t2, $t2, %x
  mul $t2, $t2, 4
  add $t2, $t2, $t1
  lw $t3, %color
  sw $t3, 0($t2)
.end_macro

.macro draw_horizontal_line(%from, %to, %y, %color)
  lw $t0, max_width
  lw $t1, display_address
  mul $t2, $t0, %y
  add $t2, $t2, %from
  mul $t2, $t2, 4
  add $t2, $t2, $t1
  lw $t3, %color
  add $t4, $zero, %from
  add $t5, $zero, %to
  draw_horizontal_line_loop:
    sw $t3, 0($t2)
    add $t2, $t2, 4
    add $t4, $t4, 1
    ble $t4, $t5, draw_horizontal_line_loop
.end_macro

.macro draw_vertical_line(%from, %to, %x, %color)
  lw $t0, max_width
  lw $t1, display_address
  mul $t2, $t0, %from
  add $t2, $t2, %x
  mul $t2, $t2, 4
  add $t2, $t2, $t1
  lw $t3, %color
  add $t4, $zero, %from
  add $t5, $zero, %to
  mul $t6, $t0, 4
  draw_vertical_line_loop:
    sw $t3, 0($t2)
    add $t2, $t2, $t6
    add $t4, $t4, 1
    ble $t4, $t5, draw_vertical_line_loop
.end_macro

.macro draw_area(%xFrom, %xTo, %yFrom, %yTo ,%color)
  add $t6, $zero, %yFrom
  add $t7, $zero, %yTo
  draw_area_loop:
    draw_horizontal_line(%xFrom, %xTo, $t6, %color)
    add $t6, $t6, 1
    ble $t6, $t7, draw_area_loop
.end_macro

.macro draw_screen(%color)
  draw_area(0, 127, 0, 127, %color)
.end_macro
