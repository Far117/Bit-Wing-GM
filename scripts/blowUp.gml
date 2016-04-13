{
    numberOfExplosions=round(sprite_width/20)+round(sprite_height/20);
    
    for(n=numberOfExplosions;n>0;n--){
        instance_create(x+random(sprite_width)-(sprite_width/2),
                                     y+random(sprite_height)-(sprite_height/2),
                                     obj_explosion); 
    }
}
