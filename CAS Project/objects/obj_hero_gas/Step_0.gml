y += neededvspeed;
vspeed += grav;
if (countdown >= neededtime){
	instance_create_layer(x, y, "Instances", obj_hero_flaskaoe);
	instance_destroy()
}


countdown += 1;