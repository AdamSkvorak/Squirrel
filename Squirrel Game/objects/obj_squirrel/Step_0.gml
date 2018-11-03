//findnut
if mynut == -1 and havenut = false{
	for (i = 0; i < global.nutcount; i++) {
		if distance_to_object(instance_find(obj_nut, i)) < range {
		mynut = instance_find(obj_nut, i)
		break
		}
	}
}

//getnut

if mynut != -1 {
	chase( mynut.object_index)
}

if place_meeting( x, y, mynut.object_index) {
	instance_destroy(mynut.object_index)
	global.nutcount--
	havenut = true
	mynut = -1
}

if havenut == true {
	chase(home)	
}

if place_meeting(x,y,home) {
	havenut = false
}
