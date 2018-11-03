if nuts < maxNuts{
	instance_destroy(other)
	global.nutcount--
	nuts++
	if other.owner != noone {
		with other.owner {
			for (i = 0; i < global.nutcount; i++) {
				if (distance_to_object(instance_find(obj_nut, i)) < range) 
				and instance_find(obj_nut, i).taken == false {
				mynut = instance_find(obj_nut, i).object_index
				mynut.taken = true
				mynut.owner = self
				}
			}	
		}
	}
}
