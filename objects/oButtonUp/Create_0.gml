/// @description Insert description here
// You can write your code in this editor
event_inherited()
image_speed = 0
pressed = 0
lastupkey = "W"
if global.upkey = 0
{
     global.upkey = lastupkey
}
function keybind()
{
     if pressed = 1
     {
          global.upkey = keyboard_key
          if global.upkey != 0
          {
               global.upkey = chr(global.upkey)
               pressed = 0
               lastupkey = global.upkey
          }
     }
     if not place_meeting(mouse_x,mouse_y,oButtonUp) and mouse_check_button(mb_left)
     {
          global.upkey = lastupkey
          pressed = 0
     }
}
function Hover()
{
     if place_meeting(mouse_x,mouse_y,oButtonUp)
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

