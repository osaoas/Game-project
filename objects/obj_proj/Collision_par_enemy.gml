
instance_destroy()
other.debuff = debuff;
other.life -= damage;
other.hit_alpha = 1;

var _dmg = instance_create_layer(other.x,other.y-10,"Instances", obj_dano_inimigo)
_dmg.depth = depth -1
_dmg.txtDmg = damage;


