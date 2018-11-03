//findnut
if mynut == -1 and havenut = false {
	for (i = 0; i < instance_number(obj_nut); i++) {
		if (distance_to_object(instance_find(obj_nut, i)) < range) 
		and instance_find(obj_nut, i).taken == false {
			mynut = instance_find(obj_nut, i)
			mynut.taken = true
			mynut.owner = self
			break
		}
	}
}

//getnut

if mynut != -1 and instance_exists(mynut) {
	chase(mynut)
}

if place_meeting( x, y, mynut){
	instance_destroy(mynut)
	havenut = true
	mynut = -1
}

if havenut {
	chase(home)	
}

if mynut == -1 and havenut == false {
	sprite_index = spr_E_idle	
} else {
	sprite_index = spr_E_run
}

if place_meeting(x,y,home) {
	havenut = false
}

