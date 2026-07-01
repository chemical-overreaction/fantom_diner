image_alpha = 0
global.Paused = 0
function Pause()
{
if keyboard_check_pressed(vk_escape) and global.settingsingame = 0
{
if global.Paused = 0
{
global.Paused = 1
instance_deactivate_object(oSpinPar)
instance_deactivate_object(oMinimapPar)
global.settingsingame = 0
}
else
{
global.Paused = 0
instance_activate_object(oSpinPar)
instance_activate_object(oMinimapPar)
}
}
if global.Paused = 1 and image_alpha <= 1
{
image_alpha +=.1
}
else if image_alpha > 0
{
image_alpha -= 0.1
}
}
