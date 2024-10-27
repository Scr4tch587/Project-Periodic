// If mouse is over this instance, adjusting for the GUI layer...
if (device_mouse_x_to_gui(0) > bbox_left && device_mouse_x_to_gui(0) < bbox_right && device_mouse_y_to_gui(0) > bbox_top && device_mouse_y_to_gui(0) < bbox_bottom)
{
	// Reduce target scale size.
	target_scale = 0.95;
	
	// If left mouse button is pressed...
	if (mouse_check_button_pressed(mb_left))
	{
		// Play click sound effect.
		audio_play_sound(snd_click, 0, 0, 1.0, undefined, 1.0);
		
		// Sets click state to true.
		is_clicked = true;
		
		// Reduce target scale size further.
		target_scale = 0.9;
	}
	
	// Checks if mouse has been clicked on this button.
	if (is_clicked)
	{
		// Reduce target scale size further.
		target_scale = 0.9;
		
		// If left mouse button is released...
		if ( mouse_check_button_released(mb_left))
		{		
			// Play click sound effect.
			audio_play_sound(snd_ui_select, 0, 0, 1.0, undefined, 1.0);
			
			ini_open("save_file.ini"); 
	
			global.coins = ini_read_real("Save","coins",0); //load value of coins 
			global.electrons = ini_read_real("Save","electrons",0);
			global.protons = ini_read_real("Save","neutrons",0);
			global.neutrons = ini_read_real("Save","protons",0);
			
			global.chunks = ini_read_string("Save","chunks", "Na");
			
			global.na_conc = ini_read_real("Save","Na_conc", 1);
			global.k_conc = ini_read_real("Save","K_conc", 1);
			global.rb_conc = ini_read_real("Save","Rb_conc", 1);
			global.cs_conc = ini_read_real("Save","Cs_conc", 1);
			
			global.na_unlocked = ini_read_real("Save","Na",1);
			global.k_unlocked = ini_read_real("Save","K",0);
			global.rb_unlocked = ini_read_real("Save", "Rb", 0);
			global.cs_unlocked = ini_read_real("Save", "Cs", 0);
			
			global.gas = ini_read_string("Save", "gas", "Br2");
			
			global.br2_conc = ini_read_real("Save","Br2_conc", 1);
			global.cl2_conc = ini_read_real("Save","Cl2_conc", 1);
			global.fl2_conc = ini_read_real("Save","Fl2_conc", 1);
			global.cocl2_conc = ini_read_real("Save","COCl2_conc", 1);
			
			global.br2_unlocked = ini_read_real("Save","Br2", 1);
			global.cl2_unlocked = ini_read_real("Save","Cl2", 1);
			global.fl2_unlocked = ini_read_real("Save","Fl2", 1);
			global.cocl2_unlocked = ini_read_real("Save","COCl2", 1);
			
			global.puddle = ini_read_string("Save", "puddle", "HCl");
			
			global.hcl_conc = ini_read_real("Save","HCl_conc", 1);
			global.h2so4_conc = ini_read_real("Save","H2SO4_conc", 1);
			global.hno3_conc = ini_read_real("Save","HNO3_conc", 1);
			global.hf_conc = ini_read_real("Save","HF_conc", 1);
			
			global.hcl_unlocked = ini_read_real("Save","HCl", 1);
			global.h2so4_unlocked = ini_read_real("Save","H2SO4", 1);
			global.hno3_unlocked = ini_read_real("Save","HNO3", 1);
			global.hf_unlocked = ini_read_real("Save","HF", 1);

			ini_close(); 
			
			// Go to lobby.
			room_goto(rm_lobby);
		}
	}
}
else
{
	// Reset target scale size.
	target_scale = 1.0;	
}

// Lerp scale values to target scale.
image_xscale = lerp(image_xscale, target_scale, 0.1);
image_yscale = lerp(image_yscale, target_scale, 0.1);