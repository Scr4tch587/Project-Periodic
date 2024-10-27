if (collision_circle(x, y, radius, obj_lobbyhero, false, true)) {
	if (!instance_exists(obj_dialogue_screen)) {
		instance_create_layer(1920 / 2, 1080 / 2, "Buttons2", obj_dialogue_screen);
	}
}