//findnut

if mynut == -1 and havenut = false and global.nutcount > 0 {
	for (i = 0; i < global.nutcount; i++) {
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
	global.nutcount--
	havenut = true
	mynut = -1
}

if havenut {
	chase(home)	
}

if place_meeting(x,y,home) {
	havenut = false
}
