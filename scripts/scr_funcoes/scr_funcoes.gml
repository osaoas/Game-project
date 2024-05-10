///@function valor_ac(animation_curve,animar,[canal])
function valor_ac(_anim, _animar = false,_chan = 0){
	static _pos =0,_val=0;
	_pos += delta_time / 1000000
	if _animar {
		_pos = 0	
	}
	var _canal = animcurve_get_channel(_anim,_chan)
	_val = animcurve_channel_evaluate(_canal,_pos)
	return _val
}