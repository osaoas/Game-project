if(global.levelUp == true){
	path_speed = 0
	exit;
}


if(global.levelUp == true){
sprite_index = sprI
speed = 0
path_speed = 0;
exit;	
}

hit_alpha = lerp(hit_alpha,0,0.1)
if(life <= 0){
	instance_destroy()
	global.enemiesLie++;
}





		
		sprite_index = sprR
		if(instance_exists(obj_player)) {
		if(obj_player.x > x){
			image_xscale = 1;	
		}else if(obj_player.x < x){
		image_xscale = -1;
		{
		
		}
	
}


}

if(alarm[0] <= 0){
	debuff = -1;
	alarm[0] = 180
}
switch(debuff){
	case "lentidão":
		_spd = 0.6;
		if(alarm[0] == -1){
			alarm[0] = 120;
		}
		hit_alpha = .3;
		hit_color = c_aqua;
	break;
	case "knockback":
		_dir = point_direction(x,y,obj_player.x,obj_player.y)
		_dir += 180
		
		if(_dir >=360){
		_dir -= 360	
		}
		
		var _hspd = lengthdir_x(2,_dir)
		var _vspd = lengthdir_y(2,_dir)

		x += _hspd
		y += _vspd
	break;
	case "queimando":

	if(alarm[2] <=0){
		alarm[2]	 = 60
		life -= 10
}
	
		hit_alpha = .3;
		hit_color = c_red;
	break;
	default:
		hit_alpha = 0;
		_spd = 1;
		hit_color = c_white
	break;

}













