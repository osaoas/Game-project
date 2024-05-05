if(global.pause == true or instance_exists(obj_hit_slow)){
	image_speed = 0;
	_spd = 0
	speed = 0
	alarm[0]++
	alarm[1]++
	alarm[2]++
	exit;	
}else{
	image_speed = 1
}

if(instance_exists(obj_hit_slow)){
	image_speed=0	
}else{
	image_speed=1	
}

hit_alpha = lerp(hit_alpha,0,0.1)

if(life <= 0){
	//drops
	instance_create_layer(x,y,layer,obj_moeda);
	
	
	
	instance_destroy();
	global.enemiesLie++;
}		
		if(instance_exists(obj_player)) {
		if(obj_player.x > x){
			image_xscale = 1;	
		}else if(obj_player.x < x){
			image_xscale = -1;
		{
		}	
}
}




if(alarm[1] <= 0){
		_gesto = irandom(2)
		alarm[1] = 200
		
}


if(_gesto == 0){
	sprite_index = spr_lord_v_idle
	var _x1 = x
	var _y1= y
	var _x2 = (obj_player.x div 32) * 32 ;
	var _y2 = (obj_player.y div 32) * 32 ;
	if(mp_grid_path(obj_control.mp_grid,caminho,_x1,_y1,_x2,_y2,true)){
		path_start(caminho,_spd,path_action_stop,false)	
	}

}else if _gesto == 1{
	sprite_index = spr_lord_v_summon;
	_spd = 0
	speed = 0
		if(cointer<4 && timer <= 0){
			timer = 20
			var _dir = cointer * 90
			var _x = lengthdir_x(50,_dir)
			var _y = lengthdir_y(50,_dir)
			var _inst = instance_create_layer(x + _x,y + _y,layer,obj_morcego)	
			_inst._gesto = 0
			cointer++
			alarm[1]++
		}
		timer--
		if(cointer == 4){
			_gesto = 0	
			cointer = 0
		}
		
	
}else if _gesto == 2{
	
		for(var i = 0; i<20;i++){
			var _proj = instance_create_layer(x,y,"Projeteis", obj_proj_enemy)
			var dir = (18 * i)
			_proj.image_angle = dir;
			_proj.direction = dir;
			_proj.spd = 1;
			}

		_gesto = 0	
}

