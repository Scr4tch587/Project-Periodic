if (global.paused == false){
	lifetime++
}

if (lifetime >= 300){
	instance_destroy()
}