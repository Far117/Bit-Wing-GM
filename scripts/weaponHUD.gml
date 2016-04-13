{
    if(playerWeapon==0){
        weaponName="Laser";
        weaponAmmo="";
    } else if(playerWeapon==1){
        weaponName="Double Laser";
        weaponAmmo=doubleAmmo;
    } else if(playerWeapon==2){
        weaponName="Triple Laser";
        weaponAmmo=tripleAmmo;
    } else if(playerWeapon==3){
        weaponName="Purge";
        weaponAmmo=purgeAmmo;
    }
    
    if(x<room_width/4){
        dir=0;
        offsetX=20;
    } else if(x>(room_width/4)*3){
        dir=1;
        offsetX=-20;
    }
    
    if(dir=1){
        draw_set_halign(fa_right);
    } else {
        draw_set_halign(fa_left);
    }
    
    draw_set_color(c_white);
    //draw_set_halign(fa_left);
    draw_text_transformed(x+offsetX,y
                            ,string(weaponName),.8,.8,0);
    //draw_text_transformed(x+offsetX,y+10
                            //,string(weaponAmmo),.8,.8,0);
    if(global.inShop){
        draw_set_color(c_green);
        draw_text_transformed(x+offsetX,y+20
                                ,"$"+string(playerMoney),.8,.8,0);
    }
    
    /*
    if(global.inShop || room==settings){
        draw_set_halign(fa_center);
        draw_set_color(c_white);
        draw_text_transformed(x,y+sprite_height/2+20
                                ,"Shoot with A(controller)#or B(Keyboard)",.85,.85,0);
    }
    */
}
