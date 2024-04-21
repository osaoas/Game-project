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

armas[1] = ds_map_create();
	ds_map_add(armas[1], "sprite", spr_pistol)
	ds_map_add(armas[1], "proj", spr_proj)
	ds_map_add(armas[1], "proj_spd", 8)
	ds_map_add(armas[1], "damage", 10)
	ds_map_add(armas[1], "proj_delay", 12)
	ds_map_add(armas[1], "automatic", true)
	ds_map_add(armas[1],"drop", obj_pistol)
	ds_map_add(armas[1],"proj_count", 1)
	ds_map_add(armas[1], "proj_effect", -1)
	ds_map_add(armas[1], "debuff", -1)
	ds_map_add(armas[1], "type", "tiro")


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


armas[3] = ds_map_create();
	ds_map_add(armas[3], "sprite", spr_fuzil)
	ds_map_add(armas[3], "proj", spr_proj15mm)
	ds_map_add(armas[3], "proj_spd", 14)
	ds_map_add(armas[3], "damage", 5)
	ds_map_add(armas[3], "proj_delay", 8)
	ds_map_add(armas[3], "automatic",true)
	ds_map_add(armas[3],"drop", obj_fuzil)
	ds_map_add(armas[3],"proj_count", 1)
	ds_map_add(armas[3], "proj_effect", -1)
	ds_map_add(armas[3], "debuff", -1)
	ds_map_add(armas[3], "type", "tiro")



armas[4] = ds_map_create();
	ds_map_add(armas[4], "sprite", spr_cajado)
	ds_map_add(armas[4], "proj", spr_spell)
	ds_map_add(armas[4], "proj_spd", 4)
	ds_map_add(armas[4], "damage", 15)
	ds_map_add(armas[4], "proj_delay", 35)
	ds_map_add(armas[4], "automatic",true)
	ds_map_add(armas[4],"drop", obj_cajado)
	ds_map_add(armas[4],"proj_count", 1)
	ds_map_add(armas[4], "proj_effect", obj_spell_vfx)
	ds_map_add(armas[4], "debuff", "lentidão")
	ds_map_add(armas[4], "type", "tiro")



armas[5] = ds_map_create();
	ds_map_add(armas[5], "sprite", spr_sniper)
	ds_map_add(armas[5], "proj", spr_sniperBullet)
	ds_map_add(armas[5], "proj_spd", 20)
	ds_map_add(armas[5], "damage", 40)
	ds_map_add(armas[5], "proj_delay", 50)
	ds_map_add(armas[5], "automatic",false)
	ds_map_add(armas[5],"drop", obj_sniper)
	ds_map_add(armas[5],"proj_count", 1)
	ds_map_add(armas[5], "proj_effect", obj_fireVfx)
	ds_map_add(armas[5], "debuff", "knockback")
	ds_map_add(armas[5], "type", "tiro")


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
	
armas[7] = ds_map_create();
	ds_map_add(armas[7], "sprite", spr_sword)
	ds_map_add(armas[7], "proj", spr_sword_atq)
	ds_map_add(armas[7], "proj_spd", 0)
	ds_map_add(armas[7], "damage", 40)
	ds_map_add(armas[7], "proj_delay", 20)
	ds_map_add(armas[7], "automatic",false)
	ds_map_add(armas[7],"drop", obj_sword)
	ds_map_add(armas[7],"proj_count", -1)
	ds_map_add(armas[7], "proj_effect", -1)
	ds_map_add(armas[7], "debuff", -1)
	ds_map_add(armas[7], "type", "bater")





timer = 0;
weapon_id = -1;
weapon_dir = -1;
weapon_x = 0;
weapon_y = 0;
can_shoot = true
bateu = false
scr_mudar_arma(self,1)
recoil = 0;



spr_p = sprite;
combo = 0;



