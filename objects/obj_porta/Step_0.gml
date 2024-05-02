if(!instance_exists(par_enemy) && !instance_exists(obj_reespawn)){
	aberta = true	
}else{
	aberta = false	
}


if aberta{
	sprite_index = spr_porta_aberta;
}else{
	sprite_index = spr_porta_fechada
}