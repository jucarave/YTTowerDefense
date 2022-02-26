var enemy = instance_nearest(x, y, objEnemy);

if (enemy && point_distance(x, y, enemy.x, enemy.y) < 128) {
	image_angle = point_direction(x, y, enemy.x, enemy.y);
	
	firingFrequency -= 1;
	if (firingFrequency <= 0) {
		var bullet = instance_create_layer(x, y, "Instances", objMissile);
		bullet.sprite_index = sprTurretBullet;
		bullet.image_angle = image_angle;
		bullet.direction = image_angle;
		bullet.speed = 5;
		
		firingFrequency = 60;
	}
}