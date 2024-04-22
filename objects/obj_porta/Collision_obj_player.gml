if(aberta == true){
	if(global.room<=9){
		global.room +=1
	}else{
		global.room = 1	
		global.andar +=1
	}
	room_restart()
}