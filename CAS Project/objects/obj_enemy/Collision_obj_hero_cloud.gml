
if (hitpoints > 0 and cloudcd >= cloud_timer and global.paused == false)
{
	// Set the healthbar timer to 60.
	// Causing the healthbar to show for 60 game steps.
	show_healthbar = 60;

	// Reduce hitpoints by the damage caused by the shooting weapon.
	ini_open("save_file.ini")
	damage = 0.1 *  ini_read_real("Save",global.gas + "_conc",0.5) * 2;
	hitpoints -= damage;
	cloudcd = 0;
	ini_close();

	// Create text popup to indicate damage.
	var _text = instance_create_layer(x + 0, y + 0, "UpgradeScreen", obj_text_popup);

	// Set text to damage amount.
	_text.text = -damage;

	// Set our sprite to the hit sprite.
	sprite_index = hit_sprite;
	image_index = 0;

	// If our hitpoints has reached zero...
	if (hitpoints <= 0)
	{
		// Destroy this instance.
		instance_destroy();
	}
}
