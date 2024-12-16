if (!global.paused)
{	//change sizes
	counter += 1;
	if (counter > 30 and counter <= 60)
	{
		image_xscale = 0.5 + image_increment;
		image_yscale = 0.5 + image_increment;
		xscale = 0.5 + image_increment;
		yscale = 0.5 + image_increment;
	}
	else if (counter > 60 and counter <= 120)
	{
		image_xscale = 0.5 + 2*image_increment;
		image_yscale = 0.5 + 2*image_increment;
		xscale = 0.5 + 2*image_increment;
		yscale = 0.5 + 2*image_increment;
	}
	else if (counter > 120 and counter <= 240)
	{
		image_xscale = 0.5 + 3*image_increment;
		image_yscale = 0.5 + 3*image_increment;
		xscale = 0.5 + 3*image_increment;
		yscale = 0.5 + 3*image_increment;
	}
	else if (counter > 240)
	{
		image_xscale = 0.5 + 4*image_increment;
		image_yscale = 0.5 + 4*image_increment;
		xscale = 0.5 + 4*image_increment;
		yscale = 0.5 + 4*image_increment;
	}
	
	if (counter >= 480){
		instance_destroy();
	}
}