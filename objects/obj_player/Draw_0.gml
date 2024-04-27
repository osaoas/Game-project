draw_sprite(spr_sombra,0,x,y + sprite_height / 2)
if(instance_exists(obj_espinho)){
	draw_text(x,y-50,obj_espinho.image_speed)
}
draw_self();



