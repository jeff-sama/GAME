if (argument0 = 0) add = player; //based on argument 0, different characters will be added to the party
else if (argument0 = 1) add = player1;
else if (argument0 = 2) add = player2;
//else if (argument0 = 3) add = player3;

num = partynum;

if (partynum <= 3){
    member[num] = instance_create(posx[num],posy[num],add);
    member[num].partynum = partynum;
    member[num].weapon1 = instance_create(0,0,weapon01);
    member[num].weapon1.wielder = member[num]; //weapons will know who their wielder is
    member[num].weapon2 = instance_create(0,0,weapon01);
    member[num].weapon2.wielder = member[num];
    member[num].current_weapon = member[num].weapon1;
    list[num] = member[num]
    pathfinder = instance_create(posx[num],posy[num],obj_pathfinder); //create pathfinding object
    pathfinder.num = num; //set it's number to the correct number 
    partynum += 1;
}