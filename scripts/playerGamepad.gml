{
    //analog controls
    if(gamepad_axis_value(player-1,gp_axislh)>.1 && x<room_width-sprite_width){
        x+=shipSpeed*abs(gamepad_axis_value(player-1,gp_axislh));
    }
    
    if(gamepad_axis_value(player-1,gp_axislh)<-.1 && x>sprite_width){
        x-=shipSpeed*abs(gamepad_axis_value(player-1,gp_axislh));
    }
    
    if(gamepad_axis_value(player-1,gp_axislv)<-.1 && y>sprite_height){
        y-=shipSpeed*abs(gamepad_axis_value(player-1,gp_axislv));
    }
    
    if(gamepad_axis_value(player-1,gp_axislv)>.1 && y<room_height-sprite_height){
        y+=shipSpeed*abs(gamepad_axis_value(player-1,gp_axislv));
    }
    
    //dpad controls
    if(gamepad_button_check(player-1,gp_padr)
         && x<room_width-sprite_width){
            x+=shipSpeed;
    }
    
    if(gamepad_button_check(player-1,gp_padl) && x>sprite_width){
        x-=shipSpeed;
    }
    
    if(gamepad_button_check(player-1,gp_padu) && y>sprite_height){
        y-=shipSpeed;
    }
    
    if( gamepad_button_check(player-1,gp_padd) && y<room_height-sprite_height){
        y+=shipSpeed;
    }
    
    
    //weapons
    
    if((gamepad_button_check_pressed(player-1,gp_face3) && !autoFire) &&
        room!=settings && !global.inShop){
        playerShoot();
    }
    
    if((room==settings || global.inShop) && 
        gamepad_button_check_pressed(player-1,gp_face1)){
        playerShoot();
    }else if(gamepad_button_check_pressed(player-1,gp_face1)){
        autoFire=!autoFire;
    }
    
    /*
    if(gamepad_button_check(0,gp_padd)){
        global.playerWeapon=0;
    }
    
    if(gamepad_button_check(0,gp_padl)){
        global.playerWeapon=1;
    }
    
    if(gamepad_button_check(0,gp_padr)){
        global.playerWeapon=2;
    }
    
    if(gamepad_button_check(0,gp_padu)){
        global.playerWeapon=3;
    }
    */
    
    if(gamepad_button_check_pressed(player-1,gp_face4)){
        cycleWeapons();
    }
}
