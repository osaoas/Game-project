armas[0] = ds_map_create();
	ds_map_add(armas[0], "sprite", spr_shotgun)
	ds_map_add(armas[0], "preco", 40)
	ds_map_add(armas[0], "obj", obj_shotgun)
	ds_map_add(armas[0], "scr", -1)

armas[1] = ds_map_create();
	ds_map_add(armas[1], "sprite", spr_fireCajado)
	ds_map_add(armas[1], "preco", 40)
	ds_map_add(armas[1], "obj", obj_fire_cajado)
	ds_map_add(armas[1], "scr", -1)


armas[2] = ds_map_create();
	ds_map_add(armas[2], "sprite", spr_cajado)
	ds_map_add(armas[2], "preco", 20)
	ds_map_add(armas[2], "obj", obj_cajado)
	ds_map_add(armas[2], "scr", -1)


	
armas[3] = ds_map_create();
	ds_map_add(armas[3], "sprite", spr_fuzil)
	ds_map_add(armas[3], "preco", 40)
	ds_map_add(armas[3], "obj", obj_fuzil)
	ds_map_add(armas[3], "scr", -1)


	
armas[4] = ds_map_create();
	ds_map_add(armas[4], "sprite", spr_sniper)
	ds_map_add(armas[4], "preco", 40)
	ds_map_add(armas[4], "obj", obj_sniper)
	ds_map_add(armas[4], "scr", -1)



armas[5] = ds_map_create();
	ds_map_add(armas[5], "sprite", spr_sword)
	ds_map_add(armas[5], "preco", 40)
	ds_map_add(armas[5], "obj", obj_sword)
	ds_map_add(armas[5], "scr", -1)
i = 6;

armas[i] = ds_map_create();
	ds_map_add(armas[i], "sprite", spr_more_life)
	ds_map_add(armas[i], "preco", 40)
	ds_map_add(armas[i], "obj", -1)
	ds_map_add(armas[i], "scr", more_life)
	
i++;

armas[i] = ds_map_create();
	ds_map_add(armas[i], "sprite", spr_life_potion)
	ds_map_add(armas[i], "preco", 40)
	ds_map_add(armas[i], "obj", -1)
	ds_map_add(armas[i], "scr", curar_vida)
	
i++;

if(!global.imu_espinho){
	armas[i] = ds_map_create();
		ds_map_add(armas[i], "sprite", spr_imu_espinho)
		ds_map_add(armas[i], "preco", 40)
		ds_map_add(armas[i], "obj", -1)
		ds_map_add(armas[i], "scr", imu_espinho)
		i++;
}

if(!global.ricochete){
	armas[i] = ds_map_create();
		ds_map_add(armas[i], "sprite", spr_ricochete)
		ds_map_add(armas[i], "preco", 40)
		ds_map_add(armas[i], "obj", -1)
		ds_map_add(armas[i], "scr", ricochete)
}




index = irandom(array_length(armas) - 1)

while(ds_list_find_index(global.nums,index) != -1){
	index = irandom(array_length(armas) - 1)
}
	


	
	
ds_list_add(global.nums,index)




arma = armas[index]
	

spr = arma[? "sprite"]
preco = arma[? "preco"]
obj = arma[? "obj"]
scr = arma[? "scr"]

global.comprou=false

sprT = spr_teclaQ

pulse_speed = 0.005
min_scale = 0.7
max_scale = 1
current_scale = min_scale
prox = false;
	
	
my_light = create_lights(x+48,y+16,c_purple,1,1,1,-1)


