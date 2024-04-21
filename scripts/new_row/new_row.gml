// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function new_row(){
	var _grid = argument[0]
	ds_grid_resize(_grid,ds_grid_width(_grid),ds_grid_height(_grid) + 1)
	return(ds_grid_height(_grid) - 1)
}


