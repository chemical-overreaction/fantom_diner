/// @description Insert description here
// You can write your code in this editor
if global.minimap = 0
{
image_alpha = 0
}
else
{
image_alpha = 1
}
if global.outer = 24
{
global.outer = 0
}
if global.outer = -6
{
global.outer = 18
}
if image_index = global.outer
{
image_speed = 0
}
else if spinning = 0
{
alarm_set(0,15)
spinning = 1
}