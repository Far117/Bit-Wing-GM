{
    switch(global.players){
        case 4:
            if(instance_number(obj_player4)==0){
                ship=instance_create(576,640,obj_player4);
                ship.playerLives=1;
            }
        case 3:
            if(instance_number(obj_player3)==0){
                ship=instance_create(544,640,obj_player3);
                ship.playerLives=1;
            }
        case 2:
            var count;
            count=0;
            with(obj_player2){
                if(object_index==obj_player2){
                    count++;
                }
                
            }
            
            if(count==0){
                    ship=instance_create(512,640,obj_player2);
                    ship.playerLives=1;
            }
            /*
            if(instance_number(obj_player2)==0){
                ship=instance_create(512,640,obj_player2);
                ship.playerLives=1;
            }
            */
            
        case 1:
            var count;
            count=0;
            with(obj_player){
                if(object_index==obj_player){
                    count++;
                }
                
            }
            
            if(count==0){
                    ship=instance_create(512,640,obj_player);
                    ship.playerLives=1;
            }
            /*
            if(instance_number(obj_player)==0){
                ship=instance_create(544,608,obj_player);
                ship.playerLives=1;
            }
            */
    }
}
