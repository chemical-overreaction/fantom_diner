// beginning

begining = true;

//input vars

dlg_input_key = ord("F");
//these are for option selection
dlg_input_up = vk_up;
dlg_input_down = vk_down;
max_input_delay = 5; //how many frames to ignore input for
input_delay = max_input_delay

//positions. adjust these however

textbox_sp = sp_box;

space_to_edge = 30; //space between the edge of the screen and the edge of the textbox
space_to_text = 20; //space between text and the edge of the textbox

textbox_w = display_get_gui_width() - space_to_edge * 2;
textbox_h = 170;

x = (display_get_gui_width()- textbox_w) / 2;
y = display_get_gui_height() - textbox_h - space_to_edge;

//text drawing vars

text_font = Font1;
text_color = c_black;
text_speed = 0.6;
text_x = space_to_text;
text_y = space_to_text;
text_width = textbox_w - space_to_text * 2;

// speaker vars

speaker_x = space_to_text;
speaker_y = -8;
speaker_font = Font1;
speaker_color = c_black;

// option placement vars

option_x = space_to_edge;
option_y = space_to_edge * 4;
option_spacing = 64;
option_select_move = 32;
option_w = sprite_width;
option_h = 50;
option_text_x = 10;
option_text_color = c_black;


//the dialogue vars.

dialogue_actions = [];
//an array holding everything that the textbox need to perform. from text structs to options and portraits
current_act = -1;
//which action are we on


text = "";
//the text currently on the screen
text_typing = 0;
//the progress on the typing of the text.
text_length = 0;

// more speaker vars

speaker_name = "";
speaker_box_w = sprite_get_width(sp_box);
speaker_box_h = 48;

// option vars

options = [];
current_option = 0;
option_count = 0;

/// functions

//start a conversation
function start_talk(_topic)
{
    dialogue_actions = global.dialogues[$ _topic]; //set the dialogue
    current_act = -1; //reset the action count
   
    next_act();
}

//go to the next action, close if on the last action
function next_act()
{
    current_act ++
    if (current_act >= array_length(dialogue_actions))
    {
        instance_destroy();
    } else
    {
        dialogue_actions[current_act].dlg_act(id);
    }
}

//set up the text typing

function set_text(_text)
{
    text = _text;
    text_length = string_length(_text);
    text_typing = 0;
}
