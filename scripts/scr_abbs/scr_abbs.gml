

function imu_espinho(){
	
	global.imu_espinho = true
	
	
}

function ricochete(){
	global.ricochete = true	
}


function more_life(){
	global.life_max +=1
	global.life += 1	
	var _quantidi = instance_create_depth(obj_player.x,obj_player.y,0,obj_dano_inimigo)
	_quantidi.txtDmg = "+1"
	
	create_lights(_quantidi.x,_quantidi.y,c_red,1,1,1,_quantidi)
}

function curar_vida(){
	global.life += 1	
	var _quantidi = instance_create_depth(obj_player.x,obj_player.y,0,obj_dano_inimigo)
	_quantidi.txtDmg = "+1"
	
	create_lights(_quantidi.x,_quantidi.y,c_red,1,1,1,_quantidi)
	
}
