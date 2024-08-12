if point_distance(x,y+20,obj_player.x,obj_player.y) <= 30 {
		prox=true;
}else{
	prox=false;	
}



if(keyboard_check_pressed(ord("Q")) and prox and !global.comprou and preco <= global.money){
		sprT = spr_empty;
		spr=spr_empty;
		
		if obj != -1{
			instance_create_layer(x+16,y+30,"Weapons", obj);
			var _prec = instance_create_layer(x+16,y+5,"Weapons",obj_dano_inimigo)
			_prec.txtDmg = -preco
		}else{
			scr()	
		}
		
		
		
		global.comprou = true;
		
		global.money-=preco
		
	}
	
	
	if(global.comprou and instance_exists(my_light)){
			instance_destroy(my_light)
	}
	
	
if(obj_player.y < y){
	depth = obj_light_render.depth - 1
}else{
	depth = obj_light_render.depth + 1 
}


current_scale = min_scale + (max_scale-min_scale) * abs(sin(current_time * pulse_speed))