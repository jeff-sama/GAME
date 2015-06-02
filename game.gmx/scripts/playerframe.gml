if (global.gamefreeze) exit; //pause
frame += 1;

if (frame > 3) frame = 0;

if (vfacing){ //if facing up
    if (argument0 = 0) //if player is facing left
    {
        if (frame = 0) image_index = 3;
        else if (frame = 1) image_index = 4;
        else if (frame = 2) image_index = 3;
        else if (frame = 3) image_index = 5;
    }
    else //if player is facing right
    {
        if (frame = 0) image_index = 11;
        else if (frame = 1) image_index = 12;
        else if (frame = 2) image_index = 11;
        else if (frame = 3) image_index = 13;
    }
}
else{//if player is facing down
    if (argument0 = 0) //if player is facing left
    {
        if (frame = 0){
            image_index = 0;
        }
        else if (frame = 1){
            image_index = 1;
        }
        else if (frame = 2){ 
            image_index = 0;
        }
        else if (frame = 3){ 
            image_index = 2;
        }
    }
    else //if player is facing right
    {
        if (frame = 0) image_index = 8;
        else if (frame = 1) image_index = 9;
        else if (frame = 2) image_index = 8;
        else if (frame = 3) image_index = 10;
    }
}   