
if(point_distance(x,y,obj_player.x,obj_player.y) <= 60){
	_perto = true
}

if _perto{

	var _dir = point_direction(x,y,obj_player.x,obj_player.y + 5)
	
	var _x = lengthdir_x(5,_dir)
	var _y = lengthdir_y(5,_dir)
	
	
	x+=_x
	y+=_y
}