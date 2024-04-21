

if(!surface_exists(surf_lights)){
	var _wid = surface_get_width(application_surface)
	var _hei = surface_get_height(application_surface)
	surf_lights = surface_create(_wid,_hei, surface_rgba16float)	
}


surface_set_target(surf_lights)

	draw_clear(ambient_light)
	
	camera_apply(view_camera[0])
	
	gpu_set_blendmode(bm_add)
		
		with(obj_light){
			draw_self()
			
		}
		
	gpu_set_blendmode(bm_normal)


surface_reset_target()