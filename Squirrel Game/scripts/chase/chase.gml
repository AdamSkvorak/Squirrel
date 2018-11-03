///@param obj to chase

var obj = argument0

var dirx = sign(x - obj.x)
var diry = sign(y - obj.y)

move(-dirx*movespeed, -diry*movespeed)

if abs(x - obj.x) < 1 {
	x = obj.x	
}

if abs(y - obj.y) < 1 {
	y = obj.y	
}

