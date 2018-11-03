///@param hspd
///@param vspd

var hspd = argument0
var vspd = argument1

//-----Horizontal Collision
if place_meeting( x + hspd, y, obj_solid) {
	while !place_meeting( x + sign(hspd), y, obj_solid) {
		x += sign(hspd)	
	}
	hspd = 0
}

//-----Vertical Collision
if place_meeting( x, y + vspd, obj_solid) {
	while !place_meeting( x, y + sign(vspd), obj_solid) {
		y += sign(vspd)	
	}
	vspd = 0
}

//---Moves character
x += hspd
y += vspd