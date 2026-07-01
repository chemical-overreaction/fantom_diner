//all of the text will be contained in this struct
// to add dialogue, you add a struct to the global.dialogues
//and then you assign the struct to the character through dlg_start.
// OPTIONs are written as CHOICEs arguments


global.dialogues = {};



global.dialogues[$ "meat"] =
[
TEXT ("The very important part of your restaurant, the instalation you were most proud of, the ingredient that elevated every single meal on the menu - \nThe Shawarma Meat!"),
] 

global.dialogues[$ "progress"] =
[
TEXT ("Your pizza is one step closer to perfection!")
] 

global.dialogues[$ "meat2"] = 
[ 
TEXT ("you've already taken some meat. Pizza perfection is about balance!")
]


global.dialogues[$ "michael"] =
[
TEXT ("This is another microwave. It doesn't work anymore, but it used to be your favorite, so you kept it."),
TEXT ("You named it Michael, and the chefs greet it each morning for good luck!")
] 

global.dialogues[$ "michael2"] =
[
TEXT ("Michaelwave is looking at you with admiration and loyalty through its old see-through door :)")
] 

global.dialogues[$ "blender"] =
[
TEXT ("You've reached the Bestest of all blenders in the kitchen! It's blades are as sharp as steel swords, and it spins faster than a hurricane!"),
] 

global.dialogues[$ "blender2"] =
[
TEXT ("Your sause is now blended and ready to go on your pizza!")
]
global.dialogues[$ "table"] =
[ 
TEXT ("on this table you've chopped only the finest of ingredients, kneaded only the best of doughs, shaped only the sweetest of cookies!"),
CHOICE ("It's perfect to roll out you pizza dough, isn't it?", 
OPTION ("It is!", "progress"), OPTION ("It absolutely is!", "progress"))
] 

global.dialogues[$ "table2"] =
[
TEXT ("Your dough now is as round as the moon and as flat as a 2D plane")
] 

global.dialogues[$ "tall_table"] =
[
TEXT ("You can't even see what's on top of it. You're too short and the table is too tall."),
TEXT ("You got it for your giant chef to work comfortably in your kitchen, but they quit after only a week and now it's just there, how the giant left it. Because no-one has the courage to climb up and clean it.")
]

global.dialogues[$ "owl2"] = 
[
    SPEAKER ("Suram"),
    TEXT ("As you can see, this project is very unfinished. We tried our best, but we got swarmed by bugs and errors. So for now it's just an empty restaurant."),
    TEXT ("We will continue working on this project after the Jam, so if for some reason this empty game sparked your interest, then we will be waiting for you in the actual game! :)")
]

global.dialogues[$ "Owl"] =
[
    SPEAKER ("Suram"),
    TEXT ("all i know is that to me \nYou look like you're havin' fun"),
    TEXT ("Open up your lovin' arms \nWatch out, here I, watch out, here I come"),
    TEXT (". . ."),
    TEXT ("You spin me right round, baby, right round \nLike a record, baby, right round, round, round  \nYou spin me right round, baby, right round \nLike a record, baby, right round, round, round")
]

global.dialogues[$ "frog"] = 
[
    SPEAKER ("Angry Frog"),
    TEXT ("To spin, or not \nTo spin"),
    TEXT ("That's the question."),
    TEXT ("I'm supposed to spin and make a funny noise while saying this, but oh well"),
    TEXT ("Do you like the song that's playing? I made it! :D")
]


global.dialogues[$ "rat"] = 
[
    SPEAKER ("Rat in a Hat"),
    TEXT ("Welcome to our humble game!"),
    TEXT ("That's what i would've said, if the game was finished. but, unfortunately, our team of 3 beginners couldn't finish it in time."),
    TEXT ("But you can float around, interact with some things with the F button, and look at all the sprites and tiles we made! Some of them spin :D. ")
    
]

global.dialogues[$ "plant"] = 
[
  TEXT ("This lovely plant has been growing here for a while, you remember it when it was still just a tiny sprout!")  
]

global.dialogues[$ "begining"] = 
[
    SPEAKER ("Bobert Dinner'O"),
    TEXT ("So. We're dead. That's quite a turn around for our restaurants' existence. Our restaurant doesn't have its main chefs anymore!"),
    TEXT ("I mean, we're still here, but how are we supposed to cook if we're ghosts?"),
    TEXT (". . ."),
    TEXT ("You know what, let's test it. If we can still cook even though we are dead then our resturant is not yet doomed!"),
    TEXT ("How about a cooking competition? Like in the good old days? This could be fun! I suggest that we compete with... pizza!"),
    TEXT ("We should avoid being seen by the others though. With the pressure and stress that the death of their chefs puts on them we should scare them even more."),
    TEXT ("Okay, are you ready? I'm not waiting an eternity for you to get ready, we are doing this!"),
    TEXT ("Let's cook!"),
    TEXT ("that's how the start of the game was supposed to be like.")
]

global.dialogues[$ "microwawe"] =
[
    TEXT ("You've reached the electric chamber of waves and heat. It spins!")
]


global.dialogues[$ "egg"] = 
[
    TEXT ("You got eggs! :D Yippee!")
]

global.dialogues[$ "ye"] = 
[
    TEXT ("I'm glad you like it!")
]

global.dialogues[$ "n"] = 
[
    TEXT ("oh. It's fine. There will be more spinning animations once the actual game file is there, i'm sure you'll find an animation for your liking!")
]

global.dialogues[$ "egg2"] = 
[
    SPEAKER ("Rat in a Hat"),
    TEXT ("Oh wow! You got those eggs! Nice! Now you're supposed to whisk it, but uuh i don't have a whisk for you here. sorry")
]

global.dialogues[$ "mix_eggs"] = 
[
    TEXT ("you've stumbled upon the mixing bowl with a whisk in it. You've used this bowl for hundreads of onelettes and millions of cupcake batters."),
    CHOICE ("Whisk the eggs?",
    OPTION ("Yes!", "progress"), OPTION ("Let's Whisk!", "progress"))
]

global.dialogues[$ "pizza"] = 
[
    TEXT ("This here pizza was supposed to be the goal of the game!")
]

global.dialogues[$ "serv"] = 
[
    SPEAKER ("Waitress"),
    TEXT ("I'm the waitress here! but, well, there's not a lot of customers yet.")
]

global.dialogues[$ "micro"] = 
[
    TEXT ("microwawe. \nIt Spin.")
]

global.dialogues[$ "chef"] = 
[
    TEXT ("I was supposed to see you with this red stuff here. It works, i do see you! but not because of this thing, just because you're in front of me and my eyes are open.")
]
