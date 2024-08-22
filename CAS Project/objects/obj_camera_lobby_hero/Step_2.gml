/// @description Insert description here
// You can write your code in this editor
#macro view2 view_camera[0]
camera_set_view_size(view2, view_width, view_height);

if (instance_exists(obj_lobbyhero))
{
	var _x = clamp(obj_lobbyhero.x - view_width/2, 0, room_width-view_width);
	var _y = clamp(obj_lobbyhero.y - view_height/2, 0, room_height-view_height);
	camera_set_view_pos(view2, _x, _y);
	
	var _cur_x = camera_get_view_x(view2);
	var _cur_y = camera_get_view_y(view2);
	
	var _spd = .1;
	camera_set_view_pos(view2,
						lerp(_cur_x, _x, _spd),
						lerp(_cur_y, _y, _spd));
}