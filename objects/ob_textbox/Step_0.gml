var _dlg_input = keyboard_check_pressed(dlg_input_key);

//type the text, limit it to the text_length
text_typing = min(text_typing + text_speed, text_length);

//input delay
if (input_delay > 0)
{
    input_delay --;
    exit;
}


// if the typing is done, go to the next page
// if not, type out the pages text faster
if (text_typing == text_length)
{
    if (option_count > 0)
    {
        var _up = keyboard_check_pressed(dlg_input_up);
        var _down = keyboard_check_pressed(dlg_input_down);
       
        //cycle through options
        var _move = _down - _up;
        if (_move != 0)
        {
            current_option += _move;
           
            // loop through options when you reach the last one
            if (current_option < 0)
            {
            current_option = option_count - 1;
            } else if (current_option >= option_count)
            {
            current_option = 0;
            }
        }
            //selecting an option
           
            if (_dlg_input)
            {
                var _option = options[current_option]; // grab the option
                options = []; //reset the array
                option_count = 0;
               
                // do what the option says
                _option.dlg_act(id);
            }
       
    } else if (_dlg_input)
    {
        next_act();
    }
} else if (_dlg_input)
{
    text_typing = text_length;
}