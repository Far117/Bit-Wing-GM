{
    image_speed=0;
    
    dir=irandom(2); //0=left, 1=right
    ai=0; //0=charge, 1=strafe, 2=wiggle
    weapon=0; //0: single, 1: double, 2: triple, 3: smasher
    objectSpeed=7;
    
    if(global.level>=9){
        weapon=irandom(3);
    }else if(global.level>=6){
        ai=irandom(2);
        weapon=irandom(2);
    } else if(global.level>=3){
        ai=irandom(1);
        weapon=irandom(1);
    } else {
        ai=0;
        weapon=0;
    }
    
    shield=irandom(floor(global.level/3));
    
    image_index=weapon;
    
    if(shield>0){
        sprite_index=spr_enemyShielded;
        image_index=weapon;
    }
    
    //weapon=irandom(3);
}
