function scrCheckNextWave(){
	var wave = waves[waveIndex];
	var data = wave[0];
	
	data.instancesCount -= 1;
	if (data.instancesCount <= 0) {
		waveIndex += 1;
		waveInstancesIndex = 1;
		
		if (waveIndex < array_length(waves)) {
			alarm[0] = 50;
		} else {
			show_message("Victoria");
		}
	}
}