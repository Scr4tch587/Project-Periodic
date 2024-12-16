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
			global.coins = 500;
			global.neutrons = 500;
			global.protons = 500;
			global.electrons = 500;
			global.chunks = "Na";
			global.na_conc = 0.5;
			global.k_conc = 0.5;
			global.na_unlocked = 1;
			global.k_unlocked = 0;
			global.rb_conc = 0.5;
			global.cs_conc = 0.5;
			global.rb_unlocked = 0;
			global.cs_unlocked = 0;
			
			global.hf_conc = 1;
			global.hcl_conc = 1;
			global.hf_unlocked = 0;
			global.hcl_unlocked = 0;
			global.h2so4_conc = 1;
			global.hno3_conc = 1;
			global.h2so4_unlocked = 0;
			global.hno3_unlocked = 0;
			
			global.br2_conc = 0.5;
			global.cl2_conc = 0.5;
			global.br2_unlocked = 0;
			global.cl2_unlocked = 0;
			global.cocl2_conc = 0.5;
			global.f2_conc = 0.5;
			global.cocl2_unlocked = 0;
			global.f2_unlocked = 0;
			
			ini_open("save_file.ini"); 
				
			ini_write_real("Save", "coins", global.coins);
			ini_write_real("Save", "electrons", global.electrons);
			ini_write_real("Save", "protons", global.protons);
			ini_write_real("Save", "neutrons", global.neutrons);
			ini_write_string("Save", "chunks", global.chunks);
			ini_write_real("Save", "Na_conc", 0.5);
			ini_write_real("Save", "K_conc", 0.5);
			ini_write_real("Save", "Rb_conc", 0.5);
			ini_write_real("Save", "Cs_conc", 0.5);
			ini_write_real("Save", "Na", 1);
			ini_write_real("Save", "K", 0);
			ini_write_real("Save", "Rb", 0);
			ini_write_real("Save", "Cs", 0);
			ini_write_real("Save", "H2SO4_conc", 1);
			ini_write_real("Save", "HCl_conc", 1);
			ini_write_real("Save", "HF_conc", 1);
			ini_write_real("Save", "HNO3_conc", 1);
			ini_write_real("Save", "H2SO4", 0);
			ini_write_real("Save", "HCl", 1);
			ini_write_real("Save", "HF", 0);
			ini_write_real("Save", "HNO3", 0);
			ini_write_real("Save", "Br2_conc", global.br2_conc);
			ini_write_real("Save", "Cl2_conc", global.cl2_conc);
			ini_write_real("Save", "COCl2_conc", global.cocl2_conc);
			ini_write_real("Save", "F2_conc", global.f2_conc);
			ini_write_real("Save", "Br2", 1);
			ini_write_real("Save", "Cl2", 0);
			ini_write_real("Save", "COCl2", 0);
			ini_write_real("Save", "F2", 0);
			
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