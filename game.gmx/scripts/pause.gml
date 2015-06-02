//Pause code
if (global.gamefreeze = false){ //toggle pause
    global.gamefreeze = true;
    with all speed_memory = speed; //all objects set speed_memory to their current speed
    with all speed = 0; //all objects set their speed to zero
    
    //shader
    shader_enabled = true;
    
    audio_pause_all(); //all audio currently playing is paused
    audio_play_sound(mus_pause,10,1); //pause music is played
    
    //create pause object
    instance_create(0,0,obj_pausemenu);
}
else{ //untoggle pause
    shader_enabled = false;
    audio_stop_sound(mus_pause); //pause music is stopped
    audio_resume_all(); //paused audio is resumed
    with obj_pausemenu instance_destroy(); //destroy pause object
    with all speed = speed_memory;
    global.gamefreeze = false;
}
