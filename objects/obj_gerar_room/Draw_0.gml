if(ja_criou == false){
	draw_self()

	var surf = surface_create(spr_w,spr_h)


	surface_set_target(surf)

		draw_sprite(sprite_index,global.room - 1,0,0)
	
	
	

	for(var _y = 0; _y<spr_h;_y++){
		for(var _x = 0;_x<spr_w;_x++){
			var cor_pixel = surface_getpixel(surf,_x,_y)
			var _xx = _x*32
			var _yy = _y*32
			if(cor_pixel==2366702){
				instance_create_layer(_xx,_yy,layer,obj_colision)	
			}
			
		}
	}
	surface_reset_target()


	surface_free(surf)
	ja_criou=true
	}