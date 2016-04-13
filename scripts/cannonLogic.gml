{
    if(instance_number(obj_boss)>0){
        x=obj_boss.x+offsetX;
        y=obj_boss.y+offsetY;
        
        if(irandom(26)==0){
            
            if(instance_number(obj_player)>0 && irandom(3)==0){
                image_angle=point_direction(x, y, obj_player.x, obj_player.y);
            } else if(instance_number(obj_player2)>0 && irandom(3)==0){
                image_angle=point_direction(x, y, obj_player2.x, obj_player2.y);
            }  else if(instance_number(obj_player3)>0 && irandom(3)==0){
                image_angle=point_direction(x, y, obj_player3.x, obj_player3.y);
            } else if(instance_number(obj_player4)>0 && irandom(3)==0){
                image_angle=point_direction(x, y, obj_player4.x, obj_player4.y);
            } 
            
            if(ammo==0){
                laser=instance_create(x,y,obj_redLaser);
                laser.direction=image_angle;
                laser.direction+=random_range(-5,5);
            }else if(ammo==1){
                laser=instance_create(x,y,obj_redLaser);
                laser.direction=image_angle+5;
                laser.direction+=random_range(-5,5);
                
                laser=instance_create(x,y,obj_redLaser);
                laser.direction=image_angle-5;
                laser.direction+=random_range(-5,5);
            }else if(ammo==2){
                laser=instance_create(x,y,obj_redLaser);
                laser.direction=image_angle;
                laser.direction+=random_range(-5,5);
                
                laser=instance_create(x,y,obj_redLaser);
                laser.direction=image_angle+5;
                laser.direction+=random_range(-5,5);
                
                laser=instance_create(x,y,obj_redLaser);
                laser.direction=image_angle-5;
                laser.direction+=random_range(-5,5);
            }else if (ammo==3){
                offset=random_range(-5,5);
                for(z=-2;z<=2;z++){
                    laser=instance_create(x+(z*17),y,obj_redLaser);
                    laser.direction=image_angle;
                    laser.direction+=offset;
                }
            }
        }
    }
}
