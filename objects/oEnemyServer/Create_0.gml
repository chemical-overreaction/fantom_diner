/// @description Insert description here
// You can write your code in this editor
//
xp = 0
yp = 0
move_spd = 1
setAlarm1 = false
infront = 0

stopMoving = false

global.Enemy1X = 0
global.Enemy1Y = 0
global.Enemy2X = 0
global.Enemy2Y = 0
global.Enemy3X = 0
global.Enemy3Y = 0


path = path_add();
path1 = true 

target1_x = 0
target1_y = 0

target2_x = 0
target2_y = 0

targetx = 0 
targety = 0

alarm[0] = 30;

function Sprites(){
    // Alert state
    if global.waiting == 0
    {
        if stopMoving == false
        {
            sprite_index = sServerSurprised;
            stopMoving = true;
            path_delete(path);
        }
    }
	if xp == x and yp == y sprite_index = sEnemyServer
    else
    {
        stopMoving = false;

        // Left
        if (infront > -pi/4 && infront <= pi/4)
        {
            sprite_index = sEnemyServerRunningL;
        }
        // Down
        else if (infront > pi/4 && infront <= 3*pi/4)
        {
            sprite_index = sEnemyServerRunningD;
        }
        // Right
        else if (infront > 3*pi/4 || infront <= -3*pi/4)
        {
            sprite_index = sEnemyServerRunningR;
        }
        // Up
        else
        {
            sprite_index = sEnemyServerRunningU;
        }
    }

}