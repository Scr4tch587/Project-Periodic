function hf_unlock(){
	instance_create_layer(1920 / 2, 1080 / 2 - 150, "UnlockScreen", obj_HF_upgrade_screen);
	global.hf_unlocked = 1;
	ini_open("save_file.ini"); 
	ini_write_real("Save", "HF", 1);
	ini_close();
	global.paused = 1;
}