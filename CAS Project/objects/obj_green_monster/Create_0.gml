// Call parent event to set up general enemy stuff.
event_inherited();

// Set speed for this enemy type.
speed = 1.5;

// Set animation speed.
image_speed = 1;

hitpoints_max = 16 * global.enemy_health_bonus;

// Set hitpoints specifically for this enemy type.
hitpoints = hitpoints_max;

// Set sprites for this enemy type.
walk_sprite = spr_green_walk;
attack_sprite = spr_green_attack;
hit_sprite = spr_green_hit;