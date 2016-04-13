{
    //show_debug_overlay(true);
    
    globalvar enemiesLeft;
    globalvar spawnsLeft;
    globalvar maxEnemies;
    globalvar gameStart;
    globalvar inLevelScreen;
    globalvar inShop;
    globalvar level;
    globalvar money;
    globalvar gameOver;
    globalvar spawnedShop;
    
    globalvar players;
    
    globalvar inIDE;
    
    global.inIDE=1;
    //global.inIDE=0;
    
    global.enemiesLeft=0;
    global.spawnsLeft=0;
    global.maxEnemies=2;
    global.gameStart=false;
    global.inLevelScreen=false;
    global.inShop=false;
    global.spawnedShop=false;
    
    global.level=0;
    global.money=0;
    global.gameOver=0;
    
    spawnedLevel=0;
    score=0;
    
    //globalvar /*playerWeapon,*/ doubleAmmo, tripleAmmo, purgeAmmo, penetration;
    
    /*global.playerWeapon=0;
    global.doubleAmmo=0;
    global.tripleAmmo=0;
    global.purgeAmmo=0;
    global.penetration=1;
    */
    
    global.players=1;
    
    
    //Settings:
    globalvar explosionSetting;
    global.explosionSetting=2;
    
    globalvar volume;
    global.volume=100;
    
    //boss
    
    globalvar bossSpawned;
    global.bossSpawned=0;
    
    globalvar explosionModifier;
    global.explosionModifier=1;
    
}
