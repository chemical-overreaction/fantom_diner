event_inherited()
/// @description Insert description here
// You can write your code in this editor
event_inherited()
image_speed = 0
pressed = 0
lastrightkey = "D"
if global.rightkey = 0
{
     global.rightkey = lastrightkey
}
function keybind()
{
     if pressed = 1
     {
          global.rightkey = keyboard_key
          if global.rightkey != 0
          {
               global.rightkey = chr(global.rightkey)
               pressed = 0
               lastrightkey = global.rightkey
          }
     }
     if not place_meeting(mouse_x,mouse_y,oButtonRight) and mouse_check_button(mb_left)
     {
          global.rightkey = lastrightkey
          pressed = 0
     }
}
function Hover()
{
     if place_meeting(mouse_x,mouse_y,oButtonRight)
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