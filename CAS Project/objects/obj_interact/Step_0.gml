/// @description Insert description here
// You can write your code in this editor
// Sets the heading font.

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