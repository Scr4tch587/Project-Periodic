depth = -1000000;
image_alpha = 0.5;

image_xscale = 0.5;
image_yscale = 0.5; 

ini_open("save_file.ini")

image_scale_target = 2.5 + ini_read_real("Save",global.gas + "_conc",0.5);
ini_close();
image_increment = (image_scale_target - 0.5) / 4
xscale = 0.5;
yscale = 0.5;

counter = 0;
image_angle = irandom_range(0, 360);

draw_sprite_ext(sprite_index, image_index, x, y, 0.5, 0.5, image_angle, c_white, 0.5);