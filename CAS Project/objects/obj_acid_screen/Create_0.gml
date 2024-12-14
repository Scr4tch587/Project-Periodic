h = 63;
ini_open("save_file.ini"); 
if (ini_read_real("Save", "HF", 0)) {
	instance_create_layer(x - 242, y - h, "Buttons2", obj_hf_button);
}
if (ini_read_real("Save", "HCl", 0)) {
	instance_create_layer(x - 122, y - h, "Buttons2", obj_hcl_button);
}
if (ini_read_real("Save", "H2SO4", 0)) {
instance_create_layer(x - 2, y - h, "Buttons2", obj_h2so4_button);
}
if (ini_read_real("Save", "HNO3", 0)) {
	instance_create_layer(x + 112, y - h, "Buttons2", obj_hno3_button);
}
ini_close();
