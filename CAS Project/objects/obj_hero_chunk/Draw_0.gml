
// Draw event
draw_self();
image_blend = make_color_rgb(
    255, // Red value stays 255
    255 * (1 - transition_progress), // Green fades out
    255 * (1 - transition_progress)  // Blue fades out
);

//var blend_color = lerp(c_red, c_white, transition_progress);
//draw_sprite_ext(sprite_index, image_index, x, y, 0.2, 0.2, image_angle, c_white, 1);