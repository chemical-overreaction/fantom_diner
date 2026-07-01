x = global.PlayerX
y = global.PlayerY
outer = 0
middle = 0
inner = 0
busybusy = 0
scamer = 0
left = 0
global.inner = 0
spinning = 0
image_alpha = 0
image_speed = 0
function thinginthing(){
if (keyboard_check(vk_space) and global.busy = 0 and busybusy = 0) or global.minimap = 1 {
image_alpha = 1
global.minimap = 1
instance_deactivate_object(oSpinPar)
if keyboard_check(ord("1")) or outer = 1{
outer = 1
if keyboard_check(ord("E")) and not keyboard_check(ord("1")){
//outercircle
global.outer += 6
outer = 0
global.left = 0
}
if keyboard_check(ord("Q")) and not keyboard_check(ord("1"))
{
global.outer -= 6
outer = 0
global.left = 1
}
}
if keyboard_check(ord("2")) or middle = 1{
middle = 1
if keyboard_check(ord("E")) and not keyboard_check(ord("2"))
{
//middlecircle
global.middle += 6
middle = 0
global.left = 0
}
if keyboard_check(ord("Q")) and not keyboard_check(ord("2")){
global.middle -= 6
middle = 0
global.left = 1
}
}
if keyboard_check(ord("3")) or inner = 1
{
inner = 1
if keyboard_check(ord("E")) and not keyboard_check(ord("3"))
{
//innercircle
global.left = 0
global.inner -= 6
inner = 0
}
if keyboard_check(ord("Q")) and not keyboard_check(ord("3"))
{
global.left = 1
global.inner += 6
inner = 0
}
}
}
}