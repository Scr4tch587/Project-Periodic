// Increment experience.
if (global.level < 3) {
	global.mana = min(global.mana_max, global.mana + 20);
} else if (global.level < 6)  {
	global.mana = min(global.mana_max, global.mana + 30);
} else if (global.level < 10) {
	global.mana = min(global.mana_max, global.mana + 45);
} else {
	global.mana = min(global.mana_max, global.mana + 60);
}

// Choose a random pickup sound effect.
_sound = choose(snd_pickup_1, snd_pickup_2, snd_pickup_3);

// Play the chosen sound.
audio_play_sound(_sound, 0, 0, 1, undefined, 1.0);

// Apply the follow actions to the other object 
// (the collectible).
with(other) 
{
	// Destroy the collectible.
	instance_destroy();
}