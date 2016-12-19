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

.macro exit()
  li $v0, 10
  syscall
.end_macro
