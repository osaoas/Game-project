var _hit = irandom(1)
var _hit_obj = instance_create_depth(x,y,99,obj_hit_effect)
if(_hit == 0){
	_hit_obj.sprite_index = spr_hit_effect
}else{
	_hit_obj.sprite_index = spr_hit_effect2

}

shake(3,5)




instance_destroy()
other.debuff = debuff;
other.life -= damage;
other.hit_alpha = 1;

var _dmg = instance_create_layer(other.x,other.y-10,"Instances", obj_dano_inimigo)
_dmg.depth = depth -1
_dmg.txtDmg = damage;


