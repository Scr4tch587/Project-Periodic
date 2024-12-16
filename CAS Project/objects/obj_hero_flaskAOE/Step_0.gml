if (global.paused == false){
	lifetime++
}

if (lifetime >= 150){
	instance_destroy()
}