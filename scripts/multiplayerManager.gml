{
    if(global.players==1){
        global.players++;
        instance_create(512,640,obj_player2);
    } else if(global.players==2){
        instance_create(544,640,obj_player3);
        global.players++;
    } else if(global.players==3){
        instance_create(576,640,obj_player4);
        global.players++;
        instance_destroy();
    }
}
