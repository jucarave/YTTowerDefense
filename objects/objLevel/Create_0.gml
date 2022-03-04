grid = mp_grid_create(-64,-64,room_width/64+2,room_height/64+2,64,64);
mp_grid_add_instances(grid,objBlock,true);

path1 = path_add();
mp_grid_path(grid,path1,1440,224,224,-32,false);

path2 = path_add();
mp_grid_path(grid,path2,864,-32,224,-32,false);

alarm[0] = 50;

money = 600;
hp = 10;
maxHP = 10;

waves = [
	[
		{ instancesCount: 23 },
		{ objectId: objSoldier, count: 20, added: 0, path: path1, time: 50 },
		{ objectId: objSoldier, count: 3, added: 0, path: path2, time: 50 }
	],
	
	[
		{ instancesCount: 5 },
		{ objectId: objTank, count: 5, added: 0, path: path2, time: 100 }
	]
];
waveIndex = 0;
waveInstancesIndex = 1;
