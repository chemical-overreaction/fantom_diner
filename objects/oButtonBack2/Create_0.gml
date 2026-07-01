event_inherited()
/// @description Insert description here
// You can write your code in this editor
instance_deactivate_layer("Settings")
function Hover()
{
if place_meeting(mouse_x,mouse_y,oButtonBack2)
{
if image_xscale < 1.5
{
image_xscale += 0.1
image_yscale += 0.1
image_angle += 1
}
else
{
image_xscale = 1.5
image_yscale = 1.5
}
if mouse_check_button(mb_left)
{
alarm_set(0,2)
}
}
else
{
if image_xscale > 1
{
image_xscale -= 0.1
image_yscale -= 0.1
image_angle -= 1
}
else
{
image_xscale = 1
image_yscale = 1
}
}
}
