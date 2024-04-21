if(distance_to_object(obj_player) < obj_player.range_collect){
	var _dir = point_direction(x,y,obj_player.x,obj_player.y + 10)
	var _hspd = lengthdir_x(spd,_dir)
	var _vspd = lengthdir_y(spd,_dir)

	x += _hspd
	y += _vspd

}
	