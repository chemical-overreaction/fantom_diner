if (first_talk == false and distance_to_object(Ghost) <= distance)
{
dlg_start("michael")
first_talk = true;    
} else if (distance_to_object(Ghost) <= distance && first_talk == true)
{
    dlg_start("michael2");
}