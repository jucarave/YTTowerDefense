function scrCheckGameOver(){
	hp -= 1;
	
	if (hp <= 0) {
		show_message("Game Over");
		objEnemy.path_speed = 0;
	}
}