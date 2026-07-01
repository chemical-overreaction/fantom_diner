thinginthing()
show_debug_message(global.minimap)
if global.minimap = 1 and scamer = 0 and keyboard_check_released(vk_space)
{
scamer = 1
alarm_set(0,1)
}
if global.inner = 24
{
global.inner = 0
}
if global.inner = -6
{
global.inner = 18
}
if image_index = global.inner
{
image_speed = 0
}
else if spinning = 0
{
alarm_set(2,15)
spinning = 1
}