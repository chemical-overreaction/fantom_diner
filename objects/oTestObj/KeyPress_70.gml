/// @description Insert description here
// You can write your code in this editor

// this way we can have at least two different dialogues per object/npc.
// not sure how to make more, but maybe we don't need more.

if (first_talk == false and distance_to_object(Ghost) <= distance)
{
dlg_start("test2");
first_talk = true;    
} else if (distance_to_object(Ghost) <= distance){
dlg_start("testopt");
}