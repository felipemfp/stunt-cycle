.macro circular_increment(%reg, %min, %max)
  add %reg, %reg, 1
  bgt %reg, %max, circular_increment_greater_than_max
  j circular_increment_end
  circular_increment_greater_than_max:
    add %reg, $zero, %min
  circular_increment_end:
    nop
.end_macro

.macro circular_decrement(%reg, %min, %max)
  sub %reg, %reg, 1
  blt %reg, %min, circular_decrement_less_than_min
  j circular_decrement_end
  circular_decrement_less_than_min:
    add %reg, $zero, %max
  circular_decrement_end:
    nop
.end_macro

.macro display_snapshot(%address, %value)
  lw $t0, %address
  lw $t1, %value
  lw $t2, max_width
  lw $t3, max_height
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

.macro display_snapshot_restore(%address, %value)
  lw $t0, %address
  lw $t1, %value
  lw $t2, max_width
  lw $t3, max_height
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

.macro exit()
  li $v0, 10
  syscall
.end_macro
