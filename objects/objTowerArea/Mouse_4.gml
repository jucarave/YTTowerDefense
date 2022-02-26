var _x = floor(mouse_x / 64) * 64 + 32;
var _y = floor(mouse_y / 64) * 64 + 32;

if (!instance_place(_x, _y, objTower)) {
	instance_create_layer(_x, _y, "Instances", objTurret);
}