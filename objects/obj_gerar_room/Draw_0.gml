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

			if(cor_pixel==2366702){ //VERMELHO
			}else if(cor_pixel==65280){ //verde
				instance_create_layer(_xx,_yy,"enemies",obj_inimigo2)	

			}else if cor_pixel == 16776960{ //azul
				instance_create_layer(_xx,_yy,layer,obj_water)	
			}else if cor_pixel == 65535{ //amarelo
					
			}else if cor_pixel == 16711935{ //rosa
				instance_create_layer(_xx,_yy,"enemies",obj_inimigo)	

			}else if cor_pixel == 2254322{ //laranja
				instance_create_layer(_xx,_yy,layer,obj_buraco)	

			}
			
		}
	}
	surface_reset_target()


	surface_free(surf)
	ja_criou=true
}