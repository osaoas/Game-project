if(Nbateu && global.ricochete){
	
	 var normal_angle = point_direction(x, y, other.x + 16, other.y + 16);
    var incidence_angle = direction;
    var reflection_angle = 2 * normal_angle - incidence_angle;
    
    direction = reflection_angle;
	
	image_angle = direction
	
	
	Nbateu=false;
	
}

