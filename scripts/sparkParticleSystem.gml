{
    sparkSys=part_system_create();
    
    sparkPart=part_type_create();
    part_type_shape(sparkPart,pt_shape_square);
    part_type_scale(sparkPart,1,1);
    part_type_size(sparkPart,0.01,.1,-.001,0);
    part_type_color1(sparkPart,c_white)
    part_type_alpha2(sparkPart,1,.75);
    part_type_speed(sparkPart,0,10,-.001,0);
    part_type_direction(sparkPart,0,359,0,0);
    part_type_gravity(sparkPart,.5,270);
    part_type_orientation(sparkPart,0,359,30,0,true);
    part_type_life(sparkPart,1,30);
    part_type_blend(sparkPart,false);
    
    sparkEmitter=part_emitter_create(sparkPart);
    
    part_emitter_region(sparkSys, sparkEmitter, x-5, x+5, y-5, y+5,
                         ps_shape_ellipse, ps_distr_gaussian);
    set=global.explosionSetting;
    part_emitter_burst(sparkSys, sparkEmitter, sparkPart, random(set*2.5)+set*1.5);
}
