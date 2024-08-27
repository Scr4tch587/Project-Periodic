
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
}
