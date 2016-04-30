///Multikills/Streaks/Overload

{

    if(destroyedByPlayer==1){
        obj_player.multikills++;
        obj_player.alarm[3]=room_speed/2;
        obj_player.killstreak++;
        tmp=instance_create(x,y,obj_multikillPop);
        tmp.destroyedByPlayer=destroyedByPlayer;
        
    }else if(destroyedByPlayer==2){
        obj_player2.multikills++;
        obj_player2.alarm[3]=room_speed/2;
        obj_player2.killstreak++;
        tmp=instance_create(x,y,obj_multikillPop);
        tmp.destroyedByPlayer=destroyedByPlayer;
        
    }else if(destroyedByPlayer==3){
        obj_player3.multikills++;
        obj_player3.alarm[3]=room_speed/2;
        obj_player3.killstreak++;
        tmp=instance_create(x,y,obj_multikillPop);
        tmp.destroyedByPlayer=destroyedByPlayer;
        
    }else if(destroyedByPlayer==4){
        obj_player4.multikills++;
        obj_player4.alarm[3]=room_speed/2;
        obj_player4.killstreak++;
        tmp=instance_create(x,y,obj_multikillPop);
        tmp.destroyedByPlayer=destroyedByPlayer;
    }
    /*
    tmp=instance_create(x,y,obj_enemyPop);
    
    if(destroyedByPlayer==1){
        tmp.tmpMoney=obj_player.playerMoney;
    }else if(destroyedByPlayer==2){
        tmp.tmpMoney=obj_player2.playerMoney;
    }else if(destroyedByPlayer==3){
        tmp.tmpMoney=obj_player3.playerMoney;
    }else if(destroyedByPlayer==4){
        tmp.tmpMoney=obj_player4.playerMoney;
    }
    */
}
