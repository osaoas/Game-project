display_set_gui_size(320,160)



spawn_time = 500;
upgrade_num = 3
upgrade_alpha = 1;
upgrade_scale = 1
global.exp = 0
global.exp_max = 100
global.level = 1
global.levelUp = false;
global.maxEnemy = 0;
global.enemies = 0
global.rx1 = 0;
global.rx2 = 0;
global.ry1 = 0;
global.ry2 = 0;

enum Upg{
	Name,
	Script,
	Frequency,
	Lvl
}
upgrade_list = ds_list_create()

upgrades_grid = ds_grid_create(4,0)

new_upgrd("Life",		 more_life,   -1, 0)
new_upgrd("Velocidade",		 more_vel,   -1, 0)
new_upgrd("Imã",		 -3,   -1, 0)
new_upgrd("Estrela",	 -4,   -1, 0)
new_upgrd("shuriken",	 -5,   -1, 0)
new_upgrd("Sapo",		 -6,   -1, 0)
new_upgrd("Bumerangue",  -7,   -1, 0)
new_upgrd("nada 1",		 -8,   -1, 0)
new_upgrd("nada 2",		 -9,   -1,0)
new_upgrd("nada 3",		 -10,   -1,0)
cell_t = 32
cell_h = room_width div 32
cell_v = room_height div 32
global.enemiesLie = 0;
mp_grid  = mp_grid_create(0,0,cell_h,cell_v,cell_t,cell_t)

mp_grid_add_instances(mp_grid,obj_colision, false)

global.in_room = false


