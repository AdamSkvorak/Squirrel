///@param obj to chase

var obj = argument0
var dirx = sign(x - obj.x)
var diry = sign(y - obj.y)
var mult = 0.75



if abs(x - obj.x) <= 1 {
	dirx = 0
	mult = 1
}
if abs(y - obj.y) <= 1 {
	diry = 0
	mult = 1
}

move(-dirx*movespeed*mult, -diry*movespeed*mult)
