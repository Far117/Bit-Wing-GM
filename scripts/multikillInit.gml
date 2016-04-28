
{

    if(destroyedByPlayer==1){
        number=obj_player.multikills;
    }else if(destroyedByPlayer==2){
        number=obj_player2.multikills;
    }else if(destroyedByPlayer==3){
        number=obj_player3.multikills;
    }else if(destroyedByPlayer==4){
        number=obj_player4.multikills;
    }
    
    
    popString="";
    
    if(number<=1){
        exit;
    }
    
    if(number<=30){
        popString=global.multikillStrings[number];
        scale=1+number/20;
    } else {
        popString=global.multikillStrings[30];
        scale=1+30/20;
    }
    
    //Fling Init
    
    rotation=0;
    rotationSpeed=random_range(-1,1);
    xSpeed=random_range(-10,10);
    ySpeed=random_range(-10,0);
}
