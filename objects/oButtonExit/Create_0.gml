event_inherited()
/// @description Insert description here
// You can write your code in this editor
image_alpha = 0
function Hover()
{
if place_meeting(mouse_x,mouse_y,oButtonExit) and global.Paused = 1
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
function Pausers()
{
if global.Paused = 1 and image_alpha <= 1
{
image_alpha +=.1
}
else if image_alpha > 0
{
image_alpha -= 0.1
}
}