/// @description Insert description here
// You can write your code in this editor
//if global.waiting !=0 
/*Move(oWalls);
Die();
xsp = 0
ysp = 0
global.PlayerX = x
global.PlayerY = y

depth = -y;

*/

var _hor = (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * spd;
var _ver = (keyboard_check(ord("S")) - keyboard_check(ord("W"))) * spd;

if _hor < 0
{
    image_index = 2;
}
    
if _hor > 0
{
    image_index = 6;
}
if _ver < 0
{
    image_index = 0;
}
if _ver < 0
{
    image_index = 4;
}

move_and_collide(_hor, _ver, [layer_tilemap_get_id("tiles_col"),
AngryFrog, RatInAHat, Owl, ob_c_1, ob_c_2, ob_c_3, ob_c_4, ob_c_5,
ob_c_6,ob_c_7, ob_c_8, ob_chef, ob_chef_3, ob_michael,
ob_micr, ob_serv, ob_sw_m, ob_tall, ob_za, ob_gh, oTable2, oCustomers]);

