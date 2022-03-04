if (objLevel.hp <= 0) { exit; }

var _x = floor(mouse_x / 64) * 64 + 32;
var _y = floor(mouse_y / 64) * 64 + 32;

var tower = instance_position(_x, _y, objTower);
if (!tower) {
	if (objLevel.money >= 100) {
		instance_create_layer(_x, _y, "Instances", objTurret);
		objLevel.money -= 100;
	}
} else {
	if (objLevel.money >= 500) {
		instance_destroy(tower);
		instance_create_layer(_x, _y, "Instances", objTurret2);
		objLevel.money -= 500;
	}
}