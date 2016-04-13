{
    if(selling=="double"){
        if(shotBy==1 && obj_player.playerMoney>=3000){
            with(obj_player){
                if(!doubleUnlocked){
                    doubleUnlocked=1;
                    playerMoney-=3000;
                }
            }
        }else if(shotBy==2 && obj_player2.playerMoney>=3000){
            with(obj_player2){
                if(!doubleUnlocked){
                    doubleUnlocked=1;
                    playerMoney-=3000;
                }
            }
        } else if(shotBy==3 && obj_player3.playerMoney>=3000){
            with(obj_player3){
                if(!doubleUnlocked){
                    doubleUnlocked=1;
                    playerMoney-=3000;
                }
            }
        } else if(shotBy==4 && obj_player4.playerMoney>=3000){
            with(obj_player4){
               if(!doubleUnlocked){
                    doubleUnlocked=1;
                    playerMoney-=3000;
                }
            }
        }
    } else if(selling=="triple"){
        if(shotBy==1 && obj_player.playerMoney>=7000){
            with(obj_player){
                if(!tripleUnlocked){
                    tripleUnlocked=1;
                    playerMoney-=7000;
                }
            }
        }else if(shotBy==2 && obj_player2.playerMoney>=7000){
            with(obj_player2){
                if(!tripleUnlocked){
                    tripleUnlocked=1;
                    playerMoney-=7000;
                }
            }
        } else if(shotBy==3 && obj_player3.playerMoney>=7000){
            with(obj_player3){
                if(!tripleUnlocked){
                    tripleUnlocked=1;
                    playerMoney-=7000;
                }
            }
        } else if(shotBy==4 && obj_player4.playerMoney>=7000){
            with(obj_player4){
                if(!tripleUnlocked){
                    tripleUnlocked=1;
                    playerMoney-=7000;
                }
            }
        }
    } else if(selling=="purge"){
        if(shotBy==1 && obj_player.playerMoney>=15000){
            with(obj_player){
                if(!purgeUnlocked){
                    purgeUnlocked=1;
                    playerMoney-=15000;
                }
            }
        }else if(shotBy==2 && obj_player2.playerMoney>=15000){
            with(obj_player2){
                if(!purgeUnlocked){
                    purgeUnlocked=1;
                    playerMoney-=15000;
                }
            }
        } else if(shotBy==3 && obj_player3.playerMoney>=15000){
            with(obj_player3){
                if(!purgeUnlocked){
                    purgeUnlocked=1;
                    playerMoney-=15000;
                }
            }
        } else if(shotBy==4 && obj_player4.playerMoney>=15000){
            with(obj_player4){
                if(!purgeUnlocked){
                    purgeUnlocked=1;
                    playerMoney-=15000;
                }
            }
        }
    } else if(selling=="life"){
        //argument0 is the cost
        if(shotBy==1 && obj_player.playerMoney>=argument0){
            with(obj_player){
                playerLives++;
                playerMoney-=argument0;
            }
        }else if(shotBy==2 && obj_player2.playerMoney>=argument0){
            with(obj_player2){
                playerLives++;
                playerMoney-=argument0;
            }
        } else if(shotBy==3 && obj_player3.playerMoney>=argument0){
            with(obj_player3){
                playerLives++;
                playerMoney-=argument0;
            }
        } else if(shotBy==4 && obj_player4.playerMoney>=argument0){
            with(obj_player4){
                playerLives++;
                playerMoney-=argument0;
            }
        }
    } else if(selling=="penetration"){
        if(shotBy==1 && obj_player.playerMoney>=4000){
            with(obj_player){
                penetration++;
                playerMoney-=4000;
            }
        }else if(shotBy==2 && obj_player2.playerMoney>=4000){
            with(obj_player2){
                penetration++;
                playerMoney-=4000;
            }
        } else if(shotBy==3 && obj_player3.playerMoney>=4000){
            with(obj_player3){
                penetration++;
                playerMoney-=4000;
            }
        } else if(shotBy==4 && obj_player4.playerMoney>=4000){
            with(obj_player4){
                penetration++;
                playerMoney-=4000;
            }
        }
    }
}
