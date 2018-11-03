checkinputs()
//NORMAL STATE OF PLAYER

//----Assigns invincibility and speed
canhit = 1
movespeed = 2

//---Allow movement
moveX = k_right - k_left
moveY = k_down - k_up

movespeed = (movespeedBase - ((movespeedBase/2.5)*(nuts/maxNuts)))

hspd = moveX * movespeed * speedmult
vspd = moveY * movespeed * speedmult

move( hspd, vspd) //----Moves player

//----drops nuts
if k_e {
	instance_create_layer(x, y, "Instances", obj_newnut)
	nuts--
}

//---Movement Sprites

if moveX > 0 and moveY > 0 {
	sprite_index = 	rundowndiag
	image_xscale = 1
	speedmult = 0.75
	dir = "SE"
}
if moveX > 0 and moveY = 0 {
	sprite_index = runright
	image_xscale = 1
	speedmult = 1
	dir = "E"
}
if moveX > 0 and moveY < 0 {
	sprite_index = runupdiag
	image_xscale = 1
	speedmult = 0.75
	dir = "NE"
}

if moveX = 0 and moveY = 0 {
	sprite_index = idle
	image_xscale = 1
	speedmult = 1
	dir = "S"
}
if moveX = 0 and moveY < 0 {
	sprite_index = runup
	image_xscale = 1
	speedmult = 1
	dir = "N"
}
if moveX < 0 and moveY > 0 {
	sprite_index = rundowndiag
	image_xscale = -1
	speedmult = 0.75
	dir = "SW"
}
if moveX < 0 and moveY = 0 {
	sprite_index = runright
	image_xscale = -1
	speedmult = 1
	dir = "W"
}
if moveX < 0 and moveY < 0 {
	sprite_index = runupdiag
	image_xscale = -1
	speedmult = 0.75
	dir = "NW"
}
	if moveX = 0 and moveY > 0 {
	sprite_index = rundown
	image_xscale = 1
	speedmult = 1
	dir = "S"
}	