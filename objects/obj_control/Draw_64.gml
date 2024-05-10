
if(instance_exists(obj_menu)){


	
}else{


draw_sprite_ext(spr_GUI_gunEqp,-1,455,60,1,1,0,c_white,1)



var _spr = obj_weapon.armas[global.arma_equipada][? "sprite"]
var _dmg = obj_weapon.armas[global.arma_equipada][? "damage"]


draw_sprite(_spr,-1,453,56)
draw_sprite_ext(_spr,-1,453,56,1,1,0,c_purple,0.3)

draw_set_font(fnt_small)
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
draw_text_ext_transformed_color(456,70,_dmg,0,99,0.7,0.7,0,c_black,c_black,c_black,c_black,1)
draw_text_ext_transformed_color(454,70,_dmg,0,99,0.7,0.7,0,c_black,c_black,c_black,c_black,1)
draw_text_ext_transformed_color(455,71,_dmg,0,99,0.7,0.7,0,c_black,c_black,c_black,c_black,1)
draw_text_ext_transformed_color(455,69,_dmg,0,99,0.7,0.7,0,c_black,c_black,c_black,c_black,1)
draw_text_ext_transformed_color(455,70,_dmg,0,99,0.7,0.7,0,c_white,c_white,c_white,c_white,1)
draw_text_ext_transformed_color(455,70,_dmg,0,99,0.7,0.7,0,c_purple,c_purple,c_purple,c_purple,0.3)

if(instance_exists(obj_player)){
	
	draw_sprite_ext(spr_life_bar, 0, 407, 20,1,1,0,c_black,1 )
	draw_sprite_ext(spr_life, 0, 408, 20,global.life/global.life_max,1,0,c_white,1 )
	draw_sprite_ext(spr_life_bar, 0, 407, 20,1,1,0,c_white,1 )
	
	draw_text_ext_transformed_color(456,15,string(global.life) + "/" + string(global.life_max),0,99,0.4,0.4,0,c_black,c_black,c_black,c_black,1)
	draw_text_ext_transformed_color(454,15,string(global.life) + "/" + string(global.life_max),0,99,0.4,0.4,0,c_black,c_black,c_black,c_black,1)
	draw_text_ext_transformed_color(455,16,string(global.life) + "/" + string(global.life_max),0,99,0.4,0.4,0,c_black,c_black,c_black,c_black,1)
	draw_text_ext_transformed_color(455,14,string(global.life) + "/" + string(global.life_max),0,99,0.4,0.4,0,c_black,c_black,c_black,c_black,1)
	draw_text_ext_transformed(455,15,string(global.life) + "/" + string(global.life_max),0,99,0.4,0.4,0)
	draw_text_ext_transformed_color(455,15,string(global.life) + "/" + string(global.life_max),0,99,0.4,0.4,0,c_purple,c_purple,c_purple,c_purple,0.3)
}

draw_sprite_ext(spr_moeda,1,430,110,1.3,1.3,0,c_white,1)

draw_text_transformed_color(456,110," : " + string(global.money),0.8,0.8,0,c_black,c_black,c_black,c_black,1)
draw_text_transformed_color(454,110," : " + string(global.money),0.8,0.8,0,c_black,c_black,c_black,c_black,1)
draw_text_transformed_color(455,111," : " + string(global.money),0.8,0.8,0,c_black,c_black,c_black,c_black,1)
draw_text_transformed_color(455,109," : " + string(global.money),0.8,0.8,0,c_black,c_black,c_black,c_black,1)

draw_text_transformed_color(455,110," : " + string(global.money),0.8,0.8,0,c_white,c_white,c_white,c_white,1)
draw_text_transformed_color(455,110," : " + string(global.money),0.8,0.8,0,c_purple,c_purple,c_purple,c_purple,0.3)


if instance_exists(obj_hit_slow){
	draw_sprite(spr_shake_effect,-1,0,0)
}

if(instance_exists(par_boss)){
	draw_sprite_ext(spr_boss_bar, 0, 156, 10,1,1,0,c_black,1 )
	draw_sprite_ext(spr_boss_life, 0, 156, 10,(global.lifeBoss/global.lifeBoss_max),1,0,c_white,1 )
	draw_sprite_ext(spr_boss_bar, 0,156, 10,1,1,0,c_white,1 )
}

if instance_exists(obj_transicao){
	draw_set_color(c_black)
		draw_set_alpha(obj_transicao.alpha)
			draw_rectangle(-1,-1,view_wport[0] + 1, view_hport[0] +1,false)
		draw_set_alpha(1)
	draw_set_color(-1)

}
}



