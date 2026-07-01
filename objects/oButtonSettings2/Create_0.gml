image_alpha = 0
depth = -1000
function Hover()
{
if place_meeting(mouse_x,mouse_y,oButtonSettings2) and global.Paused = 1
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
if mouse_check_button_pressed(mb_left)
{
global.settingsingame = 1
instance_activate_object(oSettingsPar)
instance_deactivate_object(oPausePar)
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