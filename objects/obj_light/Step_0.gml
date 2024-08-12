

if instance_exists(target){
	if(target != -1){
		x=target.x + 32;
		y=target.y;
		direction = target.direction
		image_angle = target.image_angle
	}

}else{
	instance_destroy()	
}