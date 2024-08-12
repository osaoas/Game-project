// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function shake(_forca,_time){
	with(obj_camera){
		shake_leng = _forca
		shake_time = _time
		alarm[0] = shake_time
	}
}