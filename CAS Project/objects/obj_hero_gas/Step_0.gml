
if (countdown >= neededtime){
	instance_create_layer(x, y, "Instances", obj_hero_flaskaoe);
	instance_destroy()
}
vspeed += grav;
y += neededvspeed;

countdown += 1;