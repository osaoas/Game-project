second -=1;

if(second < 0){
	second = 59	
	minute-=1
}
if(minute <= 0 && second <= 0){
	room_restart()
}

alarm[1] = 60