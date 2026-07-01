depth = -1000
instance_deactivate_object(oSettingsPar)
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
if mouse_check_button_pressed(mb_left)
{
global.settingsingame = 0
instance_deactivate_object(oSettingsPar)
instance_activate_object(oPausePar)
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
