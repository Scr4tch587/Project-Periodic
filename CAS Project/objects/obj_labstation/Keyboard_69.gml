if (collision_circle(x, y, radius, obj_lobbyhero, false, true)) {
	if (!instance_exists(obj_lab_screen)) {
		instance_create_layer(1920 / 2, 1080 / 2, "UpgradeScreen", obj_lab_screen);
	}
}