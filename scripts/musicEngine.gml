{
    if(instance_number(obj_logo)==1){
        if(!audio_is_playing(mus_Intro)){
            audio_play_sound(mus_Intro,10,false);
        }
        exit;
    } else if(instance_number(obj_logo)==0 && audio_is_playing(mus_Intro)){
        audio_stop_sound(mus_Intro);
        exit;
    }
    
    if(instance_number(obj_boss)>=1){
        if(!audio_is_playing(mus_boss)){
            audio_play_sound(mus_boss,10,false);
        }
        exit;
    } else if(instance_number(obj_boss)==0 && audio_is_playing(mus_boss)){
        audio_stop_sound(mus_boss);
        exit;
    }
    
    
    if(!audio_is_playing(mus_1) &&
        !audio_is_playing(mus_2) &&
        !audio_is_playing(mus_3) &&
        !audio_is_playing(mus_4) &&
        !audio_is_playing(mus_5)){
            
            newSong=true;
        }
        
    
    if(newSong){
        newSong=false;
        tmp=playingSong;
        
        while(tmp==playingSong){
            tmp=irandom(4)+1;
        }
        
        playingSong=tmp;
        
        switch(playingSong){
            case 1:
                audio_play_sound(mus_1,1,false);
                break;
            case 2:
                audio_play_sound(mus_2,1,false);
                break;
            case 3:
                audio_play_sound(mus_3,1,false);
                break;
            case 4:
                audio_play_sound(mus_4,1,false);
                break;
            case 5:
                audio_play_sound(mus_5,1,false);
                break;
        }
    }
}
