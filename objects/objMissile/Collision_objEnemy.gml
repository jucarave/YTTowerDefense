instance_destroy();

other.hp -= dmg;
if (other.hp <= 0) {
	instance_destroy(other);
	objLevel.money += other.money;
}