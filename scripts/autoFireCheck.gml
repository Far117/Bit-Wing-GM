if(!autoFire || (room==settings || global.inShop)){
    exit;
}

if(player==1){
    if(keyboard_check(vk_space) || keyboard_check(ord('X')) || 
        gamepad_button_check(player-1,gp_face3)){
        if(canShoot){
            canShoot=0;
            alarm[0]=15;
            playerShoot();
        }
    }
} else {
    if(gamepad_button_check(player-1,gp_face3)){
        if(canShoot){
            canShoot=0;
            alarm[0]=15;
            playerShoot();
        }
    }
}
