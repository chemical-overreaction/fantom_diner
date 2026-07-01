/// @description Insert description here
// You can write your code in this editor

if (instance_exists(ob_textbox))
{
    stopMoving = true;
} 



if path_position == 1 and setAlarm1 == false{
	path1 = !path1
	alarm_set(0,45);
	setAlarm1 = true
}else if path_position != 1 setAlarm1 = false


depth = -y;

if enemyid == 4{
	global.Enemy4X = x
	global.Enemy4Y = y
	target1_x = global.target14_x
	target1_y = global.target14_y
	
	target2_x = global.target24_x
	target2_y = global.target24_y

}
if enemyid == 5{
	global.Enemy5X = x
	global.Enemy5Y = y
	target1_x = global.target15_x
	target1_y = global.target15_y
	
	target2_x = global.target25_x
	target2_y = global.target25_y

}
if enemyid == 6{
	global.Enemy6X = x
	global.Enemy6Y = y

}

/// Find walking direction

var dx = x - xp;
var dy = y - yp;


if (dx != 0 or dy != 0)
{
    infront = arctan2(dy, dx);
}

Sprites();

xp = x
yp = y