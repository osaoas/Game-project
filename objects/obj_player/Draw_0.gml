draw_sprite(spr_sombra,0,x,y + sprite_height / 2)

draw_self();

draw_sprite_ext(spr_life, 0, x - 10, y + 20,1,1,0,c_black,1 )
draw_sprite_ext(spr_life, 0, x - 10, y + 20,life/life_max,1,0,c_red,1 )

draw_text(x,y-90,global.room)
