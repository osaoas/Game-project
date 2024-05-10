if(global.pause == true){
	
	sprite_index = spr_player_idle
	image_speed = 0
	exit;	
}else{
	image_speed = 1	
}

if(instance_exists(obj_hit_slow)){
	image_speed=0
	exit;
}else{
	image_speed=1	
}



for (var i = 0; i <= 1; i++) {
	if(global.my_weapons[i] == undefined){
		global.my_weapons[i] = 0	
	}
}


var tecla_cima = keyboard_check(ord("W"))
var tecla_baixo = keyboard_check(ord("S"))

var tecla_direita = keyboard_check(ord("D"))
var tecla_esquerda = keyboard_check(ord("A"))

var teclas = tecla_direita - tecla_esquerda != 0 or tecla_baixo - tecla_cima != 0;


if((place_meeting(x,y,par_enemy)) and !invencible){
	global.life -= 1;
	invencible = true;
	alarm[0] = 100;
	image_blend = c_red;
	instance_create_depth(0,0,0,obj_hit_slow)
}
if(global.life <= 0){
	room_restart()
	global.life=3
	global.room=1;
	
}


switch(estado){
	case "parado":
		sprite_index = spr_player_idle
		if(teclas =! 0){
			estado="andando"	
		}
	break;
	
	case "andando":
	


move_dir = point_direction(0,0,tecla_direita - tecla_esquerda, tecla_baixo - tecla_cima)

velh = lengthdir_x(velc * teclas, move_dir)
velv = lengthdir_y(velc * teclas, move_dir)


if(velh != 0) image_xscale = sign(velh)
if(teclas!=0){
sprite_index = spr_player_run;	
}else{
	estado = "parado"
}



if(place_meeting(x+velh, y, obj_buraco)){
	while(!place_meeting(x+sign(velh),y, obj_buraco))	{
		x+=sign(velh)
	}
	velh=0
}


if(place_meeting(x, y + velv, obj_buraco)){

	while(!place_meeting(x,y + sign(velv), obj_buraco))	{
		y+=sign(velv)
	}
	velv=0
}

if(place_meeting(x+velh, y, obj_porta) and obj_porta.sprite_index == spr_porta_fechada){

	while(!place_meeting(x+sign(velh),y, obj_porta))	{
		x+=sign(velh)
	}
	velh=0
}


if(place_meeting(x, y + velv, obj_porta) and obj_porta.sprite_index == spr_porta_fechada){

	while(!place_meeting(x,y + sign(velv), obj_porta))	{
		y+=sign(velv)
	}
	velv=0
}


		x+=velh
		y+=velv
	

	
	
	break;

	
}
with(my_weapon){
	if(global.pause or !instance_exists(other)){
		exit	
	}
	var mb;
	var _key_pickup = keyboard_check_pressed(ord("E"))

	if(automatic){
		mb = mouse_check_button(mb_left)	
	}else{
		mb = mouse_check_button_pressed(mb_left)	
	}
	
	weapon_dir = point_direction(x,y,mouse_x,mouse_y);
	_dist = instance_nearest(x,y,par_enemy)
	var _dist2 = instance_nearest(x,y,obj_reespawn)
	if(instance_exists(_dist)){
		weapon_dir = point_direction(x,y,_dist.x,_dist.y)
	}else if(instance_exists(_dist2)){
		weapon_dir = point_direction(x,y,_dist2.x,_dist2.y)
	}
	
	if(mb){
		if(instance_exists(obj_weapon_hit) and other.pode == true){
			
			if(obj_weapon_hit.image_index >= 2){
					obj_weapon.combo++;
					other.pode = false;
					alarm[1] = 120;
			}


			
		}
		
		atirar();
	}
	
	if(_key_pickup && !instance_exists(obj_weapon_hit)){
	
	if(global.my_weapons[(global.arma_index + 1) mod 2] == 0 && other._arma_proxima_id != -1){
		global.my_weapons[(global.arma_index + 1) mod 2] = weapon_pickup(false,other._arma_proxima_id);
		global.arma_index = (global.arma_index + 1) mod 2;
		scr_mudar_arma(self, global.my_weapons[global.arma_index]);
		global.arma_equipada = global.my_weapons[global.arma_index]
	}else if(other._arma_proxima_id == -1 && !instance_exists(obj_weapon_hit)) {
		
	}else{
		global.my_weapons[global.arma_index] = weapon_pickup(true,other._arma_proxima_id)
		global.arma_equipada = global.my_weapons[global.arma_index]	
	}

	}
	if(keyboard_check_pressed(ord("R")) && !instance_exists(obj_weapon_hit) ){
		if(global.my_weapons[(global.arma_index + 1) mod 2] != 0 and global.my_weapons[(global.arma_index + 1) mod 2] != undefined){
			global.arma_index = (global.arma_index + 1) mod 2;
			global.arma_equipada = global.my_weapons[global.arma_index]
			scr_mudar_arma(self, global.my_weapons[global.arma_index])	
		}
	}
}
other._arma_proxima_id = -1
var _arma_dist = 20;

with(obj_weapon_drop){
	var _dist = point_distance(x,y,other.x,other.y)
	if(_dist < _arma_dist){
		_arma_dist = _dist
			other._arma_proxima_id = id
		}
	
}
		
		
with(obj_weapon_drop){
	if(id == other._arma_proxima_id){
		focus = true
	}else{
		focus = false	
	}
	
}



