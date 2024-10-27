if (instance_exists(obj_lab_screen)) {
	popup_id.visible = false;
} else {
	popup_id.visible = true;
}


if (collision_circle(x, y, radius, obj_lobbyhero, false, true)) {
	inradius = true;
} else {
	inradius = false;
}