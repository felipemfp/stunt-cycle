# Stunt Cycle
# Felipe Pontes <felipemfpontes@gmail.com> 2016
#
# Make use of Bitmap Display with a 4x4 pixel and a resolution equals to 512x512.
# You'll need a Keyboard and Display Simulator too.

.data 0x10000000
  # colors
  color: .word 0xFFFFFF
  color_primary: .word 0x2196F3
  color_danger: .word 0xF44336
  color_background: .word 0x607D8B
  color_inverted: .word 0x212121

  # variables
  menu_selection: .word 1
  game_stage: .word 10
  game_player_lane: .word 1
  game_player_position: .word 0
  game_player_speed: .word 1
  game_player_speed_interval: .word 8
  game_player_speed_last: .word 0
  game_player_move_interval: .word 8
  game_player_move_last: .word 0

  # settings
  max_width: .word 128
  max_height: .word 128
  display_address: .word 0x10010000
  keyboard_address: .word 0xffff0000

# macros
.include "common/draw.asm"
.include "common/utils.asm"
.include "menu/draw.asm"
.include "game/draw.asm"

.text
main:
  jal menu_pre
  jal menu
  jal game_pre
  jal game
  exit()

# main codes go here
.include "menu/main.asm"
.include "game/main.asm"
