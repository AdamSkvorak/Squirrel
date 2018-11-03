if distance_to_object(obj_player) < detectRadius {
	state = E_states.chasing	
} else {
	state = E_states.idle	
}

switch (state) {
	case E_states.idle:
		
	break
	case E_states.chasing:
		chase(obj_player)
		if place_meeting(x,y,obj_player){
			room_goto(gameover)	
		}
	break
}