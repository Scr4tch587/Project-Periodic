/// @description Insert description here
// You can write your code in this editor
ini_open("save_file.ini"); 
if (!ini_read_real("Save", global.selected, 0)) {
	with (obj_concentration_button) instance_destroy();
	if (global.selected != " ") {
		if (!instance_exists(obj_unlock_button)) {
			instance_create_layer(x - 15, 1080 - 100, "Buttons2", obj_unlock_button);
		}
	}
} else {
	with (obj_unlock_button) instance_destroy();
	if (!instance_exists(obj_concentration_button)) {
		instance_create_layer(x - 15, 1080 - 100, "Buttons2", obj_concentration_button);
	}
}
ini_close();