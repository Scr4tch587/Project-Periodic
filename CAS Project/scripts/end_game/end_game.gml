// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function end_game(){
	// Destroy the player.
	with (obj_enemy) instance_destroy();
	with (obj_hero) instance_destroy();
	
	// Destroy any bullets.
	with (obj_hero_bullet) instance_destroy();
		
	// Destroy any chunks.
	with (obj_hero_chunk) instance_destroy();
	
	// Destroy the enemies.
	with (obj_enemy) instance_destroy();
	
	// Destroy any xp pickups.
	with (obj_atom) instance_destroy();
		
	with (obj_electron) instance_destroy();
	with (obj_neutron) instance_destroy();
	with (obj_proton) instance_destroy();
	
	// Destroy any health pickups.
	with (obj_heart) instance_destroy();
		
	// Destroy any health pickups.
	with (obj_coin) instance_destroy();
	
	// Create game over object.
	instance_create_layer(1920 / 2, 1080 / 2 - 150, "UpgradeScreen", obj_win_screen);
}