if !ja_dmg{
var _dmg = instance_create_layer(other.x,other.y-10,"Instances", obj_dano_inimigo)
_dmg.depth = depth -1
_dmg.txtDmg = damage;
ja_dmg =true
}

