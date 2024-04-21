
surface_set_target(surf_lights)
	
	gpu_set_blendmode_ext(bm_dest_color,bm_zero)
		draw_surface(application_surface,0,0)
	gpu_set_blendmode(bm_normal)

surface_reset_target()


	var _wid = surface_get_width(application_surface)
	var _hei = surface_get_height(application_surface)
draw_surface_stretched(surf_lights,0,0,_wid,_hei)