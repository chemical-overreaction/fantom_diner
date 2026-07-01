/// @description Insert description here
// You can write your code in this editor

if (instance_exists(ob_textbox))
{
    exit;
}

if path_position == 1 and setAlarm1 == false{
	path1 = !path1
	alarm_set(0,45);
	setAlarm1 = true
}else if path_position != 1 setAlarm1 = false


depth = -y;

if enemyid == 1{
	global.Enemy1X = x
	global.Enemy1Y = y
	target1_x = global.target11_x
	target1_y = global.target11_y
	
	target2_x = global.target21_x
	target2_y = global.target21_y

}
if enemyid == 2{
	global.Enemy2X = x
	global.Enemy2Y = y
	target1_x = global.target12_x
	target1_y = global.target12_y
	
	target2_x = global.target22_x
	target2_y = global.target22_y

}
if enemyid == 3{
	global.Enemy3X = x
	global.Enemy3Y = y
	target1_x = global.target13_x
	target1_y = global.target13_y
	
	target2_x = global.target23_x
	target2_y = global.target23_y

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