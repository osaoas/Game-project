if(global.levelUp == true){
	draw_set_alpha(.7)
	draw_rectangle_color(0,0, display_get_gui_width(),display_get_gui_height(),c_black,c_black,c_black,c_black, false)
	draw_set_alpha(1)
		var _sprw = sprite_get_width(spr_level_up_hud)
		var _sprh = sprite_get_height(spr_level_up_hud)
		var _buffer = 4
		var _xx = display_get_gui_width()/2
		var _yy = display_get_gui_height()/2 - _sprh - _buffer 
	
	var _mx = device_mouse_x_to_gui(0)
	var _my = device_mouse_y_to_gui(0)
	for(var i = 0; i < upgrade_num;i++){
		var _spry =  _yy + (_sprh + _buffer) * i;
		var _y = upgrade_list[| i];
		var _name = upgrades_grid[# Upg.Name, _y]
		var _script = upgrades_grid[# Upg.Script, _y]
		
		if(point_in_rectangle(_mx,_my,_xx - _sprw/2,_spry - _sprh / 2,_xx + _sprw/2,_spry + _sprh/2)){
			upgrade_alpha = 1;
			upgrade_scale = 1.1
			if(mouse_check_button(mb_left)){
				upgrades_grid[# Upg.Lvl, _y] += 1
				var _lvl = upgrades_grid[# Upg.Lvl, _y]


				_script(_lvl)
				global.levelUp = false;
			}
		}else{
			upgrade_alpha = 0.7
			upgrade_scale = 1
		}
		
		draw_sprite_ext(spr_level_up_hud, -1,_xx,_spry, upgrade_scale,upgrade_scale,0,c_white,upgrade_alpha)
		draw_sprite(spr_upgrades,_y,_xx + 8  - _sprw/2,_spry - 2 )
		draw_set_font(fnt_small)
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		
		draw_text(_xx + 10, _spry, _name)
	}


	exit;	
}



