if nuts < maxNuts{
	instance_destroy(other)
	nuts++
	if other.owner != noone {
		with other.owner {
			for (i = 0; i < instance_number(obj_nut); i++) {
				if (distance_to_object(instance_find(obj_nut, i)) < range) 
				and instance_find(obj_nut, i).taken == false {
				mynut = instance_find(obj_nut, i)
				mynut.taken = true
				mynut.owner = self
				}
			}	
		}
	}
}
