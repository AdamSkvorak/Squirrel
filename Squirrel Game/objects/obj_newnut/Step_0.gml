pickuptimer++

if pickuptimer == 50 {
	instance_create_layer( x, y, "Instances", obj_nut)
	instance_destroy(self)
}