armas[0] = ds_map_create();
	ds_map_add(armas[0], "sprite", -1)
	ds_map_add(armas[0], "proj", -1)
	ds_map_add(armas[0], "proj_spd", 0)
	ds_map_add(armas[0], "damage", 0)
	ds_map_add(armas[0], "proj_delay", 0)
	ds_map_add(armas[0], "automatic", false)
	ds_map_add(armas[0],"drop", -1)
	ds_map_add(armas[0],"proj_count", 0)
	ds_map_add(armas[0], "proj_effect", -1)
	ds_map_add(armas[0], "debuff", -1)
	ds_map_add(armas[0], "type", -1)
	ds_map_add(armas[0], "light_color", -1)
	ds_map_add(armas[0], "atq", -1)
	ds_map_add(armas[0], "atqhb", -1)
	ds_map_add(armas[0], "combo1", -1)
	ds_map_add(armas[0], "combo1hb", -1)
	ds_map_add(armas[0], "combo2", -1)
	ds_map_add(armas[0], "combo2hb", -1)



armas[1] = ds_map_create();
	ds_map_add(armas[1], "sprite", spr_pistol)
	ds_map_add(armas[1], "proj", spr_proj)
	ds_map_add(armas[1], "proj_spd", 10)
	ds_map_add(armas[1], "damage", 10)
	ds_map_add(armas[1], "proj_delay", 12)
	ds_map_add(armas[1], "automatic", true)
	ds_map_add(armas[1],"drop", obj_pistol)
	ds_map_add(armas[1],"proj_count", 1)
	ds_map_add(armas[1], "proj_effect", -1)
	ds_map_add(armas[1], "debuff", -1)
	ds_map_add(armas[1], "type", "tiro")
	ds_map_add(armas[1], "light_color", c_purple)
	ds_map_add(armas[1], "atq", -1)
	ds_map_add(armas[1], "atqhb", -1)
	ds_map_add(armas[1], "combo1", -1)
	ds_map_add(armas[1], "combo1hb", -1)
	ds_map_add(armas[1], "combo2", -1)
	ds_map_add(armas[1], "combo2hb", -1)

armas[2] = ds_map_create();
	ds_map_add(armas[2], "sprite", spr_shotgun)
	ds_map_add(armas[2], "proj", spr_proj)
	ds_map_add(armas[2], "proj_spd", 14)
	ds_map_add(armas[2], "damage", 5)
	ds_map_add(armas[2], "proj_delay", 50)
	ds_map_add(armas[2], "automatic",false)
	ds_map_add(armas[2],"drop", obj_shotgun)
	ds_map_add(armas[2],"proj_count", 5)
	ds_map_add(armas[2], "proj_effect", -1)
	ds_map_add(armas[2], "debuff", -1)
	ds_map_add(armas[2], "type", "tiro")
	ds_map_add(armas[2], "light_color", c_purple)
	ds_map_add(armas[2], "atq", -1)
	ds_map_add(armas[2], "atqhb", -1)
	ds_map_add(armas[2], "combo1", -1)
	ds_map_add(armas[2], "combo1hb", -1)
	ds_map_add(armas[2], "combo2", -1)
	ds_map_add(armas[2], "combo2hb", -1)

armas[3] = ds_map_create();
	ds_map_add(armas[3], "sprite", spr_fuzil)
	ds_map_add(armas[3], "proj", spr_proj15mm)
	ds_map_add(armas[3], "proj_spd", 25)
	ds_map_add(armas[3], "damage", 100)
	ds_map_add(armas[3], "proj_delay", 3)
	ds_map_add(armas[3], "automatic",true)
	ds_map_add(armas[3],"drop", obj_fuzil)
	ds_map_add(armas[3],"proj_count", 1)
	ds_map_add(armas[3], "proj_effect", -1)
	ds_map_add(armas[3], "debuff", -1)
	ds_map_add(armas[3], "type", "tiro")
	ds_map_add(armas[3], "light_color", c_yellow)
	ds_map_add(armas[3], "atq", -1)
	ds_map_add(armas[3], "atqhb", -1)
	ds_map_add(armas[3], "combo1", -1)
	ds_map_add(armas[3], "combo1hb", -1)
	ds_map_add(armas[3], "combo2", -1)
	ds_map_add(armas[3], "combo2hb", -1)


