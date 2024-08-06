if (instance_exists(obj_hero_bullet))
{
	// Jump to the bullet
	x = obj_hero_bullet.x;
	y = obj_hero_bullet.y - 40;
	// Draws the sprite with offset values.
	draw_sprite_ext(sprite_index, image_index, x, y - 60, 0.2, 0.2, image_angle, c_white, 1);
}