{
    if((gamepad_axis_value(1,gp_axislh)>.5 || gamepad_button_check(1,gp_padr))
         && x<room_width-sprite_width){
        x+=shipSpeed;
    }
    
    if((gamepad_axis_value(1,gp_axislh)<-.5 || gamepad_button_check(1,gp_padl))
         && x>sprite_width){
        x-=shipSpeed;
    }
    
    if((gamepad_axis_value(1,gp_axislv)<-.5 || gamepad_button_check(1,gp_padu))
             && y>sprite_height){
        y-=shipSpeed;
    }
    
    if((gamepad_axis_value(1,gp_axislv)>.5 || gamepad_button_check(1,gp_padd))
            && y<room_height-sprite_height){
        y+=shipSpeed;
    }
    
    if(gamepad_button_check_pressed(1,gp_face3)){
        playerShoot();
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
    
    if(gamepad_button_check_pressed(1,gp_face4)){
        if(playerWeapon<3){
            playerWeapon++;
        } else {
            playerWeapon=0;
        }
    }
}
