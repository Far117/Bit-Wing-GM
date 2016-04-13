{
    offsetX=argument0;
    offsetY=argument1;
    type=argument2; //0=player, 1=enemy
    smokeSys=part_system_create();
    
    set=global.explosionSetting;
    
    if(type==0){
        smokePart=part_type_create();
        part_type_shape(smokePart,pt_shape_square);
        part_type_scale(smokePart,1,1);
        part_type_size(smokePart,0.01,.1,-.0001,0);
        part_type_color3(smokePart,c_white,c_yellow,c_red);
        part_type_alpha2(smokePart,1,.75);
        part_type_speed(smokePart,0,3,-.001,0);
        part_type_direction(smokePart,0,359,0,0);
        part_type_gravity(smokePart,2,270);
        part_type_orientation(smokePart,0,359,10,0,true);
        part_type_life(smokePart,1,7);
         
        part_type_blend(smokePart,true);
    } else if(type==1){
        smokePart=part_type_create();
        part_type_shape(smokePart,pt_shape_square);
        part_type_scale(smokePart,1,1);
        part_type_size(smokePart,0.01,.1,-.0001,0);
        part_type_color3(smokePart,c_white,c_blue,c_white);
        part_type_alpha2(smokePart,1,.75);
        part_type_speed(smokePart,0,4,-.001,0);
        part_type_direction(smokePart,0,359,0,0);
        part_type_gravity(smokePart,.5,90);
        part_type_orientation(smokePart,0,359,10,0,true);
        part_type_life(smokePart,2,10);
        if(set!=1){
            part_type_blend(smokePart,true);
        }
    }
    
    smokeEmitter=part_emitter_create(smokePart);
    
    part_emitter_region(smokeSys,smokeEmitter, offsetX+x-5,offsetX+x+5,
                        offsetY+y-5,offsetY+y+5,
                        ps_shape_rectangle,ps_distr_gaussian);
                        
                        
    part_emitter_burst(smokeSys,smokeEmitter,smokePart, set*2.5);
}
