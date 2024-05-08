if mudei{
	alpha -= .075

	if(alpha <=0){
		instance_destroy()
		global.pause = false
	}
}else{
	alpha += .075	
}
if alpha >= 1{
	room_restart()
}