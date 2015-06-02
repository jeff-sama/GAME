go_x = argument0; //x-coordinate to go to
go_y = argument1; //y-coordinate to go to

path = path_add(); //create new path
mp_grid_add_instances(path,obj_boundary,1);
mp_grid_path(global.grid,path,x,y,go_x,go_y,1);
path_start(path,maxspeed,"",1);
