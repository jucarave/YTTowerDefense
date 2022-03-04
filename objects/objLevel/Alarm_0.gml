var wave = waves[waveIndex];
var waveInstances = wave[waveInstancesIndex];

var enemy = instance_create_layer(0,0,"Instances",waveInstances.objectId);
waveInstances.added += 1;

with (enemy) {
	path_start(waveInstances.path,1,path_action_stop,true);
}

if (waveInstances.added < waveInstances.count) {
	alarm[0] = waveInstances.time;
} else {
	waveInstancesIndex += 1;
	
	if (waveInstancesIndex < array_length(wave)) {
		alarm[0] = waveInstances.time;
	}
}