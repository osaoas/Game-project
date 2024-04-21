// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function string_format_type_hour(_minutes,_seconds){
	return string_replace_all(string_format(_minutes,2,0) + ":" + string_format(_seconds,2,0), " ", "0")
}