{
    if(ai==0){
        vspeed=objectSpeed;
    } else if(ai=1){
        vspeed=0;
        if(dir==0){
            hspeed=-objectSpeed;
            if(x<=sprite_width+1){
                y+=50;
                dir=1;
            }
        } else {
            hspeed=10;
            
            if(x>=room_width-(sprite_width+1)){
                y+=50;
                dir=0;
            }
        }
        
    } else if(ai==2){
        vspeed=objectSpeed;
        
        if(dir==0){
            hspeed=-objectSpeed;
            if(x<=sprite_width+1){
                //y+=50;
                dir=1;
            }
        } else {
            hspeed=objectSpeed;
            
            if(x>=room_width-(sprite_width+1)){
                //y+=50;
                dir=0;
            }
        }
        
        if(irandom(30)==0){
            dir=irandom(2);
        }
    }
    
    if(ai==1 && y<-sprite_height){
        y=-sprite_height;
    }
}
