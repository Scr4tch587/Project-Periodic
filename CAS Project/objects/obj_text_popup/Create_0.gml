// Create variable to hold the text value.
text = "NO TEXT";

// Create variable to hold the text color.
color = c_white;
verticalspeed = random_range(1,8);
// Create a variable to hold the lifetime of the text.
lifetime = 60/(verticalspeed/2);

// Set vertical speed, making the text "float" upwards.
vspeed -= verticalspeed

// Set the depth the a high negative value,
// drawing it in front of everything else.
depth = -1000000000000;

image_alpha = 1;