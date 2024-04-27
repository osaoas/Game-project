/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


if(alarm[1] <= 0){
	_gesto = irandom(1)
	alarm[1] = 200
}

sprite_index=sprI
if _gesto == 1{
	
	var _type_atq = irandom(1)
	if(_type_atq == 0){
	
	var _proj = instance_create_layer(x,y,"Projeteis",obj_proj_enemy)
	_proj.direction = point_direction(x,y,obj_player.x,obj_player.y)
	_proj.spd = 5;
	}else if( _type_atq == 1){	
		
		var _proj = instance_create_layer(x,y,"Projeteis",obj_proj_enemy)
		_proj.direction = point_direction(x,y,obj_player.x,obj_player.y)
		_proj.spd = 10;
	}
	
	_gesto = 0
	
	
	
	
	
	
	
}

