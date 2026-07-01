event_inherited()
/// @description Insert description here
// You can write your code in this editor
event_inherited()
image_speed = 0
pressed = 0
lastdownkey = "S"
if global.downkey = 0
{
     global.downkey = lastdownkey
}
function keybind()
{
     if pressed = 1
     {
          global.downkey = keyboard_key
          if global.downkey != 0
          {
               global.downkey = chr(global.downkey)
               pressed = 0
               lastdownkey = global.downkey
          }
     }
     if not place_meeting(mouse_x,mouse_y,oButtonDown) and mouse_check_button(mb_left)
     {
          global.downkey = lastdownkey
          pressed = 0
     }
}
function Hover()
{
     if place_meeting(mouse_x,mouse_y,oButtonDown)
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