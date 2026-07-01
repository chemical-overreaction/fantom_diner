/// @description Insert description here
// You can write your code in this editor
if global.minimap = 1
{
busybusy = 1
if keyboard_check(vk_space)
{
image_alpha = 0
global.minimap = 0
scamer = 0
instance_activate_layer("Minimap")
alarm_set(1,1)
}
alarm_set(0,1)
}
