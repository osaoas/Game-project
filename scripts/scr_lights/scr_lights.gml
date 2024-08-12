function create_lights(_x,_y,_color,_intensidade,_xscale,_yscale,_target = -1){
	var _luz = instance_create_depth(_x,_y,0,obj_light)
	_luz.image_blend = _color
	_luz.image_xscale = _xscale;
	_luz.image_yscale = _yscale;
	_luz.image_alpha = _intensidade
	_luz.target = _target
	
	return _luz
	
	
}