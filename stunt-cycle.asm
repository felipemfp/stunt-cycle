# Stunt Cycle
# Felipe Pontes <felipemfpontes@gmail.com> 2016
#
# Make use of Bitmap Display with a 4x4 pixel and a resolution equals to 512x512.
# You'll need a Keyboard and Display Simulator too.

.eqv  MAX_WIDTH               128
.eqv  MAX_HEIGHT              128
.eqv  DISPLAY_SNAPSHOT_VALUE  0x00020000
.eqv  DISPLAY_ADDRESS         0x10010000
.eqv  KEYBOARD_ADDRESS        0xffff0000

.data 0x10000000
  # colors
  color: .word 0xFFFFFF
  color_faded: .word 0xEEEEEE

  color_primary: .word 0x2196F3
  color_primary_faded: .word 0x1565C0

  color_danger: .word 0xF44336
  color_danger_faded: .word 0xC62828

  color_background: .word 0x607D8B
  color_background_faded: .word 0x37474F

  color_inverted: .word 0x212121
  color_inverted_faded: .word 0x000000

  color_player_detail: .word 0xD50000
  color_player_detail_faded: .word 0xB71C1C

  color_player_body: .word 0xE0E0E0
  color_player_body_faded: .word 0x757575

  color_player_motorcycle: .word 0xBDBDBD
  color_player_motorcycle_faded: .word 0x616161

  # variables
  menu_selection: .word 1
  menu_player_speed: .word 1
  menu_player_move_interval: .word 50
  menu_player_move_count: .word 0

  game_stage: .word 1
  game_player_lane: .word 1
  game_player_position: .word 10
  game_player_height: .word 0
  game_player_speed: .word 0
  game_player_speed_interval: .word 1
  game_player_speed_count: .word 0
  game_player_brake_interval: .word 1500
  game_player_brake_count: .word 0
  game_player_move_interval: .word 1500
  game_player_move_count: .word 0

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
