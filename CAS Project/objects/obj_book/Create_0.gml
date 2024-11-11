// Call parent event to set up general eney stuff.
event_inherited();

// Set speed for this enemy type.
speed = 1;

// Set animation speed.
image_speed = 1;

// Set max hitpoints for this enemy type.
hitpoints_max = 5 * global.enemy_health_bonus;

// Set hitpoints.
hitpoints = hitpoints_max;

// Set sprites for this enemy type.
walk_sprite = spr_book_walk;
attack_sprite = spr_book_attack;
hit_sprite = spr_book_hit;