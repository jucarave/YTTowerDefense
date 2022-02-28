grid = mp_grid_create(-64,-64,room_width/64+2,room_height/64+2,64,64);
mp_grid_add_instances(grid,objBlock,true);

path1 = path_add();
mp_grid_path(grid,path1,1440,224,224,-32,false);

alarm[0] = 50;

money = 600;