if(instance_exists(weapon_id)){
	x = weapon_id.x;
	y = weapon_id.y + 7.5;
	
	weapon_x = x + lengthdir_x(16,weapon_dir)
	weapon_y = y + lengthdir_y(16,weapon_dir)
	image_angle = weapon_dir;
	
	
	


	
	function atirar(){
		if(!weapon>0){
		return false;	
		}
		
		if(!can_shoot){
		return false;	
		}
		
		if(type == "tiro"){
	
			for(var i = 0; i<proj_count;i++){
			var _proj = instance_create_layer(weapon_x * 1,weapon_y - 3,"Projeteis", obj_proj)
			_proj.sprite_index = proj;
			_proj.efect = proj_effect
			var dir = weapon_dir + (6 * i)
			_proj.image_angle = dir;
			_proj.direction = dir;
			_proj.speed = proj_spd;
			_proj.damage = damage
			_proj.debuff = debuff
			_proj.spd = proj_spd
			create_lights(_proj.x,_proj.y,light_color,1,2,2, _proj)

			}
			recoil = 8
			can_shoot = false
			alarm[0] = proj_delay
		
		
		}else{
			alarm[0] = proj_delay;
			can_shoot = false;
			if(sprite != -1){
				spr_p = sprite	
			}
			sprite = -1;
			alarm[1] = proj_delay;
			
			var _hit = instance_create_layer(x,y,layer,obj_weapon_hit)
			
			
			
			if(combo == 0){
				with(_hit){

					ds_list_clear(inimigos_atingidos)

					sprite_index = atq
					mask_index = atq_hb
				
					alarm[0] = other.proj_delay;
				
				
						var _w = obj_weapon
						x = _w.weapon_id.x;
						y = _w.weapon_id.y + 7.5;
	
						x = x + lengthdir_x(16,_w.weapon_dir)
						y = y + lengthdir_y(16,_w.weapon_dir)
						image_angle = _w.weapon_dir;
				
				}
			}else if combo == 1{
				with(_hit){
					ds_list_clear(inimigos_atingidos)
					sprite_index = combo1
					mask_index = combo1_hb

					alarm[0] = other.proj_delay;
				
				
						var _w = obj_weapon
						x = _w.weapon_id.x;
						y = _w.weapon_id.y + 7.5;
	
						x = x + lengthdir_x(16,_w.weapon_dir)
						y = y + lengthdir_y(16,_w.weapon_dir)
						image_angle = _w.weapon_dir;
				}
				
			}else{
				with(_hit){
						ds_list_clear(inimigos_atingidos)
						sprite_index = combo2
						mask_index = combo2_hb
						other.combo = 0;

						alarm[0] = other.proj_delay;
				
				
						var _w = obj_weapon
						x = _w.weapon_id.x;
						y = _w.weapon_id.y + 7.5;
	
						x = x + lengthdir_x(16,_w.weapon_dir)
						y = y + lengthdir_y(16,_w.weapon_dir)
						image_angle = _w.weapon_dir;
						obj_player.pode = false;

				}
			}
			
		
			
				
		}
		
	}

	function weapon_drop(){
		if(!weapon > 0){
			return false;
		}
		
	
		var _inst = instance_create_layer(x,y,layer,drop)
		_inst.image_angle = weapon_dir;
		_inst.direction = weapon_dir;
		_inst.speed = 3;
		
	if(instance_exists(self)){
		scr_mudar_arma(self,0)
	}
		
	}
	function weapon_pickup(e,_inst){
		if(weapon > 0 && e){
			weapon_drop()
		}
		

		if(instance_exists(_inst) and point_distance(x,y,_inst.x,_inst.y) <= 30 && _inst != -1){
			scr_mudar_arma(self,_inst.weapon_index)
			var _index = _inst.weapon_index;
			instance_destroy(_inst)
			return _index;
			
		}
	}
	
	recoil = lerp(recoil,0,.1)
	
}else{
instance_destroy();	
}