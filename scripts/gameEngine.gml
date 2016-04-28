/*
Alarms:
0: Explosions
1: Sector
2: Smoke Remover
3: Enemy Pop
*/

{   

    /*
    //Explosion FPS Modifier:
    
    if(fps<60){
        global.explosionModifier-=.01;
    }
    */

    enemyWidth=46;
    enemyHeight=22;
    
    totalLives=0;
    
    /*
    switch(global.players){
        case 4:
            //totalLives+=obj_player4.playerLives;
        case 3:
            //totalLives+=obj_player3.playerLives;
        case 2:
            if(instance_number(obj_player2)>0){
                totalLives+=obj_player2.playerLives;
            }
        case 1:
            if(instance_number(obj_player)>0){
                totalLives+=obj_player.playerLives;
            }
            break;
    }
    */
    var tmpLives;
    tmpLives=0;
    with(objP_player){
        tmpLives+=playerLives;
    }
    totalLives=tmpLives;
    
    
    if(totalLives<=0 && !global.gameOver){
        instance_create(0,0,obj_gameOver);
        global.gameOver=true;
    }
    
    if(gamepad_button_check_pressed(0,gp_select)){
            game_end();
        }    

    if(global.gameOver){
        exit;
    }
    
    if(gameStart && global.level>0 && global.enemiesLeft<=0 && !global.spawnedShop){
        instance_create(0,0,obj_storeManager);
    }
    
    if(global.inShop){
        exit;
    }    


    if(instance_number(obj_logo)==0){
        gameStart=true;
    }
    
    if(gameStart){
    
        if(gamepad_button_check_pressed(0,gp_start)){
            room_goto(pause);
        }
    
        if(!inLevelScreen && global.enemiesLeft==0){
            instance_create(0,0,obj_sectorName);
            inLevelScreen=true;
            //exit;
        }
        
        if(inLevelScreen && instance_number(obj_sectorName)==0){
            inLevelScreen=false;
            //exit;
        }
        
        if(instance_number(obj_boss)>0){
            exit;
        }
        
        if(!inLevelScreen){
            if(global.level%5==0 && !global.bossSpawned){
                instance_create(room_width/2,-100,obj_boss);
                global.bossSpawned=true;
                exit;
            } else if(level%5!=0){
                global.bossSpawned=false;
            }
            if(global.spawnsLeft>0 && 
                (irandom(200)==0 || (instance_number(obj_enemy)<global.level &&
                    irandom(40)==0))){
                if(irandom(5)==0 && global.spawnsLeft>0){
                    burst=random_range(1,global.level^1.5);
                    if(burst>global.spawnsLeft){
                        burst=global.spawnsLeft;
                    }
                    
                    for(i=0;i<burst;i++){
                        startX=random_range(enemyWidth,room_width-(enemyWidth));
                        startY=random(-room_height)-50;
                        instance_create(startX,startY, obj_enemy);
                    }
                } else if(global.level>=3 && global.spawnsLeft>=3 && irandom(9)==0){
                    startX=random_range(enemyWidth,room_width-(enemyWidth*3));
                    startY=random(-room_height)-50;
                    if(global.level>=6){
                        type=irandom(2);
                    } else {
                        type=irandom(1);
                    }
                    
                    for(i=0;i<3;i++){
                        spawn=instance_create(startX+(enemyWidth*i),startY,
                                            obj_enemy);
                        spawn.ai=type;
                        spawn.x=startX+(enemyWidth*i);
                        spawn.y=startY;
                        
                        /*
                        if(type==0){
                            instance_create(startX+(enemyWidth*i),startY,
                                            obj_enemyCharger);
                        } else if(type==1){
                            instance_create(startX+(enemyWidth*i),startY,
                                            obj_enemyStrafer);
                        } else if (type==2){
                            instance_create(startX+(enemyWidth*i),startY,
                                            obj_enemyWavy);
                        }
                        */
                        //global.spawnsLeft--;
                    }
                } else if(global.level>=6 && global.spawnsLeft>=6 && irandom(12)==0){
                    startX=random_range(enemyWidth,room_width-(enemyWidth*6));
                    startY=random(-room_height)-50;
                    type=irandom(2);
                    
                    for(i=0;i<6;i++){
                        spawn=instance_create(startX+(enemyWidth*i),startY,
                                            obj_enemy);
                        spawn.ai=type;
                        spawn.x=startX+(enemyWidth*i);
                        spawn.y=startY;
                        /*
                        if(type==0){
                            instance_create(startX+(enemyWidth*i),startY,
                                            obj_enemyCharger);
                        } else if(type==1){
                            instance_create(startX+(enemyWidth*i),startY,
                                            obj_enemyStrafer);
                        } else if (type==2){
                            instance_create(startX+(enemyWidth*i),startY,
                                            obj_enemyWavy);
                        }
                        */
                        //global.spawnsLeft--;
                    }
                } else if(global.level>=9 && global.spawnsLeft>=9 && irandom(15)==0){
                    startX=random_range(enemyWidth,room_width-(enemyWidth*3));
                    startY=random(-room_height)-50;
                    type=irandom(2);
                    
                    for(m=0;m<3;m++){
                        for(i=0;i<3;i++){
                            spawn=instance_create(startX+(enemyWidth*i),startY,
                                            obj_enemy);
                            spawn.ai=type;
                            spawn.x=startX+(enemyWidth*i);
                            spawn.y=startY;
                            
                            /*
                            if(type==0){
                                instance_create(startX+(enemyWidth*i),startY,
                                                obj_enemyCharger);
                            } else if(type==1){
                                instance_create(startX+(enemyWidth*i),startY,
                                                obj_enemyStrafer);
                            } else if (type==2){
                                instance_create(startX+(enemyWidth*i),startY,
                                                obj_enemyWavy);
                            }
                            */
                            //global.spawnsLeft--;
                        }
                        startY-=enemyHeight;
                    }
                } else {
                    startX=random_range(enemyWidth,room_width-(enemyWidth));
                    startY=random(-room_height)-50;
                    instance_create(startX,startY, obj_enemy);
                    //global.spawnsLeft--;
                }
            }
        }
    }
}
