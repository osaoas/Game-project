if(global.pause == true or instance_exists(obj_hit_slow)){
	
	speed = 0;
	alarm[0]++
exit;	
}else{
	speed = spd;
}





if (alarm[0] <= 0 && efect != -1){
	instance_create_layer(x,y,"Instances", efect)
	alarm[0] = 3
}

if !global.ricochete{
	Nbateu = false	
}

