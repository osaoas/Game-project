velh = 0;
velv = 0;
velc = 10;
move_dir = 0;

my_weapon = instance_create_layer(x,y,"Weapons", obj_weapon)
my_weapon.weapon_id = self;

my_weapons = [1,0]
arma_equipada = my_weapons[1]
range_collect = 50;
invencible = false;
life = 3;
life_max = 3;
estado = "parado"
perto = true;
pode = true;

alarm[1] = 120

_arma_proxima_id = -1;





