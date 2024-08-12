display_set_gui_size(504,360)


alpha = 1
alpha2 = 0.3
if !variable_global_exists("pause"){
	global.pause = true
}
	


global.maxEnemy = 0;
global.enemies = 0
global.rx1 = 0;
global.rx2 = 0;
global.ry1 = 0;
global.ry2 = 0;
global.nums = ds_list_create()
global.lifeBoss = 0
global.lifeBoss_max = 0

inimigos = ds_grid_create(2,0)







if(!variable_global_exists("room")){
	global.room = 0;
}
if(!variable_global_exists("andar")){
	global.andar = 1;
}



cell_t = 32
cell_h = room_width div 32
cell_v = room_height div 32
global.enemiesLie = 0;
mp_grid  = mp_grid_create(0,0,cell_h,cell_v,cell_t,cell_t)



function spawn_monstros(_monstro){

var _xr1 = 30
var _xr2 = 530
var _yr1 = 6
var _yr2 = 412

if(global.maxEnemy > global.enemies){
	var _xx = irandom_range(_xr1,_xr2)
	var _yy = irandom_range(_yr1,_yr2)
	if( global.maxEnemy > global.enemies){
		if(instance_position(_xx,_yy,obj_colision) == noone){
			instance_create_layer(_xx,_yy,"enemies", _monstro)
		
			global.enemies++;

		}else{
			while(instance_position(_xx,_yy,obj_colision) != noone){
				_xx = irandom_range(_xr1,_xr2)
				_yy = irandom_range(_yr1,_yr2)
			}
			instance_create_layer(_xx,_yy,"enemies", _monstro)
			global.enemies++;
		}
	}
}else{
	return false;	
}
}






