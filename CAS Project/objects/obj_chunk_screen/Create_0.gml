h = 63;
ini_open("save_file.ini"); 
if (ini_read_real("Save", "Na", 0)) {
	instance_create_layer(x - 242, y - h, "Buttons2", obj_na_button);
}
if (ini_read_real("Save", "K", 0)) {
	instance_create_layer(x - 122, y - h, "Buttons2", obj_k_button);
}
if (ini_read_real("Save", "Rb", 0)) {
instance_create_layer(x - 2, y - h, "Buttons2", obj_rb_button);
}
if (ini_read_real("Save", "Cs", 0)) {
	instance_create_layer(x + 112, y - h, "Buttons2", obj_cs_button);
}
ini_close();
