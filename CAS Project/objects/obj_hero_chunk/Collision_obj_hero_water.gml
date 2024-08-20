var currentx = x;
var currenty = y;

instance_create_layer(x, y, "Instances", obj_hero_explosion);
with (obj_enemy)
{
	ifdamage = false;
	var distance = point_distance(x, y, currentx, currenty);
	
	if (distance <= 150){
		ifdamage = true;
		damage = 0.5
		if (distance <= 10)
		{
			damage = 5;
		}
		else if (distance <= 50){
			damage = 3;
		}
		else if (distance <= 100){
			damage = 1.5;
		}
		
	}
	
	if (ifdamage)
	{
		// If hitpoints are over zero...
		if (hitpoints > 0)
		{
			// Destroy the other instance (the bullet)


			// Set the healthbar timer to 60.
			// Causing the healthbar to show for 60 game steps.
			show_healthbar = 60;

			// Reduce hitpoints by the damage caused by the shooting weapon.
			hitpoints -= damage;

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
	}
	
}

instance_destroy();