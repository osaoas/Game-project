/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();






if(alarm[1] <= 0){
	_gesto = irandom(2)
	alarm[1] = 200


}


if(_gesto == 0){
	var _x1 = x
	var _y1= y
	sprite_index = sprR


	var _x2 = (obj_player.x div 32) * 32 + 16;
	var _y2 = (obj_player.y div 32) * 32;

	if(mp_grid_path(obj_control.mp_grid,caminho,_x1,_y1,_x2,_y2,true)){
		path_start(caminho,_spd,path_action_stop,false)	
	}
}else if _gesto == 1{
	sprite_index = sprI
	path_speed = 0;	
}else if _gesto == 2{
	
	var _type_atq = irandom(6)
	if(_type_atq == 0){
	
	var _proj = instance_create_layer(x,y,layer,obj_proj_enemy)
	_proj.direction = point_direction(x,y,obj_player.x,obj_player.y)
	_proj.speed = 2;
	}else if( _type_atq == 1){	
		for(var i = 0; i<3;i++){
			var _proj = instance_create_layer(x,y,"Projeteis", obj_proj_enemy)
			var dir = point_direction(x,y,obj_player.x,obj_player.y) + (10 * i)
			_proj.image_angle = dir;
			_proj.direction = dir;
			_proj.speed = 2;
			}
	}else if _type_atq == 2 or _type_atq == 3{
		for(var i = 0; i<10;i++){
			var _proj = instance_create_layer(x,y,"Projeteis", obj_proj_enemy)
			var dir =  36 * i
			_proj.image_angle = dir;
			_proj.direction = dir;
			_proj.speed = 1;
		}	
	}else if _type_atq == 4 or _type_atq == 5{
		for(var i = 0; i<15;i++){
			var _proj = instance_create_layer(x,y,"Projeteis", obj_proj_enemy)
			var dir =  24 * i
			_proj.image_angle = dir;
			_proj.direction = dir;
			_proj.speed = 1;
		}		
	}else if _type_atq == 6{
		for(var i = 0; i<20;i++){
			var _proj = instance_create_layer(x,y,"Projeteis", obj_proj_enemy)
			var dir =  18 * i
			_proj.image_angle = dir;
			_proj.direction = dir;
			_proj.speed = 1;
		}		
	}
	
	_gesto = irandom(1)
	
	
	
	
	
	
	
}


