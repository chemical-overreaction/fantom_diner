event_inherited()
/// @description Insert description here
// You can write your code in this editor
event_inherited()
image_speed = 0
pressed = 0
lastleftkey = "A"
if global.leftkey = 0
{
     global.leftkey = lastleftkey
}
function keybind()
{
     if pressed = 1
     {
          global.leftkey = keyboard_key
          if global.leftkey != 0
          {
               global.leftkey = chr(global.leftkey)
               pressed = 0
               lastleftkey = global.leftkey
          }
     }
     if not place_meeting(mouse_x,mouse_y,oButtonLeft) and mouse_check_button(mb_left)
     {
          global.leftkey = lastleftkey
          pressed = 0
     }
}
function Hover()
{
     if place_meeting(mouse_x,mouse_y,oButtonLeft)
     {
          if image_xscale < 1.5
          {
               image_xscale += 0.1
               image_yscale += 0.1
               image_angle += 2
          }
          else
          {
               image_xscale = 1.5
               image_yscale = 1.5
          }
          if mouse_check_button(mb_left)
          {
               alarm_set(0,2)
           }
     }
     else
     {
          if image_xscale > 1
          {
               image_xscale -= 0.1
               image_yscale -= 0.1
               image_angle -= 2
          }
          else
          {
               image_xscale = 1
               image_yscale = 1
          }
     }
}