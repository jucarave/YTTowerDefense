var soldier = instance_create_layer(1440,224,"Instances",objSoldier);

with (soldier) {
	path_start(objLevel.path1,1,path_action_stop,true);
}

if (instance_number(objSoldier) < 20) {
	alarm[0] = 50;
}