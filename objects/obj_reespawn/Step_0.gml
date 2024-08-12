if (life<=0){
	instance_destroy()	
	instance_create_layer(x,y,layer,obj_moeda)

}

if(instance_exists(obj_hit_slow)){
	image_speed=0	
	alarm[0]++
}else{
	image_speed=1	
}

hit_alpha = lerp(hit_alpha,0,0.1)
