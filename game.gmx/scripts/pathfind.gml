go_x = argument0; //x-coordinate to go to
go_y = argument1; //y-coordinate to go to
go_speed = argument2;
go_allowdiag = argument3; //whether or not the path can move diagonally (if player hits a wall, this will be disabled);

//first check if there is a solid object at location, if there is attempt to make a path to the closest free point
while (instance_place(go_x,go_y,obj_boundary)){
    go_y++;
}
    


path = path_add(); //create new path
mp_grid_add_instances(grid,obj_boundary,1);
mp_grid_path(grid,path,x,y,go_x,go_y,go_allowdiag);
path_start(path,go_speed,"",1);

//if at the end of path, end it
if (path_position = 1) path_end();
