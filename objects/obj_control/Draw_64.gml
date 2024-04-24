draw_sprite_ext(spr_GUI_gunEqp,-1,455,60,1,1,0,c_white,1)

var _spr = obj_weapon.armas[global.arma_equipada][? "sprite"]
var _dmg = obj_weapon.armas[global.arma_equipada][? "damage"]


draw_sprite(_spr,-1,453,62)
draw_set_font(fnt_small)
draw_text_ext_transformed_color(441,67,_dmg,0,99,0.7,0.7,0,c_black,c_black,c_black,c_black,1)
draw_text_ext_transformed_color(439,67,_dmg,0,99,0.7,0.7,0,c_black,c_black,c_black,c_black,1)
draw_text_ext_transformed_color(440,68,_dmg,0,99,0.7,0.7,0,c_black,c_black,c_black,c_black,1)
draw_text_ext_transformed_color(440,66,_dmg,0,99,0.7,0.7,0,c_black,c_black,c_black,c_black,1)
draw_text_ext_transformed_color(440,67,_dmg,0,99,0.7,0.7,0,c_white,c_white,c_white,c_white,1)


