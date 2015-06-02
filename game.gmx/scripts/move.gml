if (global.gamefreeze) exit; //pause

dir = argument0;

if(!frozen){
        if (dir > 0){
            if (active) direction = 45*dir;
            else direction = dir;
            if (speed < maxspeed && !sprint) speed += 0.25 //speed will increase
            else if (speed < sprintspeed) speed += 0.25
            if (speed > maxspeed && !sprint) speed += -0.5 //speed will decrease
            else if (speed > sprintspeed) speed += -0.5
        }
        else if (dir == 0){ //if dir = 0 then player is not inputting movement
            speed = speed*0.9 //speed will decrease
            if (speed < 1) speed = 0;
        }
        else if (dir == -1){ //full stop
            speed = speed*0.25;
            if (speed < 1){ 
                speed = 0
            }
        }
        direction_memory = direction;
}