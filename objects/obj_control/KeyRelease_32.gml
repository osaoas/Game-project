if global.room != 0{
global.pause = true

if !global.pause{
	instance_destroy(obj_menu)	
}else{
	if !instance_exists(obj_menu){
		instance_create_depth(0,0,0,obj_menu)	
	}
}
}