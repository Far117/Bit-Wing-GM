{
    
    /*
    if(playerWeapon==0){
        instance_create(x,y,obj_blueLaser);
    } else if(playerWeapon==1 && global.doubleAmmo>0){
        instance_create(x,y,obj_blueLaserLeft);
        instance_create(x,y,obj_blueLaserRight);
        global.doubleAmmo--;
    } else if(playerWeapon==2 && global.tripleAmmo>0){
        instance_create(x,y,obj_blueLaser);
        instance_create(x,y,obj_blueLaserLeft);
        instance_create(x,y,obj_blueLaserRight);
        global.tripleAmmo--;
    } else if(playerWeapon==0 && global.purgeAmmo>0){
        for(i=-28;i<=28;i+=14){
            instance_create(x+i,y+5,obj_blueLaser);
        }
        global.purgeAmmo--;
    }
    */
    
    if(playerWeapon==0){
        shot=instance_create(x,y,obj_blueLaser);
        shot.shotByPlayer=player;
        shot.hits=penetration;
    } else if(playerWeapon==1 && doubleUnlocked){
        shot=instance_create(x,y,obj_blueLaser);
        shot.hspeed=1;
        shot.shotByPlayer=player;
        shot.hits=penetration;
        
        shot=instance_create(x,y,obj_blueLaser);
        shot.hspeed=-1;
        shot.shotByPlayer=player;
        shot.hits=penetration;
        
        //doubleAmmo--;
    } else if(playerWeapon==2 && tripleUnlocked){
        shot=instance_create(x,y,obj_blueLaser);
        shot.hspeed=1;
        shot.shotByPlayer=player;
        shot.hits=penetration;
        
        shot=instance_create(x,y,obj_blueLaser);
        shot.hspeed=-1;
        shot.shotByPlayer=player;
        shot.hits=penetration;
        
        shot=instance_create(x,y,obj_blueLaser);
        shot.shotByPlayer=player;
        shot.hits=penetration;
        
        //tripleAmmo--;
    } else if(playerWeapon==3 && purgeUnlocked){
        for(i=-28;i<=28;i+=14){
            shot=instance_create(x+i,y+5,obj_blueLaser);
            shot.shotByPlayer=player;
            shot.hits=penetration;
        }
        //purgeAmmo--;
    }
    
}
