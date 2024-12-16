// Call parent event to set up general eney stuff.
event_inherited();

speed = 1;

// Set animation speed.
image_speed = 1;

// Set max hitpoints specifically for this enemy type.
hitpoints_max = 7 * global.enemy_health_bonus;

// Set hitpoints specifically for this enemy type.
hitpoints = hitpoints_max;

// Set sprites for this enemy type.
walk_sprite = spr_cat_walk;
attack_sprite = spr_cat_attack;
hit_sprite = spr_cat_hit;