{
    if(life<=0){
        with(obj_cannon){
            instance_destroy();
        }
        x+=random_range(-3,3);
        y+=random_range(-3,3);
        if(irandom(180)==0){
           instance_destroy();
        }
        
        if(irandom(10)==0){
            instance_create(random_range(x-sprite_width/2,x+sprite_width/2),
             random_range(y-sprite_width/2,y+sprite_width/2),
              obj_explosion);
        }
        
        exit;
    }
    
    if(x<(sprite_width/2)){
        dir=1;
    }
    
    if(x>room_width-(sprite_width/2)){
        dir=0;
    }
    
    if(dir=1){
        x+=5;
    } else {
        x-=5;
    }
    
    if(y<30){
        intro=1;
    }
    
    if(intro){
        y+=1;
        if(y=sprite_height/2){
            intro=0;
        }
    }
}
