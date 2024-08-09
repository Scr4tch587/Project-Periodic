var delta = delta_time / 1000000;

y += neededvspeed*delta;
vspeed += grav;
if (othercountdown >= neededtime)
{
	instance_create_layer(x, y, "Instances", obj_hero_flaskaoe);
	instance_destroy()
}


countdown += delta;
othercountdown += 1;