//draw the textbox itself

draw_sprite_stretched(textbox_sp, 0, x, y, textbox_w, textbox_h);


//is the text finished typing?
var _finished = text_typing == text_length;

//draw the name of the speaker
if (speaker_name != "")
{
    //expand the name box according to the length of the name
    var _name_box_w = max(string_width(speaker_name) + 30, speaker_box_w);
   
    draw_sprite_stretched(textbox_sp, 0, x + speaker_x, y + speaker_y - speaker_box_h / 2, _name_box_w, speaker_box_h)
   
    draw_set_halign(fa_center);
    draw_set_valign(fa_center);
    draw_set_font(speaker_font);
    draw_set_colour(speaker_color);
    draw_text(x + speaker_x + _name_box_w / 2, y + speaker_y, speaker_name);

}

//text drawing

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(text_font);
draw_set_colour(text_color);
type_dlg(x + text_x, y + text_y , text, text_typing, text_width);


// draw the options

if (_finished && option_count > 0)
{
    draw_set_valign(fa_middle);
    draw_set_color(option_text_color);
   
    for (var i = 0; i < option_count; i ++)
    {
        var _x = x + option_x;
        var _y = y - (option_count - i - 1) * option_spacing - 70;
       
        // draw option selection
       
        if (i == current_option)
        {
            _x += option_select_move;
            draw_sprite(sp_option, 0, _x -20, _y);
        }
       
        // draw the options
        var _opt_box_w = max(option_w, string_width(options[i].text) + 30);
        draw_sprite_stretched(textbox_sp, 0, _x, _y - option_h / 2, _opt_box_w, option_h);
        draw_text(_x + option_text_x, _y, options[i].text);
    }
}