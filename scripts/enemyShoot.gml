{
    if(weapon==0){
        instance_create(x,y,obj_redLaser);
    } else if(weapon==1){
        shot=instance_create(x,y,obj_redLaser);
        shot.hspeed=1;
        shot=instance_create(x,y,obj_redLaser);
        shot.hspeed=-1;
    } else if(weapon==2){
        instance_create(x,y,obj_redLaser);
        
        shot=instance_create(x,y,obj_redLaser);
        shot.hspeed=1;
        shot=instance_create(x,y,obj_redLaser);
        shot.hspeed=-1;
    } else if(weapon==3){
        for(i=-28;i<=28;i+=14){
            instance_create(x+i,y+(sprite_height/4),obj_redLaser);
        }
    }
}
