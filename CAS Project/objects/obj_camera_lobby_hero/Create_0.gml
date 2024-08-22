/// @description Insert description here
// You can write your code in this editor
view_width = 2000 / 1.5;
view_height = 1200 / 1.5;

window_scale = 1.5;

window_set_size(view_width*window_scale, view_height*window_scale);
alarm[0]=1;

surface_resize(application_surface, view_width*window_scale, view_height*window_scale);