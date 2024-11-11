// Stops all audio.
audio_stop_all();

// Play click sound effect.
audio_play_sound(snd_win, 0, 0, 1.0, undefined, 1.0);

// Creates the continue button
instance_create_layer(1920 / 2, 1080 - 150, "UnlockScreen", obj_continue_button);

