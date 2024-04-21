

if pode{
	gpu_set_fog(true,c_white,0,0)
	draw_sprite_ext(sprite_index,-1,x+1,y,1,1,direction,c_white,1)	
	draw_sprite_ext(sprite_index,-1,x-1,y,1,1,direction,c_white,1)
	draw_sprite_ext(sprite_index,-1,x,y+1,1,1,direction,c_white,1)	
	draw_sprite_ext(sprite_index,-1,x,y-1,1,1,direction,c_white,1)	
	gpu_set_fog(false,c_white,0,0)

	
	draw_sprite_ext(sprite_index,-1,x,y,1,1,direction,c_white,1)	



}else{
		draw_sprite_ext(sprite_index,-1,x,y,1,1,direction,c_white,1)		
}