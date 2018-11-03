if distance_to_object(obj_player) < detectRadius {
	state = E_states.chase	
} else {
	state = E_states.idle	
}

switch (state) {
	case E_states.idle:	
	break
	case E_states.chase:
	break
}