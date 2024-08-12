y-=vspd
alpha -= alpha_redux;
if(scale<1){
	scale += 0.1
}
if(alpha<=0){
	instance_destroy()	
}

