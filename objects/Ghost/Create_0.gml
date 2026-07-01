/// @description Insert description here
// You can write your code in this editor
xsp = 0
ysp = 0
spd = 2

audio_play_sound(Sound2, 0, true);
// ingredients

eggs = false;
sh_meat = false;
tomato = false;
sause = false;
dough = false;

/*function Move(_obj)
{
     if keyboard_check(ord(global.upkey)) and not place_meeting(x,y-1,_obj)
     {
          ysp = -sp
     }
     if keyboard_check(ord(global.downkey)) and not place_meeting(x,y+1,_obj)
     {
          ysp = sp
     }
     if keyboard_check(ord(global.rightkey)) and not place_meeting(x+1,y,_obj)
     {
          xsp = sp
     }
     if keyboard_check(ord(global.leftkey)) and not place_meeting(x-1,y,_obj)
     {
          xsp = -sp
     }
    move_and_collide(xsp,ysp,_obj)
}
function Die()
{
    if global.waiting <= 0
    {
        //audio_stop_sound(Sound4)
        global.DIED = 1
    }
}*/
global.PlayerX = x
global.PlayerY = y


depth = -bbox_bottom;


