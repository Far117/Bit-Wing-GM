{
    if(playerWeapon<3){
        playerWeapon++;
    } else {
        playerWeapon=0;
    }
    
    if(playerWeapon==1 && !doubleUnlocked){
        playerWeapon=2;
    }
    
    if(playerWeapon==2 && !tripleUnlocked){
        playerWeapon=3;
    }
    
    if(playerWeapon==3 && !purgeUnlocked){
        playerWeapon=0;
    }
}
