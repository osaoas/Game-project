display_set_gui_size(320,160)



spawn_time = 500;

global.pause = false;
global.maxEnemy = 0;
global.enemies = 0
global.rx1 = 0;
global.rx2 = 0;
global.ry1 = 0;
global.ry2 = 0;



cell_t = 32
cell_h = room_width div 32
cell_v = room_height div 32
global.enemiesLie = 0;
mp_grid  = mp_grid_create(0,0,cell_h,cell_v,cell_t,cell_t)

mp_grid_add_instances(mp_grid,obj_colision, false)

global.in_room = false


