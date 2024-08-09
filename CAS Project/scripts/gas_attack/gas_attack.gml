
function gas_attack(){
	var _xlocation = mouse_x;
	var _ylocation = mouse_y;
	var _gasspeed = 16;
	var _highestpoint = 100; //how high the arc goes
	var _distanceneeded = point_distance(x, y, mouse_x, mouse_y);
	var _x_distance = mouse_x - x;
	var _y_distance = mouse_y - y;
	var _timeneeded = _distanceneeded / _gasspeed;
		
	var xspeed = _x_distance / _timeneeded;
	var yspeed = _y_distance / _timeneeded;		
		
		
	var _gas = instance_create_layer(x, y, "Instances", obj_hero_gas);
	with (_gas)
	{
		cursorlocationx = _xlocation;
		cursorlocationy = _ylocation;
		hspeed = xspeed;
		neededvspeed = yspeed;
		neededtime = _timeneeded
		neededydist = _y_distance
			
		grav = 1;

		vspeed = (neededydist - grav * neededtime * neededtime / 2) / neededtime;

		countdown = 0;
	}
	
}