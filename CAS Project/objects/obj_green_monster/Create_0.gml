// Call parent event to set up general enemy stuff.
event_inherited();

// Set speed for this enemy type.
speed = 2;

// Set animation speed.
image_speed = 1;

hitpoints_max = 15 * global.enemy_health_bonus;
// Set sprites for this enemy type.
walk_sprite = spr_green_walk;
attack_sprite = spr_green_attack;
hit_sprite = spr_green_hit;