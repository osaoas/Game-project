if(ativo and sprite_index != spr_espinho_atv){
	sprite_index = spr_espinho_atv;
}

if(sprite_index==spr_espinho_atv){
	if(image_index==5){
		if(alarm[1] <= 0){
			mask_index=spr_espinho_atv;
			alarm[1] = 200;
		}
		image_speed = 0;
	}
	
	alarm[0] = 200;

}else{
	alarm[1]=200	
}