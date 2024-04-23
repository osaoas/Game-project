	var _w = obj_weapon
	x = _w.weapon_id.x;
	y = _w.weapon_id.y + 7.5;
	x = x + lengthdir_x(16,_w.weapon_dir)
	y = y + lengthdir_y(16,_w.weapon_dir)
	image_angle = _w.weapon_dir;
	
	
	
	
	
		var inimigos_na_hitbox = ds_list_create()
			
					var inimigos = instance_place_list(x,y,par_enemy,inimigos_na_hitbox, false)
			
					if(inimigos > 0){
						for(var i = 0; i < inimigos; i++){
							var inimigoID = inimigos_na_hitbox[| i]
							if(ds_list_find_index(inimigos_atingidos,inimigoID) == -1){
								ds_list_add(inimigos_atingidos, inimigoID)
						
								with(inimigoID){
									life -= obj_weapon.damage;	
									hit_alpha = 1;


								}
							}
					
						}
					}
					ds_list_destroy(inimigos_na_hitbox)
					
					
					

					