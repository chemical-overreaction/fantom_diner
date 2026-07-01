/// @description Insert description here
// You can write your code in this editor
if stopMoving == false { 

	if path1 == true{ 
		//refresh where to go
		targetx = target1_x
		targety = target1_y
	}else { 
		targetx = target2_x
		targety = target2_y
	}

	if (path_exists(path))
    {
	path_delete(path);
    }
	path = path_add();

	mp_grid_path(global.grid, path, x, y, targetx, targety, 1);

	//follow grid
	path_start(path, move_spd, path_action_stop, true);

}