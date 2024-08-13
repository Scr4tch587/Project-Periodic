if (!global.paused)
{	//change sizes
	counter += 1;
	if (counter > 30 and counter <= 60)
	{
		image_xscale = 1;
		image_yscale = 1;
		xscale = 1;
		yscale = 1;
	}
	else if (counter > 60 and counter <= 120)
	{
		image_xscale = 1.5;
		image_yscale = 1.5;
		xscale = 1.5;
		yscale = 1.5;
	}
	else if (counter > 120 and counter <= 240)
	{
		image_xscale = 2;
		image_yscale = 2;
		xscale = 2;
		yscale = 2;
	}
	else if (counter > 240)
	{
		image_xscale = 2.5;
		image_yscale = 2.5;
		xscale = 2.5;
		yscale = 2.5;
	}
	
	if (counter >= 480){
		instance_destroy();
	}
}