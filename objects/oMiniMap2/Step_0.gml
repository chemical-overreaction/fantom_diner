if global.minimap = 0
{
image_alpha = 0
}
else
{
image_alpha = 1
}
if global.middle = 24
{
global.middle = 0
}
if global.middle = -6
{
global.middle = 18
}
if image_index = global.middle
{
image_speed = 0
}
else if spinning = 0
{
alarm_set(0,15)
spinning = 1
}