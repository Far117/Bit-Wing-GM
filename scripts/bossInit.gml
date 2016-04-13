{
    ammotypes=(3)-1;
    
    cannon=instance_create(x-36,y+(57-34),obj_cannon);
    cannon.offsetX=-36*3;
    cannon.offsetY=(57-34)*3;
    cannon.ammo=floor(random_range(0,level/5));
    if(cannon.ammo>ammotypes){
        cannon.ammo=ammotypes;
    }
    
    cannon=instance_create(x-36,y+(57-34)-50,obj_cannon);
    cannon.offsetX=-36*3;
    cannon.offsetY=(57-34)*3-50;
    cannon.ammo=floor(random_range(0,level/5));
    if(cannon.ammo>ammotypes){
        cannon.ammo=ammotypes;
    }
    
    cannon=instance_create(x-36,y+(57-34)-100,obj_cannon);
    cannon.offsetX=-36*3;
    cannon.offsetY=(57-34)*3-100;
    cannon.ammo=level/5;
    if(cannon.ammo>ammotypes){
        cannon.ammo=ammotypes;
    }
    
    shields=global.level*10*(irandom(global.level));
    life=20;
}
