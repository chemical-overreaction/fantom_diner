/// @description Insert description here
// You can write your code in this editor
function rotate_room(){
	x_new = global.origin_x - x
	y_new = global.origin_y - y
	
	z = x_new
	x_new = y_new
	y_new = -z 
	
	x = x_new + global.origin_x
	y = y_new + global.origin_y
}