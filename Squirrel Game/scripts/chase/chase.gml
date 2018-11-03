///@param obj to chase

var obj = argument0

var dirx = sign(x - obj.x)
var diry = sign(y - obj.y)

if abs(x - obj.x)  > 1 {
	move(-dirx*movespeed, -diry*movespeed)
}
