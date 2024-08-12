hit_alpha = lerp(hit_alpha,0,0.05)
if(instance_exists(obj_hit_slow)){
	image_speed=0	
}else{
	image_speed=1	
}
instance_destroy()