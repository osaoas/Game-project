velh = 0;
velv = 0;
velc = 10;
move_dir = 0;
if(!variable_global_exists("my_weapons")){
	global.my_weapons = [1,0]
	global.arma_equipada = global.my_weapons[0];
	global.arma_index = 0
	global.life = 3;
	global.life_max = 3;
	global.money = 30
	global.imu_espinho = false;
	global.ricochete = false
	
}


	my_weapon = instance_create_layer(x,y,"Weapons", obj_weapon)
	my_weapon.weapon_id = self;


invencible = false;
estado = "parado"
perto = true;
pode = true;
alarm[1] = 120


_arma_proxima_id = -1;





