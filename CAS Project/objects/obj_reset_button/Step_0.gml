// If mouse is over this instance, adjusting for the GUI layer...
if (device_mouse_x_to_gui(0) > bbox_left && device_mouse_x_to_gui(0) < bbox_right && device_mouse_y_to_gui(0) > bbox_top && device_mouse_y_to_gui(0) < bbox_bottom)
{
	// Reduce target scale size.
	target_scale = 0.95;
	
	// If left mouse button is pressed...
	if (mouse_check_button_pressed(mb_left))
	{
	
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
		if (mouse_check_button_released(mb_left))
		{
			global.coins = 0;
			global.neutrons = 0;
			global.protons = 0;
			global.electrons = 0;
			global.chunks = "Na";
			global.na_conc = 1;
			global.k_conc = 1;
			global.na_unlocked = 1;
			global.k_unlocked = 0;
			global.rb_conc = 1;
			global.cs_conc = 1;
			global.rb_unlocked = 10
			global.cs_unlocked = 0;
			
			ini_open("save_file.ini"); 
				
			ini_write_real("Save", "coins", global.coins);
			ini_write_real("Save", "electrons", global.electrons);
			ini_write_real("Save", "protons", global.protons);
			ini_write_real("Save", "neutrons", global.neutrons);
			ini_write_string("Save", "chunks", global.chunks);
			ini_write_real("Save", "Na_conc", 1);
			ini_write_real("Save", "K_conc", 1);
			ini_write_real("Save", "Na", 1);
			ini_write_real("Save", "K", 0);
			
			ini_close();
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