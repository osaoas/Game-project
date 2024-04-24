if(instance_exists(weapon_id)){
	x = weapon_id.x;
	y = weapon_id.y + 7.5;
	
	weapon_x = x + lengthdir_x(16,weapon_dir)
	weapon_y = y + lengthdir_y(16,weapon_dir)
	image_angle = weapon_dir;
	
	
	


	

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