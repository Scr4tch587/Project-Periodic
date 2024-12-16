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
			if (global.selected == "K" or global.selected == "H2SO4" or global.selected == "Cl2") {
				global.cost = 20;
			} else if (global.selected == "Rb" or global.selected == "HNO3" or global.selected == "F2") {
				global.cost = 30;
			} else if (global.selected == "Cs" or global.selected == "HF" or global.selected == "COCL2") {
				global.cost = 40;
			}

			if (global.coins >= global.cost) {
				global.coins -= global.cost;
				
				ini_open("save_file.ini"); 
				
				ini_write_real("Save", global.selected, 1);

				ini_close();
			}
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