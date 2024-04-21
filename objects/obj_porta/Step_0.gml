if(fechada == true and !ja_entrou){
	instance_create_layer(x,y,layer,obj_colision);
	ja_entrou = true;
	sprite_index = spr_porta_aberta
}