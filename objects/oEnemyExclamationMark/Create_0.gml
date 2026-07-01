/// @description Insert description here
// You can write your code in this editor
image_speed = 0
function Time()
{
     if global.waiting < 60
     {
          if global.waiting <= 0
          {
               image_index = 10
          }
         else
          {
               image_index = round(abs(global.waiting-60)/6)
          }
     }
     else
     {
          image_index = 0
     }
}
function move()
{
	     x = global.PlayerX
	     y = global.PlayerY-30

}