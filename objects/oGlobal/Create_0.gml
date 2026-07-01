/// @description Insert description here
// You can write your code in this editor
enum STATES
{
    PLAYING,
    PAUSED,
    GAMEOVER,
}

global.game_state = STATES.PAUSED;

global.upkey = "W"
global.downkey = "S"
global.rightkey = "D"
global.leftkey = "A"

global.waiting = 60

global.settingsingame = 0

global.busy = 0

global.minimap = 0

global.grid = mp_grid_create(0,0, room_width/32, room_height/32, 32, 32 );
mp_grid_add_instances(global.grid, oWallPar, 0);

depth = -9999999