armas[4] = ds_map_create();
	ds_map_add(armas[4], "sprite", spr_cajado)
	ds_map_add(armas[4], "proj", spr_spell)
	ds_map_add(armas[4], "proj_spd", 4)
	ds_map_add(armas[4], "damage", 100) //dano 100% ficticio
	ds_map_add(armas[4], "proj_delay", 35)
	ds_map_add(armas[4], "automatic",true)
	ds_map_add(armas[4],"drop", obj_cajado)
	ds_map_add(armas[4],"proj_count", 1)
	ds_map_add(armas[4], "proj_effect", obj_spell_vfx)
	ds_map_add(armas[4], "debuff", "lentidão")
	ds_map_add(armas[4], "type", "tiro")
	ds_map_add(armas[4], "light_color", c_aqua)
	ds_map_add(armas[4], "atq", -1)
	ds_map_add(armas[4], "atqhb", -1)
	ds_map_add(armas[4], "combo1", -1)
	ds_map_add(armas[4], "combo1hb", -1)
	ds_map_add(armas[4], "combo2", -1)
	ds_map_add(armas[4], "combo2hb", -1)


armas[5] = ds_map_create();
	ds_map_add(armas[5], "sprite", spr_sniper)
	ds_map_add(armas[5], "proj", spr_sniperBullet)
	ds_map_add(armas[5], "proj_spd", 20)
	ds_map_add(armas[5], "damage", 40)
	ds_map_add(armas[5], "proj_delay", 50)
	ds_map_add(armas[5], "automatic",false)
	ds_map_add(armas[5],"drop", obj_sniper)
	ds_map_add(armas[5],"proj_count", 1)
	ds_map_add(armas[5], "proj_effect", -1)
	ds_map_add(armas[5], "debuff", "knockback")
	ds_map_add(armas[5], "type", "tiro")
	ds_map_add(armas[5], "light_color", c_red)
	ds_map_add(armas[5], "atq", -1)
	ds_map_add(armas[5], "atqhb", -1)
	ds_map_add(armas[5], "combo1", -1)
	ds_map_add(armas[5], "combo1hb", -1)
	ds_map_add(armas[5], "combo2", -1)
	ds_map_add(armas[5], "combo2hb", -1)

armas[6] = ds_map_create();
	ds_map_add(armas[6], "sprite", spr_fireCajado)
	ds_map_add(armas[6], "proj", spr_fireBullet)
	ds_map_add(armas[6], "proj_spd", 10)
	ds_map_add(armas[6], "damage", 40)
	ds_map_add(armas[6], "proj_delay", 20)
	ds_map_add(armas[6], "automatic",true)
	ds_map_add(armas[6],"drop", obj_fire_cajado)
	ds_map_add(armas[6],"proj_count", 1)
	ds_map_add(armas[6], "proj_effect", obj_fireBall_vfx)
	ds_map_add(armas[6], "debuff", "queimando")
	ds_map_add(armas[6], "type", "tiro")
	ds_map_add(armas[6], "light_color", c_orange)
	ds_map_add(armas[6], "atq", -1)
	ds_map_add(armas[6], "atqhb", -1)
	ds_map_add(armas[6], "combo1", -1)
	ds_map_add(armas[6], "combo1hb", -1)
	ds_map_add(armas[6], "combo2", -1)
	ds_map_add(armas[6], "combo2hb", -1)


armas[7] = ds_map_create();
	ds_map_add(armas[7], "sprite", spr_sword)
	ds_map_add(armas[7], "proj", spr_sword_atq)
	ds_map_add(armas[7], "proj_spd", 0)
	ds_map_add(armas[7], "damage", 40)
	ds_map_add(armas[7], "proj_delay", 15)
	ds_map_add(armas[7], "automatic",false)
	ds_map_add(armas[7],"drop", obj_sword)
	ds_map_add(armas[7],"proj_count", -1)
	ds_map_add(armas[7], "proj_effect", -1)
	ds_map_add(armas[7], "debuff", -1)
	ds_map_add(armas[7], "type", "bater")
	ds_map_add(armas[7], "light_color", -1)
	ds_map_add(armas[7], "atq", spr_sword_atq)
	ds_map_add(armas[7], "atqhb", spr_sword_atq_hb)
	ds_map_add(armas[7], "combo1", spr_sword_atq_combo1)
	ds_map_add(armas[7], "combo1hb", spr_sword_atq_combo1_hb)
	ds_map_add(armas[7], "combo2", spr_sword_atq_combo2)
	ds_map_add(armas[7], "combo2hb", spr_sword_atq_combo2_hb)




timer = 0;
weapon_id = -1;
weapon_dir = -1;
weapon_x = 0;
weapon_y = 0;
can_shoot = true
bateu = false
recoil = 0;

scr_mudar_arma(self,global.arma_equipada)



combo = 0;



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
				spr_p = sprite;
			}
			sprite = -1;
			alarm[1] = proj_delay;
			
			var _hit = instance_create_layer(x,y,layer,obj_weapon_hit)
			
			
			
			if(combo == 0){
				with(_hit){

					ds_list_clear(inimigos_atingidos)

					sprite_index = other.atq
					mask_index = other.atq_hb
				
				
				
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
					sprite_index = other.combo1
					mask_index = other.combo1_hb

				
				
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
						sprite_index = other.combo2
						mask_index = other.combo2_hb
						other.combo = 0;

				
				
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






