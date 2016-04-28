{

    player=argument0;
    amount=argument1;
    
    switch(player){
        case 1:
            global.player1Score+=amount*obj_player.multiplier*
                (obj_player.multikills+1);
            score+=amount*obj_player.multiplier*
                (obj_player.multikills+1);
            break;
        case 2:
            global.player2Score+=amount*obj_player2.multiplier*
                (obj_player2.multikills+1);
            score+=amount*obj_player2.multiplier*
                (obj_player2.multikills+1);
            break;
        case 3:
            global.player3Scoree+=amount*obj_player3.multiplier*
                (obj_player3.multikills+1);
            score+=amount*obj_player3.multiplier*
                (obj_player3.multikills+1);
            break;
        case 4:
            global.player4Score+=amount*obj_player4.multiplier*
                (obj_player4.multikills+1);
            score+=amount*obj_player4.multiplier*
                (obj_player4.multikills+1);
            break;
    }

}
