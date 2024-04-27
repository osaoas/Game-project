if(!other.invencible){
	global.life -= 1;
	other.invencible = true;
	other.alarm[0] = 100;
	other.image_blend = c_red;
}