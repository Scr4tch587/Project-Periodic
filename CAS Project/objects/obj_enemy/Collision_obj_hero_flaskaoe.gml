
// If hitpoints are over zero...
if (hitpoints > 0 and _cooldown >= acid_timer and global.paused == false)
{
	_cooldown = 0
	// Set the healthbar timer to 60.
	// Causing the healthbar to show for 60 game steps.
	show_healthbar = 60;

	// Reduce hitpoints by the damage caused by the shooting weapon.
	ini_open("save_file.ini")
	acid_damage = ini_read_real("Save",global.acid + "_conc", 0.5)^2
	acid_damage = 0.20 * acid_damage;
	ini_close();
	hitpoints -= acid_damage;

	// Create text popup to indicate damage.
	var _text = instance_create_layer(x + 0, y + 0, "UpgradeScreen", obj_text_popup);

	// Set text to damage amount.
	_text.text = -acid_damage;

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