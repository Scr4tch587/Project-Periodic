var currentx = x;
var currenty = y;

if (!global.paused)
{
	if (delay_timer > 0) {
	    delay_timer -= 1;
		x = obj_hero.x
		y = obj_hero.y
	} 
	else if (moving == true) {
	    // Start moving after the delay
	    speed = initial_speed;
		global.chunkcollide = true;
		visible = true;
	}

	if (timer > 0 and moving == true)
	{
		timer -= 1;
	}
	else 
	{
		speed = 0;
		moving = false
	}
	if (collided = true)
	{
		collidetimer += 1;
		if (collidetimer >= explosiondelay){
			instance_create_layer(x, y, "Instances", obj_hero_explosion);
			with (obj_enemy)
			{
				ifdamage = false;
				var distance = point_distance(x, y, currentx, currenty);
	
				if (distance <= 150){
					ifdamage = true;
					ini_open("save_file.ini");
					damage = 0.015*(150-distance)*ini_read_real("Save", global.selected + "_conc", 1);
		
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
		}
	}
}
