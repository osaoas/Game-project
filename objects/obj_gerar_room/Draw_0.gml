if(ja_criou == false){
	draw_self()

	var surf = surface_create(spr_w,spr_h)


	surface_set_target(surf)

		draw_sprite(sprite_index,global.room - 1,0,0)
	
	
	

	for(var _y = 0; _y<spr_h;_y++){

		for(var _x = 0;_x<spr_w;_x++){
			
			var cor_pixel = surface_getpixel(surf,_x,_y)
			var _xx = _x*32+32
			var _yy = _y*32+64
			

			if(cor_pixel==2366702){ //VERMELHO
				instance_create_layer(_xx,_yy,layer,obj_espinho)	

			}else if(cor_pixel==65280){ //verde
				instance_create_layer(_xx,_yy,"enemies",obj_inimigo2)	

			}else if cor_pixel == 16776960{ //azul
				
				instance_create_layer(_xx,_yy,layer,obj_loja_altar)	

				
			}else if cor_pixel == 65535{ //amarelo
				instance_create_layer(_xx,_yy,layer,obj_bau)	

					
			}else if cor_pixel == 16711935{ //rosa
					instance_create_layer(_xx + 16,_yy + 16,"enemies",obj_inimigo)	
				

			}else if cor_pixel == 11100293{ //meiroxo
				instance_create_layer(_xx + 16,_yy + 16,"enemies",obj_morcego)	

				
			}else if cor_pixel == 2254322{ //laranja
				instance_create_layer(_xx + 16,_yy + 16,"enemies",obj_lord_v)	

			}else if cor_pixel == 11169521 {//meirosa
				instance_create_layer(_xx + 16,_yy + 16,"enemies",obj_caveira)	

			}else if cor_pixel == 7911484 {//meiverde
				
			}else if cor_pixel == 0{
				var _norte_t = surface_getpixel(surf,_x,_y-1) 
				var _sul_t = surface_getpixel(surf,_x,_y+1)	
				var _leste_t = surface_getpixel(surf,_x+1,_y) 
				var _oeste_t = surface_getpixel(surf,_x-1,_y) 
				
				
				var _norte = _norte_t == 0
				var _oeste = _oeste_t == 0
				var _leste = _leste_t == 0
				var _sul   = _sul_t	  == 0

				
				var tile_index = (_norte * norte) + (_oeste * oeste) + (_leste * leste) + (_sul * sul) 
				tilemap_set(tile_layer, tile_index,_x+1,_y+2)
				
				instance_create_layer(_xx,_yy,layer,obj_buraco)	
			}
			
			
		}
	}
	surface_reset_target()


	surface_free(surf)
	ja_criou=true
}