.macro circular_increment(%reg, %min, %max, %value)
  add %reg, %reg, %value
  bgt %reg, %max, circular_increment_greater_than_max
  j circular_increment_end
  circular_increment_greater_than_max:
    add %reg, $zero, %min
  circular_increment_end:
    nop
.end_macro

.macro circular_decrement(%reg, %min, %max, %value)
  sub %reg, %reg, %value
  blt %reg, %min, circular_decrement_less_than_min
  j circular_decrement_end
  circular_decrement_less_than_min:
    add %reg, $zero, %max
  circular_decrement_end:
    nop
.end_macro

.macro display_snapshot()
  add $t0, $zero, DISPLAY_ADDRESS
  add $t1, $zero, DISPLAY_SNAPSHOT_VALUE
  add $t2, $zero, MAX_WIDTH
  add $t3, $zero, MAX_HEIGHT
  mul $t3, $t2, $t3
  add $t2, $zero, 0
  display_snapshot_loop:
    mul $t4, $t2, 4
    add $t4, $t4, $t0
    lw $t5, 0($t4)
    add $t4, $t4, $t1
    sw $t5, 0($t4)
    add $t2, $t2, 1
    ble $t2, $t3, display_snapshot_loop
.end_macro

.macro display_snapshot_restore()
  add $t0, $zero, DISPLAY_ADDRESS
  add $t1, $zero, DISPLAY_SNAPSHOT_VALUE
  add $t2, $zero, MAX_WIDTH
  add $t3, $zero, MAX_HEIGHT
  mul $t3, $t2, $t3
  add $t2, $zero, 0
  display_snapshot_restore_loop:
    mul $t4, $t2, 4
    add $t4, $t4, $t0
    add $t4, $t4, $t1
    lw $t5, 0($t4)
    sub $t4, $t4, $t1
    sw $t5, 0($t4)
    add $t2, $t2, 1
    ble $t2, $t3, display_snapshot_restore_loop
.end_macro

.macro display_snapshot_restore_pixel(%x, %y)
  add $t0, $zero, MAX_WIDTH
  add $t1, $zero, DISPLAY_ADDRESS
  mul $t2, $t0, %y
  add $t2, $t2, %x
  mul $t2, $t2, 4
  add $t2, $t2, $t1
  add $t4, $zero, DISPLAY_SNAPSHOT_VALUE
  add $t2, $t2, $t4
  lw $t3, 0($t2)
  sub $t2, $t2, $t4
  sw $t3, 0($t2)
.end_macro

.macro display_snapshot_restore_horizontal_line(%from, %to, %y)
  add $t0, $zero, MAX_WIDTH
  add $t1, $zero, DISPLAY_ADDRESS
  mul $t2, $t0, %y
  add $t2, $t2, %from
  mul $t2, $t2, 4
  add $t2, $t2, $t1
  add $t4, $zero, %from
  add $t5, $zero, %to
  add $t6, $zero, DISPLAY_SNAPSHOT_VALUE
  display_snapshot_restore_horizontal_line_loop:
    add $t2, $t2, $t6
    lw $t3, 0($t2)
    sub $t2, $t2, $t6
    sw $t3, 0($t2)
    add $t2, $t2, 4
    add $t4, $t4, 1
    ble $t4, $t5, display_snapshot_restore_horizontal_line_loop
.end_macro

.macro display_snapshot_restore_vertical_line(%from, %to, %x)
  add $t0, $zero, MAX_WIDTH
  add $t1, $zero, DISPLAY_ADDRESS
  mul $t2, $t0, %from
  add $t2, $t2, %x
  mul $t2, $t2, 4
  add $t2, $t2, $t1
  add $t4, $zero, %from
  add $t5, $zero, %to
  mul $t6, $t0, 4
  add $t7, $zero, DISPLAY_SNAPSHOT_VALUE
  display_snapshot_restore_vertical_line_loop:
    add $t2, $t2, $t7
    lw $t3, 0($t2)
    sub $t2, $t2, $t7
    sw $t3, 0($t2)
    add $t2, $t2, $t6
    add $t4, $t4, 1
    ble $t4, $t5, display_snapshot_restore_vertical_line_loop
.end_macro

.macro display_snapshot_restore_area(%xFrom, %xTo, %yFrom, %yTo ,%color)
  add $t7, $zero, %yFrom
  add $t8, $zero, %yTo
  display_snapshot_restore_area_loop:
    display_snapshot_restore_horizontal_line(%xFrom, %xTo, $t7, %color)
    add $t7, $t7, 1
    ble $t7, $t8, draw_area_loop
.end_macro

.macro exit()
  li $v0, 10
  syscall
.end_macro
