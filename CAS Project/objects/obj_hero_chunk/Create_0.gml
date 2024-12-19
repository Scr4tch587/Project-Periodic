depth = -1;
visible = false;
global.chunkcollide = false;
moving = true;
timer = 60;
collided = false;
collidetimer = 0;
explosiondelay = 60;

transition_progress = 0; // Start at 0
if (global.chunks == "K") {
	explosiondelay = 30;
} else if (global.chunks == "Rb") {
	explosiondelay = 15;
} else if (global.chunks == "Cs") {
	explosiondelay = 5;
} else {
	explosiondelay = 60;
}

transition_speed = 60/explosiondelay*0.01;
 // How fast the sprite turns red



image_xscale = 0.2;
image_yscale = 0.2;