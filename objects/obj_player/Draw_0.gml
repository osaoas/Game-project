draw_sprite_ext(spr_sombra,0,x,y + sprite_height / 2,2,1,0,c_white,1)
if(instance_exists(obj_espinho)){
	draw_text(x,y-50,obj_espinho.alarm[1])
}
draw_self();



