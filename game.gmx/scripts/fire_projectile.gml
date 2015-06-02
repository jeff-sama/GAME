if (global.gamefreeze) exit; //pause
//argument0 = object to fire
//argument1 = direction to fire
//argument2 = speed 

if (!wielder.facing){
    obj = instance_create(wielder.x+muzzle_x,wielder.y+muzzle_y,argument0);
}
else obj = instance_create(wielder.x+64-muzzle_x,wielder.y+muzzle_y,argument0); //fire from different location if wielder is facing other direction
obj.direction = argument1+(random_range(-1,1)*spread);
obj.speed = argument2;