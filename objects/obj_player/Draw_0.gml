draw_sprite(spr_sombra,0,x,y + 10)
if(instance_exists(obj_proj)){
	draw_text(x,y-50,obj_proj.direction)
}
draw_self();



