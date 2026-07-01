if (first_talk == false and distance_to_object(Ghost) <= distance)
{
dlg_start("Owl");
first_talk = true;    
} else if (distance_to_object(Ghost) <= distance && first_talk == true)
{
    dlg_start("owl2");
}