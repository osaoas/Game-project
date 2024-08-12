if(prox && !global.comprou){
	
	gpu_set_fog(true,c_white,0,0)
	draw_sprite_ext(sprite_index,-1,x+2,y,1,1,direction,c_white,1)	
	draw_sprite_ext(sprite_index,-1,x-2,y,1,1,direction,c_white,1)
	draw_sprite_ext(sprite_index,-1,x,y+2,1,1,direction,c_white,1)	
	draw_sprite_ext(sprite_index,-1,x,y-2,1,1,direction,c_white,1)	
	gpu_set_fog(false,c_white,0,0)
	draw_sprite_ext(sprT,1,x + sprite_get_width(sprite_index)/2,y-30,current_scale,current_scale,0,c_white,1)
	
	draw_sprite_ext(sprite_index,-1,x,y,1,1,direction,c_white,1)	
	draw_sprite(spr,0,x+16,y+16)
	draw_text_transformed_color(x+17,y+5,preco,0.5,0.5,0,c_black,c_black,c_black,c_black,1)
	draw_text_transformed_color(x+15,y+5,preco,0.5,0.5,0,c_black,c_black,c_black,c_black,1)
	draw_text_transformed_color(x+16,y+6,preco,0.5,0.5,0,c_black,c_black,c_black,c_black,1)
	draw_text_transformed_color(x+16,y+4,preco,0.5,0.5,0,c_black,c_black,c_black,c_black,1)

	
	draw_text_transformed_color(x+16,y+5,preco,0.5,0.5,0,c_white,c_white,c_white,c_white,1)
	draw_text_transformed_color(x+16,y+5,preco,0.5,0.5,0,c_purple,c_purple,c_purple,c_purple,0.3)

	
}else{
	draw_sprite_ext(sprite_index,-1,x,y,1,1,direction,c_white,1)		
	draw_sprite(spr,0,x+16,y+16)

}


