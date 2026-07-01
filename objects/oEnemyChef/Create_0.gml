/// @description Insert description here
// You can write your code in this editor
//
xp = 0
yp = 0
move_spd = 1
setAlarm1 = false
infront = 0

stopMoving = false

global.Enemy4X = 0
global.Enemy4Y = 0
global.Enemy5X = 0
global.Enemy5Y = 0
global.Enemy6X = 0
global.Enemy6Y = 0


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
		if xp == x and yp == y sprite_index = sEnemyChef
    else
    {
        stopMoving = false;

        // Right
        if (infront > -pi/4 && infront <= pi/4)
        {
            sprite_index = sEnemyChefRunningR;
        }
        // Down
        else if (infront > pi/4 && infront <= 3*pi/4)
        {
            sprite_index = sEnemyChefRunningD;
        }
        // Left
        else if (infront > 3*pi/4 || infront <= -3*pi/4)
        {
            sprite_index = sEnemyChefRunningL;
        }
        // Up
        else
        {
            sprite_index = sEnemyChefRunningU;
        }
    }

}