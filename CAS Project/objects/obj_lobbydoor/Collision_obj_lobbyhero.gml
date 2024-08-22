audio_play_sound(snd_ui_select, 0, 0, 1.0, undefined, 1.0);
with(obj_camera_lobby_hero) instance_destroy();	
// Go to lobby.
room_goto(rm_loading);
