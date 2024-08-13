var delta = delta_time / 1000000;

if (!global.paused)
{
	y += neededvspeed*delta;
	vspeed += grav;
	if (othercountdown >= neededtime)
	{
		instance_create_layer(x, y, "Instances", obj_hero_cloud);
		instance_destroy()
	}


	countdown += delta;
	othercountdown += 1;
}
