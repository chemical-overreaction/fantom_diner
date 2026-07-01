#macro TEXT new text_action
#macro SPEAKER new draw_speaker
#macro CHOICE new choice_act
#macro OPTION new option_act
#macro GOTO new goto_topic_act


//template for all the other action functions

function dlg_action() constructor
{
    dlg_act = function() {};
}


// define new text to type out

function text_action(_text) : dlg_action() constructor
{
    text = _text
   
    dlg_act = function(_textbox)
    {
        _textbox.set_text(text);
    }
}

// set the speakers name

function draw_speaker(_name) : dlg_action() constructor
{
    name = _name;
   
    dlg_act = function(_textbox)
    {
        _textbox.speaker_name = name;
       
        _textbox.next_act();
    }
}

// define the dialogue to type out with options

function choice_act(_text) : dlg_action() constructor
{
    text = _text;
   
    // fill the array with all the next arguments put in after the _text;
    options = [];
    for (var i = 1; i < argument_count; i ++)
    {
        array_push(options, argument[i]);
    }
   
    dlg_act = function(_textbox)
    {
        _textbox.set_text(text);
        _textbox.options = options;
        _textbox.option_count = array_length(options);
        _textbox.current_option = 0;
    }
}


//place options within the choice_act

function option_act(_text, _topic) : dlg_action() constructor
{
    text = _text;
    dialogue = _topic;
   
    dlg_act = function(_textbox)
    {
        _textbox.start_talk(dialogue);
    }
}

// merging two branches together, or automatically changing to a specific topic

function goto_topic_act(_topic) : dlg_action() constructor
{
    dialogue = _topic;
    dlg_act = function(_textbox)
    {
        _textbox.start_talk(dialogue);
    }
}