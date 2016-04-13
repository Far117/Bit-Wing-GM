{
    depth=-2;
    
    set=global.explosionSetting; 
    
    explosionSys=part_system_create();
    explosionSys2=part_system_create();
    explosionSys3=part_system_create();
    
    explosionPart=part_type_create();
    part_type_shape(explosionPart,pt_shape_square);
    part_type_scale(explosionPart,1,1);
    part_type_size(explosionPart,0.1,.7,-.02,0);
    part_type_color3(explosionPart,c_white,c_yellow,c_red);
    part_type_alpha2(explosionPart,1,.75);
    part_type_speed(explosionPart,0,15,-.001,0);
    part_type_direction(explosionPart,0,359,0,0);
    part_type_gravity(explosionPart,.5,270);
    part_type_orientation(explosionPart,0,359,5,0,true);
    part_type_life(explosionPart,1,60);
    if(set!=1){
        part_type_blend(explosionPart,true);
    }
    
    
    explosionPart2=part_type_create();
    part_type_shape(explosionPart2,pt_shape_square);
    part_type_scale(explosionPart2,1,1);
    part_type_size(explosionPart2,0.4,1.5,-.02,0);
    part_type_color3(explosionPart2,c_white,c_red,c_black);
    part_type_alpha2(explosionPart2,1,.75);
    //part_type_speed(explosionPart2,0,10,-.001,0);
    //part_type_direction(explosionPart2,0,359,0,0);
    //part_type_gravity(explosionPart2,.5,270);
    part_type_orientation(explosionPart2,0,359,5,0,true);
    part_type_life(explosionPart2,1,120);
    if(set!=1){
        part_type_blend(explosionPart2,true);
    }
    
    explosionPart3=part_type_create();
    part_type_shape(explosionPart3,pt_shape_square);
    part_type_scale(explosionPart3,1,1);
    part_type_size(explosionPart3,0.01,.1,-.001,0);
    part_type_color2(explosionPart3,c_white,c_yellow);
    part_type_alpha2(explosionPart3,1,.75);
    part_type_speed(explosionPart3,0,20,-.005,0);
    part_type_direction(explosionPart3,0,359,0,0);
    //part_type_gravity(explosionPart2,.5,270);
    part_type_orientation(explosionPart3,0,359,5,0,true);
    part_type_life(explosionPart3,1,500);
    if(set!=1){
        part_type_blend(explosionPart3,true);
    }
    
    explosionEmitter=part_emitter_create(explosionPart);
    explosionEmitter2=part_emitter_create(explosionPart2);
    explosionEmitter3=part_emitter_create(explosionPart3);
    part_emitter_region(explosionSys, explosionEmitter, x-5, x+5, y-5, y+5,
                         ps_shape_ellipse, ps_distr_gaussian);
    part_emitter_region(explosionSys2, explosionEmitter2, x-20, x+20, y-20, y+20,
                         ps_shape_ellipse, ps_distr_gaussian);
    part_emitter_region(explosionSys3, explosionEmitter3, x-5, x+5, y-5, y+5,
                         ps_shape_ellipse, ps_distr_gaussian);
    
                        
    part_emitter_burst(explosionSys, explosionEmitter, explosionPart,
                        (random(set*25)+set*15)*global.explosionModifier); 
    part_emitter_burst(explosionSys2, explosionEmitter2, explosionPart2, 
                        (random(set*5)+set*5)*global.explosionModifier); 
    part_emitter_burst(explosionSys3, explosionEmitter3, explosionPart3, 
                        (random(set*15)+set*10)*global.explosionModifier);
}
