if (global.paused == false){
	lifetime++
}

if (lifetime >= 100){
	instance_destroy()
}