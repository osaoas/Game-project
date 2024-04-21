/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


if(alarm[1] <= 0){
	_anda = irandom(2)
	alarm[1] = 200


}


if(_anda == 1){
	var _x1 = x
	var _y1= y
	sprite_index = sprR


	var _x2 = (obj_player.x div 32) * 32 + 16;
	var _y2 = (obj_player.y div 32) * 32;

	if(mp_grid_path(obj_control.mp_grid,caminho,_x1,_y1,_x2,_y2,true)){
		path_start(caminho,_spd,path_action_stop,false)	
	}
}else if _anda == 0{
	sprite_index = sprI
	path_speed = 0;	
}

