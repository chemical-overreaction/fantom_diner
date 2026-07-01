/// Update enemy position first

depth= -y;



if enemyid == 1{
    x = global.Enemy1X
    y = global.Enemy1Y
}

if enemyid == 2{
    x = global.Enemy2X
    y = global.Enemy2Y
}

if enemyid == 3{
    x = global.Enemy3X
    y = global.Enemy3Y
}
if enemyid == 4{
    x = global.Enemy4X
    y = global.Enemy4Y
}

if enemyid == 5{
    x = global.Enemy5X
    y = global.Enemy5Y
}

if enemyid == 6{
    x = global.Enemy6X
    y = global.Enemy6Y
}


/// Find walking direction

var dx = x - xp;
var dy = y - yp;


if (dx != 0 or dy != 0)
{
    infront = arctan2(dy, dx);
}


/// Calculate player distance BEFORE detection

distance = (sqr(x-global.PlayerX) + sqr(y-global.PlayerY))


if distance != 0 and distance < sqr(128)
{
    angle = arccos((x-global.PlayerX)/sqrt(distance))
}


if (y-global.PlayerY)/abs(y-global.PlayerY) == -1
{
    angle = -abs(angle)
}


/// If not locked on, face movement

if waiting == 60
{
	angle2 = infront + pi
	image_angle = -1*(180*angle2/(pi)) + 180
}else image_angle = -1*(180*angle2/(pi))+180


/// Detect player

PlayerClose();


// Rotation


// Save position

xp = x;
yp = y;