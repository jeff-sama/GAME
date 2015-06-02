if (global.gamefreeze) exit;
//Movement without pathfinding
dir = point_direction(x,y,posx,posy); //get direction that needs to be traveled in
move(dir);

/* Pathfinding Code
path = path_add();
mp_grid_add_instances(path,obj_boundary,1);
mp_grid_path(global.grid,path,x,y,posx,posy,1) //where posx and posy are the points to move to
path_start(path,maxspeed,0,1);
*/

//If player is more than 500 away from follower, it will teleport to player
if (party.active.x-x > 500 || party.active.y-y > 500 || party.active.x-x < -500 || party.active.y-y < -500){
    x = party.centerx;
    y = party.centery;
}

if (x-10 <= posx && x+10 >= posx && y-10 <= posy && y+10 >= posy){
    adjust = false; //if char is within 5 of target, adjust is finished
    swapping = false; //if swapping is set to true, will be set to false
}