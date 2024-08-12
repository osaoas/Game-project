if instance_exists(obj_transicao){
	global.pause = true	
}



if collision_rectangle(520,0,700,190,obj_player,false,true) or collision_rectangle(520,0,700,190,par_enemy,false,true) {
	alpha = lerp(alpha,0.5,0.1)
	alpha2 = lerp(alpha2,0.15,0.03)
}else{
	alpha = lerp(alpha,1,0.1)
	alpha2 = lerp(alpha2,0.3,0.03)
}






