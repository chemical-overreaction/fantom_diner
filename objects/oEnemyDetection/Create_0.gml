/// @description Insert description here
// You can write your code in this editor
infront = 0
xp = 0
yp = 0

waiting = 60
angle2 = pi/2
negative = 0
distance = (sqr(x-global.PlayerX) + sqr(y-global.PlayerY))
angle = arccos((x-global.PlayerX)/sqrt(distance)) + pi
function PlayerClose()
{
	///In range and In angle
     if  !collision_line(x, y,global.PlayerX, global.PlayerY, oWalls, true, true) 
	 and ((distance < sqr(128)) and ((angle >
     (angle2 - (pi/4)) and angle < (angle2 + (pi/4)))
     or (negative = 1 and angle > angle2 - (pi/4)  and angle < angle2 + (pi/4))
     or ((angle2 - pi/4 < -pi) and (angle > angle2 -(pi/4)+2*pi)
     and (angle < angle2 + (pi/4+2*pi)))
     or ((angle2 + pi/4 > pi) and (angle < angle2 +pi/4-2*pi)
     and (angle > angle2 - pi/4-2*pi))))
     {
          if waiting <= 0  waiting = 0
          else waiting -= 0.8
     }
	 //else
     else if waiting < 60
     {
          waiting += 5
     }
          else
     {
          waiting = 60
     }
	 /// Close range detection
	 if  distance < sqr (24)
	    {
	        angle2 = angle
			waiting = 0
	    }
	///locking on 
	if waiting < 60{
		global.waiting = waiting
		angle2 = angle
	}
}

image_alpha = 0.3