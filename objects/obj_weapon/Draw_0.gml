

if(sprite != -1){
var recoil_x = lengthdir_x(recoil,weapon_dir)
var recoil_y = lengthdir_y(recoil,weapon_dir)



draw_sprite_ext(sprite,image_index,weapon_x - recoil_x,weapon_y - recoil_y,1,1,weapon_dir,c_white,1)

}