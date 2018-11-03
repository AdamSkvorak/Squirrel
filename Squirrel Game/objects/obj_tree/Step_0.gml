checkinputs()


if (nutTimer == timeToNut) or (k_x) {

	pos = random_range(-1, 1)
	nutX = pos*random(100)
	pos = random_range(-1, 1)
	nutY = pos*random(100)
	
	instance_create_layer( x + nutX, y + nutY, "Instances", obj_nut)

	timeToNut = irandom_range(15*60, 30*60)
	nutTimer = 0
}

nutTimer++
