{
    if(global.level>=6){
        instance_create((room_width/2)+150, (room_height/3)*2, obj_purge);
    }
    if(global.level>=3){
        instance_create((room_width/2), (room_height/3)*2, obj_tripleLaser);
        instance_create((room_width/2)+100, (room_height/3), obj_penetration);
    }
    
    if(global.level>=2){
        instance_create((room_width/2)-150, (room_height/3)*2, obj_doubleLaser);
    }
    
    instance_create((room_width/2)-100,(room_height/3), obj_newShip);
    instance_create(room_width-100, (room_height/4)*3, obj_quitStore);
}
