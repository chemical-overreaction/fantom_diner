/// @description Insert description here
// You can write your code in this editor
if not mouse_check_button_released(mb_left)
{
if mouse_x < thing + camera_get_view_x(view_camera[0])
{
xp = thing
}
else if mouse_x > thing + thing2 * 3 + camera_get_view_x(view_camera[0])
{
xp = thing + thing2 * 3
}
else
{
xp = mouse_x-camera_get_view_x(view_camera[0])
}
alarm_set(0,1)
}
