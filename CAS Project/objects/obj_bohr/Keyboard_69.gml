if (collision_circle(x, y, radius, obj_lobbyhero, false, true)) {
	if (!instance_exists(obj_bohrdynamic_screen)) {
		instance_create_layer(1500, 600, "DynamicScreen", obj_bohrdynamic_screen);
	}
}