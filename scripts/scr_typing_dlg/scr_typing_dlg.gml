// function for creating the textbox and starting the dialogue
// @param _topic - which dialogue topic should be used

function dlg_start(_topic)
{
    if (instance_exists(ob_textbox)) {return;}
   
    var _txtbox_inst = instance_create_depth(x, y, -9999, ob_textbox)
    _txtbox_inst.start_talk(_topic);
}



//this function is like a draw_text but made more complicated.

function type_dlg(_x, _y, _text, _text_progress, _width)
{
    var _draw_x = 0;
    var _draw_y = 0;
    var _text_wait = 20;
    var _text_timer = 0;
   
    for (var i = 1; i <= _text_progress; i ++)
    {
        var _char = string_char_at(_text, i);
       
       
        //line breaks
        if (_char == "\n")
        {
            _draw_x = 0;
            _draw_y += string_height("W");
        }
       
        //it we're starting a new word, we can line break
        else if (_char == " ")
        {
            _draw_x += string_width(_char);
           
            //cheking characters within the loop for cleaner line breaks on longer words
            var _word_width = 0;
           
            for (var ii = i+1; ii <= string_length(_text); ii ++)
            {
                var _word_char = string_char_at(_text, ii);
               
                //stop the second loop if we reached the end of the word without breaks
                if (_word_char == " " || _word_char == "\n") {break;}
               
                //if the word exeeds the width limit
                //it goes on the next line
                _word_width += string_width(_word_char);
                if (_draw_x + _word_width > _width)
                {
                    _draw_x = 0;
                    _draw_y += string_height("W");
                    break;
                }
            }
        }
       
        // code from line ten handles all the line break situations
        // the second loop goes through the characters of an individual word
        // to check if its too long to fit into a line, and if it is
        // then it starts drawing it on the next line instead of jumping down mid-type
       
       
        else {
             //drawing individual letters
             draw_text(_x + _draw_x, _y + _draw_y, _char);
             _draw_x += string_width(_char);
        }
    }
}
