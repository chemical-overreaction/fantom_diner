/// @description Insert description here
// You can write your code in this editor
if xp = 0 and thing2 = 30
{
y = camera_get_view_y(view_camera[0]) + 128
x = (global.mastergain * thing2) + thing + camera_get_view_x(view_camera[0])
}
else if thing2 = 30
{
y = camera_get_view_y(view_camera[0]) + 128
x = xp + camera_get_view_x(view_camera[0])
}
else if xp != 0
{
x = xp
}
else
{
x = ((global.mastergain * thing2) + thing + camera_get_view_x(view_camera[0]))
}
global.mastergain = ((x-thing-camera_get_view_x(view_camera[0]))/thing2)
audio_master_gain(global.mastergain)
