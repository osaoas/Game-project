if global.pause or instance_exists(obj_hit_slow){
	alarm[0]++;
	alarm[1]++;
	image_speed=0;
	exit
}else{
	if sprite_index == spr_espinho_atv{
				image_speed = 1	
	}
}



if(ativo and sprite_index != spr_espinho_atv){
	sprite_index = spr_espinho_atv;
}

if(sprite_index==spr_espinho_atv){
	if(image_index==5){
		image_speed = 0;
		mask_index = spr_espinho_atv
	}
	
	alarm[0] = 200;

}else{
	alarm[1]=200	
}