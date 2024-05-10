options = ["Play", "Controls", "Exit"]
index = -1;
op_max = array_length(options)
marg_val = 0
marg_max = 20
sel = 0
in_control = false


#region



desenha_menu = function() {
	
	draw_set_color(c_black)
		draw_rectangle(-1,-1,view_wport[0] + 1, view_hport[0] +1,false)
	draw_set_color(c_white)
	draw_set_font(fnt_small)


	var m_x = device_mouse_x_to_gui(0)
	var m_y = device_mouse_y_to_gui(0)
	if !in_control{
		var x1 = 20
		var y1 = 150


	for (var i = 0; i<op_max;i++){
		draw_set_color(c_white)

		var y2 = y1 + 50 * i
		var string_w = string_width(options[i])
		var string_h = string_height(options[i]) - 20
		draw_set_valign(1)
		draw_set_halign(0)
		var _ta = point_in_rectangle(m_x,m_y,x1-string_w,y2-string_h,x1+string_w,y2+string_h)


		if(sel == i){
			draw_text_transformed(x1+marg_val + 1,y2,options[i],1.2,1.2,0)
			draw_text_transformed(x1+marg_val-1,y2,options[i],1.2,1.2,0)
			draw_text_transformed(x1+marg_val,y2+1,options[i],1.2,1.2,0)
			draw_text_transformed(x1+marg_val,y2-1,options[i],1.2,1.2,0)
			draw_set_color(c_purple)	
			draw_text_transformed(x1 + marg_val,y2,options[i],1.2,1.2,0)
			draw_set_color(c_white)
			
		}else{
			draw_text_transformed(x1,y2,options[i],1,1,0)
			}
		}

		
	
	}else{
		draw_sprite_ext(spr_controles,-1,250,180,3,3,0,c_white,1)
	}	
	
draw_sprite(spr_mira,0,m_x,m_y)
	draw_set_valign(-1)
	draw_set_halign(-1)
}


controla_menu = function(){
	var _up,_down,_avanca, _recua
	_up = keyboard_check_pressed(ord("W"))
	_down = keyboard_check_pressed(ord("S"))
	_avanca = keyboard_check_pressed(ord("Q"))
	_recua = keyboard_check_pressed(ord("E"))
	if(_recua){ in_control=false}

	if _up or _down && !in_control{
		sel += _down - _up;
		sel = clamp(sel,0,op_max -1)
		marg_val = 0
	}
	
	marg_val = marg_max * valor_ac(ac_margin,_up ^^ _down)
	
	if _avanca{
	switch sel{
		case 0:		
			instance_destroy()	
		break;
		case 1:
			in_control = true
		break;
		
		case 2:
			game_end()
		break;
		
	}
	}
	
	}



#endregion