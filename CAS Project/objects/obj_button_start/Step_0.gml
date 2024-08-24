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
			global.na_conc = ini_read_real("Save","Na_conc",0.5);
			global.k_conc = ini_read_real("Save","K_conc",0.5);
			global.na_unlocked = ini_read_real("Save","Na",1);
			global.k_unlocked = ini_read_real("Save","K",0);
			global.concentration = ini_read_real("Save","concentration",0);

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