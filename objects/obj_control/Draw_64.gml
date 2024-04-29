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


