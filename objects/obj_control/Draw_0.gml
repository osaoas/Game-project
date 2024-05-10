
	
var _num = instance_number(par_enemy)

ds_grid_resize(inimigos,2,_num)

var i = 0
if (instance_exists(par_enemy)){
with(par_enemy){
	
		obj_control.inimigos[# 0,i] = id
		obj_control.inimigos[# 1,i] = y
		i++;
}

ds_grid_sort(inimigos,1,true)

for(var i = 0;i<ds_grid_height(inimigos);i++){
	var _inst = inimigos[# 0,i]
	if(instance_exists(_inst)){
	with(_inst){
		if(sprR != -1){
			draw_sprite(spr_sombra,0,x,y + sprite_height / 2)
			}
		draw_self()
		
	}
	}
}
}
draw_sprite(spr_mira,1,mouse_x,mouse_y)

